
Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string} button") do |element|
    click_on element
end

When("I fill in the {string} with {string}") do |input_field, content|
    fill_in input_field, with: content
end

Given("stop") do
    save_and_open_page
end


Then("I should see {string}") do |string|
    expect(page).to have_content string
end