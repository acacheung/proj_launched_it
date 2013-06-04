require 'spec_helper'

describe "Submitting a Project" do

  let(:valid_project) { Project.new({ name: "Breakable Toy", url: "www.google.com", codebase_url: "www.github.com", description: "Yay, Beautiful App!" })}

  # Must specify proj name, url, codebase url and a description
  it 'valid submission must have a project name, url, codebase url and description' do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'www.google.com'
    fill_in 'Codebase url', :with => 'www.github.com'
    fill_in 'Description', :with => 'Yay beautiful app'
    click_button 'Create Project'
    page.should have_content("successfully created")
  end

  it 'does not submit if required fields are missing' do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => ''
    fill_in 'Url', :with => ''
    fill_in 'Codebase url', :with => ''
    fill_in 'Description', :with => ''
    click_button 'Create Project'
    page.should have_content("can't be blank")
  end

  # Must specify valid url and valid code base url
  it "does not submit if url or code base url format are not valid" do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'google'
    fill_in 'Codebase url', :with => 'github'
    fill_in 'Description', :with => 'Yay beautiful app'
    click_button 'Create Project'
    page.should have_content("2 errors")
  end

  # optional contact email for project
  it "contact email is optional" do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'google.com'
    fill_in 'Codebase url', :with => 'github.com'
    fill_in 'Description', :with => 'Yay beautiful app'
    fill_in 'Contact email', :with => nil
    click_button 'Create Project'
    page.should have_content("successfully created")
  end

  # if opt contact email specified, should validate is valid email
  it "does not submit if the contact email is not a valid email address" do
    prev_count = Project.count
    visit '/projects/new'
    fill_in 'Name', :with => 'Breakable Toy'
    fill_in 'Url', :with => 'google.com'
    fill_in 'Codebase url', :with => 'github.com'
    fill_in 'Description', :with => 'Yay beautiful app'
    fill_in 'Contact email', :with => "invalid email"
    click_button 'Create Project'
    page.should have_content("1 error")
  end
end