# frozen_string_literal: true

require 'sinatra'

feature 'Dummy search engine generates link' do
  scenario "User enters 'Who is Frank Sinatra?'" do
    visit '/'
    fill_in('search', with: 'Who is Frank Sinatra?')
    click_button 'Submit'
    expect(page).to have_content('http://localhost:4567/search?search_query=Who%20is%20Frank%20Sinatra?')
  end

  scenario 'User sees a message after they generate a link' do
    visit '/'
    fill_in('search', with: 'Who is Frank Sinatra?')
    click_button 'Submit'
    expect(page).to have_content('Copy the link above or try it out yourself')
  end
end
