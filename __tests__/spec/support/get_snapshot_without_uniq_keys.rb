# spec/support/remove_keys.rb
require_relative 'snapshot_helper'

def get_snapshot_without_uniq_keys(snapshot_name, keys_to_remove = nil)
  keys_to_remove ||= ['id', 'created_at', 'updated_at', 'name', 'rule_id', 'customer_id', 'related_object_id', 'source_id', 'product_id', 'promotion_id', 'campaign_id', 'banner', 'code', 'date', 'voucher_id', 'rule_id', 'related_object_id', 'url', 'tracking_id', 'vouchers_id', 'holder_id']

  # Load snapshot
  snapshot = load_snapshot(snapshot_name)

  # Convert snapshot to hash
  gsub_snapshot = snapshot.gsub(/:(\w+|\$[\w\$]+|".+?"|'.+?')\s*=>/, '"\1":').gsub(/""(.*?)""/, '"\1"').gsub("'", '"').gsub(":nil", ":null").gsub(/(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d{1,3} UTC)/, '"\1"')
  hashed_snapshot = JSON.parse(gsub_snapshot)


  # Remove specified keys from both hashes
  filtered_snapshot = deep_symbolize_keys(remove_keys(hashed_snapshot, keys_to_remove))

  return filtered_snapshot
end

def remove_keys(hash, keys)
  hash.each do |key, value|
    if value.is_a?(Hash)
      remove_keys(value, keys)
    elsif value.is_a?(Array)
      value.each do |item|
        remove_keys(item, keys) if item.is_a?(Hash)
      end
    end
    hash.delete(key) if keys.include?(key)
  end
end


def deep_symbolize_keys(data)
  case data
  when Hash
    data.each_with_object({}) do |(key, value), result|
      new_key = key.to_sym rescue key
      result[new_key] = deep_symbolize_keys(value)
    end
  when Array
    data.map { |item| deep_symbolize_keys(item) }
  else
    data
  end
end
