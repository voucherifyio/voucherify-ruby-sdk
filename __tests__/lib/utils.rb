def generate_random_string(length=10)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  random_string = Array.new(length) { chars.sample }.join
  return random_string
end

def generate_random_voucher_codes(base_code, count, length=6)
  (1..count).map { "#{base_code}-#{generate_random_string(length)}" }
end