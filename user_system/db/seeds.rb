Apartment::Tenant.switch!('public')



user = User.where(username: "shravan", firstname: "Shravan", lastname: "", email: "shravan.chandrashekharaiah@gmail.com", mobile_number: "0894874193", language: "english", password: "welcome123").first_or_create

user = User.where(username: "assad", firstname: "Assad", lastname: "", email: "shravan.chandrashekharaiah@gmail.com", mobile_number: "0894874193", language: "english", password: "welcome123").first_or_create
user = User.where(username: "reezvee", firstname: "Reezvee", lastname: "", email: "shravan.chandrashekharaiah@gmail.com", mobile_number: "0894874193", language: "english", password: "welcome123").first_or_create
user = User.where(username: "sushant", firstname: "Sushant", lastname: "", email: "shravan.chandrashekharaiah@gmail.com", mobile_number: "0894874193", language: "english", password: "welcome123").first_or_create



rating = Rating.where(user_id: 1, item_id: 1, rating: 4).first_or_create
rating = Rating.where(user_id: 1, item_id: 2, rating: 6).first_or_create
rating = Rating.where(user_id: 1, item_id: 3, rating: 8).first_or_create

rating = Rating.where(user_id: 2, item_id: 3, rating: 10).first_or_create
rating = Rating.where(user_id: 2, item_id: 5, rating: 8).first_or_create
rating = Rating.where(user_id: 2, item_id: 6, rating: 3).first_or_create

rating = Rating.where(user_id: 3, item_id: 2, rating: 6).first_or_create
rating = Rating.where(user_id: 3, item_id: 5, rating: 3).first_or_create
rating = Rating.where(user_id: 3, item_id: 6, rating: 7).first_or_create

rating = Rating.where(user_id: 4, item_id: 1, rating: 10).first_or_create
rating = Rating.where(user_id: 4, item_id: 2, rating: 9).first_or_create
rating = Rating.where(user_id: 4, item_id: 5, rating: 5).first_or_create
rating = Rating.where(user_id: 4, item_id: 6, rating: 2).first_or_create
