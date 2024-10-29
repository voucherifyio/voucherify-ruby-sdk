# How to Manage Code Efficiently

There are two possible ways to define a model. 
You can use the standard class-based initialization, where you create a new object for each nesting level.

```ruby
campaign = campaigns_api_instance.create_campaign({
    campaigns_create_request_body: VoucherifySdk::CampaignsCreateDiscountCouponsCampaign.new({
        campaign_type: "DISCOUNT_COUPONS",
        name: generate_random_string(),
        type: "AUTO_UPDATE",
        voucher: VoucherifySdk::DiscountCouponsCampaignVoucher.new({
            discount: VoucherifySdk::DiscountAmount.new({
                type: "AMOUNT",
                amount_off: 1000
            })
        }),
        validation_rules: [validation_rule_id]
    })
})
```

Another, simpler approach is to create only **necessary** objects. In this scenario, the model is created using JSON-like syntax..

```ruby
campaign = campaigns_api_instance.create_campaign({
    campaigns_create_request_body: VoucherifySdk::CampaignsCreateDiscountCouponsCampaign.new({
        campaign_type: "DISCOUNT_COUPONS",
        name: generate_random_string(),
        type: "AUTO_UPDATE",
        voucher: {
            discount: {
                type: "AMOUNT",
                amount_off: 1000
            }
        },
        validation_rules: [validation_rule_id]
    })
})
```

Some objects are **necessary** because they represent a union of a few similar types, and you need to determine which type you're using.

E.g. model [**CampaignsCreateRequestBody**](./lib/VoucherifySdk/models/campaigns_create_request_body.rb) consists of types like:
- CampaignsCreateDiscountCouponsCampaign 
- CampaignsCreateGiftCampaign
- CampaignsCreateGiveawayCampaign
- CampaignsCreateLoyaltyCampaign
- CampaignsCreatePromotionCampaign
- CampaignsCreateReferralCampaign

So, in our example, we're declaring an object for it, instead of passing it explicitly. For example:
```ruby
campaigns_create_request_body: VoucherifySdk::CampaignsCreateDiscountCouponsCampaign.new(...)
```

##### 💡 More useful examples could be found in our [tests](./__tests__)

## 🔄 Alternative ways for installing a gem

To build the Ruby code into a gem:

```shell
gem build VoucherifySdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./VoucherifySdk-8.0.0.gem
```

(for development, run `gem install --dev ./VoucherifySdk-8.0.0.gem` to install the development dependencies)

Add this to the Gemfile:

```shell
gem 'VoucherifySdk', '~> 8.0.0'
```

Then install dependencies with bundler

```shell
bundle install
```

Finally, exec script with bundler:

```shell
bundle exec ruby example.rb
```

### 📦 Install from Git

You could use the GitHub repository (https://github.com/voucherifyio/voucherify-js-sdk) for installing SDK gem by adding it to the `Gemfile`

```shell
gem 'VoucherifySdk', :git => 'https://github.com/voucherifyio/voucherify-js-sdk.git', branch: 'main'
```

Then install dependencies with bundler

```shell
bundle install
```

Finally, exec script with bundler:

```shell
bundle exec ruby example.rb
```

