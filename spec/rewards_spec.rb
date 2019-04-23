require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Rewards API' do

  let(:api_url) {'https://api.voucherify.io/v1'}

  let(:application_id) {'application_id'}
  let(:client_secret_key) {'client_secret_key'}

  let(:voucherify) {Voucherify::Client.new({:applicationId => application_id, :clientSecretKey => client_secret_key})}
  let(:headers) {{
    'X-App-Id' => application_id,
    'X-App-Token' => client_secret_key,
    'X-Voucherify-Channel' => 'Ruby-SDK',
    :accept => 'application/json'
  }}

  let(:reward) {{
    :name => 'reward',
    :parameters => {
      :campaign => {
        :id => 'some_campaign_id'
      }
    }
  }}

  let(:assignment) {{
    :campaign => 'some_campaign_id',
    :parameters => {
      :loyalty => {
        :points => 10
      }
    }
  }}

  let(:reward_id) { 'some_reward_id'}
  let(:assignment_id) { 'some_assignment_id'}

  it 'should list rewards' do
    query = {
      :limit => 10,
      :page => 1
    }

    stub_request(:get, "#{api_url}/rewards?limit=#{query[:limit]}&page=#{query[:page]}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.rewards.list(query)
  end

  it 'should create reward' do
    stub_request(:post, "#{api_url}/rewards")
      .with(body: reward.to_json, headers: headers)
      .to_return(:status => 200, :body => reward.to_json, :headers => {})

    voucherify.rewards.create(reward)
  end

  it 'should update reward' do
    stub_request(:put, "#{api_url}/rewards/#{reward_id}")
      .with(body: reward.to_json, headers: headers)
      .to_return(:status => 200, :body => reward.to_json, :headers => {})

    voucherify.rewards.update(reward_id, reward)
  end

  it 'should get reward' do
    stub_request(:get, "#{api_url}/rewards/#{reward_id}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => reward.to_json, :headers => {})

    voucherify.rewards.get(reward_id)
  end

  it 'should delete reward' do
    stub_request(:delete, "#{api_url}/rewards/#{reward_id}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => nil, :headers => {})

    voucherify.rewards.delete(reward_id)
  end

  context 'assignments' do

    it 'should list assignments' do
      query = {
        :limit => 10,
        :page => 1
      }

      stub_request(:get, "#{api_url}/rewards/#{reward_id}/assignments?limit=#{query[:limit]}&page=#{query[:page]}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

      voucherify.rewards.assignments.list(reward_id, query)
    end

    it 'should create assignment' do
      stub_request(:post, "#{api_url}/rewards/#{reward_id}/assignments")
        .with(body: assignment.to_json, headers: headers)
        .to_return(:status => 200, :body => assignment.to_json, :headers => {})
  
      voucherify.rewards.assignments.create(reward_id, assignment)
    end

    it 'should update assignment' do
      stub_request(:put, "#{api_url}/rewards/#{reward_id}/assignments/#{assignment_id}")
        .with(body: assignment.to_json, headers: headers)
        .to_return(:status => 200, :body => assignment.to_json, :headers => {})

      voucherify.rewards.assignments.update(reward_id, assignment_id, assignment)
    end

    it 'should delete assignment' do
      stub_request(:delete, "#{api_url}/rewards/#{reward_id}/assignments/#{assignment_id}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => nil, :headers => {})

      voucherify.rewards.assignments.delete(reward_id, assignment_id)
    end
  end

end
