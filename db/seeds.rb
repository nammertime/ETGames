# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#game1 = Product.create([{ ProductID: '1' }, { ProductGenreID: '1' }, { ProductESRBID: '10' }, { ProductName: 'Mass Effect : Andromeda' } , { ProductPrice: 59.99 }, { ProductSKU: "@" },
#  { ProductDesc: "Mass Effect: takes you to the Andromeda galaxy, far beyond the Milky Way. There, you'll lead our fight for a new home in hostile territory - where WE are the aliens." }, { ProductImage: '1' }, { ProductStock: 50 }])



#game4 = Game.create(ProductID: '', ProductGenreID: 'Action', ProductESRBID: 'M', ProductName: 'Prey', ProductPrice: 59.99, ProductSKU: "@", ProductDesc: "", ProductImage: '8', ProductStock: 50 )

#province = Province.create(Name: 'Alberta', GST: '.05', PST: '0', HST: '0')
#province = Province.create(Name: 'British Columbia', GST: '.05', PST: '.07', HST: '0')
#province = Province.create(Name: 'Manitoba', GST: '.05', PST: '.08', HST: '0')
#province = Province.create(Name: 'New Brunswick', GST: '0', PST: '0', HST: '.15')
#province = Province.create(Name: 'Newfoundland and Labrador', GST: '0', PST: '0', HST: '.15')
#province = Province.create(Name: 'Northwest Territories', GST: '.05', PST: '0', HST: '0')
#province = Province.create(Name: 'NovaScotia', GST: '0', PST: '0', HST: '.15')
#province = Province.create(Name: 'Nunavut', GST: '.05', PST: '0', HST: '0')
#province = Province.create(Name: 'Ontario', GST: '0', PST: '0', HST: '.13')
#province = Province.create(Name: 'Prince Edward Island', GST: '0', PST: '0', HST: '.15')
##province = Province.create(Name: 'Quebec', GST: '.09975', PST: '.05', HST: '0')
#province = Province.create(Name: 'Saskatchewan', GST: '.05', PST: '.05', HST: '0')
#province = Province.create(Name: 'Yukon', GST: '.05', PST: '0', HST: '0')

about = About.create(Name: 'first', Desc: "THIS IS A MESS ABOUT THE PAGE THERE IS STUFF HERE BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH")
about = Contact.create(Name: 'first', Desc: "THIS IS A MESS ABOUT THE PAGE THERE IS STUFF HERE BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH")

#Product.destroy_all


#genres = GameGenre.create([{ GenreID: 1, GenreName: 'Action' }, { GenreID: 2, GenreName: 'Adventure' }, { GenreID: 3, GenreName: 'MMO' }, { GenreID: 4, GenreName: 'Racing' }, { GenreID: 5, GenreName: 'RPG' },
#  { GenreID: 6, GenreName: 'Simulation' } , { GenreID: 7, GenreName: 'Strategy' } , { GenreID: 8, GenreName: 'RTS' } , { GenreID: 9, GenreName: 'FPS' }, { GenreID: 10, GenreName: 'Fighting' } ])

#image = Upload.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#winnipeg_customers = Game.where(:ProductGenreID => 'FPS')



#winnipeg_customers.each do |gen|
#   puts gen.ProductGenreID

#end

#puts Game.first.ProductName

#genres.each do |type|

#  puts type.GenreName

#end
#User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
