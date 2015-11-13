Given(/^time is Nov 13 at around 7.30 am$/) do
  time
end

Given(/^input is "([^"]*)"$/) do |arguments|
  @args = arguments
end

When(/^running weather$/) do
  ENV['MOCK_WEATHER_DATA'] = time.to_s
  @output = `./weather #{@args}`
  raise('Weather failed!') unless $?.success?
end

Then(/^an output line matches "([^"]*)"$/) do |regex_as_string|
  expect(@output).to match(/^#{regex_as_string}$/)
end
