require 'spec_helper'

describe "props/new" do
  before(:each) do
    assign(:prop, stub_model(Prop,
      :project_id => 1
    ).as_new_record)
  end

  it "renders new prop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", props_path, "post" do
      assert_select "input#prop_project_id[name=?]", "prop[project_id]"
    end
  end
end
