def generate_random_string(length=10)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  random_string = Array.new(length) { chars.sample }.join
  return random_string
end

def generate_random_voucher_codes(base_code, count, length=6)
  (1..count).map { "#{base_code}-#{generate_random_string(length)}" }
end

# Polls the async actions endpoint until the action reaches a terminal state.
# Returns the final AsyncActionGetResponseBody when it succeeds, raises otherwise.
def wait_for_async_action(async_actions_api_instance, async_action_id, max_attempts: 10, delay_seconds: 2)
  attempt = 0

  loop do
    attempt += 1
    sleep(delay_seconds)

    action = async_actions_api_instance.get_async_action(async_action_id)

    operation_status = action.operation_status.to_s.upcase
    status = action.status.to_s.upcase

    return action if operation_status == 'SUCCESS' || status == 'DONE'

    if operation_status == 'FAILED' || status == 'FAILED'
      raise "Async action #{async_action_id} failed (status=#{status}, operation_status=#{operation_status})"
    end

    if attempt >= max_attempts
      raise "Async action #{async_action_id} did not finish after #{max_attempts} attempts (status=#{status}, operation_status=#{operation_status})"
    end
  end
end
