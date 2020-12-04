# frozen_string_literal: true

require 'sinatra'

feature "Params are visible after redirection" do
  scenario "Displays 'Who is Frank Sinatra?' on the redirect page" do
  visit '/http://localhost:4567/redirect?search=Who+is+Frank+Sinatra%3F'
  expect(page).to have_content("Who is Frank Sinatra?")
  end
end
