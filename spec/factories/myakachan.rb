FactoryBot.define do
  factory :myakachan do
    user #FactoryBot/usersでuserを作成
     name {"ミルク"}
     age {"13"}
     gender {"male"}
    image {open("#{Rails.root}/db/seed_fixtures/Img15.jpeg")}
  end
  end
