# VoucherifySdk::LoyaltiesMembersRedemptionRedeemResponseBodyChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Unique channel ID of the user performing the redemption. This is either a user ID from a user using the Voucherify Dashboard or an X-APP-Id of a user using the API. For &#x60;AUTO_REDEEM&#x60;, it is the reward assignment ID. | [optional] |
| **channel_type** | **String** | The source of the channel for the redemption. A &#x60;USER&#x60; corresponds to the Voucherify Dashboard, &#x60;API&#x60; corresponds to the API, and &#x60;AUTO_REDEEM&#x60; corresponds to a loyalty campaign reward that has been redeemed automatically. | [optional] |

