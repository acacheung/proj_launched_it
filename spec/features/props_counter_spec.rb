require "spec_helper"

describe "adding a prop" do
  let(:valid_project) { Project.create({ name: "Breakable Toy", url: "www.google.com", codebase_url: "www.github.com", description: "Yay, Beautiful App!" })}
  
  it "visits a project and add props" do
    visit project_path(valid_project)
    click_button("Give Props")
    page.should have_content '1 Prop'
  end
  it "should show multiple props" do
    visit project_path(valid_project)
    click_button("Give Props")
    click_button("Give Props")
    page.should have_content '2 Props'
  end
end