require 'rails_helper'

RSpec.describe Post, type: :model do
  it "creates a new instance of a post" do
    new_post = Post.create!(title: "test", content: "post")
    expect(new_post.title).to eq("test")
  end
end
