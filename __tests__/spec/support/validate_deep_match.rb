# spec/support/deep_match.rb

def deep_match?(snapshot, result, path = [], errors = [])
  if snapshot.is_a?(Hash)
    snapshot.each do |key, value|
      current_path = path + [key]
      if result.is_a?(Hash) && result.key?(key)
        deep_match?(value, result[key], current_path, errors)
      elsif result.respond_to?(key)
        deep_match?(value, result.send(key), current_path, errors)
      else
        errors << "Key #{current_path.join('->')} not found in result"
      end
    end
  elsif snapshot.is_a?(Array)
    if snapshot.length != result.length
      errors << "Array length mismatch at #{path.join('->')}: snapshot #{snapshot.length}, result #{result.length}"
    else
      snapshot.each_with_index do |item, index|
        unless deep_match?(item, result[index], path + ["[#{index}]"], errors)
          errors << "Array item mismatch at #{path.join('->')}[#{index}]"
        end
      end
    end
  else
    unless snapshot == result
      errors << "Value mismatch at #{path.join('->')}: snapshot #{snapshot}, result #{result}"
    end
  end

  errors.empty?
end

def validate_deep_match(snapshot, result)
  errors = []
  if deep_match?(snapshot, result, [], errors)
    true
  else
    raise "Deep match failed:\n" + errors.join("\n")
  end
end
