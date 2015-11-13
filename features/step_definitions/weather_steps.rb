Given(/^input is "([^"]*)"$/) do |arguments|
  @args = arguments
end

When(/^running weather$/) do
  ENV['MOCK_WEATHER_DATA'] = "true"
  @output = `./weather #{@args}`
  raise('Weather failed!') unless $?.success?
end

Then(/^an output line matches "([^"]*)"$/) do |regex_as_string|
  expect(@output).to match(/^#{regex_as_string}$/)
end
