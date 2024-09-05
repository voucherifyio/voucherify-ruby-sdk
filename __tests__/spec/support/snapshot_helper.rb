# __tests__/spec/support/snapshot_helper.rb
# 
module SnapshotHelper
  SNAPSHOT_DIR = File.expand_path('../../snapshots', __FILE__)

  def load_snapshot(path)
    snapshot_file = File.join(SNAPSHOT_DIR, "#{path}.snap")
    raise "Snapshot file #{snapshot_file} does not exist" unless File.exist?(snapshot_file)
    File.read(snapshot_file)
  end
end

RSpec.configure do |config|
  config.include SnapshotHelper
end