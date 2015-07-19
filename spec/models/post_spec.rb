require 'rails_helper'

RSpec.describe Post, type: :model do
  before :all do
    @new_post = Post.create(title: "test", content: "post")
  end

  describe "#title" do
    it "returns the content for title" do
      # new_post = Post.create!(title: "test", content: "post")
      expect(@new_post.title).to eq("test")
    end
  end

  describe "#content" do
    it "return the contents of content" do
      expect(@new_post.content).to eq("post")
    end
  end
end
