# frozen_string_literal: true


# Trying to check if the /redirect route renders the params but it never will becuase it redirects before it renders

# require 'sinatra'
#
# feature 'Params are visible after redirection' do
#   scenario "Displays 'Who is Frank Sinatra?' on the redirect page" do
#     visit '/http://localhost:4567/redirect?search=Who+is+Frank+Sinatra%3F'
#     expect(page).to have_content('Who is Frank Sinatra?')
#   end
# end
