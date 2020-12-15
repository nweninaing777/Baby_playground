FactoryBot.define do
  factory :playground do
    user #FactoryBot/usersでuserを作成
    name {"代々木公園"}
    address {"東京"}
    opening_at {"2020-12-17 07:00:00"}
    closing_at {"2020-12-17 16:00:00"}
    price {"テスト"}
    breadth {"テスト"}
    other {"テスト"}
    image {open("#{Rails.root}/db/seed_fixtures/park15.jpg")}
  end
end
