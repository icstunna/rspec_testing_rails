##########################################################
# RSPEC MODEL TESTING
# Currently using Rspec as a way for testing attributes
# as well as Active record for new Post objects
##########################################################

require 'rails_helper'

RSpec.describe Post, type: :model do
  before :all do
    @new_post = Post.create(title: "test", content: "post")
  end

  describe "#title" do
    #testing for the title field of Post object classes
    it "returns the content for title" do
      expect(@new_post.title).to eq("test")
    end
  end

  describe "#content" do
    #testing for the content field of Answer object classes
    it "return the contents of content" do
      expect(@new_post.content).to eq("post")
    end
  end
end
