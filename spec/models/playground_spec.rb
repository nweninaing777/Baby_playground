require 'rails_helper'

RSpec.describe Playground, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it "playgroundを登録" do
    playground = Playground.new(
      user_id: @user.id,
      name: "テスト",
      address: "テスト",
      opening_at: "2020-12-17 09:00:00",
      closing_at: "2020-12-17 16:00:00",
      price: "",
      breadth: "",
      other: "",
    image: open("#{Rails.root}/db/seed_fixtures/play1.jpeg"))
    expect(playground).to be_valid
  end

  it "nameが空ならバリデーションが通らない" do
    playground= Playground.new(
    user_id: @user.id,
    name: "",
    address: "テスト",
    opening_at: "2020-12-17 09:00:00",
    closing_at: "2020-12-17 16:00:00",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/play1.jpeg"))
    expect(playground).not_to be_valid
  end

  it "addressが空ならバリデーションが通らない" do
    playground = Playground.new(
    user_id: @user.id,
    name: "テスト",
    address: "テスト",
    opening_at: "2020-12-17 09:00:00",
    closing_at: "2020-12-17 16:00:00",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/play1.jpeg"))
    expect(playground).to be_valid
  end

  it "opening_at,closing_at,がDatetimeでなければバリデーションが通らない" do
    playground = Playground.new(
    user_id: @user.id,
    name: "テスト",
    address: "テスト",
    opening_at: "",
    closing_at: "",
    price: "",
    breadth: "",
    other: "",
    image: open("#{Rails.root}/db/seed_fixtures/play1.jpeg"))
    expect(playground).not_to be_valid
  end

end
