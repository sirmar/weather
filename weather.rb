#!/usr/bin/env ruby
# coding: utf-8

require_relative 'src/arg_parser.rb'

def main
  parser = ArgParser.new ARGV
  result = parser.run

  puts "In #{result.city}:"
  puts "  Temperature: #{result.temperature} C"

rescue
  puts "City not found"
end

main
