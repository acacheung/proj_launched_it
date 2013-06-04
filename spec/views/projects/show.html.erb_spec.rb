require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :url => "Url",
      :codebase_url => "Codebase Url",
      :description => "MyText",
      :contact_email => "Contact Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/Codebase Url/)
    rendered.should match(/MyText/)
    rendered.should match(/Contact Email/)
  end
end
