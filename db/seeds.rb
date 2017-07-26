# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create(
name: 'Le Notre Bistro',
address: '538 Manning Ave Toronto, ON M6G 2V9',
price_range: '$31 - $50',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24943049.jpg'
)

Restaurant.create(
name: 'Ambiyan',
address: '149 Main St. Unionville, ON L3R 2G8',
price_range: '$12 to $30',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24997971.jpg'
)

Restaurant.create(
name: 'LaVinia',
address: '2350 Lakeshore Blvd West Toronto, ON M8V 1B8',
price_range: '$12 to $30',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/23872232.jpg'
)

Restaurant.create(
name: 'Ovest cucina e Vineria',
address: '788 King St W Toronto, ON M5V 1N6',
price_range: '$14 to $30',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24398736.jpg'
)

Restaurant.create(
name: 'Canis Restaurant',
address: '746 Queen St. W Toronto, ON M6J 1E9',
price_range: '51 and up',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24686355.jpg'
)

Restaurant.create(
name: 'Miku Restaurant',
address: '105 - 10 Bay Street Toronto, ON M5J 2R8',
price_range: '51 and up',
menu: '/app/assets/images/menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24010766.jpg'
)
