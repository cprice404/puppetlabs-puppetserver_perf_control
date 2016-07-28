#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), "..", "lib", "yaml_maker.rb")

root_dir = File.join(File.dirname(__FILE__), "..", "..", "..")

ym = YamlMaker.new

(1..45).each do |i|
  d = File.join(root_dir, "hieradata/groups/group#{i}")
  if ! Dir.exists?(d) then Dir.mkdir(d) end
  stage = "test"
  if (rand(8) == 0)
    f = File.join(root_dir, "hieradata/groups/group#{i}/#{stage}.yaml")
    m = (rand(20) <= 3) ?
        ym.make_big_map("groups::group#{i}::#{stage}::big_map", 1 + rand(5)) : ""
    File.write(f, "---\n" + m + "\n" + ym.make_uuids(0, "groups::group#{i}::#{stage}::uuid", 3 + rand(10)))
  end
end
