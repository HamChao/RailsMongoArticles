require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :body => "MyString",
      :published_at => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_published_at[name=?]", "comment[published_at]"
    end
  end
end
