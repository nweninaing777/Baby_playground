FactoryBot.define do
  factory :user do
    name { "うえき" }
    email { "customer1@email.com" }
    password { "password" }
    image {open("#{Rails.root}/db/seed_fixtures/oya.jpg")}
  end

  factory :second_user, class: User do
    name { 'きむら' }
    email { 'test2@example.com' }
    password { 'password02' }
    image {open("#{Rails.root}/db/seed_fixtures/oya1.jpeg")}
  end
end
