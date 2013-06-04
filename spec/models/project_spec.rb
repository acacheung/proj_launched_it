require 'spec_helper'

describe Project do

  let(:project) {FactoryGirl.build(:project)}

  it 'will not submit if there is no project name' do
    project.name = ""
    expect(project).to_not be_valid
  end

  it 'will not submit if there is no url' do
    project.url = ""
    expect(project).to_not be_valid
  end

  it 'will not submit if there is no codebase url' do
    project.codebase_url = ""
    expect(project).to_not be_valid
  end

  it 'will not submit if there is no description' do
    project.description = ""
    expect(project).to_not be_valid
  end

  it "will not submit if the url format is no valid" do
    project.url = "google"
    expect(project).to_not be_valid
  end

  it "will not submit if the code base url format is no valid" do
    project.codebase_url = "google"
    expect(project).to_not be_valid
  end

  it 'will not submit if email is not a valid email address' do
    project.contact_email = "blah"
    expect(project).to_not be_valid
  end
end