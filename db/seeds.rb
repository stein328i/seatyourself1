# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all

Restaurant.create(
name: 'Le Notre Bistro',
address: '538 Manning Ave Toronto, ON M6G 2V9',
price_range: '$31 - $50',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24943049.jpg',
neighbourhood: 'Palmerston - Little Italy',
summary: 'Le Notre is a 25 seat restaurant, offering 14 seats at dining tables, up to four seats at our Chef’s table, and casual seating along our bar and high-top.
At Le Notre we strive to offer you a special experience with an emphasis on quality. Serving great food, and service with attention to details – our essentials.
Ingredients are carefully sourced, GMO free, local, and fresh. Wine - and other libations - are chosen with the same care. The selection is small, but well crafted.'
)

Restaurant.create(
name: 'Ambiyan',
address: '149 Main St. Unionville, ON L3R 2G8',
price_range: '$12 to $30',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24997971.jpg',
neighbourhood: 'Unionville',
summary: 'Located in the heart of historic Unionville, Ontario, Ambiyan brings a cultural richness to the Main Street dining scene offering traditional Indian cuisine in a contemporary setting. Our delicately crafted menu offers a variety of selections to suit all palates, from meat lovers to fish & seafood fans to pure vegetarians. Traditional favorites such as Butter Chicken and Lamb Roganjosh are beautifully complemented by contemporary offerings such Coconut Prawn Curry or Pan seared Scallops. Ambiyan has a well-appointed wine list and a selection of domestic and imported beers, including India"s famous Kingfisher beer. Enjoy great Indian Cuisine in our elegant dining room or bring it home to enjoy.'
)

Restaurant.create(
name: 'LaVinia',
address: '2350 Lakeshore Blvd West Toronto, ON M8V 1B8',
price_range: '$12 to $30',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/23872232.jpg',
neighbourhood: 'Etobicoke',
summary: 'After training and studying at the internationally recognized Lausanne Cooking Academy in Switzerland, opening up Prego in Spain, and Bolero in San Francisco, Chef Fernando Garcia brings Spanish food and culture to Toronto with LaVinia.
This visit to Spain via The Lakeshore, not far from the water, includes tapas dishes such as Piquilo Peppers Stuffed with a Seafood Mousse and Anisete cream, and Fine Ibérico Spanish Ham. Choose from a large range of slow-cooked paellas, fresh pastas, fish including Basque Style Codfish Stew, and lamb or steak for the meat lovers for your meal.'
)

Restaurant.create(
name: 'Ovest cucina e Vineria',
address: '788 King St W Toronto, ON M5V 1N6',
price_range: '$14 to $30',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24398736.jpg',
neighbourhood: 'Entertainment District',
summary: 'Ovest brings a unquie Italian dinning experience to Toronto! Come into our home to experience authentic Italian cuisine and hospitality. Let us guide you through our handcrafted menu highlighting the best of regional and seasonal Italian cuisine. From our many different pastas spanning regions such as Sardegna to Emilia-Romagna to unique variations on classic Italian dishes such as our Tuna Caprese and Scallop Carpaccio.
You want a Roman style pizza? Ovest offers more than just the expected. Our team of highly professional and trained Italian staff will make you forget about Toronto and will take you on a vacation for a few hours to ITALIA!'
)

Restaurant.create(
name: 'Canis Restaurant',
address: '746 Queen St. W Toronto, ON M6J 1E9',
price_range: '51 and up',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24686355.jpg',
neighbourhood: 'Trinity - Bellwoods',
summary: 'Inspired by the bounty of Canada, our dishes highlight seasonal, organic, local produce. We honour the profile of the ingredients by creating simple and accessible dishes.
This is our interpretation of Canadian cuisine.'
)

Restaurant.create(
name: 'Miku Restaurant',
address: '105 - 10 Bay Street Toronto, ON M5J 2R8',
price_range: '51 and up',
menu: 'menu.png',
url: 'https://resizer.otstatic.com/v2/photos/large/24010766.jpg',
neighbourhood: 'Harbourfront',
summary: "As the first East Coast location of Vancouver based Aburi Restaurants, Miku is proud to bring Aburi cuisine to Toronto's waterfront. We specialize in innovative Aburi Sushi and seafood. Combining traditional Japanese techniques and flavours with fresh, local ingredients, our highly skilled chefs pair each morsel of sushi with a unique house made sauce in order to bring out the rich flavour profile of the fish, and then seal the flavours with a binchotan (oak charcoal)- accompanied flame sear. The result is the secret to Miku's success: sushi with a smoky aroma, umami flavour, and decadent, melt-in-your-mouth texture. We also offer a variety of seafood entrées, appetizers, as well as seafood platters.
Our menu is best paired with our extensive sake, wine, and cocktail selection."
)
