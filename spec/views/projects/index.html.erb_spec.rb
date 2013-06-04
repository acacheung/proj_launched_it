require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :name => "Name",
        :url => "Url",
        :codebase_url => "Codebase Url",
        :description => "MyText",
        :contact_email => "Contact Email"
      ),
      stub_model(Project,
        :name => "Name",
        :url => "Url",
        :codebase_url => "Codebase Url",
        :description => "MyText",
        :contact_email => "Contact Email"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Codebase Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
  end
end
