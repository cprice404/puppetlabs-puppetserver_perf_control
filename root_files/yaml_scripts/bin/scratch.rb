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

# d = File.join(root_dir, "hieradata/groups/group4/loc2")
# FileUtils.mkdir_p(d)
# ["prod", "stage"].each do |stage|
#   f = File.join(d, "#{stage}.yaml")
#   File.write(f, "---\n" + ym.make_uuids(0, "groups::group4::loc2::#{stage}::uuid", 50) +
#       "\n" + ym.make_big_map("groups::group4::loc2::#{stage}::big_map", 5))
# end

# (1..75).each do |i|
#   group = 1 + rand(45)
#   function = 1 + rand(20)
#   d = File.join(root_dir, "hieradata/groups/group#{group}")
#   FileUtils.mkdir_p(d)
#   f = File.join(d, "function#{function}.yaml")
#   uuids = ym.make_uuids(0, "groups::group#{group}::function#{function}::uuid",
#                         1 + rand(6))
#   m = ""
#
#   if i < 4
#     m = ym.make_big_map("groups::group#{group}::function#{function}::big_map", 10)
#   elsif i < 15
#     uuids += "\n" + ym.make_uuids(0, "groups::group#{group}::function#{function}::moaruuid",
#                                   8 + rand(5))
#   end
#
#   File.write(f, "---\n" + uuids + "\n" + m)
#
# end

# (1..20).each do |i|
#   group = 1 + rand(45)
#   function = 1 + rand(20)
#   stage = ["dev", "test", "prod", "stage"][rand(4)]
#   d = File.join(root_dir, "hieradata/groups/group#{group}/function#{function}")
#   FileUtils.mkdir_p(d)
#   f = File.join(d, "#{stage}.yaml")
#   uuids = ym.make_uuids(0, "groups::group#{group}::function#{function}::#{stage}::uuid",
#                         1 + rand(2))
#   m = ""
#
#   if i < 2
#     m = ym.make_big_map("groups::group#{group}::function#{function}::#{stage}::big_map", 5)
#   end
#
#   File.write(f, "---\n" + uuids + "\n" + m)
#
# end

(1..6).each do |i|
  f = File.join(root_dir, "subdomain#{i}.mycompany.org.yaml")
  uuids = ym.make_uuids(0, "domains::subdomain#{i}_mycompany_org::uuid",
                        1 + rand(7))

  if i < 2
    uuids += "\n" + ym.make_uuids(0, "domains::subdomain#{i}_mycompany_org::moaruuid", 10 + rand(10))
  end

  File.write(f, "---\n" + uuids)

end
