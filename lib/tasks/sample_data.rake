namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "a@a.com",
                         password: "qwerty",
                         password_confirmation: "qwerty")
    admin.toggle!(:admin)
    end
end
