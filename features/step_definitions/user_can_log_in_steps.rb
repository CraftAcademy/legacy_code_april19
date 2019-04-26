Given("the following user exists") do  |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end

end 

When("I visit the landing page") do
    visit root_path
end

When("I click {string} button") do |element|
    click_on element
end

When("I fill in the {string} with {string}") do |input_field, content|
    fill_in input_field, with: content
end

Then("I should see {string}") do |string|
    expect(page).to have_content string
end