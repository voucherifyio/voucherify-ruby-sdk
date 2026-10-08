# VoucherifySdk::MemberTierProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current** | **Object** |  |  |
| **tier_structure** | **Object** |  |  |
| **deferred** | [**Array&lt;MemberTierProgressDeferred&gt;**](MemberTierProgressDeferred.md) | Upcoming tier assignments scheduled to start later, when the tier structure defers tier changes. The member will be assigned to the deferred tier at the start date. | [optional] |
| **risks** | [**Array&lt;MemberTierProgressRisk&gt;**](MemberTierProgressRisk.md) | Upcoming risks of losing or downgrading the current tier. | [optional] |
| **opportunities** | [**Array&lt;MemberTierProgressOpportunity&gt;**](MemberTierProgressOpportunity.md) | Opportunities to reach higher tiers. Deferred tiers are not included in this list. | [optional] |
| **object** | **String** | Object type marker, always &#x60;member_tier_progress&#x60;. | [optional][default to &#39;member_tier_progress&#39;] |

