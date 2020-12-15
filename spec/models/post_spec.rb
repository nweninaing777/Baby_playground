require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @playground = FactoryBot.create(:playground)
  end

  it "postを登録" do
    post = Post.new(
    user_id: @playground.id,
    playground_id: @playground.id,
    title: "テスト",
    content: "テスト",
    image: open("#{Rails.root}/db/seed_fixtures/Img15.jpeg"))
    expect(post).to be_valid
  end


  it "titleが空ならバリデーションが通らない" do
    myakachan = Post.new(
    user_id: @playground.id,
    playground_id: @playground.id,
    title: "",
    content: "テスト",
    image: open("#{Rails.root}/db/seed_fixtures/Img15.jpeg"))
    expect(myakachan).not_to be_valid
  end


  it "contentが空ならバリデーションが通らない" do
    myakachan = Post.new(
    user_id: @playground.id,
    playground_id: @playground.id,
    title: "テスト",
    content: "",
    image: open("#{Rails.root}/db/seed_fixtures/Img15.jpeg"))
    expect(myakachan).not_to be_valid
  end

end
