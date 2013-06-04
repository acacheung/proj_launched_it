require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :body => "MyText",
      :project_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_first_name[name=?]", "comment[first_name]"
      assert_select "input#comment_last_name[name=?]", "comment[last_name]"
      assert_select "input#comment_email[name=?]", "comment[email]"
      assert_select "textarea#comment_body[name=?]", "comment[body]"
      assert_select "input#comment_project_id[name=?]", "comment[project_id]"
    end
  end
end
