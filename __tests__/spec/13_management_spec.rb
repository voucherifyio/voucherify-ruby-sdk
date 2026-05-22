require_relative '../lib/config.rb'
require 'VoucherifySdk'

RSpec.describe 'Management API', :order => :defined do
  before(:each) do
    skip 'Set X_MANAGEMENT_ID and X_MANAGEMENT_TOKEN to run management tests' unless Config.management_credentials_configured?
    @management_api_instance = Config.management_api_instance()
  end

  TEST_SCHEMA_RELATED_OBJECT = 'test-ruby-sdk'.freeze

  $management_project_id = nil
  $metadata_schema_to_update = nil

  it 'list projects', :order => :first do
    projects_response = @management_api_instance.list_projects()
    project_from_response = projects_response.data&.first

    $management_project_id = project_from_response&.id

    expect(projects_response).not_to be_nil
    expect(projects_response.object).to eq('list')
    expect(projects_response.data).to be_a(Array)
    expect($management_project_id).not_to be_nil
  end

  it 'list metadata schemas for selected project', :order => :second do
    metadata_schemas_response = @management_api_instance.list_metadata_schemas1($management_project_id)

    expect(metadata_schemas_response).not_to be_nil
    expect(metadata_schemas_response.object).to eq('list')
    expect(metadata_schemas_response.data).to be_a(Array)

    test_metadata_schema = metadata_schemas_response.data&.find do |schema|
      schema.related_object == TEST_SCHEMA_RELATED_OBJECT
    end

    if test_metadata_schema.nil? ||
       !test_metadata_schema.properties.is_a?(Hash) ||
       test_metadata_schema.properties.empty?
      test_metadata_schema = ensure_test_metadata_schema(@management_api_instance, $management_project_id)
    end

    $metadata_schema_to_update = test_metadata_schema

    expect($metadata_schema_to_update).not_to be_nil
    expect($metadata_schema_to_update.related_object).to eq(TEST_SCHEMA_RELATED_OBJECT)
    expect($metadata_schema_to_update.properties).to be_a(Hash)
    expect($metadata_schema_to_update.properties).not_to be_empty
  end

  it 'update metadata schema', :order => :third do
    property_name, property_definition = $metadata_schema_to_update.properties&.first
    expect(property_name).not_to be_nil
    expect(property_definition).not_to be_nil

    update_request_body = VoucherifySdk::ManagementProjectsMetadataSchemasUpdateRequestBody.new({
      allow_defined_only: $metadata_schema_to_update.allow_defined_only,
      properties: {
        property_name => VoucherifySdk::ManagementProjectsMetadataSchemaDefinition.new(
          property_definition.to_hash.transform_keys(&:to_sym)
        )
      }
    })

    updated_metadata_schema = @management_api_instance.update_metadata_schema(
      $management_project_id,
      $metadata_schema_to_update.id,
      {
        management_projects_metadata_schemas_update_request_body: update_request_body
      }
    )

    expect(updated_metadata_schema).not_to be_nil
    expect(updated_metadata_schema.id).to eq($metadata_schema_to_update.id)
    expect(updated_metadata_schema.related_object).to eq($metadata_schema_to_update.related_object)
    expect(updated_metadata_schema.properties.keys).to include(property_name)
  end

  def ensure_test_metadata_schema(management_api_instance, project_id)
    create_request_body = VoucherifySdk::ManagementProjectsMetadataSchemasCreateRequestBody.new({
      related_object: TEST_SCHEMA_RELATED_OBJECT,
      allow_defined_only: false,
      properties: {
        'Test' => VoucherifySdk::ManagementProjectsMetadataSchemaDefinition.new({
          type: 'string',
          array: false,
          optional: true,
          object_type: nil
        })
      }
    })

    management_api_instance.create_metadata_schema(
      project_id,
      {
        management_projects_metadata_schemas_create_request_body: create_request_body
      }
    )

    sleep(2)

    metadata_schemas_response = management_api_instance.list_metadata_schemas1(project_id)
    metadata_schemas_response.data&.find do |schema|
      schema.related_object == TEST_SCHEMA_RELATED_OBJECT &&
        schema.properties.is_a?(Hash) &&
        !schema.properties.empty?
    end
  end
end
