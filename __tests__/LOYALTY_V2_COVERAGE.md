# Loyalty v2 e2e coverage (Ruby SDK)

Migration map for a future release that publishes admin Loyalty v2 operations on the Ruby SDK. Until then, unpublished admin setup uses `Net::HTTP` in `loyalty_v2_http.rb`; member and runtime flows use generated `LV2*Api` clients.

`npm run generate-sdk-ruby` deletes `lib/`, `docs/`, and root `spec/`. E2e lives only under `__tests__/`, so this file and the suite survive regeneration.

## Files

| File | Role |
|------|------|
| `__tests__/spec/15_loyalty_v2_spec.rb` | RSpec suite |
| `__tests__/lib/loyalty_v2_fixture.rb` | Setup / teardown orchestration |
| `__tests__/lib/loyalty_v2_http.rb` | Authenticated `Net::HTTP` helper for unpublished admin paths |
| `__tests__/lib/config.rb` | Credentials + `LV2*Api` helpers |
| `__tests__/LOYALTY_V2_COVERAGE.md` | This map |

## Depth legend

| Depth | Meaning |
|-------|---------|
| **setup only** | Called from the fixture; no dedicated example assertion beyond setup ids |
| **Smoke** | Call succeeds; body is present |
| **Basic** | Smoke + field checks (status, id, list contains created id) |
| **Flow** | Multi-step happy path |

Do not add endpoints to `scripts/shared/get-take-list.ts` from this suite. When an operation is allowlisted later, switch the matching HTTP helper to the SDK method named below and drop the HTTP wrapper if unused.

---

## HTTP helpers → future SDK methods

| Helper | Method + path | Why HTTP today | Future SDK (when allowlisted) | Depth |
|--------|---------------|----------------|-------------------------------|-------|
| `create_program` | `POST /v2/loyalties/programs` | Not on allowlist | Programs create API (e.g. `LV2ProgramsApi#create_program`) | setup only |
| `get_program` | `GET /v2/loyalties/programs/{programId}` | Not on allowlist | `LV2ProgramsApi#get_program` | unused in suite |
| `update_program` | `PUT /v2/loyalties/programs/{programId}` | Not on allowlist | `LV2ProgramsApi#update_program` | unused in suite |
| `activate_program` | `POST /v2/loyalties/programs/{programId}/activate` | Not on allowlist | `LV2ProgramsApi#activate_program` | setup only |
| `deactivate_program` | `POST /v2/loyalties/programs/{programId}/deactivate` | Not on allowlist | `LV2ProgramsApi#deactivate_program` | setup only (teardown) |
| `delete_program` | `DELETE /v2/loyalties/programs/{programId}` | Not on allowlist | `LV2ProgramsApi#delete_program` | setup only (teardown) |
| `create_card_definition` | `POST /v2/loyalties/card-definitions` | Not on allowlist | Card definitions create API | setup only |
| `activate_card_definition` | `POST /v2/loyalties/card-definitions/{id}/activate` | Not on allowlist | Card definitions activate API | setup only |
| `draft_card_definition` | `POST /v2/loyalties/card-definitions/{id}/draft` | Not on allowlist | Card definitions draft API | unused (no deactivate path) |
| `delete_card_definition` | `DELETE /v2/loyalties/card-definitions/{id}` | Not on allowlist | Card definitions delete API | setup only (teardown) |
| `create_earning_rule` | `POST /v2/loyalties/earning-rules` | Not on allowlist | Earning rules create API | setup only |
| `activate_earning_rule` | `POST /v2/loyalties/earning-rules/{id}/activate` | Not on allowlist | Earning rules activate API | setup only |
| `deactivate_earning_rule` | `POST /v2/loyalties/earning-rules/{id}/deactivate` | Not on allowlist | Earning rules deactivate API | setup only (teardown) |
| `delete_earning_rule` | `DELETE /v2/loyalties/earning-rules/{id}` | Not on allowlist | Earning rules delete API | setup only (teardown) |
| `create_reward` | `POST /v2/loyalties/rewards` | Not on allowlist | Rewards create API | setup only |
| `activate_reward` | `POST /v2/loyalties/rewards/{id}/activate` | Not on allowlist | Rewards activate API | setup only |
| `deactivate_reward` | `POST /v2/loyalties/rewards/{id}/deactivate` | Not on allowlist | Rewards deactivate API | setup only (teardown) |
| `delete_reward` | `DELETE /v2/loyalties/rewards/{id}` | Not on allowlist | Rewards delete API | setup only (teardown) |
| `batch_assign_card_definitions` | `POST /v2/loyalties/programs/{id}/card-definitions/batch` | Not on allowlist | Program card-definitions batch API | setup only |
| `batch_assign_earning_rules` | `POST /v2/loyalties/programs/{id}/earning-rules/batch` | Not on allowlist | Program earning-rules batch API | setup only |
| `batch_assign_rewards` | `POST /v2/loyalties/programs/{id}/rewards/batch` | Not on allowlist | Program rewards batch API | setup only |

