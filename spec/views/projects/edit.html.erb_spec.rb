require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :url => "MyString",
      :codebase_url => "MyString",
      :description => "MyText",
      :contact_email => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_url[name=?]", "project[url]"
      assert_select "input#project_codebase_url[name=?]", "project[codebase_url]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_contact_email[name=?]", "project[contact_email]"
    end
  end
end
