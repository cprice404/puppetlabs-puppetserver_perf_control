#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), "..", "lib", "yaml_maker.rb")
require 'fileutils'

root_dir = File.join(File.dirname(__FILE__), "..", "..", "..")

ym = YamlMaker.new

# (1..3).each do |i|
#   d = File.join(root_dir, "hieradata/groups/group#{i}/loc1")
#   if ! Dir.exists?(d) then FileUtils.mkdir_p(d) end
#   ["dev", "prod", "stage"].each do |stage|
#     f = File.join(root_dir, "hieradata/groups/group#{i}/loc1/#{stage}.yaml")
#     File.write(f, "---\n" + ym.make_uuids(0, "groups::group#{i}::loc1::#{stage}::uuid", 4))
#   end
# end
d = File.join(root_dir, "hieradata/groups/group4/loc2")
FileUtils.mkdir_p(d)
["prod", "stage"].each do |stage|
  f = File.join(d, "#{stage}.yaml")
  File.write(f, "---\n" + ym.make_uuids(0, "groups::group4::loc2::#{stage}::uuid", 50) +
      "\n" + ym.make_big_map("groups::group4::loc2::#{stage}::big_map", 5))
end
