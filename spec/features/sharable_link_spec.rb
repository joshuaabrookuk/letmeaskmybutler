# frozen_string_literal: true



# Both test below either trigget too fast or too slow, I need to figure out
# timing in Capybara or create another test

# require 'sinatra'

# feature 'Shareable link grabs params from the title' do
#   scenario "Displaying 'Who is Frank Sinatra?' in the form feild" do
#     visit 'http://localhost:4567/search?search_query=Who%20is%20Frank%20Sinatra?'
#     expect(page).to have_field('search', with: 'Who is Frank Sinatra?')
#   end
# end


# feature 'Redirection to Ask site' do
#   scenario "Submit is clicked, user redirected" do
#     visit 'http://localhost:4567/search?search_query=Who%20is%20Frank%20Sinatra?'
#     click_button 'Submit'
#     expect(page).to have_current_path('/redirect')
#   end
# end
