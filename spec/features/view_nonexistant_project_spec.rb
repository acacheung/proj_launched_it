 require "spec_helper"

 describe "Viewing Projects" do
  it 'shows project info when you view that project' do
    proj = Project.create(:name => 'Ben', :url => 'www.google.com', :code_base_url => 'www.google.com', :description => 'meow')
    visit project_path(proj.id)
    page.should have_content 'Ben'
  end

  it 'will error if a user tries to view a project that does not exist' do
    visit(projects_path + "/999999")
    page.should have_content 'Application Not Found'
  end
end