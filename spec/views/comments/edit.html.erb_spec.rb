require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :body => "MyString",
      :published_at => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_published_at[name=?]", "comment[published_at]"
    end
  end
end
