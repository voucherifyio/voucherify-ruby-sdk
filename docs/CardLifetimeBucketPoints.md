# VoucherifySdk::CardLifetimeBucketPoints

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | Total accumulated points, including points added manually, earned by fulfilling earning rules and activated from pending points (excluding returned points). | [optional][default to 0] |
| **earned** | **Float** | Total points earned by fulfilling earning rules (does not include activated pending points or points added manually). | [optional][default to 0] |
| **added** | **Float** | Total manually added points. | [optional][default to 0] |
| **purchased** | **Float** | Total points purchased via a &#x60;LOYALTY_CARD_POINTS&#x60; reward (credited to the target card). | [optional][default to 0] |
| **purchased_reversed** | **Float** | Total purchased points reversed via reward refund. | [optional][default to 0] |
| **subtracted** | **Float** | Total manually subtracted points. | [optional][default to 0] |
| **expired** | **Float** | Total expired points. | [optional][default to 0] |
| **spent** | **Float** | Total points spent on rewards. | [optional][default to 0] |
| **refunded** | **Float** | Total refunded points (points that were earned by products which were later returned). | [optional][default to 0] |
| **returned** | **Float** | Total returned points (by returning a purchased reward). | [optional][default to 0] |
| **locked** | **Float** | Total locked points (by locking a purchased reward). | [optional][default to 0] |
| **unlocked** | **Float** | Total unlocked points (by unlocking a purchased reward). | [optional][default to 0] |

