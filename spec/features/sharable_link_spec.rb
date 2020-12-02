# frozen_string_literal: true

require 'sinatra'

feature 'Shareable link grabs params from the title' do
  scenario "Displaying 'Hello world!' on the shareable page" do
    visit 'http://localhost:4567/search?search_query=Who%20is%20Frank%20Sinatra?'
    expect(page).to have_content('Who is Frank Sinatra?')
  end
end
