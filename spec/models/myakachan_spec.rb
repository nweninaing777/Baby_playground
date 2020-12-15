require 'rails_helper'

RSpec.describe Myakachan, type: :model do
  before do
   @user = FactoryBot.create(:user)
 end

 it "Myakachanを登録" do
   myakachan = Myakachan.new(
   user_id: @user.id,
   name: "テスト",
   age: "1",
   gender: "male",
   image: open("#{Rails.root}/db/seed_fixtures/test1.jpeg"))
   expect(myakachan).to be_valid
 end

 it "nameが空ならバリデーションが通らない" do
   myakachan = Myakachan.new(
   user_id: @user.id,
   name: "",
   age: "1",
   gender: "male",
   image: open("#{Rails.root}/db/seed_fixtures/test1.jpeg"))
   expect(myakachan).not_to be_valid
 end

end
