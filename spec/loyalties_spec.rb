require 'spec_helper'
require 'rest-client'
require 'date'

describe 'Loyalties API' do

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

  let(:customer) {{
    :id => 'some_id',
    :source_id => 'some_source_id'
  }}

  let(:loyalty_program) {{
    :name => 'loyalty',
    :type => 'STATIC',
    :voucher => {
      :type => 'LOYALTY_CARD'
    }
  }}

  let(:reward_assignment) {{
    :reward => 'some_reward_id',
    :parameters => {
      :loyalty => {
        :points => 15
      }
    }
  }}

  let(:earning_rule) {{
    :event => 'event',
    :loyalty => {
      :points => 10
    },
    :custom_event => {
      :schema_id => 'id'
    }
  }}

  let(:member) {{
    :customer => customer
  }}

  let(:voucher) {{
    :code => 'voucher-code',
    :category => 'test-voucher',
    :metadata => {
        :locale => 'de-en'
    },
    :additional_info => 'ruby-sdk-test-voucher',
    :redemption => {
        :quantity => 1
    }
  }}

  let(:add_balance) {{
    :points => 20
  }}

  let(:add_balance_response) {{
    :points => 2000,
    :total => 2000,
    :balance =>2000,
    :type => 'loyalty_card',
    :object => 'balance',
    :related_object => {  
      :type => 'voucher',
      :id => 'HVqWlozp'
    }
  }}

  let(:redeem_reward) {{
    :reward => {
      :id => 'some_reward_id'
    }
  }}

  let(:redeem_reward_response) {{
    :id => 'r_test_id',
    :object => 'redemption',
    :date => '2017-11-09T13:15:53Z',
    :customer_id => customer[:id],
    :tracking_id => nil,
    :voucher => voucher,
    :result => 'SUCCESS'
  }}

  let(:loyalty_id) { 'some_id' }
  let(:assignment_id) { 'some_assignment_id' }
  let(:earning_rule_id) { 'some_earning_rule_id' }
  let(:member_id) { 'some_member__id' }

  it 'should list loyalty programs' do
    query = {
      :limit => 10,
      :page => 1
    }

    stub_request(:get, "#{api_url}/loyalties?limit=#{query[:limit]}&page=#{query[:page]}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => '[]', :headers => {})

    voucherify.loyalties.list(query)
  end

  it 'should create loyalty program' do
    stub_request(:post, "#{api_url}/loyalties")
      .with(body: loyalty_program.to_json, headers: headers)
      .to_return(:status => 200, :body => loyalty_program.to_json, :headers => {})

    voucherify.loyalties.create(loyalty_program)
  end

  it 'should update loyalty program' do
    stub_request(:put, "#{api_url}/loyalties/#{loyalty_id}")
      .with(body: loyalty_program.to_json, headers: headers)
      .to_return(:status => 200, :body => loyalty_program.to_json, :headers => {})

    voucherify.loyalties.update(loyalty_id, loyalty_program)
  end

  it 'should get loyalty program' do
    stub_request(:get, "#{api_url}/loyalties/#{loyalty_id}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => loyalty_program.to_json, :headers => {})

    voucherify.loyalties.get(loyalty_id)
  end

  it 'should delete loyalty program' do
    stub_request(:delete, "#{api_url}/loyalties/#{loyalty_id}")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => nil, :headers => {})

    voucherify.loyalties.delete(loyalty_id)
  end

  it 'should delete loyalty program with force' do
    query = {
      :force => true
    }

    stub_request(:delete, "#{api_url}/loyalties/#{loyalty_id}?force=true")
      .with(body: nil, headers: headers)
      .to_return(:status => 200, :body => nil, :headers => {})

    voucherify.loyalties.delete(loyalty_id, query)
  end

  context 'reward assignments' do

    it 'should list rewards' do
      query = {
        :limit => 10,
        :page => 1
      }

      stub_request(:get, "#{api_url}/loyalties/#{loyalty_id}/rewards?limit=#{query[:limit]}&page=#{query[:page]}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

      voucherify.loyalties.reward_assignments.list(loyalty_id, query)
    end

    it 'should create reward assignment' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/rewards")
        .with(body: [ reward_assignment ].to_json, headers: headers)
        .to_return(:status => 200, :body => [ reward_assignment ].to_json, :headers => {})

      voucherify.loyalties.reward_assignments.create(loyalty_id, reward_assignment)
    end

    it 'should create multiple reward assignment' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/rewards")
        .with(body: [ reward_assignment ].to_json, headers: headers)
        .to_return(:status => 200, :body => [ reward_assignment ].to_json, :headers => {})

      voucherify.loyalties.reward_assignments.create(loyalty_id, [ reward_assignment ])
    end

    it 'should update reward assignment' do
      stub_request(:put, "#{api_url}/loyalties/#{loyalty_id}/rewards/#{assignment_id}")
        .with(body: reward_assignment.to_json, headers: headers)
        .to_return(:status => 200, :body => reward_assignment.to_json, :headers => {})

      voucherify.loyalties.reward_assignments.update(loyalty_id, assignment_id, reward_assignment)
    end

    it 'should delete reward assignment' do
      stub_request(:delete, "#{api_url}/loyalties/#{loyalty_id}/rewards/#{assignment_id}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => nil, :headers => {})

      voucherify.loyalties.reward_assignments.delete(loyalty_id, assignment_id)
    end
  end

  context 'earning rules' do

    it 'should list earning rules' do
      query = {
        :limit => 10,
        :page => 1
      }

      stub_request(:get, "#{api_url}/loyalties/#{loyalty_id}/earning-rules?limit=#{query[:limit]}&page=#{query[:page]}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

      voucherify.loyalties.earning_rules.list(loyalty_id, query)
    end

    it 'should create earning rule' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/earning-rules")
        .with(body: [ earning_rule ].to_json, headers: headers)
        .to_return(:status => 200, :body => [ earning_rule ].to_json, :headers => {})

      voucherify.loyalties.earning_rules.create(loyalty_id, earning_rule)
    end

    it 'should create multiple earning rules' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/earning-rules")
        .with(body: [ earning_rule ].to_json, headers: headers)
        .to_return(:status => 200, :body => [ earning_rule ].to_json, :headers => {})

      voucherify.loyalties.earning_rules.create(loyalty_id, [ earning_rule ])
    end

    it 'should update earning rule' do
      stub_request(:put, "#{api_url}/loyalties/#{loyalty_id}/earning-rules/#{earning_rule_id}")
        .with(body: earning_rule.to_json, headers: headers)
        .to_return(:status => 200, :body => earning_rule.to_json, :headers => {})

      voucherify.loyalties.earning_rules.update(loyalty_id, earning_rule_id, earning_rule)
    end

    it 'should delete earning rule' do
      stub_request(:delete, "#{api_url}/loyalties/#{loyalty_id}/earning-rules/#{earning_rule_id}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => nil, :headers => {})

      voucherify.loyalties.earning_rules.delete(loyalty_id, earning_rule_id)
    end
  end

  context 'members' do

    it 'should list members' do
      query = {
        :limit => 10,
        :page => 1
      }

      stub_request(:get, "#{api_url}/loyalties/#{loyalty_id}/members?limit=#{query[:limit]}&page=#{query[:page]}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => '[]', :headers => {})

      voucherify.loyalties.members.list(loyalty_id, query)
    end

    it 'should add member' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/members")
        .with(body: member.to_json, headers: headers)
        .to_return(:status => 200, :body => voucher.to_json, :headers => {})

      voucherify.loyalties.members.add(loyalty_id, member)
    end

    it 'should get member' do
      stub_request(:get, "#{api_url}/loyalties/#{loyalty_id}/members/#{member_id}")
        .with(body: nil, headers: headers)
        .to_return(:status => 200, :body => voucher.to_json, :headers => {})

      voucherify.loyalties.members.get(loyalty_id, member_id)
    end

    it 'should add balance' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/members/#{member_id}/balance")
        .with(body: add_balance.to_json, headers: headers)
        .to_return(:status => 200, :body => add_balance_response.to_json, :headers => {})

      voucherify.loyalties.members.add_balance(loyalty_id, member_id, add_balance)
    end

    it 'should redeem reward' do
      stub_request(:post, "#{api_url}/loyalties/#{loyalty_id}/members/#{member_id}/redemption")
        .with(body: redeem_reward.to_json, headers: headers)
        .to_return(:status => 200, :body => redeem_reward_response.to_json, :headers => {})

      voucherify.loyalties.members.redeem_reward(loyalty_id, member_id, redeem_reward)
    end
  end
end
