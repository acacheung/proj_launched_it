require 'spec_helper'

describe "writing a comment" do
  it 'cannot submit comment without all required fields' do
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'google.com'
    fill_in 'Codebase url', :with => 'github.com'
    fill_in 'Description', :with => 'Yay beautiful app'
    click_button 'Create Project'
    click_link 'New Comment'
    fill_in 'First name', :with => ''
    fill_in 'Last name', :with => ''
    fill_in 'Email', :with => ''
    fill_in 'Body', :with => ''
    fill_in 'Project', :with => ''
    click_button 'Create Comment'
    page.should have_content("can't be blank")
  end

  # it 'comments show up after project description' do
  #   visit '/projects/new'
  #   fill_in 'Name', :with => 'Breakable Toy'
  #   fill_in 'Url', :with => 'google.com'
  #   fill_in 'Codebase url', :with => 'github.com'
  #   fill_in 'Description', :with => 'Yay beautiful app'
  #   click_button 'Create Project'
  #   click_link 'New Comment'
  #   fill_in 'First name', :with => 'Launch'
  #   fill_in 'Last name', :with => 'Academy'
  #   fill_in 'Email', :with => 'launch@academy.com'
  #   fill_in 'Body', :with => 'Yea that is beautiful'
  #   fill_in 'Project', :with => '1'
  #   click_button 'Create Comment'
  #   page.should have_content("Yea that is beautiful")
  # end

  # it 'comments that belong to that project show up on project show page' do
  #   visit '/projects/new'
  #   fill_in 'Name', :with => 'Breakable Toy'
  #   fill_in 'Url', :with => 'google.com'
  #   fill_in 'Codebase url', :with => 'github.com'
  #   fill_in 'Description', :with => 'Yay beautiful app'
  #   click_button 'Create Project'
  #   fill_in 'First name', :with => 'Launch'
  #   fill_in 'Last name', :with => 'Academy'
  #   fill_in 'Email', :with => 'launch@academy.com'
  #   fill_in 'Body', :with => 'Yea that is beautiful'
  #   fill_in 'Project', :with => '1'
  #   click_button 'Create Comment'
  #   page.should have_content('Yea that is beautiful')
  #   page.should have_content('Breakable Toy')
  # end
end