When(/^I navigate to the home page$/) do
  @test_site = TestSite.new
  @test_site.home.load
  expect(@test_site.home.title).to eq "Firebase & AngularJS • TodoMVC"
end

Then(/^I can see header and input field$/) do
  expect(@test_site.home).to have_welcome_header
  expect(@test_site.home).to have_add_todo_field
end


When(/^I input text "([^\"]*)"$/) do |text|
  expect(@test_site.home).to have_no_todo_list
  @test_site.home.add_todo_field.set text
  @test_site.home.add_todo_field.native.send_keys(:return)
end

Then(/^I can see the item "([^\"]*)" added in my todo list$/) do |text|
  sleep 1
  items = @test_site.home.todo_list.map(&:text)
  expect(items.size).to eq 1
  expect(items.first).to eq text
end
