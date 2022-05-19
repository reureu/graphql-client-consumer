#!/usr/bin/env ruby

require "graphql/client"
require "graphql/client/http"
require "pry"
require_relative 'queries.rb'
require_relative 'mem_control'

500.times do |i|
  http = GraphQL::Client::HTTP.new("https://graphql.anilist.co")
  schema = GraphQL::Client.load_schema(http)

  client = GraphQL::Client.new(schema: schema, execute: http)
  client.allow_dynamic_queries = true
  client.parse(MY_QUERY)

  MemControl.collect_and_log(i)
  MemControl.log_memory_usage(i)

  puts "Query #{i} parsed"
end