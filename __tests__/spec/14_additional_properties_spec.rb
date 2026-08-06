require 'VoucherifySdk'

RSpec.describe 'Models with additional properties', :order => :defined do
  it 'build metadata schema with regular fields and dynamic properties', :order => :first do
    schema_payload = {
      'id' => 'meta_test_schema',
      'related_object' => 'customer',
      'allow_defined_only' => false,
      'object' => 'metadata_schema',
      'properties' => {
        'dynamic_field' => {
          'type' => 'string',
          'optional' => true
        }
      }
    }

    metadata_schema = VoucherifySdk::ManagementProjectsMetadataSchema.build_from_hash(schema_payload)
    serialized_metadata_schema = metadata_schema.to_hash

    expect(metadata_schema.id).to eq('meta_test_schema')
    expect(metadata_schema.related_object).to eq('customer')
    expect(metadata_schema.properties).to be_a(Hash)
    expect(metadata_schema.properties['dynamic_field']).to be_a(VoucherifySdk::ManagementProjectsMetadataSchemaDefinition)
    expect(metadata_schema.properties['dynamic_field'].type).to eq('string')
    expect(serialized_metadata_schema[:properties].keys).to include('dynamic_field')
  end
end