Exact generated Ruby method names will follow OpenAPI operationIds once those paths are published; keep this table in sync when switching helpers.

---

## Covered via published SDK

### Members (`LV2ProgramsApi`)

| Method | Depth | Notes |
|--------|-------|-------|
| `create_program_member` | Flow | Customer id identification |
| `get_program_member` | Basic | Id match; cards present |
| `list_program_members` | Basic | Created member in `data` |
| `get_program_membership` | Smoke | Response present |
| `activate_program_member` | Basic | Status `ACTIVE` |
| `deactivate_program_member` | Basic | Status not `ACTIVE` |
| `delete_program_member` | Smoke | Cleanup only |

Not covered: batch create, update member, member activities.

### Cards / points (`LV2ProgramsApi`)

| Method | Depth | Notes |
|--------|-------|-------|
| `adjust_card_points` | Flow | +100; poll until balance visible |
| `list_card_transactions` | Basic | Non-empty after adjust |
| `list_card_pending_points` | Smoke | Skipped activate/cancel when empty (`IMMEDIATE` pending) |

Not covered: pending activate/cancel when buckets exist, expiring points, card activities.

### Order payments (`LV2ProgramsApi` + `OrdersApi`)

| Method | Depth | Notes |
|--------|-------|-------|
| `OrdersApi#create_order` | Smoke | Fixture order |
| `create_member_order_payment` | Flow | `DRY_RUN` + `CARD_BALANCE` |
| `list_member_order_payments` | Smoke | Response present |

Not covered: real `TRANSACTION` payments.

### Reward purchases (`LV2ProgramsApi`)

| Method | Depth | Notes |
|--------|-------|-------|
| `purchase_member_reward` | Flow | Dry-run then `TRANSACTION` |
| `list_member_reward_purchases` | Basic | Poll until `APPROVED` |
| `refund_reward_purchase` | Flow | `policies.refund = ALLOW` |

### Examine (`LV2ExamineApi`)

| Method | Depth | Notes |
|--------|-------|-------|
| `examine_earning_rules` | Smoke | Specific `customer.order.paid` |
| `examine_rewards` | Smoke | Member id |

### Reports (`LV2ProgramsApi`) — subset

| Method | Depth | Notes |
|--------|-------|-------|
| `list_program_members_summary_reports` | Smoke | Empty `data` is a pass |
| `list_program_rewards_summary_reports` | Smoke | Same |
| `list_program_members_daily_reports` | Smoke | `start_date` strictly before `end_date` |
| `list_member_card_daily_reports` | Smoke | Same date rule |

Not covered: other daily/summary report families.

### Allowlisted GETs

| Method | Depth | Notes |
|--------|-------|-------|
| `LV2EarningRulesApi#get_earning_rule` | Basic | Fixture earning rule id |
| `LV2RewardsApi#get_reward` | Basic | Fixture reward id |

Not covered: `LV2BenefitsApi`, list program earning rules / rewards.

### Customers

| Method | Depth | Notes |
|--------|-------|-------|
| `CustomersApi#create_customer` | Smoke | Unique `source_id` |
| permanent delete helper | Smoke | Cleanup; ignore 404 |

---

## Cleanup matrix

1. SDK: deactivate member (if active) → delete member → delete customer (ignore 404).
2. HTTP: deactivate + delete program (drops assignments).
3. HTTP: deactivate + delete earning rule and reward.
4. HTTP: delete card definitions last (423 if a non-draft program/reward still references them).

Failed assertions still run `after(:all)` cleanup via `cleanup_loyalty_v2!`.

## How to run

From the OpenAPI repo root:

```bash
npm run test-ruby-sdk
```

Or in the Ruby image:

```bash
rspec ./spec/15_loyalty_v2_spec.rb
```
