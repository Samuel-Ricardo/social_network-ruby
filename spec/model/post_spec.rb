require 'rails_helper'

RSpec.describe Post, :type => :model do
  context "Post title valitation" do
    
    it "must be valid" do
      post = Post.new(title: "First Post", content: 'Nice Content :D')
      expect(post).to be_valid
    end
    
    it "must be invalid" do
      post = Post.new(content: 'Bad Content :D')
      expect(post).to_not be_valid
    end
  
  end

  context "Post content validation" do

    it "must be valid" do
        post = Post.new(title: "Second Post", content: 'Very Nice Content :D')
        expect(post).to be_valid
    end

    it 'must be invalid' do
        post = Posts.new(title: "Second Post <:[]")
        expect(post).to_not be_valid
    end
    
  end
end