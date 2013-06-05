require 'spec_helper'

describe Comment do

  let(:comment) {FactoryGirl.build(:comment)}

  it 'does not create a comment without a body' do
    comment.body = ""
    expect(comment).to_not be_valid
  end

  it 'does not create a comment without a first name' do
    comment.first_name = ""
    expect(comment).to_not be_valid
  end

  it 'does not create a comment without a last name' do
    comment.last_name = ""
    expect(comment).to_not be_valid
  end

  it 'does not create a comment without a email' do
    comment.email = ""
    expect(comment).to_not be_valid
  end

  it 'does not create a comment without a project id' do
    comment.project_id = ""
    expect(comment).to_not be_valid
  end
end