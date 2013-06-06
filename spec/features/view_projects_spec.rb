 require "spec_helper"

 describe "Viewing Projects" do
  let(:valid_project) { Project.create({ name: "Breakable Toy", url: "www.google.com", codebase_url: "www.github.com", description: "Yay, Beautiful App!" })}
  it 'shows project info when you view that project' do
    visit project_path(valid_project.id)
    page.should have_content 'Breakable Toy'
  end

  it 'will error if a user tries to view a project that does not exist' do
    visit(projects_path + "/999999")
    page.should have_content 'Application Not Found'
  end
end