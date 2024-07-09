# VoucherifySdk::CustomerSummaryOrders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_amount** | **Integer** | The total amount spent by the customer. Value is multiplied by 100 to precisely represent 2 decimal places. For example &#x60;10000 cents&#x60; for &#x60;$100.00&#x60;. | [optional] |
| **total_count** | **Integer** | Total number of orders made by the customer. | [optional] |
| **average_amount** | **Integer** | Average amount spent on orders. &#x60;total_amount&#x60; &amp;divide; &#x60;total_count&#x60;. Value is multiplied by 100 to precisely represent 2 decimal places. For example &#x60;10000 cents&#x60; for &#x60;$100.00&#x60;. | [optional] |
| **last_order_amount** | **Integer** | Amount spent on last order. Value is multiplied by 100 to precisely represent 2 decimal places. For example &#x60;10000 cents&#x60; for &#x60;$100.00&#x60;. | [optional] |
| **last_order_date** | **Time** | Timestamp representing the date and time of the customer&#39;s last order in ISO 8601 format. | [optional] |

