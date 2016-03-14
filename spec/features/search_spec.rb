# require 'spec_helper'
#
# feature 'user searches for story' do
#
#   let!(:story){ FactoryGirl.create(:story) }
#   let!(:story_2){ FactoryGirl.create(:story) }
#
#   scenario 'it returns stories searched for' do
#     visit root_path
#     fill_in "search", with: story.title
#     click_on "DTrLD"
#
#     expect(page).to have_content(story.title)
#
#     fill_in "search", with: story.title.split(' ')[0]
#     click_on "DTLD"
#     expect(page).to have_content(story.title)
#   end

  # scenario 'it does not return life hacks that are not in search terms' do
  #   visit root_path
  #   fill_in "search", with: life_hack_2.title
  #   click_on "Search Life Hacks"
  #
  #   expect(page).to have_content(life_hack_2.title)
  #   expect(page).to_not have_content(life_hack.title)
  # end
  #
  # scenario 'it returns matches in content as well as title' do
  #   # where("title like ?", "%#{search}%") to search only for title
  #   visit root_path
  #   fill_in "search", with: life_hack_2.content
  #   click_on "Search Life Hacks"
  #
  #   expect(page).to have_content(life_hack_2.title)
  # end

# end
