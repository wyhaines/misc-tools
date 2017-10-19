require 'serf/handler'
include Serf::Handler

describe "Provide a list of all available handlers."

on :query, 'list-handlers' do |event|
  r = ''
  Serf::Handler::Tasks.each do |task|
    r << "#{task.type}: #{task.name}\n"
  end

  r
end
