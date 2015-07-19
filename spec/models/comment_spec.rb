##########################################################
# RSPEC MODEL TESTING
# Currently using Rspec as a way for testing attributes
# as well as Active record for new Post objects
##########################################################

require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    Post.destroy_all
    Comment.destroy_all
  end

  before :all do
    @associate_post = Post.create!(title: "test", content: "post")
    @associate_comment = Comment.create!(title: "test", content: "comment")
    @associate_post.comments << @associate_comment
  end

  describe "#comments" do
    it "returns an array of all associated comments" do
      expect(@associate_post.comments).to eq([@associate_comment])
    end
  end
end
