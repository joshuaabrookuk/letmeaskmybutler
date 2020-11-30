require 'sinatra'

feature "Dummy search engine generates link" do
  scenario "User enters 'Who is Frank Sinatra?'" do
  visit '/'
  fill_in('search', with: 'Who is Frank Sinatra?')
  click_button 'Submit'
  expect(page).to have_content("http://localhost:4567/web?q=Who+is+Frank+Sinatra?")
  end
end
