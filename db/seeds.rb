User.create!(
  [
    {
      name: "Aung",
      email: "aung@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img04-300x300.png"),

    },
    {
      name: "Daw Su",
      email: "su@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img05-300x300.png"),

    },
    {
      name: "Mya",
      email: "mya@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img06-300x300.png"),

    },
    {
      name: "Aye",
      email: "aye@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img07-300x300.png"),

    },
    {
      name: "Nu",
      email: "nu@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img09-300x300.png"),
    },
    {
      name: "Ba",
      email: "ba@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img08300x300.png"),
    },
    {
      name: "Maung",
      email: "mg@gmail.com",
      password: "1111",
      password_confirmation: "1111",
      image: open("#{Rails.root}/db/seed_fixtures/Img-300x300.png"),
    },
  ]
)

    Myakachan.create!(
  [
    {
      user_id: 1,
      name: "Atticus",
      age: "10",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG3.jpeg"),
    },
    {
      user_id: 2,
      name: "Aurora",
      age: "13",
      gender: "female",
      image: open("#{Rails.root}/db/seed_fixtures/IMG7.jpeg"),
    },
    {
      user_id: 3,
      name: "Rose",
      age: "5",
      gender: "female",
      image: open("#{Rails.root}/db/seed_fixtures/IMG6.jpeg"),
    },
    {
      user_id: 4,
      name: "Luna",
      age: "2",
      gender: "female",
      image: open("#{Rails.root}/db/seed_fixtures/IMG4.jpeg"),
    },
    {
      user_id: 5,
      name: "Ethan",
      age: "10",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG2.jpeg"),
    },
    {
      user_id: 6,
      name: "Amelia",
      age: "7",
      gender: "female",
      image: open("#{Rails.root}/db/seed_fixtures/IMG5.jpeg"),
    },
    {
      user_id: 7,
      name: "Oliver",
      age: "6",
      gender: "male",
      image: open("#{Rails.root}/db/seed_fixtures/IMG1.jpeg"),
    },
  ]
)
Playground.create!(
  [
    {
      user_id: 7,
      name: "Happy world",
      address: "Insein Township",
      opening_at: "2020-12-17 09:00:00",
      closing_at: "2020-12-17 16:00:00",
      price: "free",
      breadth: "100m2",
      other: "Baby shop",
      image: open("#{Rails.root}/db/seed_fixtures/park1.jpeg")
    },
    {
      user_id: 1,
      name: "Kids",
      address: "Hlaing Taryar Township",
      opening_at: "2020-12-17 09:00:00",
      closing_at: "2020-12-17 17:00:00",
      price: "2000",
      breadth: "7００",
      other: "",
      image: open("#{Rails.root}/db/seed_fixtures/park2.jpeg")
    },
    {
      user_id: 2,
      name: "Water boom",
      address: "Dagon Township",
      opening_at: "2020-12-17 07:00:00",
      closing_at: "2020-12-17 19:00:00",
      price: "300",
      breadth: "100m2",
      other: "",
      image: open("#{Rails.root}/db/seed_fixtures/park3.jpeg")
    },
    {
      user_id: 2,
      name: "childpark",
      address: "Myingyan Township",
      opening_at: "2020-12-17 05:10:00",
      closing_at: "2020-12-17 18:20:00",
      price: "free",
      breadth: "100m2",
      other: " Registration system",
      image: open("#{Rails.root}/db/seed_fixtures/park4.jpeg")
    },
    {
      user_id: 3,
      name: "goldern park",
      address: "PyinOolwin",
      opening_at: "2020-12-17 05:10:00",
      closing_at: "2020-12-17 19:30:00",
      price: "free",
      breadth: "300m2",
      other: "Registration system",
      image: open("#{Rails.root}/db/seed_fixtures/park5.jpeg")
    },
    {
      user_id: 3,
      name: "Inyar",
      address: "Hlaing Township ",
      opening_at: "2020-12-17 05:10:00",
      closing_at: "2020-12-17 19:30:00",
      price: "free",
      breadth: "30m2",
      other: "Registration system",
      image: open("#{Rails.root}/db/seed_fixtures/park6.jpeg")
    },
    {
      user_id: 3,
      name: "Pitter patter Park",
      address: "Suelay Township ",
      opening_at: "2020-12-17 05:10:00",
      closing_at: "2020-12-17 19:30:00",
      price: "free",
      breadth: "1200m2",
      other: "Registration system",
      image: open("#{Rails.root}/db/seed_fixtures/park8.jpeg")
    },
    {
      user_id: 1,
      name: "The Children's Cloud ",
      address: "Botahtaung Township ",
      opening_at: "2020-12-17 10:00:00",
      closing_at: "2020-12-17 16:00:00",
      price: "adault1200円、baby700円",
      breadth: "3600m2",
      other: "",
      image: open("#{Rails.root}/db/seed_fixtures/park7.jpeg")
    },

  ]
  )
