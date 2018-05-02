DROP DATABASE IF EXISTS vinder;
CREATE DATABASE vinder;
\c vinder;
CREATE TABLE restaurants
(
  restaurant_id SERIAL PRIMARY KEY,
  restaurant_name VARCHAR(128),
  restaurant_address VARCHAR(512),
  restaurant_phone VARCHAR(20),
  restaurant_URL VARCHAR(512),
  restaurant_longitude VARCHAR(20),
  restaurant_latitude VARCHAR(20),
  restaurant_price VARCHAR(20)
);
CREATE TABLE users
(
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(128),
  user_email VARCHAR(128),
  user_valid BOOLEAN
);
CREATE TABLE dishes
(
  dish_id SERIAL PRIMARY KEY,
  dish_title VARCHAR(128),
  dish_description VARCHAR(512),
  dish_prices varchar(20),
  restaurant_id INT,
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);
CREATE TABLE comments
(
  comment_id SERIAL PRIMARY KEY,
  comment_body VARCHAR,
  comment_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  comment_rating INT,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  dish_id INT,
  FOREIGN KEY (dish_id) REFERENCES dishes (dish_id)
);
CREATE TABLE photos
(
  photo_id SERIAL PRIMARY KEY,
  photo_file_URL VARCHAR,
  photo_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  comment_id INT,
  FOREIGN KEY (comment_id) REFERENCES comments (comment_id)
);
INSERT INTO restaurants
  (restaurant_name, restaurant_address, restaurant_phone, restaurant_URL, restaurant_longitude, restaurant_latitude, restaurant_price)
VALUES('FAB Café', '109 Portland Street,Manchester M1 6DN,United Kingdom', '+441612122997', 'https://www.yelp.com/biz/fab-caf%C3%A9-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240686', '53.476935', '££'),
  ('The Font', '7-9 New Wakefield Street,Manchester M1 5NP,United Kingdom', '+441612360944', 'https://www.yelp.com/biz/the-font-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2412557', '53.4735195', '£'),
  ('Fuel', '448 Wilmslow Road,Manchester M20 3BW,United Kingdom', '+441614489702', 'https://www.yelp.com/biz/fuel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2280029755002', '53.434600476997', '£'),
  ('Dukes 92', '18 Castle Street,Castlefield,Manchester M3 4LZ,United Kingdom', '+441618398642', 'https://www.yelp.com/biz/dukes-92-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2552246111145', '53.4741374899802', '££'),
  ('Cheese Hamlet', '706 Wilmslow Road,Didsbury,Manchester M20 2DW,United Kingdom', '+441614344781', 'https://www.yelp.com/biz/cheese-hamlet-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2317423', '53.417465', '££'),
  ('Nexus Art Cafe', '2 Dale Street,Manchester M1 1JW,United Kingdom', '+441612360100', 'https://www.yelp.com/biz/nexus-art-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2355533267624', '53.482384240966', '£'),
  ('Cask', '29 Liverpool Road,Manchester M3 4NQ,United Kingdom', '+441618192527', 'https://www.yelp.com/biz/cask-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25231587036915', '53.4759560524807', '££'),
  ('Turtle Bay', '33-35 Oxford Street,Manchester M1 4BH,United Kingdom', '+441612364101', 'https://www.yelp.com/biz/turtle-bay-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24276390479288', '53.4766054206709', '££'),
  ('Café Beermoth', '40 Spring Gardens,Manchester M2 1EN,United Kingdom', '+441618352049', 'https://www.yelp.com/biz/caf%C3%A9-beermoth-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241931', '53.481292', '£'),
  ('Alabama`s All American Eatery', '10 Newton Street,Manchester M1 2AN,United Kingdom', '+441612364666', 'https://www.yelp.com/biz/alabamas-all-american-eatery-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233687', '53.480994', '££'),
  ('Greens', '43 Lapwing Lane,Manchester M20 2NT,United Kingdom', '+441614344259', '
https:
//www.yelp.com/biz/greens-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2397365082601', '53.4274792347308', '££'),
  ('Manchester Aquatics Centre', '2 Booth Street East,Manchester M13 9SS,United Kingdom', '+441612759450', '
https:
//www.yelp.com/biz/manchester-aquatics-centre-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2350503185636', '53.469317940057', '£'),
  ('The 8th Day', '111 Oxford Road,Manchester M1 7DU,United Kingdom', '+441612734878', '
https:
//www.yelp.com/biz/the-8th-day-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2375918', '53.4709876', '£'),
  ('Dimitri`s', 'Campfield Arcade,Deansgate,Castlefield,Manchester M3 4FN,United Kingdom', '+441618393319', 'https://www.yelp.com/biz/dimitris-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25105940838867', '53.4761490710327', '££'),
  ('Band on the Wall', '25 Swan Street,Manchester M4 5JZ,United Kingdom', '+441618341786', 'https://www.yelp.com/biz/band-on-the-wall-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23410354725556', '53.4852172634424', '££'),
  ('Sam`s Chop House', 'Back Pool Fold,Off Cross Street,Manchester M2 1HN,United Kingdom', '+441618343210', '
https:
//www.yelp.com/biz/sams-chop-house-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24430084228516', '53.4825297855296', '££'),
  ('Common', '39-41 Edge Street,Northern Quarter,Manchester M4 1HW,United Kingdom', '+441618329245', '
https:
//www.yelp.com/biz/common-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23601', '53.484243', '££'),
  ('Phetpailin', '46 George Street,Chinatown,Manchester M1 4HF,United Kingdom', '+441612286500', '
https:
//www.yelp.com/biz/phetpailin-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24043157116398', '53.4792600128483', '££'),
  ('The Deaf Institute', '135 Grosvenor Street,Manchester M1 7HE,United Kingdom', '+441612769350', '
https:
//www.yelp.com/biz/the-deaf-institute-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236456', '53.4702646', '££'),
  ('Almost Famous', '2 Great Northern Warehouse,Manchester M3 4EJ,United Kingdom', '', '
https:
//www.yelp.com/biz/almost-famous-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24875067625456', '53.4776381470327', '££'),
  ('Fig + Sparrow', '20 Oldham Street,Manchester M1 1JN,United Kingdom', '+441612281843', '
https:
//www.yelp.com/biz/fig-sparrow-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2352782', '53.4826006', '££'),
  ('The Oast House', 'Crown Square,Spinningfields,Manchester M3 3AY,United Kingdom', '+441618293830', '
https:
//www.yelp.com/biz/the-oast-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25078107091679', '53.4809712639667', '££'),
  ('The Northern Quarter', '108 High Street,Manchester M4 1HT,United Kingdom', '+441618327115', '
https:
//www.yelp.com/biz/the-northern-quarter-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23654568335441', '53.4847196454399', '££'),
  ('Earth', '16-20 Turner Street,Northern Quarter,Manchester M4 1DZ,United Kingdom', '+441618341996', '
https:
//www.yelp.com/biz/earth-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2377857', '53.4824574135885', '£'),
  ('Wagamama', '1
Print Works
,Corporation Street,Manchester M4 2BS,United Kingdom', '+441618395916', '
https:
//www.yelp.com/biz/wagamama-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2418067383777', '53.485181986278', '££'),
  ('Big Hands', '296 Oxford Road,Manchester M13 9NS,United Kingdom', '+441612727309', '
https:
//www.yelp.com/biz/big-hands-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2304438029766', '53.4629803335668', '££'),
  ('San Carlo Cicchetti', '40-42 King Street W,Manchester M3 2WY,United Kingdom', '+441618392233', '
https:
//www.yelp.com/biz/san-carlo-cicchetti-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2491516', '53.4815483', '££'),
  ('Bar San Juan', '56 Beech Road,Chorlton,Manchester M21 9EG,United Kingdom', '', '
https:
//www.yelp.com/biz/bar-san-juan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2801075', '53.4385872', '££'),
  ('The Grill on New York Street', 'New York Street,Piccadilly,Manchester M1 4BD,United Kingdom', '+441612281444', '
https:
//www.yelp.com/biz/the-grill-on-new-york-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23843768323503', '53.4798505102633', '£££'),
  ('Mary & Archie', '200 Burton Road,Manchester M20 2LW,United Kingdom', '+441614453130', '
https:
//www.yelp.com/biz/mary-and-archie-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24261947044806', '53.4268155390599', '££'),
  ('The Koffee Pot', '84-86 Oldham Street,Manchester M4 1LN,United Kingdom', '+441612368918', '
https:
//www.yelp.com/biz/the-koffee-pot-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23428984331649', '53.4829547135404', '£'),
  ('English Lounge', '64-66 High Street,Manchester M4 1EA,United Kingdom', '+441618324824', '
https:
//www.yelp.com/biz/english-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2385013', '53.4837408', '££'),
  ('Don Giovanni', '1-2 Peter House,Oxford Street,Manchester M1 5AN,United Kingdom', '+441612282482', '
https:
//www.yelp.com/biz/don-giovanni-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24342974350469', '53.4769089791654', '££'),
  ('Revolución de Cuba - Manchester', 'South Central,11 Peter Street,Manchester M2 5QR,United Kingdom', '+441618268266', '
https:
//www.yelp.com/biz/revoluci%C3%B3n-de-cuba-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2488759', '53.4783933', '££'),
  ('I Am Pho', '44 George Street,Manchester M1 4HF,United Kingdom', '+441612361230', '
https:
//www.yelp.com/biz/i-am-pho-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23999731497952', '53.4792116471757', '££'),
  ('The Foundation Coffee House', 'Sevendale House,Lever Street,Manchester M1 1JB,United Kingdom', '+441612388633', '
https:
//www.yelp.com/biz/the-foundation-coffee-house-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23434356355318', '53.4823277971344', '££'),
  ('The Didsbury', '852 Wilmslow Road,Manchester M20 2SG,United Kingdom', '+441614455389', '
https:
//www.yelp.com/biz/the-didsbury-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23093233921353', '53.4103113601591', '££'),
  ('Australasia', '1 The Avenue,Spinningfields M3 3AP,United Kingdom', '+441618310288', '
https:
//www.yelp.com/biz/australasia-spinningfields?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24940776824951', '53.4794907091502', '£££'),
  ('Kro Bar', '325 Oxford Road,Manchester M13 9PG,United Kingdom', '+441612743100', '
https:
//www.yelp.com/biz/kro-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23202054370194', '53.4648756683944', '££'),
  ('Trove Cafe + Bakery', '1032 Stockport Road,Levenshulme,Manchester M19 3WX,United Kingdom', '+441614327184', '
https:
//www.yelp.com/biz/trove-cafe-bakery-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.189375', '53.441223', '£'),
  ('Seoul Kimchi', '275 Upper Brook Street,Manchester M13 0HR,United Kingdom', '+441612735556', '
https:
//www.yelp.com/biz/seoul-kimchi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.221648', '53.460856', '££'),
  ('The Gas Lamp', '50 Bridge Street,Manchester M3 3BW,United Kingdom', '+441614781224', '
https:
//www.yelp.com/biz/the-gas-lamp-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24947810173035', '53.4808464050293', '££'),
  ('Cloud 23', 'Beetham Tower,303 Deansgate,Manchester M3 4LQ,United Kingdom', '+441618701670', '
https:
//www.yelp.com/biz/cloud-23-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25036142645407', '53.4754431335909', '£££'),
  ('Hold Fast', '50 Newton Street,Manchester M1 2EA,United Kingdom', '+441618832950', '
https:
//www.yelp.com/biz/hold-fast-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2324002161622', '53.4818390691928', '££'),
  ('Umezushi', 'Unit 4,Mirabel Street,Manchester M3 1PJ,United Kingdom', '', '
https:
//www.yelp.com/biz/umezushi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24533200981914', '53.4874683974411', '£££'),
  ('The Metropolitan', '2 Lapwing Lane,Manchester M20 2WS,United Kingdom', '+441614382332', '
https:
//www.yelp.com/biz/the-metropolitan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2407356', '53.4278592', '££'),
  ('Chapter One Books', 'Unit 1,Chatsworth House,19 Lever Street,Manchester M1 1BY,United Kingdom', '+441612982015', '
https:
//www.yelp.com/biz/chapter-one-books-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235055', '53.4818764', '££'),
  ('Java Bar Espresso', '1 - 3 Station Approach Oxford Road,Manchester M1 6FU,United Kingdom', '+441612363656', '
https:
//www.yelp.com/biz/java-bar-espresso-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24134963598727', '53.474247136189', '££'),
  ('The Blue Pig', '69 High St Manchester,Greater Manchester,Manchester M4 1FS,United Kingdom', '+441618320630', '
https:
//www.yelp.com/biz/the-blue-pig-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2381227', '53.4842949', '££'),
  ('Peveril of the Peak', '127 Great Bridgewater Street,Manchester M1 5JQ,United Kingdom', '+441612366364', '
https:
//www.yelp.com/biz/peveril-of-the-peak-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2453008741879', '53.475016098669', '££'),
  ('Viet Shack', 'Arndale Food Court,49-61 High Street,Manchester M4,United Kingdom', '', '
https:
//www.yelp.com/biz/viet-shack-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2393997', '53.4837244', '£'),
  ('PLY', '26 Lever Street,Manchester M1 1DW,United Kingdom', '+441617110401', '
https:
//www.yelp.com/biz/ply-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2338105', '53.4825996', '££'),
  ('Yelp goes to India - World Food Tour XL', 'Unit 5 The Quadrangle,Chester Street,Manchester M1,United Kingdom', '', '
https:
//www.yelp.com/biz/yelp-goes-to-india-world-food-tour-xl-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2401998', '53.4722389', 'undefined'),
  ('Ibérica', '14-15 The Avenue,Manchester M3 3HF,United Kingdom', '+441613581350', '
https:
//www.yelp.com/biz/ib%C3%A9rica-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24935', '53.48008', '££'),
  ('Hawksmoor Manchester', '184-186 Deansgate,Manchester M3 3WB,United Kingdom', '+441618366980', '
https:
//www.yelp.com/biz/hawksmoor-manchester-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24928384603277', '53.4790064587735', '£££'),
  ('The Molly House', '26/28 Richmond Street,Manchester M1 3NB,United Kingdom', '+441612379329', '
https:
//www.yelp.com/biz/the-molly-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23719310760498', '53.4773292541504', '££'),
  ('Fuzion', '264 Wilmslow Road,Fallowfield,Manchester M14 6JR,United Kingdom', '+441612486688', '
https:
//www.yelp.com/biz/fuzion-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2187545', '53.4419116', '££'),
  ('Crazy Pedro`s Part-Time Pizza Parlour', '55-57 Bridge Street,Manchester M3 3BQ,United Kingdom', '+441613593000', 'https://www.yelp.com/biz/crazy-pedros-part-time-pizza-parlour-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25025626879154', '53.4813783749877', '£'),
  ('The Castle Hotel', '66 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612379485', 'https://www.yelp.com/biz/the-castle-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2333007515355', '53.484100311379', '££'),
  ('Waterstones', '91 Deansgate,Manchester M3 2BW,United Kingdom', '+441618373000', 'https://www.yelp.com/biz/waterstones-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246773', '53.482226', '££'),
  ('Sapporo Teppanyaki', '91-93 Liverpool Road,Manchester M3 4JN,United Kingdom', '+441619790579', 'https://www.yelp.com/biz/sapporo-teppanyaki-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25578', '53.4765658', '£££'),
  ('El Rincon de Rafa', '244 Deansgate,Manchester M3 4BQ,United Kingdom', '+441618398819', 'https://www.yelp.com/biz/el-rincon-de-rafa-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2504535040692', '53.478027266691', '££'),
  ('Apotheca', '17 Thomas Street,Northern Quarter,Manchester M4 1FS,United Kingdom', '+441618349411', 'https://www.yelp.com/biz/apotheca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237684', '53.484582', '££'),
  ('Ezra & Gil', '20 Hilton Street,Manchester M1 1FR,United Kingdom', '', 'https://www.yelp.com/biz/ezra-and-gil-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2329212', '53.4820119', '££'),
  ('Red Chilli', '70 Portland Street,Manchester M1 4GU,United Kingdom', '+441612362888', 'https://www.yelp.com/biz/red-chilli-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239742', '53.47798', '££'),
  ('Abel Heywood', '38 Turner Street,Northern Quarter,Manchester M4 1DZ,United Kingdom', '+441618191441', 'https://www.yelp.com/biz/abel-heywood-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23735091769709', '53.4836013453043', '££'),
  ('The Rose Garden', '218 Burton Road,West Didsbury,Manchester M20 2LW,United Kingdom', '+441614780747', 'https://www.yelp.com/biz/the-rose-garden-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24328994750977', '53.4264144897461', '£££'),
  ('Tampopo', '16 Albert Square,Manchester M2 5PF,United Kingdom', '+441618191966', 'https://www.yelp.com/biz/tampopo-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24581651658312', '53.4789318025307', '££'),
  ('The Temple', '100 Great Bridgewater Street,Manchester M1 5JW,United Kingdom', '+441612781610', 'https://www.yelp.com/biz/the-temple-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24224781070877', '53.4752431261803', '££'),
  ('Thaikhun', 'Unit 17,3 Hardman Street The Avenue,Manchester M3 3EB,United Kingdom', '+441618192065', 'https://www.yelp.com/biz/thaikhun-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2504327', '53.4798676', '££'),
  ('Home Sweet Home', 'Unit 4,Great Northern Warehouse,235 Deansgate,Manchester M3 4EN,United Kingdom', '', 'https://www.yelp.com/biz/home-sweet-home-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24938061088324', '53.4781466784291', '££'),
  ('The Old Wellington - Nicholson`s', '4 Cathedral Gates,Manchester M3 1SW,United Kingdom', '+441618395179', '
https:
//www.yelp.com/biz/the-old-wellington-nicholsons-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24399350585971', '53.4846911555498', '££'),
  ('Canal Street', 'Canal Street,Manchester M1 3EZ,United Kingdom', '', '
https:
//www.yelp.com/biz/canal-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236521', '53.477257', 'undefined'),
  ('The Oxnoble', '71 Liverpool Road,Castlefield,Manchester M3 4NQ,United Kingdom', '+441618397760', '
https:
//www.yelp.com/biz/the-oxnoble-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.252885', '53.476011', '££'),
  ('This & That', '3 Soap Street,Manchester M4 1EW,United Kingdom', '+441618324971', '
https:
//www.yelp.com/biz/this-and-that-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2381005', '53.4846242', '£'),
  ('Heaton Park', 'Middleton Road,Higher Blackley,Manchester M25 2SW,United Kingdom', '', '
https:
//www.yelp.com/biz/heaton-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25374221801758', '53.5350024873121', 'undefined'),
  ('Yakisoba', '360 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441618620888', '
https:
//www.yelp.com/biz/yakisoba-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2740652', '53.4381057', '££'),
  ('Wagamama', '1 Spinningfields Square,Manchester M3 3AP,United Kingdom', '+441618339883', 'https://www.yelp.com/biz/wagamama-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24936407213449', '53.4795904600887', '££'),
  ('Dogs n Dough', 'Bow Lane,Manchester M2 4JW,United Kingdom', '+441618343996', 'https:
//www.yelp.com/biz/dogs-n-dough-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244548', '53.4802665', '££'),
  ('Turtle Bay', '46-50 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612358411', '
https:
//www.yelp.com/biz/turtle-bay-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2343624039959', '53.4832045056393', '££'),
  ('Barburrito', '1 Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '+441612286479', '
https:
//www.yelp.com/biz/barburrito-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23662032706357', '53.4804780540125', '£'),
  ('Vivid Lounge', '149A Great Ancoats Street,Manchester M4 6DH,United Kingdom', '+441612728474', '
https:
//www.yelp.com/biz/vivid-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22334562230765', '53.4801651874691', '££'),
  ('Slice Pizza & Bread Bar', 'Stevenson Square,Manchester M1 1JJ,United Kingdom', '+441612369032', '
https:
//www.yelp.com/biz/slice-pizza-and-bread-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23403931651708', '53.4829305425444', '£'),
  ('Mowgli Street Food', 'Unit 16,37 Corn Exchange,Manchester M4 3TR,United Kingdom', '+441618320566', '
https:
//www.yelp.com/biz/mowgli-street-food-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2432122423279', '53.4850903600036', '££'),
  ('Dulcimer', '567 Wilbraham Road,Chorlton,Manchester M21 0AE,United Kingdom', '+441618606444', '
https:
//www.yelp.com/biz/dulcimer-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2766983', '53.4423718', '££'),
  ('Terrace', '43 Thomas Street,Manchester M4 1NA,United Kingdom', '+441618192345', '
https:
//www.yelp.com/biz/terrace-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23640194448656', '53.4842322426089', '££'),
  ('La Viña', '105-107 Deansgate,Manchester M3 2BQ,United Kingdom', '+441618353144', '
https:
//www.yelp.com/biz/la-vi%C3%B1a-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247535', '53.481002', '££'),
  ('63 Degrees', '104 High Street,Manchester M4 1HQ,United Kingdom', '+441618325438', '
https:
//www.yelp.com/biz/63-degrees-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2363215', '53.4849667', '£££'),
  ('Soup Kitchen', '31-33 Spear Street,Northern Quarter,Manchester M1 1DF,United Kingdom', '+441612365100', '
https:
//www.yelp.com/biz/soup-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23353981971741', '53.4835640433847', '££'),
  ('Thirsty Scholar', '50 New Wakefield Street,Manchester M1 5NP,United Kingdom', '+441612366071', '
https:
//www.yelp.com/biz/thirsty-scholar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24119856480411', '53.4733489271766', '££'),
  ('EastZEast', 'Hotel Ibis,Princess Street,Manchester M1 7DG,United Kingdom', '+441612445353', '
https:
//www.yelp.com/biz/eastzeast-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23977398953108', '53.4770221606949', '££'),
  ('All Star Lanes', 'The Great Northern,235 Deansgate,Manchester M3 4EN,United Kingdom', '+441618713600', '
https:
//www.yelp.com/biz/all-star-lanes-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24910587392441', '53.4780027008904', '££'),
  ('Dusk til Pawn', 'Stevenson Square,Northern Quarter,Manchester M1 1DN,United Kingdom', '+441612365381', '
https:
//www.yelp.com/biz/dusk-til-pawn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23351035463111', '53.482523697178', '££'),
  ('Bill`s', '12 John Dalton Street,Manchester M2 6JP,United Kingdom', '+441618342756', 'https://www.yelp.com/biz/bills-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24731409675669', '53.4805177669747', '££'),
  ('Wasabi', '63 Faulkner Street,Manchester M1 4FF,United Kingdom', '+441612287288', 'https://www.yelp.com/biz/wasabi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240029', '53.478042', '£'),
  ('The Dockyard', 'Leftbank,Irwell Square,Spinningfields,Manchester M3 3AN,United Kingdom', '+441618323939', 'https://www.yelp.com/biz/the-dockyard-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25375401849362', '53.4807599059917', '££'),
  ('The Botanist', '78 Deansgate,Manchester M3 2FW,United Kingdom', '+441618331878', 'https://www.yelp.com/biz/the-botanist-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2468436', '53.4826959', '££'),
  ('Falafel', 'Unit 14 Ifco Centre,Wilmslow Road,Manchester M14 5TG,United Kingdom', '+441612561372', 'https://www.yelp.com/biz/falafel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225431', '53.458512', '£'),
  ('Tampopo', 'The Corn Exchange,38 Exchange Sq Unit 2,Manchester M4 3TR,United Kingdom', '+441618396484', 'https://www.yelp.com/biz/tampopo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24269', '53.4844099', '££'),
  ('The Wharf', '6 Slate Wharf,Manchester M15 4SW,United Kingdom', '+441612202960', 'https://www.yelp.com/biz/the-wharf-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2567731972877', '53.473711400071', '££'),
  ('Ginger`s Comfort Emporium', '1st Floor,Afflecks,52 Church Street,Manchester M4 1PW,United Kingdom', '+447980628868', '
https:
//www.yelp.com/biz/gingers-comfort-emporium-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23578847776713', '53.4825688732068', '£'),
  ('Sweet Mandarin', '19 Copperas Street,Manchester M4 1HS,United Kingdom', '+441618328848', '
https:
//www.yelp.com/biz/sweet-mandarin-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2363557', '53.4848959', '££'),
  ('Épernay Champagne Bar', 'Unit 1A,Great Northern Tower,Watson Street,Manchester M3 4EE,United Kingdom', '+441618348802', '
https:
//www.yelp.com/biz/%C3%A9pernay-champagne-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248101', '53.477244', '£££'),
  ('Marble Beerhouse', '57 Manchester Road,Chorlton-cum-Hardy,Manchester M21 9PW,United Kingdom', '+441618819206', '
https:
//www.yelp.com/biz/marble-beerhouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2783068', '53.445515', '££'),
  ('Manchester Academy 2', 'Manchester University Union,Oxford Road,Manchester M13 9PR,United Kingdom', '+441612752930', '
https:
//www.yelp.com/biz/manchester-academy-2-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232225', '53.464386', '££'),
  ('Allotment', '24 Dale Street,Manchester M1 1FY,United Kingdom', '', '
https:
//www.yelp.com/biz/allotment-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23389987731622', '53.4815578859458', '££'),
  ('The Art of Tea', '47 Barlow Moor Road,Didsbury Village,Manchester M20 6TW,United Kingdom', '+441614489323', '
https:
//www.yelp.com/biz/the-art-of-tea-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2336126', '53.4180933', '££'),
  ('Umami', '149/153 Oxford Road,Manchester M1 1EE,United Kingdom', '+441612732300', '
https:
//www.yelp.com/biz/umami-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2367002', '53.4698873', '££'),
  ('Lunya', 'Barton Arcade,Deansgate,Manchester M3 2BB,United Kingdom', '+443300249433', '
https:
//www.yelp.com/biz/lunya-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24686233371509', '53.4823558964581', '££'),
  ('Salvi`s Mozzarella Bar', 'Unit 22b,The Corn Exchange,Manchester M4 3TR,United Kingdom', '+441612228021', 'https://www.yelp.com/biz/salvis-mozzarella-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24318415741249', '53.4847008138447', '££'),
  ('Proper Tea', 'Manchester Cathedral,10 Cateaton Street,Deansgate M3 1SG,United Kingdom', '+441618323220', 'https://www.yelp.com/biz/proper-tea-deansgate?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24463703295003', '53.4847977673709', '££'),
  ('Armenian Taverna', '3 Princess Street,Manchester M2 4DF,United Kingdom', '+441618349025', 'https://www.yelp.com/biz/armenian-taverna-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24490283393789', '53.4800803590548', '££'),
  ('Krispy Kreme', 'Unit B1 City Tower,Piccadilly Plaza,Manchester M1 4BD,United Kingdom', '+441612366531', 'https://www.yelp.com/biz/krispy-kreme-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23775', '53.48031', '££'),
  ('Manchester Town Hall', 'Albert Square,Manchester M2 5DB,United Kingdom', '+441618277661', 'https://www.yelp.com/biz/manchester-town-hall-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244572', '53.479282', 'undefined'),
  ('The Salisbury', '2 Wakefield Street,Manchester M1 5NE,United Kingdom', '+441612365590', 'https://www.yelp.com/biz/the-salisbury-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2410109', '53.4740091', '££'),
  ('Artisan', 'Avenue North 1st Floor,22-28 Bridge Street,Manchester M3 3AB,United Kingdom', '', 'https://www.yelp.com/biz/artisan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25043375915704', '53.4808780426913', '££'),
  ('The Bay Horse', '35-37 Thomas Street,Manchester M4 1NA,United Kingdom', '+441616611041', 'https://www.yelp.com/biz/the-bay-horse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23679', '53.4843117', '££'),
  ('Bangers & Bacon', 'Unit 2,The Kitchens,Manchester M3 3AG,United Kingdom', '+447703455347', 'https://www.yelp.com/biz/bangers-and-bacon-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25404157932968', '53.4809930261869', '£'),
  ('Little Yang Sing', '17 George Street,Chinatown,Manchester M1 4HE,United Kingdom', '+441612287722', 'https://www.yelp.com/biz/little-yang-sing-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2398601939952', '53.479155306911', '£££'),
  ('Don Marco', '1 Campfield Avenue Arcade,Liverpool Road,Manchester M3 4FN,United Kingdom', '+441618319130', 'https://www.yelp.com/biz/don-marco-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25131750106812', '53.4757809532455', '££'),
  ('The Crown and Kettle', '2 Oldham Road,Manchester M4 5FE,United Kingdom', '+441612362923', 'https://www.yelp.com/biz/the-crown-and-kettle-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2324489', '53.484764', '£'),
  ('Grindsmith', 'Greengate Square,Victoria Bridge Street,Salford M3 5AS,United Kingdom', '', 'https://www.yelp.com/biz/grindsmith-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24599026222368', '53.4851833055213', '£'),
  ('The City Arms', '48 Kennedy Street,Manchester M2 4BQ,United Kingdom', '+441612364610', 'https://www.yelp.com/biz/the-city-arms-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242945', '53.479339', '££'),
  ('1847 Manchester', 'Chapel Walk,Manchester M2 1HN,United Kingdom', '+441618328994', 'https://www.yelp.com/biz/1847-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24342375993729', '53.4815711193022', '£££'),
  ('And The Dish Ran Away with The Spoon', '230 Burton Road,Manchester M20 2LW,United Kingdom', '+441616375517', 'https://www.yelp.com/biz/and-the-dish-ran-away-with-the-spoon-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2434202', '53.4261683', '££'),
  ('Wahaca', 'The Corn Exchange,Exchange Square,Manchester M4 3TR,United Kingdom', '+441614137493', 'https://www.yelp.com/biz/wahaca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2449329', '53.4832348', '££'),
  ('Pancho`s Burritos', 'Arndale Food Market,49 High Street,Manchester M4 3AH,United Kingdom', '+447947976346', '
https:
//www.yelp.com/biz/panchos-burritos-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23952651023865', '53.4827915445305', '£'),
  ('Electrik', '559 Wilbraham Road,Chorlton,Manchester M20 0AE,United Kingdom', '+441618813315', '
https:
//www.yelp.com/biz/electrik-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2763206', '53.4423673', '££'),
  ('Spicy Mint Restaurant', '35 Wilmslow Road,Curry Mile Rusholme,Manchester M14 5TB,United Kingdom', '+441612486200', '
https:
//www.yelp.com/biz/spicy-mint-restaurant-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225525', '53.456507', '££'),
  ('Evuna NQ', '79 Thomas Street,Manchester M4 1LW,United Kingdom', '+441618331130', '
https:
//www.yelp.com/biz/evuna-nq-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23543888178324', '53.4834778287062', '££'),
  ('Jaffa Restaurant', '185 Wilmslow Road,Manchester M14 5AP,United Kingdom', '+441612250800', '
https:
//www.yelp.com/biz/jaffa-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.223629', '53.453859', '£'),
  ('The Font', '115-117 Manchester Road,Chorlton,Manchester M21 9PG,United Kingdom', '+441618712022', '
https:
//www.yelp.com/biz/the-font-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2773807', '53.4473495', '££'),
  ('The Pen and Pencil', 'Fourways House,57 Hilton Street,Manchester M1 2EJ,United Kingdom', '+441616603303', '
https:
//www.yelp.com/biz/the-pen-and-pencil-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23172210438548', '53.4813733381279', '££'),
  ('Volta Eaterie & Bar', '167 Burton Road,Manchester M20 2LN,United Kingdom', '+441614488887', '
https:
//www.yelp.com/biz/volta-eaterie-and-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2428721', '53.4264808', '££'),
  ('Grindsmith', '231 - 233 Deansgate,Manchester M3 4EN,United Kingdom', '+441614084699', '
https:
//www.yelp.com/biz/grindsmith-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249764', '53.477674', '££'),
  ('Rosso Restaurant', '43 Spring Gardens,Manchester M2 2BG,United Kingdom', '+441618321400', '
https:
//www.yelp.com/biz/rosso-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2418788935207', '53.480738181698', '£££'),
  ('EastZEast', 'Blackfriars Street,Manchester M3 5BQ,United Kingdom', '+441618343500', '
https:
//www.yelp.com/biz/eastzeast-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24825126160217', '53.483967543403', '££'),
  ('La Tasca Restaurant', '76 Deansgate,Manchester M3 2FW,United Kingdom', '+441618348234', '
https:
//www.yelp.com/biz/la-tasca-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247154', '53.482818', '££'),
  ('Siam Smiles Noodle Bar', '48A George Street,Manchester M1 4HF,United Kingdom', '+441612371555', '
https:
//www.yelp.com/biz/siam-smiles-noodle-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2406705', '53.4787002', '£'),
  ('The Whiskey Jar', '14 Tariff Street,Manchester M1 2FF,United Kingdom', '+441612375686', '
https:
//www.yelp.com/biz/the-whiskey-jar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2322633', '53.4813814', '££'),
  ('Kosmos Taverna', '248 Wilmslow Road,Manchester M14 6LD,United Kingdom', '+441612259106', '
https:
//www.yelp.com/biz/kosmos-taverna-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2187076', '53.4434298', '££'),
  ('Albert`s', '120-122 Barlow Moor Road,West Didsbury,Manchester M20 2PU,United Kingdom', '+441614348289', 'https://www.yelp.com/biz/alberts-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24447188925546', '53.4218476077292', '££'),
  ('Marie Louise Gardens', 'Holme Road,Didsbury,Manchester M20 2UP,United Kingdom', '', 'https://www.yelp.com/biz/marie-louise-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241528', '53.418373', 'undefined'),
  ('Albert`s Shed', 'Eastgate,20 Castle Street,Manchester M3 4LZ,United Kingdom', '+441618399818', '
https:
//www.yelp.com/biz/alberts-shed-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.255534', '53.47422', '£££'),
  ('Nawaab', '1008 Stockport Road,Manchester M19 3WN,United Kingdom', '+441612246969', '
https:
//www.yelp.com/biz/nawaab-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.19013', '53.441962', '££'),
  ('Yelp Gets Psyched for Sake @ Umezushi!', 'Mirabel Street,Manchester M3 1PJ,United Kingdom', '+448718118877', '
https:
//www.yelp.com/biz/yelp-gets-psyched-for-sake-umezushi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', 'null', 'null', 'undefined'),
  ('Lime Tree', '8 Lapwing Lane,Manchester M20 2WS,United Kingdom', '+441614451217', '
https:
//www.yelp.com/biz/lime-tree-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2402297', '53.4275052', '££'),
  ('Côte Brasserie Manchester', '4-12 St Mary`s Street,Manchester M3 2LB,United Kingdom', '+441618340945', 'https://www.yelp.com/biz/c%C3%B4te-brasserie-manchester-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2476328', '53.482261', '££'),
  ('Wrights Traditional Fish & Chips Shop', '86 Cross Street,Manchester M2 4LA,United Kingdom', '+441612226105', 'https://www.yelp.com/biz/wrights-traditional-fish-and-chips-shop-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24525010982609', '53.480436089499', '£'),
  ('Sanskruti Restaurant', '95 Mauldeth Road,Fallowfield,Manchester M14 6SR,United Kingdom', '+441612244700', 'https://www.yelp.com/biz/sanskruti-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2136946', '53.4354633', '££'),
  ('Café Istanbul', '79 Bridge Street,Manchester M3 2RH,United Kingdom', '+441618339942', 'https://www.yelp.com/biz/caf%C3%A9-istanbul-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249103', '53.481151', '££'),
  ('Jamie`s Italian - Manchester', '100 King Street,Manchester M2 4WU,United Kingdom', '+441612413901', '
https:
//www.yelp.com/biz/jamies-italian-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242359', '53.480787', '£££'),
  ('Happy Seasons', '59 Faulkner Street,Manchester M1 4FF,United Kingdom', '+441612367189', '
https:
//www.yelp.com/biz/happy-seasons-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240029', '53.478042', '££'),
  ('Hangingditch', 'Britannic Buildings,42-44 Victoria Street,Manchester M3 1ST,United Kingdom', '+441618328222', '
https:
//www.yelp.com/biz/hangingditch-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244934', '53.484701', '££'),
  ('The Rice Bowl', '33a Cross Street,Manchester M2 1NL,United Kingdom', '+441618329033', '
https:
//www.yelp.com/biz/the-rice-bowl-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244478', '53.481341', '££'),
  ('Cord Bar', '8 Dorsey Street,Northern Quarter,Manchester M4 1LU,United Kingdom', '+441618329494', '
https:
//www.yelp.com/biz/cord-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2347114', '53.4839701', '££'),
  ('El Capo', '12 Tariff Street,Manchester M1 2FF,United Kingdom', '+441612373154', '
https:
//www.yelp.com/biz/el-capo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2322663', '53.4813812', '££'),
  ('Dim Sum Su', '247-239 Deansgate,Manchester M3 4EN,United Kingdom', '', '
https:
//www.yelp.com/biz/dim-sum-su-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25036637377419', '53.4765001995135', '£'),
  ('Efes Taverna', '46 Princess Street,Manchester M1 6HR,United Kingdom', '+441612361824', '
https:
//www.yelp.com/biz/efes-taverna-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239856', '53.476793', '££'),
  ('The Frog and Bucket Comedy Club', '102 Oldham Street,Northern Quarter,Manchester M4 1LJ,United Kingdom', '+441612369805', '
https:
//www.yelp.com/biz/the-frog-and-bucket-comedy-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23294805215124', '53.4848580203622', '£'),
  ('The Alchemist', '1 New York Street,Manchester M1 4HD,United Kingdom', '+441612283856', '
https:
//www.yelp.com/biz/the-alchemist-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239585', '53.480196', '££'),
  ('Oddest', '414 - 416 Wilbraham Road,Chorlton,Manchester M21 0SD,United Kingdom', '+441618607515', '
https:
//www.yelp.com/biz/oddest-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.271927', '53.442703', '££'),
  ('Corbieres', '2 Half Moon Street,Manchester M2 7PB,United Kingdom', '+441618343381', '
https:
//www.yelp.com/biz/corbieres-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24483', '53.48198', '££'),
  ('Pita Pit', '45 Deansgate,Manchester M3 2AY,United Kingdom', '+448000086490', '
https:
//www.yelp.com/biz/pita-pit-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24632848161949', '53.4832163936737', '£'),
  ('The Pasta Factory', '77 Shudehill,Manchester M4 4AN,United Kingdom', '+441612229250', '
https:
//www.yelp.com/biz/the-pasta-factory-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2372511', '53.4857199', '££'),
  ('Topkapi Palace', '205 Deansgate,Manchester M3 3NW,United Kingdom', '+441618329803', '
https:
//www.yelp.com/biz/topkapi-palace-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249073', '53.478662', '££'),
  ('Kosmonaut', '10 Tariff Street,Manchester M1 2FF,United Kingdom', '+447496977443', '
https:
//www.yelp.com/biz/kosmonaut-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2324553', '53.4810822', '££'),
  ('Hard Rock Cafe', 'The Printworks,Exchange Square,Manchester M4 2BS,United Kingdom', '+441618316700', '
https:
//www.yelp.com/biz/hard-rock-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24136900564236', '53.4849333452913', '££'),
  ('Bluu', 'Smithfield Market Buildings,Thomas Street,Manchester M4 1BD,United Kingdom', '+441618397195', '
https:
//www.yelp.com/biz/bluu-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23731059971655', '53.4846332866978', '££'),
  ('Bar Fringe', '8 Swan Street,Manchester M4 5JN,United Kingdom', '+448721077077', '
https:
//www.yelp.com/biz/bar-fringe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2332811501642', '53.485080829154', '££'),
  ('Mr Cooper`s', 'The Midland Hotel,Peter Street,Manchester M60 2DS,United Kingdom', '+441619324128', 'https://www.yelp.com/biz/mr-coopers-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2466788', '53.4779109', '£££'),
  ('Pho', 'Unit 15,The Corn Exchange,37 Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441614649779', 'https://www.yelp.com/biz/pho-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244934', '53.48486', '££'),
  ('The King`s Arms', '11 Bloom Street,Salford M3 6AN,United Kingdom', '+441618323605', '
https:
//www.yelp.com/biz/the-kings-arms-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.255977', '53.48413', '££'),
  ('Saints & Scholars', '694 Wilmslow Road,Manchester M20 2DN,United Kingdom', '+441614482457', '
https:
//www.yelp.com/biz/saints-and-scholars-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2318153', '53.4180875', '££'),
  ('Folk Café Bar', '169-171 Burton Road,Manchester M20 2LN,United Kingdom', '+441614452912', '
https:
//www.yelp.com/biz/folk-caf%C3%A9-bar-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242732', '53.426335', '££'),
  ('The Spoon Inn', '364 Barlow Moor Road,Chorlton,Manchester M21 8AZ,United Kingdom', '+441618812400', '
https:
//www.yelp.com/biz/the-spoon-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27408', '53.438114', '££'),
  ('Red Chilli Restaurant', '403-419 Oxford Road,Manchester M13 9WL,United Kingdom', '+441612731288', '
https:
//www.yelp.com/biz/red-chilli-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22953', '53.4625913', '££'),
  ('Cottonopolis', '16 Newton Street,Manchester M1 2AE,United Kingdom', '+441612365144', '
https:
//www.yelp.com/biz/cottonopolis-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2336838', '53.4813132', '£££'),
  ('Horse & Jockey', '9 Chorlton Green,Chorlton,Manchester M21 9HS,United Kingdom', '+441618607794', '
https:
//www.yelp.com/biz/horse-and-jockey-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28237639822969', '53.438863490568', '££'),
  ('O`Sheas Irish Bar', '80 Princess Street,Manchester M1 6NF,United Kingdom', '+441612363906', 'https://www.yelp.com/biz/o-sheas-irish-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23813322634865', '53.4754890118263', '££'),
  ('eatGoody', '1 Hillcourt Street,Manchester,Manchester M1 7HU,United Kingdom', '+441612743000', 'https://www.yelp.com/biz/eatgoody-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236101', '53.470805', '£'),
  ('The Waterhouse', '67-71 Princess Street,Manchester M2 4EG,United Kingdom', '+441612005380', 'https://www.yelp.com/biz/the-waterhouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24297161955544', '53.4791693644653', '£'),
  ('Nando`s', '351-353 Wilmslow Road,Manchester M14 6SS,United Kingdom', '+441612493972', '
https:
//www.yelp.com/biz/nandos-manchester-14?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218758', '53.440862', '££'),
  ('Battered Cod', '1 Ladybarn Lane,Fallowfield,Manchester M14 6NQ,United Kingdom', '+441612242379', '
https:
//www.yelp.com/biz/battered-cod-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21421136078919', '53.4412272281502', '£'),
  ('#capturemcr', 'City wide,Manchester M1,United Kingdom', '', '
https:
//www.yelp.com/biz/capturemcr-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23984294130855', '53.4821582089369', 'undefined'),
  ('Vermilion', 'Hulme Hall Lane,Lord North Street,Manchester M40 8AD,United Kingdom', '+441612020055', '
https:
//www.yelp.com/biz/vermilion-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.20412644808845', '53.4913513595838', '£££'),
  ('Bem Brasil', 'King Street West,Manchester M3 2GQ,United Kingdom', '+441618392525', '
https:
//www.yelp.com/biz/bem-brasil-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24823', '53.481351', '££'),
  ('Tiger Lounge', '5 Cooper Street,Manchester M2 2FW,United Kingdom', '+441612366007', '
https:
//www.yelp.com/biz/tiger-lounge-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2423714', '53.4792595', '££'),
  ('Caspian', '61-63 Wilmslow Road,Manchester M14 5TB,United Kingdom', '+441612251057', '
https:
//www.yelp.com/biz/caspian-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2256105333759', '53.4565018704005', '£'),
  ('The French by Simon Rogan', 'The Midland Hotel,Peter Street,Manchester M60 2DS,United Kingdom', '+441619324198', '
https:
//www.yelp.com/biz/the-french-by-simon-rogan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24490835582077', '53.4774984798033', '££££'),
  ('Yang Sing', '34 Princess Street,Manchester M1 4JY,United Kingdom', '+441612362200', '
https:
//www.yelp.com/biz/yang-sing-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2408748', '53.4777828', '£££'),
  ('Tariff & Dale', '2 Tariff Street,Manchester M1 2FN,United Kingdom', '+441617102233', '
https:
//www.yelp.com/biz/tariff-and-dale-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2328403', '53.4809685', '££'),
  ('Cane & Grain', '49-51 Thomas Street,Manchester M4 1NA,United Kingdom', '+441618397033', '
https:
//www.yelp.com/biz/cane-and-grain-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2365071', '53.4840992', '££'),
  ('Burger & Lobster', '98 King Street,Manchester M2 4WU,United Kingdom', '+441618320222', '
https:
//www.yelp.com/biz/burger-and-lobster-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2428850120025', '53.480747619496', '££'),
  ('Tops', '106 Portland Street,Manchester M1 4RJ,United Kingdom', '+441612371000', '
https:
//www.yelp.com/biz/tops-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24169373512268', '53.4768089903778', '££'),
  ('Nando`s', '2 Hardman Street,Spinningfields,Manchester M3 3HF,United Kingdom', '+441618317252', 'https://www.yelp.com/biz/nandos-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25016875639001', '53.479270147515', '££'),
  ('Ape & Apple', '28 John Dalton Street,Manchester M2 6HQ,United Kingdom', '+441618399624', 'https://www.yelp.com/biz/ape-and-apple-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2463211', '53.4803319', '££'),
  ('The Liar`s Club', '19A Back Bridge Street,Manchester M2 3PB,United Kingdom', '+441618345111', '
https:
//www.yelp.com/biz/the-liars-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2496479', '53.4812317', '££'),
  ('The Banyan Tree', 'Unit 3 Moho Building,Ellesmere Street,Manchester M15 4JY,United Kingdom', '+441618359906', '
https:
//www.yelp.com/biz/the-banyan-tree-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.26069565178018', '53.4722158409777', '££'),
  ('The Star and Garter', '18-20 Fairfield Street,Manchester M1 2QF,United Kingdom', '+441612736726', '
https:
//www.yelp.com/biz/the-star-and-garter-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22738677765578', '53.4760220328853', '£'),
  ('Oishi Q', '5 Hulme Street,Manchester M1 5GL,United Kingdom', '+441612371112', '
https:
//www.yelp.com/biz/oishi-q-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24093572066659', '53.4728792883089', '££'),
  ('Rain Bar', '80 Great Bridgewater Street,Castlefield,Manchester M1 5JG,United Kingdom', '+441612356500', '
https:
//www.yelp.com/biz/rain-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2450945302102', '53.474706244319', '££'),
  ('Velvet Bar & Restaurant', '2 Canal Street,Manchester M1 3HE,United Kingdom', '+441612369003', '
https:
//www.yelp.com/biz/velvet-bar-and-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235644', '53.477997', '££'),
  ('The Bank', '57 Mosley Street,Manchester M2 3FF,United Kingdom', '+448721077077', '
https:
//www.yelp.com/biz/the-bank-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2405279', '53.4797143', '££'),
  ('Marble', '57 Thomas Street,Manchester M4 1NA,United Kingdom', '+441618819206', '
https:
//www.yelp.com/biz/marble-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236522', '53.484107', '££'),
  ('The Friendship Inn', '351-353 Wilmslow Road,Manchester M14 6XS,United Kingdom', '+441612245758', '
https:
//www.yelp.com/biz/the-friendship-inn-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21914373606823', '53.4404970045157', '£'),
  ('Nando`s', '3 Chester Street,The Quadrangle,Manchester M1 5QS,United Kingdom', '+441612365600', 'https://www.yelp.com/biz/nandos-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24076282275394', '53.4732506879559', '££'),
  ('Beirut', '34-36,Wilmslow Road,Manchester M14 5TQ,United Kingdom', '+441612250763', 'https://www.yelp.com/biz/beirut-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2257026', '53.4557974', '££'),
  ('Nando`s', 'The Printworks,27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618320884', '
https:
//www.yelp.com/biz/nandos-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240668', '53.485117', '££'),
  ('Fish Hut', '27 Liverpool Road,Manchester M3 4NW,United Kingdom', '+441618390957', '
https:
//www.yelp.com/biz/fish-hut-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2520785', '53.4758038', '£'),
  ('Mulligans', '12 Southgate,Manchester M3 2RB,United Kingdom', '+441618329233', '
https:
//www.yelp.com/biz/mulligans-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248847', '53.48117', '££'),
  ('Retro Bar', '78 Sackville Street,Manchester M1 3NJ,United Kingdom', '+441612744892', '
https:
//www.yelp.com/biz/retro-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2350035', '53.4746466', '£'),
  ('O2 Ritz Manchester', 'Whitworth Street West,Manchester M1 5NQ,United Kingdom', '+441612363234', '
https:
//www.yelp.com/biz/o2-ritz-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24288608663491', '53.4743634394268', '££'),
  ('Lead Station', '99 Beech Road,Manchester M21 9EQ,United Kingdom', '+441618815559', '
https:
//www.yelp.com/biz/lead-station-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2797313611083', '53.438244662474', '££'),
  ('The Printworks', '27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618298000', '
https:
//www.yelp.com/biz/the-printworks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24017491981954', '53.4856191836238', '££'),
  ('The Liquorists Mississippi Blues Cruise - Elite Tickets!', 'Castlefield Arena,Rice Street,Manchester M3,United Kingdom', '', '
https:
//www.yelp.com/biz/the-liquorists-mississippi-blues-cruise-elite-tickets-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2552512', '53.4761627', 'undefined'),
  ('Vnam', '140 Oldham Road,Manchester M4 6BG,United Kingdom', '+441612052700', '
https:
//www.yelp.com/biz/vnam-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22686290740967', '53.486930847168', '££'),
  ('Moonlight', '75 Wilmslow Road,Rusholme,Manchester M14 5TB,United Kingdom', '+441612489327', '
https:
//www.yelp.com/biz/moonlight-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2252838', '53.4561777', '£'),
  ('Black Dog Ballroom', '43 Oldham Street,Manchester M1 1JG,United Kingdom', '+441618390664', '
https:
//www.yelp.com/biz/black-dog-ballroom-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236314', '53.482788', '££'),
  ('Carluccio`s', '3 Hardman Square,Spinningfields,Manchester M3 3EB,United Kingdom', '+441618390623', 'https://www.yelp.com/biz/carluccio-sprinngfields-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25271296933292', '53.4793242732986', '££'),
  ('Fumo', '1 St Peter`s Square,Oxford Road,Manchester M1 5AN,United Kingdom', '+441612367344', '
https:
//www.yelp.com/biz/fumo-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244991', '53.477205', '££'),
  ('Double Zero', '358 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '', '
https:
//www.yelp.com/biz/double-zero-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27408', '53.438114', '££'),
  ('Hula', '11 Stevenson Square,Manchester M1 1DB,United Kingdom', '+441612287421', '
https:
//www.yelp.com/biz/hula-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23313144893521', '53.4824691788581', '££'),
  ('The Drawing Room', 'Burton Road,West Didsbury,Manchester M20 2LW,United Kingdom', '+441612836244', '
https:
//www.yelp.com/biz/the-drawing-room-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243289', '53.426414', '££'),
  ('Turkish Delight', '573 Barlow Moor Road,Manchester M21 8AE,United Kingdom', '+441618810503', '
https:
//www.yelp.com/biz/turkish-delight-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276888', '53.441721', '££'),
  ('Cosy Club', 'Corn Exchange,37 Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441619338255', '
https:
//www.yelp.com/biz/cosy-club-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243242', '53.484985', '££'),
  ('Tampopo', 'The Trafford Centre,Manchester M17 8AA,United Kingdom', '+441617478878', '
https:
//www.yelp.com/biz/tampopo-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24412', '53.4792', '££'),
  ('Hey Little Cupcake!', 'Little Quay Street,Manchester M3 3HF,United Kingdom', '+441618320260', '
https:
//www.yelp.com/biz/hey-little-cupcake-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25001222586598', '53.4792289368956', '££'),
  ('The Railway', '3 Lapwing Lane,Didsbury,Manchester M20 2WS,United Kingdom', '+441614459839', '
https:
//www.yelp.com/biz/the-railway-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2403949', '53.4279927', '£'),
  ('The Woodstock', '139 Barlow Moor Road,Manchester M20 2DY,United Kingdom', '+441614487951', '
https:
//www.yelp.com/biz/the-woodstock-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245935', '53.422027', '££'),
  ('Walrus', '78-88 High Street,Manchester M4 1ES,United Kingdom', '+441618288700', '
https:
//www.yelp.com/biz/walrus-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2380228', '53.4842153', '££'),
  ('Harvey Nichols Bar and Brasserie', '21 New Cathedral Street,Manchester M1 1AD,United Kingdom', '+441618288898', '
https:
//www.yelp.com/biz/harvey-nichols-bar-and-brasserie-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244959', '53.483963', '££££'),
  ('The Refuge', 'Oxford Street,Manchester M60 7HA,United Kingdom', '+441612335151', '
https:
//www.yelp.com/biz/the-refuge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24082955344238', '53.4745972390292', '££'),
  ('Archie`s', '72 Oxford Road,Manchester M1 5NH,United Kingdom', '+441612371736', 'https://www.yelp.com/biz/archies-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23734519891968', '53.4707934290718', '£'),
  ('Tai Pan Restaurant', '81-97 Upper Brook Street,Manchester M13 9TX,United Kingdom', '+441612732798', 'https://www.yelp.com/biz/tai-pan-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2293114122892', '53.4674100303184', '££'),
  ('New Samsi', 'Regency House,36 Whitworth Street,Manchester M1 3NR,United Kingdom', '+441612790022', 'https://www.yelp.com/biz/new-samsi-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2362262', '53.4762677', '££'),
  ('Bundobust Manchester', '61 Piccadilly,Manchester M1 2AQ,United Kingdom', '+441613596757', 'https://www.yelp.com/biz/bundobust-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23460698127747', '53.481128692627', '££'),
  ('Habesha', '29-31 Sackville Street,Manchester M1 3LZ,United Kingdom', '+441612287396', 'https://www.yelp.com/biz/habesha-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237463', '53.477283', '£'),
  ('Revolution', 'Arch 7 Deansgate Locks,7 Whitworth Street,Manchester M1 5LH,United Kingdom', '+441618397558', 'https://www.yelp.com/biz/revolution-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2320798', '53.4772935', '££'),
  ('Solita Didsbury', 'School Lane,Manchester M20 6RD,United Kingdom', '+441614344884', 'https://www.yelp.com/biz/solita-didsbury-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2309452', '53.4175427', '££'),
  ('Salvi`s Cucina', '19 John Dalton Street,Manchester M2 6FW,United Kingdom', '+441612228090', '
https:
//www.yelp.com/biz/salvis-cucina-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2462964', '53.4804131', '££'),
  ('The DOCKyard', 'The Blue Tower,The Quays,Salford M50 2HQ,United Kingdom', '+441613593848', '
https:
//www.yelp.com/biz/the-dockyard-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.297692', '53.472872', '££'),
  ('Las Iguanas', '84 Deansgate,Manchester M3 2ER,United Kingdom', '+441618192606', '
https:
//www.yelp.com/biz/las-iguanas-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247408', '53.482575', '££'),
  ('GRUB`s up with Yelp @ Runaway Brewery', '12 Dantzic Street,Manchester M4 4DN,United Kingdom', '', 'https://www.yelp.com/biz/grubs-up-with-yelp-runaway-brewery-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236387', '53.489581', 'undefined'),
  ('The Northern', '56 Tib Street,Manchester M4 1LW,United Kingdom', '+441618352548', 'https://www.yelp.com/biz/the-northern-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2347936215977', '53.483320897431', '££'),
  ('Rosylee', '11 Stevenson Square,Manchester M1 1DB,United Kingdom', '+441612286629', 'https://www.yelp.com/biz/rosylee-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23318744583923', '53.48250436493', '££'),
  ('Frurt Frozen Yogurt', 'Lock Building,41 Whitworth Street West,Manchester M1 5BD,United Kingdom', '+441614786375', 'https://www.yelp.com/biz/frurt-frozen-yogurt-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24342966981506', '53.4741877694989', '£'),
  ('Grand Central', '80 Oxford Road,Manchester M1 5NH,United Kingdom', '+441612360890', 'https://www.yelp.com/biz/grand-central-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2379969', '53.471466', '££'),
  ('The Footage', '137 Grosvenor Street,Manchester M1 7DZ,United Kingdom', '+441612759164', 'https://www.yelp.com/biz/the-footage-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236456', '53.4702646', '£'),
  ('The Beagle', '456-458 Barlow Moor Road,Manchester M21 0BQ,United Kingdom', '+441618818596', 'https://www.yelp.com/biz/the-beagle-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2763871', '53.4416432', '££'),
  ('Philpotts', '19 Brazennose Street,Manchester M2 5BS,United Kingdom', '+441618321419', 'https://www.yelp.com/biz/philpotts-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246956', '53.479942', '£'),
  ('Atlas Bar', '376 Deansgate,Manchester M3 4LY,United Kingdom', '+441618342124', 'https://www.yelp.com/biz/atlas-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25178137271389', '53.4743380831995', '££'),
  ('Beermoth', '70 Tib Street,Manchester M4 1LG,United Kingdom', '+441612224001', 'https://www.yelp.com/biz/beermoth-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2347625', '53.4837377', '££'),
  ('Boggart MicroBar', 'Arndale Centre Food Hall,High Street,Manchester M4 3AJ,United Kingdom', '+441612779666', 'https://www.yelp.com/biz/boggart-microbar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241148', '53.484027', '£'),
  ('Pacific', '58-60 George Street,Manchester M1 4HF,United Kingdom', '+441612286668', 'https://www.yelp.com/biz/pacific-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2405811', '53.4789604', '££'),
  ('Great Kathmandu Tandoori Restaurant', '140-144 Burton Road,Manchester M20 1JQ,United Kingdom', '+441614452145', 'https://www.yelp.com/biz/great-kathmandu-tandoori-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2410036', '53.4283433', '££'),
  ('Pancho`s Burritos', 'Chester Street,Off Oxford Road,Manchester M1 5QS,United Kingdom', '+441612350712', '
https:
//www.yelp.com/biz/panchos-burritos-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240434', '53.472441', '£'),
  ('Tea Hive', '53 Manchester Road,Chorlton M21 9PW,United Kingdom', '+441618810569', '
https:
//www.yelp.com/biz/tea-hive-chorlton?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24863354568154', '53.4496246954468', '££'),
  ('Indian Tiffin Room', '2 Isabella Banks Street,First Street,Manchester M15 4RL,United Kingdom', '+441612281000', '
https:
//www.yelp.com/biz/indian-tiffin-room-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2470212', '53.4727232', '££'),
  ('Vapiano', 'Unit 13,The Corn Exchange,Manchester M4 3TR,United Kingdom', '+441613487590', '
https:
//www.yelp.com/biz/vapiano-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2432337', '53.4850744', '££'),
  ('Lal Qila', '123-127 Wilmslow Road,Manchester M14 5,United Kingdom', '+441612249999', '
https:
//www.yelp.com/biz/lal-qila-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2245813', '53.4547385', '££'),
  ('Gusto', '756 Wilmslow Road,Didsbury,Manchester M20 2DW,United Kingdom', '+441614458209', '
https:
//www.yelp.com/biz/gusto-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2321072358951', '53.416008155881', '££'),
  ('Yadgar Cafe', '71 Thomas Street,Manchester M4 1ES,United Kingdom', '+441618317753', '
https:
//www.yelp.com/biz/yadgar-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2356303', '53.483648', '£'),
  ('Mylahore Cafe - Manchester', '14-18 Wilmslow Road,Manchester M14 5TP,United Kingdom', '+441612488887', '
https:
//www.yelp.com/biz/mylahore-cafe-manchester-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22584017732421', '53.4561625428175', '££'),
  ('Via', '28 Canal Street,Manchester M1 3EZ,United Kingdom', '+441612366523', '
https:
//www.yelp.com/biz/via-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23677', '53.477293', '££'),
  ('Wings', 'Heron House,1 Lincoln Square,Manchester M2 5LN,United Kingdom', '+441618349000', '
https:
//www.yelp.com/biz/wings-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2466263', '53.479567', '£££'),
  ('Guilty By Association', '8 Lever Street,Stevenson Square,Manchester M1 1FB,United Kingdom', '+441617110560', '
https:
//www.yelp.com/biz/guilty-by-association-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23385942879945', '53.4823872926151', '££'),
  ('Rozafa', '63 Princess Street,Manchester M2 4EQ,United Kingdom', '+441612366389', '
https:
//www.yelp.com/biz/rozafa-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24138', '53.47821', '££'),
  ('North Star Delicatessen', '418 Wilbraham Road,Chorlton,Manchester M21 0SD,United Kingdom', '+441618620133', '
https:
//www.yelp.com/biz/north-star-delicatessen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2720545391252', '53.442684565085', '££'),
  ('Christies Bistro', 'The Old Quadrangle,The University of Manchester,Oxford Road,Manchester M13 9PL,United Kingdom', '+441612757702', 'https://www.yelp.com/biz/christies-bistro-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23363050429487', '53.4651733496912', '££'),
  ('Piccolino', '6 Lapwing Lane,West Didsbury,Manchester M20 2WS,United Kingdom', '+441614347524', 'https://www.yelp.com/biz/piccolino-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2403961', '53.4276252', '£££'),
  ('Nudo Sushi Box', 'Unit 2,44 Oxford Street,Manchester M1 5EJ,United Kingdom', '+441612369752', 'https://www.yelp.com/biz/nudo-sushi-box-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24259114603228', '53.475777555091', '£'),
  ('Exchange Square', 'Manchester M3 1BD,United Kingdom', '', 'https://www.yelp.com/biz/exchange-square-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24355', '53.48415', 'undefined'),
  ('Croma', '500 Wilbraham Road,Manchester M21 9AP,United Kingdom', '+441618811117', 'https://www.yelp.com/biz/croma-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28051', '53.442834', '££'),
  ('Gemini Café', '328-330 Oxford Road,Manchester M13 9NG,United Kingdom', '+441612727723', 'https://www.yelp.com/biz/gemini-caf%C3%A9-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2293783', '53.4619388', '£'),
  ('Veeno Manchester', '14 Brazennose Street,Manchester M2 6LW,United Kingdom', '+441618396742', 'https://www.yelp.com/biz/veeno-manchester-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24611507962345', '53.4796853929994', '££'),
  ('Handmade Burger Co.', 'The Old Courthouse,184 Deansgate,Manchester M3 3WB,United Kingdom', '+441618320708', 'https://www.yelp.com/biz/handmade-burger-co-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24914940218606', '53.4793810537889', '££'),
  ('Chilango', '50 Oxford Street,Manchester M1 5EJ,United Kingdom', '+441613933922', 'https://www.yelp.com/biz/chilango-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24167294800282', '53.4752499639076', '£'),
  ('42nd Street', '2 Bootle Street,Manchester M2 5GU,United Kingdom', '+441618317108', 'https://www.yelp.com/biz/42nd-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2491318', '53.4784569', '£'),
  ('Five Guys', 'The Great Hall,intu Trafford Centre,Manchester M17 8AA,United Kingdom', '+441617487267', 'https://www.yelp.com/biz/five-guys-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.349611', '53.46481', '££'),
  ('Pomegranate', '202 Burton Road,West Didsbury,Manchester M20 2LW,United Kingdom', '+441614457171', 'https://www.yelp.com/biz/pomegranate-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243289', '53.426414', '££'),
  ('Albert Square', 'Albert Square,Manchester M2 5HD,United Kingdom', '+441612347357', 'https://www.yelp.com/biz/albert-square-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246199', '53.479243', 'undefined'),
  ('Gusto', '4 Lloyd Street,Manchester M2 5AB,United Kingdom', '+441618322866', 'https://www.yelp.com/biz/gusto-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248269', '53.479223', '££'),
  ('Piccadilly Gardens', 'Piccadilly Gardens,Manchester M1 3BG,United Kingdom', '', 'https://www.yelp.com/biz/piccadilly-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2371049985764', '53.4810423266156', 'undefined'),
  ('Cabana Brasilian Barbecue', 'Corn Exchange,Exchange Square,Manchester M4 3TR,United Kingdom', '', 'https://www.yelp.com/biz/cabana-brasilian-barbecue-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243249', '53.485082', '££'),
  ('Dive NQ', 'Tib Street,Manchester M4 1SH,United Kingdom', '+441618263080', 'https://www.yelp.com/biz/dive-nq-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23653184907242', '53.4822930620822', '££'),
  ('Manchester House', '18-22 Bridge Street,Spinningfields,Manchester M3 3AB,United Kingdom', '+441618352557', 'https://www.yelp.com/biz/manchester-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2508262', '53.4811546', '££££'),
  ('Comptoir Libanais', '18-19 The Avenue,Spinningfields,Manchester M3 3HF,United Kingdom', '+441616723999', 'https://www.yelp.com/biz/comptoir-libanais-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25057723956844', '53.4800876536348', '££'),
  ('Ziya Asian Grill', '65-67 Wilmslow Road,Manchester M14 5TB,United Kingdom', '+441612572010', 'https://www.yelp.com/biz/ziya-asian-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2253216', '53.4562382', '££'),
  ('Buffet City', 'Gainsborough House,111 Portland Street,Manchester M1 6DN,United Kingdom', '+441612283388', 'https://www.yelp.com/biz/buffet-city-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240686', '53.476935', '£'),
  ('The Eagle Bar', '15 Bloom Street,The Village,Manchester M1 3HZ,United Kingdom', '+441612286669', 'https://www.yelp.com/biz/the-eagle-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2368227', '53.4776253', '££'),
  ('Dominos Pizza', '224 Wilmslow Road,Fallowfield,Manchester M14 6LE,United Kingdom', '+441612573832', '
https:
//www.yelp.com/biz/dominos-pizza-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218581', '53.4440459', '££'),
  ('Restaurant Bar & Grill', '14 John Dalton Street,Manchester M2 6JP,United Kingdom', '+441618391999', '
https:
//www.yelp.com/biz/restaurant-bar-and-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2468994', '53.4804631', '£££'),
  ('Punjab Tandoori', '177 Wilmslow Road,Rusholme,Manchester M14 5AP,United Kingdom', '+441612252960', '
https:
//www.yelp.com/biz/punjab-tandoori-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2236484', '53.4537934', '££'),
  ('Pita Pit', '3 Piccadilly Place,Manchester M1 3BN,United Kingdom', '+448000086490', '
https:
//www.yelp.com/biz/pita-pit-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23297415634465', '53.4774869273201', '£'),
  ('Moon Under Water', '68-74 Deansgate,Manchester M3 2FN,United Kingdom', '+441618345882', '
https:
//www.yelp.com/biz/moon-under-water-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24690667783471', '53.4828700077264', '£'),
  ('Evuna', '277-279 Deansgate,Deansgate Mews,Manchester M3 4EW,United Kingdom', '+441618192752', '
https:
//www.yelp.com/biz/evuna-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.250503', '53.476303', '£££'),
  ('Ancoats Coffee Co.', 'Unit 9 Royal Mills,17 Redhill Street,Ancoats M4 5BA,United Kingdom', '+441612883211', '
https:
//www.yelp.com/biz/ancoats-coffee-co-ancoats?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.227627', '53.48328', '£'),
  ('Revolution - Manchester Oxford Road', '90-94 Oxford Road,Manchester M1 5WH,United Kingdom', '+441612367470', '
https:
//www.yelp.com/biz/revolution-manchester-oxford-road-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2404679', '53.4735742', '££'),
  ('The New Oxford', '11 Bexley Square,Chapel Street,Salford M3 6DB,United Kingdom', '+441618327082', '
https:
//www.yelp.com/biz/the-new-oxford-salford-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2496966', '53.4847338', '£'),
  ('Starbucks', 'Ground Floor,Television House,10-12 Mount Street,Manchester M2 4EN,United Kingdom', '+441618397419', '
https:
//www.yelp.com/biz/starbucks-manchester-30?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2456111535987', '53.4779675853228', '££'),
  ('Bem Brasil', '58 Lever Street,Northern Quarter,Manchester M1 1FJ,United Kingdom', '+441619236888', '
https:
//www.yelp.com/biz/bem-brasil-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23165238892657', '53.4839551634784', '£££'),
  ('Tribeca', '50 Sackville Street,Manchester M1 3WF,United Kingdom', '+441612368300', '
https:
//www.yelp.com/biz/tribeca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2360736', '53.4762246', '££'),
  ('ManCoCo', 'Arch 84,Hewitt Street,Manchester M15 4GB,United Kingdom', '+441612371916', '
https:
//www.yelp.com/biz/mancoco-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24895009056256', '53.4739727386629', '£'),
  ('Tattu', '3 Hardman Square,Gartside Street,Spinningfields M3 3EB,United Kingdom', '+441618192060', '
https:
//www.yelp.com/biz/tattu-spinningfields?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2527267', '53.4800568', '£££'),
  ('Black Dog Ballroom NWS', '11-13 New Wakefield Street,Manchester M1 5NP,United Kingdom', '+441612364899', '
https:
//www.yelp.com/biz/black-dog-ballroom-nws-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24159717559814', '53.4736226327625', '££'),
  ('The Crescent', '18-21 The Crescent,Salford,Manchester M5 4PF,United Kingdom', '+441617365600', '
https:
//www.yelp.com/biz/the-crescent-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2667756', '53.483113', '££££'),
  ('Sakana', '23 Peter Street,City Centre M2 5QR,United Kingdom', '+441618841292', '
https:
//www.yelp.com/biz/sakana-city-centre?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2482989', '53.4782982', '£££'),
  ('Platt Fields', 'Wilmslow Road,Fallowfield,Manchester M14 6LA,United Kingdom', '+441612242902', '
https:
//www.yelp.com/biz/platt-fields-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22370147705078', '53.4481934428898', 'undefined'),
  ('Shere Khan', '52 Wilmslow Rd,Manchester M14 5TQ,United Kingdom', '+441612562624', '
https:
//www.yelp.com/biz/shere-khan-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2252577', '53.4551141', '££'),
  ('Neighbourhood', 'The Avenue North,Spinningfields M7 2LD,United Kingdom', '+441618326334', '
https:
//www.yelp.com/biz/neighbourhood-spinningfields?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25091568398731', '53.4809363039741', '££'),
  ('The Bulls Head', '84 London Road,Manchester M1 2PN,United Kingdom', '+441612361724', '
https:
//www.yelp.com/biz/the-bulls-head-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2315109', '53.4763844', '££'),
  ('Frankie & Bennys', '34 Saint Ann Street,Manchester M2 7LE,United Kingdom', '+441618352479', 'https://www.yelp.com/biz/frankie-and-bennys-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245022', '53.481564', '££'),
  ('Lost in Tokyo', '8 Stevenson Square,Manchester M1 1FB,United Kingdom', '+441617110590', 'https://www.yelp.com/biz/lost-in-tokyo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2336054', '53.4822642', '££'),
  ('Cat Café Manchester', '103 High Street,Manchester M4 1HQ,United Kingdom', '', 'https://www.yelp.com/biz/cat-caf%C3%A9-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235834', '53.485043', '££'),
  ('Barburrito', '65 Deansgate,Manchester M3 2BW,United Kingdom', '+441618391311', 'https://www.yelp.com/biz/barburrito-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246716', '53.482512', '£'),
  ('Kingfisher Fish & Chips', '43 Tib Street,Northern Quarter,Manchester M4 1LX,United Kingdom', '+441612705806', 'https://www.yelp.com/biz/kingfisher-fish-and-chips-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2343754500738', '53.48412460982', '£'),
  ('Chorlton Water Park', 'Maitland Ave,Manchester M21 7WH,United Kingdom', '+441618815639', 'https://www.yelp.com/biz/chorlton-water-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.265943', '53.42473', 'undefined'),
  ('CAU Didsbury', '700 Wilmslow Road,Manchester M20 2DN,United Kingdom', '+441614481883', 'https://www.yelp.com/biz/cau-didsbury-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2316949', '53.41779', '£££'),
  ('Delhi Sweet Centre', '137 Wilmslow Road,Manchester M14 5AW,United Kingdom', '+441612572893', 'https://www.yelp.com/biz/delhi-sweet-centre-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '£'),
  ('Red Lion Public House', '532 Wilmslow Road,Withington,Manchester M20 4BX,United Kingdom', '+441614342441', 'https://www.yelp.com/biz/red-lion-public-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2289411', '53.4312293', '£'),
  ('Lotus Vegetarian Kitchen', '536 Wilmslow Road,Withington,Manchester M20 4BY,United Kingdom', '+441614457457', 'https://www.yelp.com/biz/lotus-vegetarian-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2288539', '53.4308126', '££'),
  ('Eastern Bloc Records', '5A Stevenson Square,Northern Quarter,Manchester,Manchester M1 1DN,United Kingdom', '+441612286555', 'https://www.yelp.com/biz/eastern-bloc-records-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23406553268433', '53.4827532384362', '££'),
  ('Lammars', 'Fourways House,57 Hilton Street,Northern Quarter,Manchester M1 2EJ,United Kingdom', '+441612379058', 'https://www.yelp.com/biz/lammars-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231501', '53.481558', '££'),
  ('The Kitchens', 'Irwell Square,Leftbank,Spinningfields,Manchester M3 3AG,United Kingdom', '', 'https://www.yelp.com/biz/the-kitchens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.254946', '53.480609', '£'),
  ('The Ram', '393 Wilmslow Road,Manchester M20 4WA,United Kingdom', '+441612839296', 'https://www.yelp.com/biz/the-ram-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22202152422738', '53.4376977522297', '£'),
  ('Old Monkey', '90 Portland Street,Manchester M1,United Kingdom', '+441612286262', 'https://www.yelp.com/biz/old-monkey-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24000193', '53.47765803', '££'),
  ('All Bar One', '73 King Street,Manchester M2 4NG,United Kingdom', '+441618301811', 'https://www.yelp.com/biz/all-bar-one-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242653', '53.481039', '££'),
  ('Barburrito', '134 The Orient,The Trafford Centre,Manchester M17 8EH,United Kingdom', '+441617476165', 'https://www.yelp.com/biz/barburrito-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34825006720789', '53.4654039458222', '£'),
  ('Browns', '1 York Street,Manchester M2 2AW,United Kingdom', '+441618191055', 'https://www.yelp.com/biz/browns-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240996', '53.480989', '££'),
  ('Battered Cod', '444 Wilmslow Road,Withington,Manchester M20 3BW,United Kingdom', '+441614487520', 'https://www.yelp.com/biz/battered-cod-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2279709', '53.4347209', '£'),
  ('Shoryu Ramen', '1 Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '', 'https://www.yelp.com/biz/shoryu-ramen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236456', '53.480341', '££'),
  ('Nudo Sushi Box', '1 Spinningfields Square,Hardman Street,Manchester M3 3AP,United Kingdom', '', 'https://www.yelp.com/biz/nudo-sushi-box-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249366', '53.479803', '£'),
  ('Rustica', '1 Hilton Street,Manchester M4 1LP,United Kingdom', '+441618353850', 'https://www.yelp.com/biz/rustica-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2350335', '53.4833129', '£'),
  ('Scene Indian Street Kitchen', '4A Leftbank,Irwell Square,Spinningfields M3 3AN,United Kingdom', '+441618393929', 'https://www.yelp.com/biz/scene-indian-street-kitchen-spinningfields?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2550944', '53.4803645', '££'),
  ('James Martin Manchester', 'Manchester 235,2 Watson Street,Manchester M3 4EJ,United Kingdom', '+441618280345', 'https://www.yelp.com/biz/james-martin-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2485353', '53.4770435', '£££'),
  ('Gourmet Burger Kitchen', 'Unit B6 Leftbank Spinningfields,Bridge Street,Manchester M3 3ER,United Kingdom', '+441618322719', 'https://www.yelp.com/biz/gourmet-burger-kitchen-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25359155769853', '53.481174724038', '££'),
  ('BBQ Handmade Noodles King', '45-47 Faulkner Street,Chinatown,Manchester M1 4EE,United Kingdom', '+441612282882', 'https://www.yelp.com/biz/bbq-handmade-noodles-king-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2394843', '53.4784393', '££'),
  ('North Star Piccadilly', '77 Dale Street,Manchester M1 2HG,United Kingdom', '+441612379619', 'https://www.yelp.com/biz/north-star-piccadilly-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232055', '53.480036', '£'),
  ('Infamous Diner', '3-5 Basil Chambers,Nicholas Croft,Manchester M4 1EY,United Kingdom', '+441618191798', 'https://www.yelp.com/biz/infamous-diner-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238347', '53.484391', '££'),
  ('Grand Pacific', '1 The Avenue,Spinningfields,Manchester M3 3AP,United Kingdom', '+441618310288', 'https://www.yelp.com/biz/grand-pacific-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24922855865793', '53.4800855768203', '££££'),
  ('Al-Quds', '187 Wilmslow Road,Manchester M14 5AQ,United Kingdom', '+441612259629', 'https://www.yelp.com/biz/al-quds-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.222919', '53.453348', 'undefined'),
  ('Kim by the Sea', '49 Old Birley Street,Manchester M15 5RF,United Kingdom', '', 'https://www.yelp.com/biz/kim-by-the-sea-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2484358', '53.4653242', '££'),
  ('Tiger Tiger', 'Units 5-6 The Printworks,Withy Grove,Manchester M4 2BS,United Kingdom', '+441613858080', 'https://www.yelp.com/biz/tiger-tiger-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24110922766477', '53.4847928650346', '£££'),
  ('La Bandera', '2 Ridgefield,Manchester M2 6EQ,United Kingdom', '+441618339019', 'https://www.yelp.com/biz/la-bandera-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247324', '53.480931', '£££'),
  ('Pizza Express', '1 Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '+441612371811', 'https://www.yelp.com/biz/pizza-express-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236456', '53.480341', '££'),
  ('Kettlebell Kitchen', 'Unit 5 Nuovo,Great Ancoats Street,Manchester M4 5AB,United Kingdom', '+441612366171', 'https://www.yelp.com/biz/kettlebell-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22958461061557', '53.483297338952', '££'),
  ('Fruit & Nut Sandwich Bar', '2nd Floor Precinct Centre,Oxford Road,Manchester M13 9RN,United Kingdom', '', 'https://www.yelp.com/biz/fruit-and-nut-sandwich-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236144', '53.467587', 'undefined'),
  ('Liquorice', '50 Pall Mall,Manchester M2 1AQ,United Kingdom', '+441618324600', 'https://www.yelp.com/biz/liquorice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243736', '53.48065', '££'),
  ('Per Tutti Cafe Bar & Grill', '3-11 Liverpool Road,Manchester M3 4NW,United Kingdom', '+441618349741', 'https://www.yelp.com/biz/per-tutti-cafe-bar-and-grill-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25189685821533', '53.4757617970355', '££'),
  ('Buzzrocks Caribbean Caterers', '166 Stretford Road,Hulme,Manchester M15 5TL,United Kingdom', '+441612277770', 'https://www.yelp.com/biz/buzzrocks-caribbean-caterers-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248985', '53.4675385', '£'),
  ('The Albert Square Chop House', 'The Memorial Hall,Albert Square,Manchester M2 5PF,United Kingdom', '+441618341866', 'https://www.yelp.com/biz/the-albert-square-chop-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24584346095746', '53.479007243081', '££'),
  ('Twenty Twenty Two', '20 Dale Street,Manchester M1 1EZ,United Kingdom', '+441612379360', 'https://www.yelp.com/biz/twenty-twenty-two-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23426549073793', '53.4816538478447', '££'),
  ('The Parlour', '66 Beech Road,Manchester M21 9EG,United Kingdom', '+441618814871', 'https://www.yelp.com/biz/the-parlour-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2809959', '53.438637', '££'),
  ('Sandinista', '2 Old Bank Street,Manchester M2 7PF,United Kingdom', '+441618329955', 'https://www.yelp.com/biz/sandinista-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24489092826843', '53.4824435962369', '££'),
  ('Bouzouki By Night', '88 Princess Street,Manchester M1 6NG,United Kingdom', '+441612369282', 'https://www.yelp.com/biz/bouzouki-by-night-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2377035', '53.4745617', '££'),
  ('Wine and Wallop', '97 Lapwing Lane,Manchester M20 6UR,United Kingdom', '+441614462464', 'https://www.yelp.com/biz/wine-and-wallop-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2360032', '53.4251497', '££'),
  ('Starbucks', 'Traders Avenue,Barton Dock Road,Manchester M32 0TL,United Kingdom', '+441617489610', 'https://www.yelp.com/biz/starbucks-manchester-21?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34347936427166', '53.4668111449656', '££'),
  ('Sangam', '9 Wilmslow Road,Rusholme,Manchester M14 5TB,United Kingdom', '+441612259248', 'https://www.yelp.com/biz/sangam-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225525', '53.456507', '££'),
  ('Mint Lounge', '46-50 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612281495', 'https://www.yelp.com/biz/mint-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.234017', '53.483402', '££'),
  ('Ban Di Bul', '77 Princess Street,Manchester M2 4EG,United Kingdom', '+441612369733', 'https://www.yelp.com/biz/ban-di-bul-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242717', '53.479017', '££'),
  ('Seven Oaks', '5 Nicholas Street,Chinatown,Manchester M1 4HL,United Kingdom', '+441612371233', 'https://www.yelp.com/biz/seven-oaks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24097490310669', '53.4789096844666', '£'),
  ('Thyme Out Delicatessen', '26 Station Road,Stockport SK4 3QT,United Kingdom', '+441614348686', 'https://www.yelp.com/biz/thyme-out-delicatessen-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.20451807975769', '53.4097137451172', '££'),
  ('Bella Italia', '11-13 Piccadilly,Manchester M1 1LY,United Kingdom', '+441612362342', 'https://www.yelp.com/biz/bella-italia-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2369026', '53.4817975', '££'),
  ('Tokyo Season', '52 Portland Street,Manchester M1 4QU,United Kingdom', '+441612367898', 'https://www.yelp.com/biz/tokyo-season-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239157', '53.478349', '££'),
  ('Byron', '1 Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '+441612373222', 'https://www.yelp.com/biz/byron-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23624316897548', '53.4808765998775', '££'),
  ('BEat Street', 'Deansgate Mews,Great Northern Warehouse,Manchester M3 4EN,United Kingdom', '', 'https://www.yelp.com/biz/beat-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249849', '53.477375', '££'),
  ('Chapati Cafe', '496B Wilbraham Road,Chorlton,Manchester M21 9AS,United Kingdom', '+441614251320', 'https://www.yelp.com/biz/chapati-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2795323', '53.4427789', 'undefined'),
  ('Leaf', '113-115 Portland Street,Manchester M1 6DW,United Kingdom', '', 'https://www.yelp.com/biz/leaf-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240866', '53.476809', '£'),
  ('Satans Hollow', '101 Princess Street,Manchester M1 6DD,United Kingdom', '+441612360666', '
https:
//www.yelp.com/biz/satans-hollow-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23953413223928', '53.4772056044385', '£'),
  ('Pizza Express', 'The Triangle,37 Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441618346130', '
https:
//www.yelp.com/biz/pizza-express-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24426366826174', '53.4848701114241', '££'),
  ('Red Hot World Buffet', '48 Deansgate,Manchester M3 2EG,United Kingdom', '+441618191240', '
https:
//www.yelp.com/biz/red-hot-world-buffet-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24687099456787', '53.483341217041', '££'),
  ('Grafene', '55 King Street,Manchester M2 4LQ,United Kingdom', '', '
https:
//www.yelp.com/biz/grafene-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2438168', '53.4811095', '££'),
  ('Beautiful British Butty and Portland Plaice', '88 Portland Street,City Centre,Manchester M1 4GX,United Kingdom', '', '
https:
//www.yelp.com/biz/beautiful-british-butty-and-portland-plaice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2400295', '53.4777909', '£'),
  ('Wahu', 'The Avenue,Spinningfields,Manchester M3 3AP,United Kingdom', '+441618323022', '
https:
//www.yelp.com/biz/wahu-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2493512', '53.4797946', '£'),
  ('Ask Italian', 'One Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '+441612366600', '
https:
//www.yelp.com/biz/ask-italian-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236456', '53.480341', '££'),
  ('The Post Box', '543 Wilbraham Road,Manchester M21 9PP,United Kingdom', '+441618814853', '
https:
//www.yelp.com/biz/the-post-box-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2754416332652', '53.4423044452273', '££'),
  ('Kebabish', '109 Wilmslow Road,Manchester M14 5AN,United Kingdom', '+441612244994', '
https:
//www.yelp.com/biz/kebabish-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224643', '53.454801', '££'),
  ('Tenpin - Didsbury', 'Parrs Wood Entertainment Centre,Wilmslow Road,Manchester M20 5PG,United Kingdom', '+448715501010', '
https:
//www.yelp.com/biz/tenpin-didsbury-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21888575339887', '53.4100173803238', '£££'),
  ('Revolution - Manchester Parsonage Gardens', 'Arkwright House,Parsonage Gardens,Manchester M3 2LF,United Kingdom', '+441618399675', '
https:
//www.yelp.com/biz/revolution-manchester-parsonage-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2485815', '53.4822732', '££'),
  ('The Laundrette', '32 Beech Road,Manchester M21 9EL,United Kingdom', '+441618815777', '
https:
//www.yelp.com/biz/the-laundrette-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27880507605274', '53.4378626315008', '££'),
  ('Rapha Cycle Club', '5 St Anns Alley,Manchester M2 6AJ,United Kingdom', '+441618346748', 'https://www.yelp.com/biz/rapha-cycle-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24574', '53.481476', '£££'),
  ('Dog & Partridge', '665-667 Wilmslow Road,Manchester M20 6RA,United Kingdom', '+441614455322', 'https://www.yelp.com/biz/dog-and-partridge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231309', '53.417863', '££'),
  ('Heaton Hops', '7 School Lane,Stockport SK4 5DE,United Kingdom', '+441614423541', 'https://www.yelp.com/biz/heaton-hops-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1755898', '53.428009', '££'),
  ('Café Metro', '20 High Street,Manchester M4 1QB,United Kingdom', '+441618348688', 'https://www.yelp.com/biz/caf%C3%A9-metro-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23873', '53.482835', '£'),
  ('Tapeo & Wine', '209 Deansgate,Manchester M3 3NW,United Kingdom', '+441618322770', 'https://www.yelp.com/biz/tapeo-and-wine-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249161', '53.4786816', '££'),
  ('BistroVin', '63 Deansgate,Manchester M3 2BB,United Kingdom', '+441618347328', 'https://www.yelp.com/biz/bistrovin-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2466763', '53.4825325', '£'),
  ('The Font', '236 Wilmslow Road,Fallowfield,Manchester M14 6LE,United Kingdom', '+441612484820', 'https://www.yelp.com/biz/the-font-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218774', '53.443891', '£'),
  ('Smoak Bar & Grill', 'Smoak Bar & Grill at Malmaison,Manchester M1 1LZ,United Kingdom', '+441612781000', 'https://www.yelp.com/biz/smoak-bar-and-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23315358161926', '53.4789926884799', '£££'),
  ('Proof', '30 Manchester Road,Chorlton,Manchester M21 9PH,United Kingdom', '+441618629333', 'https://www.yelp.com/biz/proof-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27814628595274', '53.4439516335909', '££'),
  ('Victoria Baths', 'Hathersage Road,Chorlton-on-Medlock,Manchester M13 0FE,United Kingdom', '+441612242020', 'https://www.yelp.com/biz/victoria-baths-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21647024154663', '53.4599102644122', 'undefined'),
  ('Sackville Street Gardens', 'Sackville Street,Manchester M1 3WA,United Kingdom', '', 'https://www.yelp.com/biz/sackville-street-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23531007766724', '53.4760555246073', 'undefined'),
  ('Azuma', '73 Cavendish Street,Manchester M15 6DD,United Kingdom', '+441612261776', 'https://www.yelp.com/biz/azuma-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2416304', '53.4687298', 'undefined'),
  ('Fletcher Moss Botanical Gardens', 'Millgate Lane,Manchester M20 2SW,United Kingdom', '', 'https://www.yelp.com/biz/fletcher-moss-botanical-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22918', '53.40808', 'undefined'),
  ('Go Falafel', '3 Newton Street,Manchester M1 1HW,United Kingdom', '+441612286888', 'https://www.yelp.com/biz/go-falafel-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23439568771176', '53.4810296347664', '£'),
  ('Nasi Lemak', 'The Vibe,175 Broughton Lane unit 3,Spinningfields,Manchester M7 1US,United Kingdom', '+441616371060', 'https://www.yelp.com/biz/nasi-lemak-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2554264523834', '53.4803818088891', '£'),
  ('Spinningfields', 'Quay Street,Manchester M8 8HE,United Kingdom', '', 'https://www.yelp.com/biz/spinningfields-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25212071819166', '53.479723323951', 'undefined'),
  ('The Angel', '6 Angel Street,Manchester M4 3BQ,United Kingdom', '+441618334786', 'https://www.yelp.com/biz/the-angel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2351962', '53.4872053', '££'),
  ('Wasabi', 'Unit 14 The Printworks,Manchester M4 2BS,United Kingdom', '+441618348669', 'https://www.yelp.com/biz/wasabi-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2408409440117', '53.472951752445', '£'),
  ('Chiquito', 'The Printworks,Withy Grove,Manchester M4 2BS,United Kingdom', '+441618301560', 'https://www.yelp.com/biz/chiquito-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240763', '53.485186', '££'),
  ('Waxy O`Connors', 'The Printworks,27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618351210', 'https://www.yelp.com/biz/waxy-o-connors-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2417144515965', '53.4855259021178', '£££'),
  ('El Gato Negro', '52 King Street,Manchester M2 4LY,United Kingdom', '+441616948585', 'https://www.yelp.com/biz/el-gato-negro-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245772', '53.48105', '££'),
  ('Starbucks', '1-5 Oxford Road,Manchester M1 6EY,United Kingdom', '+441612736394', 'https://www.yelp.com/biz/starbucks-manchester-13?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239884', '53.473737', '££'),
  ('Joshua Brooks', '106 Princess Street,Manchester M1 6NG,United Kingdom', '+441612737336', 'https://www.yelp.com/biz/joshua-brooks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2383209479426', '53.475727946507', '££'),
  ('The Rising Sun', '22 Queen Street,Manchester M2 5HX,United Kingdom', '+441618341193', 'https://www.yelp.com/biz/the-rising-sun-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247299', '53.479375', '£'),
  ('Olive & Thyme', '416-418 Barlow Moor Road,Chorlton,Manchester M21 8AD,United Kingdom', '+441618816695', 'https://www.yelp.com/biz/olive-and-thyme-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2761205', '53.4416694', '££'),
  ('Tibetan Kitchen', '254 Upper Chorlton Road,Stretford M16 0BN,United Kingdom', '+441618811966', 'https://www.yelp.com/biz/tibetan-kitchen-stretford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27184545633036', '53.4507759304009', '£'),
  ('The Deli', '754 Wilmslow Rd,Manchester M20 2DW,United Kingdom', '+441614344084', 'https://www.yelp.com/biz/the-deli-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2319487', '53.4163522', '££'),
  ('Rajdoot Restaurant', 'Carlton House,18 Albert Square,Manchester M2 5PE,United Kingdom', '+441618342176', 'https://www.yelp.com/biz/rajdoot-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2456127386619', '53.478943235674', '££'),
  ('Dog Bowl', '57 Whitworth Street W,Manchester M1 5WW,United Kingdom', '+441612282888', 'https://www.yelp.com/biz/dog-bowl-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24263435824289', '53.4743418380078', '£££'),
  ('Koreana', '40a King Street West,Manchester M3 2WY,United Kingdom', '+441618324330', 'https://www.yelp.com/biz/koreana-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2492740716749', '53.481542444569', '££'),
  ('Changos Burrito Bar', '91-93 St James Buildings,Oxford Street,Manchester M1 6ET,United Kingdom', '+441612282182', 'https://www.yelp.com/biz/changos-burrito-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24146054505451', '53.4752248778117', '£'),
  ('Piccadilly Tap', '8 Gateway House,Piccadilly Station Approach,Manchester M1 2GH,United Kingdom', '+441613934168', 'https://www.yelp.com/biz/piccadilly-tap-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231849', '53.478279', '££'),
  ('Noho Bar', 'Spear Street,Stevenson Square,Manchester M1 1FB,United Kingdom', '+441612365381', 'https://www.yelp.com/biz/noho-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23360154973761', '53.4825651956699', '££'),
  ('RedbankCo', '22 Redbank,Manchester M4 4HF,United Kingdom', '+441618347064', 'https://www.yelp.com/biz/redbankco-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238607', '53.49044', '£'),
  ('The Washhouse', 'Thorniley Brow,Manchester M4 2AJ,United Kingdom', '+441618395287', 'https://www.yelp.com/biz/the-washhouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23944229690841', '53.4847064247402', '£££'),
  ('Randalls Coffee House', 'Royal Exchange Arcade,Manchester M2 7EA,United Kingdom', '+441618395490', '
https:
//www.yelp.com/biz/randalls-coffee-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245058', '53.482652', '££'),
  ('Coriander', '485 Barlow Moor Road,Manchester M21,United Kingdom', '+441618810340', '
https:
//www.yelp.com/biz/coriander-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2749063643799', '53.4386601750694', '££'),
  ('Namaste Nepal', '164-166 Burton Road,W Didsbury,Manchester M20 1LH,United Kingdom', '+441614459060', '
https:
//www.yelp.com/biz/namaste-nepal-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241972', '53.427667', '££'),
  ('Dry Bar', '29-30 Oldham Street,Manchester M1 1JN,United Kingdom', '+441612369840', '
https:
//www.yelp.com/biz/dry-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23502189985624', '53.4828431173004', '££'),
  ('Crown & Anchor', '41 Hilton Street,Manchester M1 2EE,United Kingdom', '+441612281142', '
https:
//www.yelp.com/biz/crown-and-anchor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232231', '53.481976', '£'),
  ('Japan Deli/Little Samsi', '521 Wilmslow Road,Withington,Manchester M20 4BA,United Kingdom', '+441614459205', '
https:
//www.yelp.com/biz/japan-deli-little-samsi-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.228385', '53.430992', '££'),
  ('The Shakespeare', '16 Fountain Street,Manchester M2 2AA,United Kingdom', '+441618345515', '
https:
//www.yelp.com/biz/the-shakespeare-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240065', '53.481772', '£'),
  ('Hop & Grape', 'Steve Biko Building,Oxford Road,Manchester M13 9PR,United Kingdom', '+441612752930', '
https:
//www.yelp.com/biz/hop-and-grape-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232225', '53.464386', '££'),
  ('The Woodthorpe', 'Bury Old Road,Manchester M25 0EG,United Kingdom', '+441617950032', '
https:
//www.yelp.com/biz/the-woodthorpe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.262852', '53.523682', '££'),
  ('Yo! Sushi', 'Unit R6&R7,Manchester Arndale,Manchester M4 2HU,United Kingdom', '+441612198934', '
https:
//www.yelp.com/biz/yo-sushi-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242814', '53.482944', '££'),
  ('The Crown & Anchor', '6 Cateaton Street,Manchester M3 1SQ,United Kingdom', '+441618342278', '
https:
//www.yelp.com/biz/the-crown-and-anchor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24449208626954', '53.4842031769957', '££'),
  ('Pret a Manger', 'Piccadilly Railway Station,Piccadilly Station Manchester,Manchester M1 2BN,United Kingdom', '+442079325457', '
https:
//www.yelp.com/biz/pret-a-manger-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230965', '53.477377', '££'),
  ('Bar21', '10 Thomas Street,Northern Quarter,Manchester M4 1DH,United Kingdom', '+441618322769', '
https:
//www.yelp.com/biz/bar21-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2378635153442', '53.4846902177273', '££'),
  ('Bella Italia', '92-96 Deansgate,Manchester M3 2QG,United Kingdom', '+441618324332', '
https:
//www.yelp.com/biz/bella-italia-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2473462', '53.4822166', '££'),
  ('Gurkha Grill', '194 Burton Road,Manchester M20 1LH,United Kingdom', '+441614453461', '
https:
//www.yelp.com/biz/gurkha-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2424658', '53.4270959', '££'),
  ('New Union Hotel', '111 Princess St,Manchester M1 6JB,United Kingdom', '+441612281492', '
https:
//www.yelp.com/biz/new-union-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238408', '53.476382', '££'),
  ('Wok & Flame', '206 Burton Road,West Didsbury,Manchester M20 2LW,United Kingdom', '+441614346318', '
https:
//www.yelp.com/biz/wok-and-flame-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2427813', '53.4266741', '££'),
  ('Kabana', '52 Back Turner Street,Manchester M4 1FP,United Kingdom', '+441618352447', '
https:
//www.yelp.com/biz/kabana-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2365204', '53.48349', '£'),
  ('Java Bar Espresso', 'No 4 Cigar Alley,Victoria Station,Todd Street,Manchester M3 1WY,United Kingdom', '', '
https:
//www.yelp.com/biz/java-bar-espresso-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2421002', '53.4871351', '££'),
  ('Bakchich', 'Unit 4 The Quadrangle,Chester Street,Manchester M1 5QS,United Kingdom', '+441612283158', '
https:
//www.yelp.com/biz/bakchich-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2401998', '53.4722389', '££'),
  ('Zizzis', 'Left Bank Spinningfields,Manchester M3 3AN,United Kingdom', '+441618397984', 'https://www.yelp.com/biz/zizzis-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25427461699784', '53.4806811344617', '££'),
  ('TGI Fridays', 'The Orient,Trafford Centre,Manchester M17 8AA,United Kingdom', '+443446920311', 'https://www.yelp.com/biz/tgi-fridays-manchester-9?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.35132222858886', '53.4648760634288', '££'),
  ('Curry Mile', 'Wilmslow Road,Rusholme,Manchester M14,United Kingdom', '', 'https://www.yelp.com/biz/curry-mile-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21837', '53.44404', '££'),
  ('Pret A Manger', '4 Hardman Sq Unit R2,Manchester M3 3EB,United Kingdom', '+442079325259', 'https://www.yelp.com/biz/pret-a-manger-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.252245', '53.479904', '££'),
  ('Giraffe', 'The Trafford Centre,136-138 The Orient,Manchester M17 8EQ,United Kingdom', '+441617472100', 'https://www.yelp.com/biz/giraffe-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2489321', '53.5078118', '££'),
  ('The Pub/Zoo', '126 Grosvenor Street,Manchester M1 7HL,United Kingdom', '+441612731471', 'https://www.yelp.com/biz/the-pub-zoo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2366736', '53.4704895', '£'),
  ('Siam Orchid', '54 Portland Street,Manchester M1 4QU,United Kingdom', '+441612361388', 'https://www.yelp.com/biz/siam-orchid-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239157', '53.478349', '££'),
  ('Booths', 'The Garage,Red,Media City,Salford M50 2BS,United Kingdom', '+441617133750', 'https://www.yelp.com/biz/booths-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.29958799669299', '53.4737124440244', '££'),
  ('Ashas', '47 Peter Street,Manchester M2 3NG,United Kingdom', '+441618325309', '
https:
//www.yelp.com/biz/ashas-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2464642', '53.4780814', '£££'),
  ('Corridor', '6-8 Barlows Croft,Salford,Manchester M3 5DY,United Kingdom', '+441618326699', '
https:
//www.yelp.com/biz/corridor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.250056', '53.484304', '££'),
  ('Circus Tavern', '86 Portland Street,Manchester M1 4GX,United Kingdom', '+447863349957', '
https:
//www.yelp.com/biz/circus-tavern-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2399695', '53.4778252', '££'),
  ('The Garratt', '127 Princess Street,Manchester M1 7AG,United Kingdom', '+441612375111', '
https:
//www.yelp.com/biz/the-garratt-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237559', '53.47544', '£'),
  ('Churchills', '37 Chorlton Street,Manchester M1 3HN,United Kingdom', '+441612365529', 'https://www.yelp.com/biz/churchills-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236165', '53.477739', '££'),
  ('Bagel Nash', 'Manchester Arndale,Manchester M4 3AJ,United Kingdom', '+441618359870', 'https://www.yelp.com/biz/bagel-nash-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24006848640037', '53.4833845596634', '£'),
  ('The Slug & Lettuce', 'Ground Floor Heron House,11-12 Albert Square,Manchester M2 5HD,United Kingdom', '+441618393604', 'https://www.yelp.com/biz/the-slug-and-lettuce-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2457211', '53.4793409', '££'),
  ('Jaipur Palace', '346-348 Wilmslow Road,Manchester M14 6AB,United Kingdom', '+441612572525', 'https://www.yelp.com/biz/jaipur-palace-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2216532', '53.4387718', '££'),
  ('The Slug & Lettuce', '64-66 Deansgate,Manchester M3 2EN,United Kingdom', '+441618390985', 'https://www.yelp.com/biz/the-slug-and-lettuce-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2469232', '53.4830102', '££'),
  ('Zorbas', 'Arndale Market,Manchester M4 2EA,United Kingdom', '+441618706230', 'https://www.yelp.com/biz/zorbas-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242814', '53.482944', '£'),
  ('The Living Room', '80 Deansgate,Manchester M3 2ER,United Kingdom', '+441618320083', 'https://www.yelp.com/biz/the-living-room-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24711175127748', '53.4826324776952', '£££'),
  ('New Emperor', 'Amadeus House,52-56 George Street,Manchester M1 4HF,United Kingdom', '+441612282883', 'https://www.yelp.com/biz/new-emperor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240577', '53.479048', '££'),
  ('Pizza Express', '95 Lapwing Lane,Manchester M20 6UR,United Kingdom', '+441614380838', 'https://www.yelp.com/biz/pizza-express-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23607026165609', '53.4254135196025', '££'),
  ('Philpotts', '131 Portland Street,Manchester M1 4PY,United Kingdom', '+441619236969', 'https://www.yelp.com/biz/philpotts-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242142', '53.476087', '£'),
  ('Thai Spice', '66a Beech Road,Chorlton,Manchester M21 9EG,United Kingdom', '+441618810400', 'https://www.yelp.com/biz/thai-spice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.280987', '53.438813', '££'),
  ('Nandos', 'Manchester Arndale,Manchester M4 3AQ,United Kingdom', '+441618343073', '
https:
//www.yelp.com/biz/nandos-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2415178', '53.4834747', '££'),
  ('Café Marhaba', '36 Back Piccadilly,Manchester M1 1HP,United Kingdom', '+441612287377', '
https:
//www.yelp.com/biz/caf%C3%A9-marhaba-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23484992980957', '53.4814491271973', '£'),
  ('G-A-Y Manchester', 'Canal Street,Manchester M1 3WB,United Kingdom', '+441612286200', '
https:
//www.yelp.com/biz/g-a-y-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23806211111446', '53.476454750961', '£'),
  ('Featherblade', '43A Brown Street,Manchester M2 2JJ,United Kingdom', '+441613022043', '
https:
//www.yelp.com/biz/featherblade-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2422764', '53.4808733', '££'),
  ('Pret A Manger', '27 Cross Street,Manchester M2 1WL,United Kingdom', '+442079325278', '
https:
//www.yelp.com/biz/pret-a-manger-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2443242224077', '53.481844617405', '£'),
  ('Gordons Kitchen', '293 Chester Rd,Manchester M15 4EY,United Kingdom', '+441618393836', 'https://www.yelp.com/biz/gordons-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.264372', '53.469811', '£'),
  ('Oxford', 'Unit 421-423,Oxford Road,Manchester M13 9WG,United Kingdom', '+441612731490', 'https://www.yelp.com/biz/oxford-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22938026891119', '53.4624622057379', '£'),
  ('Battery Park', '615a Wilbraham Road,Manchester M21 9AN,United Kingdom', '+441618600754', 'https://www.yelp.com/biz/battery-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.279723', '53.44237', '£'),
  ('MOJO', '59A Bridge Street,Manchester M3 3BQ,United Kingdom', '+448456118643', 'https://www.yelp.com/biz/mojo-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2515639', '53.4814167', '££'),
  ('Zinc Bar and Grill', 'The Triangle,Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441618274200', 'https://www.yelp.com/biz/zinc-bar-and-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243249', '53.485082', '£££'),
  ('Alexandra Park', '180 Russell St,Manchester M16 7JL,United Kingdom', '+441612263117', 'https://www.yelp.com/biz/alexandra-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2459647', '53.4517932', 'undefined'),
  ('Spin - The Cycling Festival', 'Victoria Warehouse Hotel & Events,Trafford Wharf Road,Manchester M17 1AB,United Kingdom', '+441616607000', 'https://www.yelp.com/biz/spin-the-cycling-festival-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2853054', '53.4643068287717', 'undefined'),
  ('The Fusion Lab', 'Manchester Arndale Food Market,High Street,Manchester M4,United Kingdom', '', 'https://www.yelp.com/biz/the-fusion-lab-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23757', '53.48436', 'undefined'),
  ('The Paramount', '33-35 Oxford Street,Manchester M1 4BH,United Kingdom', '+441612331820', 'https://www.yelp.com/biz/the-paramount-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24250306533604', '53.4764831280327', '£'),
  ('Pret A Manger', '1 Portland Street,Manchester M1 1RG,United Kingdom', '+441612286797', 'https://www.yelp.com/biz/pret-a-manger-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23563194274902', '53.480518656407', '££'),
  ('Wings Dai Pai Dong', 'Manchester Arndale Food Market,49 High Street,Manchester M4 3AH,United Kingdom', '+441618320088', '
https:
//www.yelp.com/biz/wings-dai-pai-dong-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24146480445232', '53.4826901502778', '£'),
  ('Didsbury Lounge', '43 Barlow Moor Road,Manchester M20 6TW,United Kingdom', '+441614342408', '
https:
//www.yelp.com/biz/didsbury-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2440554', '53.4215504', '££'),
  ('Glamorous Chinese Restaurant', 'Wing Yip Business Centre,1st and 2nd Floor,Oldham Rd,Manchester M4 5HU,United Kingdom', '+441618393312', '
https:
//www.yelp.com/biz/glamorous-chinese-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230541', '53.487121', '££'),
  ('Bar Pop', '10 Canal Street,Gay Village,Manchester M1 3EZ,United Kingdom', '+441612360446', '
https:
//www.yelp.com/biz/bar-pop-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2364929318428', '53.4772529622258', '££'),
  ('The Liquor Store', 'Maybrook House,40 Blackfriars Street,Manchester M3 2EG,United Kingdom', '+441618346239', '
https:
//www.yelp.com/biz/the-liquor-store-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2467973', '53.4835158', '££'),
  ('Kyotoya', '28 Copson Street,Manchester M20 3HB,United Kingdom', '+441614452555', '
https:
//www.yelp.com/biz/kyotoya-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23051416225305', '53.434147835031', '££'),
  ('Laughing Buddha', '782 Wilmslow Road,Manchester M20 2DJ,United Kingdom', '+441614347688', '
https:
//www.yelp.com/biz/laughing-buddha-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2322859', '53.4152642', '££'),
  ('Starbucks', '306 Wilmslow Road,Fallowfield,Manchester M14 6NL,United Kingdom', '+441612480973', '
https:
//www.yelp.com/biz/starbucks-manchester-18?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21921460092391', '53.4411841361908', '££'),
  ('White Lion', '43 Liverpool Road,Castlefield,Manchester M3 4NQ,United Kingdom', '+441618327373', '
https:
//www.yelp.com/biz/white-lion-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.252885', '53.476011', '££'),
  ('Giorgio', '131 Portland Street,Manchester M1 4PY,United Kingdom', '+441612365544', '
https:
//www.yelp.com/biz/giorgio-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24218', '53.476349', '££'),
  ('Wetherspoons', '49 Piccadilly,Manchester M1 2AP,United Kingdom', '+441612369206', '
https:
//www.yelp.com/biz/wetherspoons-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235134', '53.481171', '£'),
  ('Baa Bar', '258 Wilmslow Rd,Fallowfield,Manchester M14 6JR,United Kingdom', '+441612249559', '
https:
//www.yelp.com/biz/baa-bar-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2188309105035', '53.442441991796', '££'),
  ('Persia Grill House', '255 Barlow Moor Road,Manchester M21 7GJ,United Kingdom', '+441618606864', '
https:
//www.yelp.com/biz/persia-grill-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.262938', '53.42791', '££'),
  ('Manchester 235', '2 Watson Street,Manchester M3 4LP,United Kingdom', '+441618280300', '
https:
//www.yelp.com/biz/manchester-235-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248923', '53.47619', '£££'),
  ('Starbucks', 'Unit R2,Arndale Centre,Manchester M4 3AQ,United Kingdom', '+441618392561', '
https:
//www.yelp.com/biz/starbucks-manchester-26?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241688', '53.483462', '£'),
  ('Podium Restaurant Bar and Lounge @ The Hilton', '303 Deansgate,Manchester M3 4LQ,United Kingdom', '', '
https:
//www.yelp.com/biz/podium-restaurant-bar-and-lounge-the-hilton-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.251222', '53.475071', 'undefined'),
  ('Safad', '47 Bloom Street,Manchester M1 3LY,United Kingdom', '+441612373339', '
https:
//www.yelp.com/biz/safad-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238049', '53.476905', 'undefined'),
  ('No.1 Watson Street', '1 Watson Street,Manchester M3 4EF,United Kingdom', '+441618195167', '
https:
//www.yelp.com/biz/no-1-watson-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24831860372908', '53.4772924294056', '££'),
  ('Jasmine', '569 Barlow Moor Road,Manchester M21 8AE,United Kingdom', '+441618811442', '
https:
//www.yelp.com/biz/jasmine-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276798', '53.4416768', '££'),
  ('Popolino', '119 Oxford Road,Manchester M1 7DU,United Kingdom', '+441612733335', '
https:
//www.yelp.com/biz/popolino-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2375062', '53.4708904', '£'),
  ('Taco Bell', 'Manchester Arndale Food Court,Manchester M4 3AQ,United Kingdom', '', '
https:
//www.yelp.com/biz/taco-bell-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24241013598153', '53.483226670033', '£'),
  ('Squirrels Bar', '1 Moseley Road,Owens Park Campus,Manchester M14 6HX,United Kingdom', '+441612483050', 'https://www.yelp.com/biz/squirrels-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2170039591036', '53.443707009158', '£'),
  ('Pizza Express', '56 Peter Street,Manchester M2 3NQ,United Kingdom', '+441618399300', 'https://www.yelp.com/biz/pizza-express-manchester-8?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245963', '53.477545', '££'),
  ('Moon', '450-452 Wilmslow Road,Withington,Manchester M20 3BW,United Kingdom', '+441614488700', 'https://www.yelp.com/biz/moon-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2281304', '53.4344954', '££'),
  ('Druckers', 'Arndale Centre,Upper Floor,Manchester M1,United Kingdom', '+441618345652', 'https://www.yelp.com/biz/druckers-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24132640833739', '53.4830947788941', '££'),
  ('The Salutation', '12 Higher Chatham Street,Manchester M15 6ED,United Kingdom', '+441612727832', 'https://www.yelp.com/biz/the-salutation-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23923637832479', '53.4686411393584', '£'),
  ('Sakura House', '190 Burton Road W Didsbury,Manchester M20 1LH,United Kingdom', '+441612584526', 'https://www.yelp.com/biz/sakura-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2419574', '53.4276585', '££'),
  ('The Old Grapes', 'Little Quay Street,Manchester M3 3JU,United Kingdom', '+441618394359', 'https://www.yelp.com/biz/the-old-grapes-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25', '53.47869', '££'),
  ('The Ford Madox Brown', 'Wilmslow Park,Oxford Road,Manchester M13 9NG,United Kingdom', '+441612566660', 'https://www.yelp.com/biz/the-ford-madox-brown-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.229453', '53.461596', '£'),
  ('St. Johns Gardens', 'Lower Byrom Street,Manchester M3 4AP,United Kingdom', '+441612242902', '
https:
//www.yelp.com/biz/st-johns-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25264750104165', '53.4780020558531', 'undefined'),
  ('Expo Lounge', '766 Wilmslow Road,Didsbury,Manchester M20 2DR,United Kingdom', '+441614482141', '
https:
//www.yelp.com/biz/expo-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23193015903234', '53.4158378159719', '££'),
  ('Rustik West Didsbury', '198 Burton Road,Manchester M20 1LH,United Kingdom', '+441612220984', '
https:
//www.yelp.com/biz/rustik-west-didsbury-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241972', '53.427667', '££'),
  ('The Brink', '65 Bridge Street,Manchester M3 3BQ,United Kingdom', '+441618346346', '
https:
//www.yelp.com/biz/the-brink-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2494459', '53.4812057', '££'),
  ('Elnecot', '41 Blossom Street,Cutting Room Square,Manchester M4 6AJ,United Kingdom', '+447496152373', '
https:
//www.yelp.com/biz/elnecot-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.228786', '53.484737', 'undefined'),
  ('Mumbai Spice', '327 Hollinwood Avenue,Manchester M40 0JA,United Kingdom', '+441616834157', '
https:
//www.yelp.com/biz/mumbai-spice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.169876', '53.523374', '££'),
  ('Panicos Kebab House', '418 Barlow Moor Rd,Manchester M21 8AD,United Kingdom', '+441618610613', '
https:
//www.yelp.com/biz/panicos-kebab-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276135', '53.441677', '£'),
  ('Greenhouse', 'George Kenyan Building,University Of Manchester,Manchester M13 9PY,United Kingdom', '+441613063232', '
https:
//www.yelp.com/biz/greenhouse-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23196993034487', '53.4674948108278', '£'),
  ('La Tasca', '132 The Orient,The Trafford Centre,Manchester M17 8EG,United Kingdom', '+441617499966', '
https:
//www.yelp.com/biz/la-tasca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34740314366244', '53.4652779005331', '££'),
  ('Dominos Pizza', '129 Grosvenor Street,Manchester M1 7HE,United Kingdom', '+441612735666', 'https://www.yelp.com/biz/dominos-pizza-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236158', '53.47014', 'undefined'),
  ('Mahbub Indian Takeaway', '524 Wilbraham Road,Manchester M21 9AW,United Kingdom', '+441618618180', 'https://www.yelp.com/biz/mahbub-indian-takeaway-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2810899', '53.4427549', '£'),
  ('Cocktails in the City', 'Town Hall Albert Square,Manchester M60 2LA,United Kingdom', '+441612345000', 'https://www.yelp.com/biz/cocktails-in-the-city-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2454455', '53.4794939', 'undefined'),
  ('Banyan Bar & Kitchen', 'Corn Exchange,Exchange Square,Manchester M4 3TR,United Kingdom', '+441618324798', 'https://www.yelp.com/biz/banyan-bar-and-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243265', '53.485084', '££'),
  ('International Society', 'William Kay House,327 Oxford Road,Manchester M13 9PG,United Kingdom', '+441612754959', 'https://www.yelp.com/biz/international-society-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23164', '53.464864', '£'),
  ('Cruz 101', '101 Princess Street,Manchester,Manchester M1 6DD,United Kingdom', '+441619500101', 'https://www.yelp.com/biz/cruz-101-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23929047584534', '53.4771984886269', '££'),
  ('The George Charles', '244 Burton Road,Manchester M20 2LW,United Kingdom', '', 'https://www.yelp.com/biz/the-george-charles-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2436447', '53.4260406', '££'),
  ('Binary Bar', '5 Arundel Street,Castlefield,Manchester M15 4JZ,United Kingdom', '+441618396343', 'https://www.yelp.com/biz/binary-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2608005', '53.4726586', '££££'),
  ('Pearl City', '33 George Street,Manchester M1 4HQ,United Kingdom', '+441612287683', 'https://www.yelp.com/biz/pearl-city-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240604', '53.478526', '£££'),
  ('Villaggio', '44 Canal Street,Manchester M1 6,United Kingdom', '+441612445222', 'https://www.yelp.com/biz/villaggio-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23761798747343', '53.4766612324713', '££'),
  ('Nespresso', 'Manchester Boutique,Trafford Centre,Manchester M17 8AA,United Kingdom', '+441617483615', 'https://www.yelp.com/biz/nespresso-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34768801543217', '53.4658449470892', '£££'),
  ('The Mark Addy', 'Stanley Street,Salford M3 5EJ,United Kingdom', '+441618324080', 'https://www.yelp.com/biz/the-mark-addy-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.253973', '53.481636', '££'),
  ('Aladdin Restaurant', '529 Wilmslow Road,Manchester M20 4BA,United Kingdom', '+441614348558', 'https://www.yelp.com/biz/aladdin-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.228385', '53.430992', '££'),
  ('Babylon', '125 Oxford Road,Manchester M1 7DU,United Kingdom', '+441612735680', 'https://www.yelp.com/biz/babylon-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2372272', '53.4705751', '£'),
  ('Manchester German Christmas Markets', 'St Anns Square,Manchester M2 7,United Kingdom', '', '
https:
//www.yelp.com/biz/manchester-german-christmas-markets-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245509', '53.482276', 'undefined'),
  ('Sanam', '145 - 151 Wilmslow Road,Manchester M14 5AW,United Kingdom', '+441612248824', '
https:
//www.yelp.com/biz/sanam-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '££'),
  ('Coriander', '279 Barlow Moor Road,Chorlton-cum-Hardy,Manchester M21 7GH,United Kingdom', '+441618817750', '
https:
//www.yelp.com/biz/coriander-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.267136', '53.430255', '££'),
  ('The Sawyers Arms', '138 Deansgate,Manchester M3 2RP,United Kingdom', '+441618342133', '
https:
//www.yelp.com/biz/the-sawyers-arms-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248377', '53.480739', '££'),
  ('Manchester World Christmas Markets', 'Brazennose St,Manchester M3 3,United Kingdom', '', '
https:
//www.yelp.com/biz/manchester-world-christmas-markets-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247066', '53.479817', 'undefined'),
  ('Bowlers', '2 Mount St,Manchester M2 5WQ,United Kingdom', '+441618320086', '
https:
//www.yelp.com/biz/bowlers-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2455202', '53.4785205', '£'),
  ('The Slug & Lettuce', 'Unit 5 Block A,Irwell Square,Spinningfields,Manchester M3 3AN,United Kingdom', '+441604652415', '
https:
//www.yelp.com/biz/the-slug-and-lettuce-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25460052490234', '53.480282422285', '££'),
  ('Rollers Bakery and Café', '33 Brown Court,Arndale Centre,Manchester M2 4,United Kingdom', '', '
https:
//www.yelp.com/biz/rollers-bakery-and-caf%C3%A9-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24144697189331', '53.4827213166644', '£££'),
  ('The Green', 'Unit 1 Bridge House,26 Ducie Street,Ducie Wharf,Manchester M1 2DQ,United Kingdom', '+441612280681', '
https:
//www.yelp.com/biz/the-green-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230224609375', '53.4780349399915', '££'),
  ('Chorlton Eatery', '565 Barlow Moor Road,Chorlton,Manchester M21 8AE,United Kingdom', '+441618600200', '
https:
//www.yelp.com/biz/chorlton-eatery-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276516', '53.441528', '££'),
  ('Top Quality', '37 Derby Street,Manchester M8 8HW,United Kingdom', '+441618327998', '
https:
//www.yelp.com/biz/top-quality-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24419498443604', '53.4949951171875', 'undefined'),
  ('Tib Street Tavern', '74 Tib St,Northern Quarter,Manchester M4 1LG,United Kingdom', '+441618341600', '
https:
//www.yelp.com/biz/tib-street-tavern-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2346214', '53.4837254', '££'),
  ('Vine Inn', '42-46 Kennedy Street,Manchester M2 4BQ,United Kingdom', '+441612379740', '
https:
//www.yelp.com/biz/vine-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242945', '53.479339', '££'),
  ('Be At One', '13 Barton Arcade,Barton Square,Manchester M3 2BB,United Kingdom', '+442077382119', '
https:
//www.yelp.com/biz/be-at-one-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24614300206906', '53.4826108919957', '££'),
  ('Loco Express', '65 Arches,Whitworth Street W,Manchester M1 5WQ,United Kingdom', '+441612373949', '
https:
//www.yelp.com/biz/loco-express-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245128', '53.47387', '££'),
  ('Yo! Sushi', 'Selfridges The Dome,The Trafford Centre,Trafford Park,Manchester M17 8DA,United Kingdom', '+441617477689', '
https:
//www.yelp.com/biz/yo-sushi-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.30917936054686', '53.4418509226158', '££'),
  ('Abduls', '121 Wilmslow Road,Manchester M14 5AN,United Kingdom', '+441612562627', 'https://www.yelp.com/biz/abduls-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224619', '53.4547907', '££'),
  ('The River Restaurant', 'The Lowry Hotel,50 Dearmans Place,Salford M3 5LH,United Kingdom', '+441618274000', 'https://www.yelp.com/biz/the-river-restaurant-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25035516931155', '53.4830537769156', '££££'),
  ('Gullivers', '109 Oldham Street,Manchester M4 1LW,United Kingdom', '+441618192970', 'https://www.yelp.com/biz/gullivers-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2340976', '53.4838963', '£'),
  ('TGI Fridays', 'Cross Street,Manchester M33 7JR,United Kingdom', '+441619622962', 'https://www.yelp.com/biz/tgi-fridays-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.318671', '53.432583', '£££'),
  ('Crazy Pedros NQ', '1 Short Street,Manchester M4 1AA,United Kingdom', '+441612334032', '
https:
//www.yelp.com/biz/crazy-pedros-nq-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2367424', '53.4825864', '£'),
  ('Italian Express', '28 Higher Cambridge Street,Manchester M15 6AA,United Kingdom', '+441612320401', '
https:
//www.yelp.com/biz/italian-express-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24006390571594', '53.4680557250977', 'undefined'),
  ('The Lloyds Hotel', '617 Wilbraham Road,Manchester M21 9AN,United Kingdom', '+441618626990', 'https://www.yelp.com/biz/the-lloyds-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.281062229497', '53.442440053029', '££'),
  ('The Original Third Eye', '661 Wilmslow Road,Didsbury,Manchester M20 6RA,United Kingdom', '+441614462300', 'https://www.yelp.com/biz/the-original-third-eye-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2313987', '53.4181733', '££'),
  ('The Long Bar', 'Spinningfield Estate,Spinningfields,Manchester M3 3JE,United Kingdom', '+447917058924', 'https://www.yelp.com/biz/the-long-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25212652717268', '53.4795787512857', '££'),
  ('Crafty Pig', '4 Oldham Street,Manchester M1 1JQ,United Kingdom', '+441617070004', 'https://www.yelp.com/biz/crafty-pig-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23641625280383', '53.4818777777904', '££'),
  ('New York Deli', '87 Oxford Street,Manchester M1 6EG,United Kingdom', '+441612368435', 'https://www.yelp.com/biz/new-york-deli-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2416062', '53.4754406', '£'),
  ('The B Lounge', '97 Piccadilly,Manchester M1 2DB,United Kingdom', '+441612364161', 'https://www.yelp.com/biz/the-b-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233154', '53.479997', '££'),
  ('Carluccios', 'Picadilly Station,Manchester M1 2PB,United Kingdom', '+441612282829', '
https:
//www.yelp.com/biz/carluccios-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23079977154033', '53.4772792198874', '££'),
  ('Rusholme Chippy', '62 Wilmslow Road,Manchester M14 5AL,United Kingdom', '+441612241057', '
https:
//www.yelp.com/biz/rusholme-chippy-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225153', '53.454512', '£'),
  ('Costa Coffee', '27 - 29 Princess Street,Manchester M2 4HH,United Kingdom', '+441612379219', '
https:
//www.yelp.com/biz/costa-coffee-manchester-10?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24402422361194', '53.4798216149415', '££'),
  ('Whitworth Park', '316 Oxford Rd,Manchester M13 9,United Kingdom', '', '
https:
//www.yelp.com/biz/whitworth-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23005294799805', '53.4585688075085', 'undefined'),
  ('Saajan', '316 Wilmslow Road,Fallowfield,Manchester M14 6XQ,United Kingdom', '+441612484944', '
https:
//www.yelp.com/biz/saajan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2197553', '53.440639', '£'),
  ('Royal Orchid', '36 Charlotte Street,Manchester M1 4FD,United Kingdom', '+441612365183', '
https:
//www.yelp.com/biz/royal-orchid-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2386402', '53.4785416', '£££'),
  ('Applebys', '21 Barlow Moor Road,Manchester M20 6,United Kingdom', '+441614487225', 'https://www.yelp.com/biz/applebys-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23281199311816', '53.4179439764906', '£'),
  ('Chinatown', 'Princess Street,Manchester M1 4LB,United Kingdom', '', 'https://www.yelp.com/biz/chinatown-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24149', '53.477931', 'undefined'),
  ('Abdul Hadi', '298 Oxford Road Longsight,Manchester M13 9NS,United Kingdom', '+441612733152', 'https://www.yelp.com/biz/abdul-hadi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230515', '53.462898', '£'),
  ('The Magnet Freehouse', '51 Wellington Road N,Stockport SK4 1HJ,United Kingdom', '+441614296287', 'https://www.yelp.com/biz/the-magnet-freehouse-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.16892495847961', '53.4157383633383', '£'),
  ('itsu', '1 Hardman Boulevard,Manchester M3 3AQ,United Kingdom', '+441616723990', 'https://www.yelp.com/biz/itsu-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.253903', '53.480117', '£'),
  ('Tinderbox', 'Paperchase,14 Bank House St Marys Gate,Manchester M1 1PX,United Kingdom', '+441618348433', '
https:
//www.yelp.com/biz/tinderbox-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24568828879386', '53.4832270324954', '££'),
  ('Continental', '127 Burton Road,West Didsbury,Manchester M20 1JP,United Kingdom', '+441614450560', '
https:
//www.yelp.com/biz/continental-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2394585', '53.4292571', '£'),
  ('Morley Cheeks', 'Chorlton,575 Barlow Moor Road,Manchester M21 8AE,United Kingdom', '+441618607878', '
https:
//www.yelp.com/biz/morley-cheeks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276123', '53.4410598', '££'),
  ('Leos Fish Bar', '12 Oldham Street,Manchester M1 1JQ,United Kingdom', '+441612373999', 'https://www.yelp.com/biz/leos-fish-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2360535', '53.482115', '£'),
  ('Miller & Carter Steakhouse', 'King Street,Manchester M2 4LQ,United Kingdom', '', 'https://www.yelp.com/biz/miller-and-carter-steakhouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24451103233509', '53.4811838693276', '£££'),
  ('Hong Kong Chippy', '149 Henrietta Street,Manchester M16 9PS,United Kingdom', '+441612264083', 'https://www.yelp.com/biz/hong-kong-chippy-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2677168', '53.4596382', '£'),
  ('Panacea', '14 John Dalton St,Manchester M2 6JP,United Kingdom', '+441618331111', 'https://www.yelp.com/biz/panacea-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2470717497026', '53.480469062426', '££££'),
  ('Fletcher Moss', '1 William St,Didsbury,Manchester M20 6RQ,United Kingdom', '+441614380073', 'https://www.yelp.com/biz/fletcher-moss-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2297395', '53.4168622', '££'),
  ('Lime', 'The Lowry Outlet Mall,Salford Quays,Salford M50 3AG,United Kingdom', '+441618690440', 'https://www.yelp.com/biz/lime-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.29682922363281', '53.4745613240962', '££'),
  ('The Vienna Coffee House', '78 Mosley Street,Manchester M2,United Kingdom', '+441612363966', 'https://www.yelp.com/biz/the-vienna-coffee-house-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24210469037186', '53.4789262956212', '££'),
  ('Saray', '609 Wilbraham Road,Manchester M21 9AN,United Kingdom', '+441618818292', 'https://www.yelp.com/biz/saray-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.279248', '53.442477', '££'),
  ('Annies', '5 Old Bank Street,Manchester M2 7PE,United Kingdom', '+441618394423', 'https://www.yelp.com/biz/annies-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24501402008663', '53.4822924203935', '£££'),
  ('Nandos', 'Manchester Fort Shopping Park,Cheetham Hill Road,Manchester M8 8LN,United Kingdom', '+441618325088', '
https:
//www.yelp.com/biz/nandos-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2352061454468', '53.4980422238948', '££'),
  ('Abduls', '318 Wilmslow Road,Manchester M14 6XQ,United Kingdom', '+441612487573', '
https:
//www.yelp.com/biz/abduls-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21977', '53.440427', '£'),
  ('Old Nags Head', '19 Jacksons Row,Off Deansgate Road,Manchester M2 5WD,United Kingdom', '+441618324315', '
https:
//www.yelp.com/biz/old-nags-head-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248037', '53.479203', '££'),
  ('Shahbaaz Curry Cottage', 'Radcliffe Moor Road,Radcliffe,Manchester M26 3WL,United Kingdom', '+441617259076', '
https:
//www.yelp.com/biz/shahbaaz-curry-cottage-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.355129', '53.569208', '££'),
  ('Rump N Ribs', '73-83 Liverpool Rd,Manchester M3 4AQ,United Kingdom', '+441612282284', '
https:
//www.yelp.com/biz/rump-n-ribs-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25476033538333', '53.4764351036936', '£££'),
  ('Hadramout', '1 Walmar Street East,Rusholme,Manchester M14 5SS,United Kingdom', '+441612488843', '
https:
//www.yelp.com/biz/hadramout-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22464561462402', '53.4551830373386', '££'),
  ('Tusk', '78-88 High Street,Manchester M4 1ES,United Kingdom', '+441618288700', '
https:
//www.yelp.com/biz/tusk-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23774812744394', '53.4841952232538', '££'),
  ('Mexica', '39 Blossom Street,Manchester M4 5AF,United Kingdom', '+441612287217', '
https:
//www.yelp.com/biz/mexica-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2299006', '53.4840923', 'undefined'),
  ('Caffè Nero', '122A Market Street,Manchester M1 1WA,United Kingdom', '+441612375868', '
https:
//www.yelp.com/biz/caff%C3%A8-nero-manchester-13?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238859', '53.481613', '£'),
  ('Bella Italia', 'Unit R8,Arndale Shopping Centre,Manchester M4 3AQ,United Kingdom', '+441618342677', '
https:
//www.yelp.com/biz/bella-italia-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24314652170415', '53.4803184348575', '££'),
  ('Eat', '1 St Anns Street,Manchester M2 7LG,United Kingdom', '+441618327872', 'https://www.yelp.com/biz/eat-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24696411030237', '53.4819935855471', '££'),
  ('Manchester Christmas Markets', 'Exchange Square,Manchester M3 1BD,United Kingdom', '', 'https://www.yelp.com/biz/manchester-christmas-markets-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243964', '53.483715', 'undefined'),
  ('Al Faisal Tandoori', '58 Thomas Street,Manchester M4 1EG,United Kingdom', '+441618343266', 'https://www.yelp.com/biz/al-faisal-tandoori-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236626', '53.483792', '£'),
  ('Lass O`Gowrie', '36 Charles Street,Manchester M1 7DB,United Kingdom', '+441612789383', '
https:
//www.yelp.com/biz/lass-o-gowrie-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23797695721729', '53.4740495380704', '£'),
  ('Nibble', '36 Oldham Street,Manchester M1 1JN,United Kingdom', '+447725125646', '
https:
//www.yelp.com/biz/nibble-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2349613904953', '53.4829599313247', '£'),
  ('Smithfield Market Tavern', '37 Swan Street,Manchester M4 5JZ,United Kingdom', '+441618394424', '
https:
//www.yelp.com/biz/smithfield-market-tavern-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2344241', '53.485363', '££'),
  ('Frankie & Bennys UK', 'Parrs Wood Entertainment Centre,Wilmslow Road,Manchester M20 5PG,United Kingdom', '+441614464140', 'https://www.yelp.com/biz/frankie-and-bennys-uk-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.220455', '53.407996', '££'),
  ('Caffé Nero', '80 Mosley Street,Manchester M2 3FX,United Kingdom', '+441612368555', 'https://www.yelp.com/biz/caff%C3%A9-nero-manchester-17?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24227139222657', '53.4787823257609', '££'),
  ('Prohibition', '2-10 St Marys St,Manchester M3 2LB,United Kingdom', '+441618319326', '
https:
//www.yelp.com/biz/prohibition-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247648', '53.482269', '££'),
  ('The Bridge', '58 Bridge Street,Manchester M3 3BW,United Kingdom', '+441618340242', '
https:
//www.yelp.com/biz/the-bridge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2492407', '53.4808916', '££'),
  ('The Town Hall Tavern', '20 Tib Lane,Lancashire M2 4JA,United Kingdom', '+441618321961', '
https:
//www.yelp.com/biz/the-town-hall-tavern-lancashire?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244329', '53.480589', '££'),
  ('Fu`s Chinese Restaurant Café', 'Upper Ground Floor,56 Faulkner Street,Manchester M1 4FH,United Kingdom', '+441612371444', 'https://www.yelp.com/biz/fus-chinese-restaurant-caf%C3%A9-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2405786', '53.4780415', '££'),
  ('Chetham`s School of Music', 'Long Millgate,Manchester M3 1SB,United Kingdom', '+441618349644', '
https:
//www.yelp.com/biz/chethams-school-of-music-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24339', '53.486053', 'undefined'),
  ('Armstrongs', '486 Bury Old Road,Prestwich,Manchester M25 1NL,United Kingdom', '+441617736023', '
https:
//www.yelp.com/biz/armstrongs-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2762581', '53.5377472', '£'),
  ('ICFT - I Come From Taiwan', '43 George Street,Manchester M1 4AB,United Kingdom', '+441618793447', '
https:
//www.yelp.com/biz/icft-i-come-from-taiwan-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24110566079617', '53.4782859519983', '£'),
  ('Pitcher & Piano', 'Arch 9 and 10,Deansgate Locks,Manchester M1 5LH,United Kingdom', '+441618396117', '
https:
//www.yelp.com/biz/pitcher-and-piano-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2498486', '53.4769447590922', '££'),
  ('The Piccadilly', '60 - 75 Piccadilly,Manchester M1 2BS,United Kingdom', '+448721077077', '
https:
//www.yelp.com/biz/the-piccadilly-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23389387130737', '53.480627195968', '£'),
  ('Williams Sandwich Bar', '45 Hilton Street,Manchester M1 2EF,United Kingdom', '+441612361833', '
https:
//www.yelp.com/biz/williams-sandwich-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23185138710868', '53.4818701360662', '£'),
  ('Afghan Cuisine', '86 Wilmslow Road,Rusholme,Manchester M14 5AL,United Kingdom', '+441612485333', '
https:
//www.yelp.com/biz/afghan-cuisine-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225153', '53.454512', '£'),
  ('Duttons Manchester', '2-10 Albert Square,Manchester M2,United Kingdom', '+441612416839', '
https:
//www.yelp.com/biz/duttons-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24472094881114', '53.4798761648067', '££'),
  ('Dosa Xpress', '19 Copson Street,Manchester M20 3HE,United Kingdom', '+441614344494', '
https:
//www.yelp.com/biz/dosa-xpress-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2297101020813', '53.433723449707', '£'),
  ('Manchipster Plaice', '4 Dantzic Street,Manchester M4 2AD,United Kingdom', '+441618341102', '
https:
//www.yelp.com/biz/manchipster-plaice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239929', '53.484789', '£'),
  ('Tabak Restaurant', '199-201 Wilmslow Rd,Manchester M14 5AQ,United Kingdom', '+441612487812', '
https:
//www.yelp.com/biz/tabak-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2227488', '53.4530416', '£'),
  ('Olive & Vine', '846 Wilmslow Road,M20 2RN,Manchester M20 6RE,United Kingdom', '+441614345151', '
https:
//www.yelp.com/biz/olive-and-vine-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23085460358266', '53.4107333633018', '££'),
  ('Kobeda Place', '74 Wilmslow Road,Manchester M14 5AL,United Kingdom', '+441612253164', '
https:
//www.yelp.com/biz/kobeda-place-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225153', '53.454512', '£'),
  ('The Crown Inn', '154 Heaton Lane,Stockport SK4 1AR,United Kingdom', '+441614805850', '
https:
//www.yelp.com/biz/the-crown-inn-stockport-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1665202', '53.4098742', '£'),
  ('Doring Sushi Bar', '358 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441618600002', '
https:
//www.yelp.com/biz/doring-sushi-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27409410398207', '53.4379580203709', 'undefined'),
  ('Popup Bikes', 'Arch 5,Corporation Street,Manchester M4,United Kingdom', '+441618390709', '
https:
//www.yelp.com/biz/popup-bikes-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2381201', '53.4891815', '£'),
  ('Croma', '651a Wilmslow Road,Didsbury,Manchester M20 6QZ,United Kingdom', '+441614456944', '
https:
//www.yelp.com/biz/croma-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231620028615', '53.4187188032452', '£££'),
  ('Treasure Pot', '101 Manchester Road,Chorlton cum Hardy,Manchester M21 9GA,United Kingdom', '+441618813609', '
https:
//www.yelp.com/biz/treasure-pot-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2776015', '53.4468807', '££'),
  ('Chop`d', '68 Cross Street,Manchester M2 4JQ,United Kingdom', '', 'https://www.yelp.com/biz/chopd-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24504452733507', '53.4808912274565', '£'),
  ('Revolution - Manchester Fallowfield', '311-313 Wilmslow Road,Manchester M14 6NW,United Kingdom', '+441612564754', 'https://www.yelp.com/biz/revolution-manchester-fallowfield-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218311', '53.4419042', '££'),
  ('Passion Fruit Coffee Roastery', '486 Wilbraham Road,Chorlton,Manchester M21 9AS,United Kingdom', '+447928632759', 'https://www.yelp.com/biz/passion-fruit-coffee-roastery-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.278882', '53.442759', '££'),
  ('GRUB Food Fair', 'Alphabet Brewing Co,99 North Western Street,Manchester M12 6JL,United Kingdom', '', 'https://www.yelp.com/biz/grub-food-fair-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22411540246773', '53.4753645626317', '£'),
  ('Lock 91', '9 Century Street,Manchester M3 4QL,United Kingdom', '+441618195444', 'https://www.yelp.com/biz/lock-91-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2508007', '53.474578', '££'),
  ('Little Aladdin', '72 High Street,Manchester M4 1ES,United Kingdom', '+441618352606', 'https://www.yelp.com/biz/little-aladdin-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2380753', '53.4840107', 'undefined'),
  ('Mackie Mayor', '1 Eagle Street,Manchester M4 5BU,United Kingdom', '+441611234567', 'https://www.yelp.com/biz/mackie-mayor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.234891', '53.485492', '££'),
  ('Oak Street Café', 'Craft and Design Centre,Oak Street,Manchester M4 5JD,United Kingdom', '+441618324274', 'https://www.yelp.com/biz/oak-street-caf%C3%A9-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23571', '53.48398', '£'),
  ('The Lost Dene', '144 Deansgate,Manchester M3 3EE,United Kingdom', '+441618399035', 'https://www.yelp.com/biz/the-lost-dene-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248557', '53.480578', '£'),
  ('One Lounge Bar', '1 Lapwing Lane,Manchester M20 2NT,United Kingdom', '+441614480101', 'https://www.yelp.com/biz/one-lounge-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2408553572074', '53.428198687865', '££££'),
  ('San Rocco', '10-14 S King Street,Manchester M2 6DW,United Kingdom', '+441618327669', 'https://www.yelp.com/biz/san-rocco-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2468009', '53.4808735', 'undefined'),
  ('Manchester Christmas Markets', 'The Triangle,Manchester M4 3TR,United Kingdom', '', 'https://www.yelp.com/biz/manchester-christmas-markets-manchester-8?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243249', '53.485082', 'undefined'),
  ('Croma', '30 Longfield Centre,Prestwich,Manchester M25 1AY,United Kingdom', '+441617987666', 'https://www.yelp.com/biz/croma-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28466994929308', '53.5337757160234', '££'),
  ('Selfridge & Co', 'The Trafford Centre,The Dome,Manchester M17 8DA,United Kingdom', '+448001234000', 'https://www.yelp.com/biz/selfridge-and-co-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.3490048', '53.466179', '£££'),
  ('Costa Coffee', '683-693 Wilmslow Road,Didsbury,Manchester M20 6RE,United Kingdom', '+441614450194', 'https://www.yelp.com/biz/costa-coffee-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23131687475411', '53.4175098638159', '£'),
  ('Vanilla', '39-41 Richmond Street,Manchester M1 3WB,United Kingdom', '+441616376258', 'https://www.yelp.com/biz/vanilla-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237626', '53.476788', '££'),
  ('Wasabi', 'The Quadrangle,Hulme Street,Manchester M1 5GL,United Kingdom', '+441612389099', 'https://www.yelp.com/biz/wasabi-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24148194660768', '53.4719817257981', '£'),
  ('O`Neills', '655-657 Wilmslow Road,Didsbury,Manchester M20 6RA,United Kingdom', '+441614487941', '
https:
//www.yelp.com/biz/o-neills-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231309', '53.417863', '£'),
  ('Manchester Metropolitan Students Union', '99 Oxford street,Manchester,Manchester M15 6BH,United Kingdom', '+441612471162', '
https:
//www.yelp.com/biz/manchester-metropolitan-students-union-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23913', '53.470925', '£'),
  ('Cafe Rouge', '137 The Orient,The Trafford Centre,Manchester M17 8EQ,United Kingdom', '+441617471927', '
https:
//www.yelp.com/biz/cafe-rouge-manchester-12?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34844205445256', '53.4648710936832', '££'),
  ('Mamma Mia Pizza', '244 Wilmslow Road,Manchester M14 6LD,United Kingdom', '+441612256563', '
https:
//www.yelp.com/biz/mamma-mia-pizza-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2187043', '53.4434597', '£'),
  ('Musicana Cafe', '10A Wilmslow Road,Rusholme,Manchester M14 5TP,United Kingdom', '+441612251930', '
https:
//www.yelp.com/biz/musicana-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2262109', '53.4568044', '££'),
  ('Kraak', '11 Stevenson Square,Manchester M1 1DB,United Kingdom', '', '
https:
//www.yelp.com/biz/kraak-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2330629825592', '53.4825782775879', '££'),
  ('Bottle', '9a Shaw Road,Stockport SK4 4AG,United Kingdom', '', '
https:
//www.yelp.com/biz/bottle-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.185472', '53.423211', '££'),
  ('Strange Brew', '370 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441618629911', '
https:
//www.yelp.com/biz/strange-brew-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27435331791639', '53.4381914190286', '£££'),
  ('The Gallery Café', 'Manchester Art Gallery,Mosley Street,Manchester M2 3JL,Manchester M2 3JL,United Kingdom', '+441612358888', '
https:
//www.yelp.com/biz/the-gallery-caf%C3%A9-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24166699999998', '53.4787710008768', '££'),
  ('Brasserie On Portland', '101 Portland Street,Manchester M1 4GX,United Kingdom', '+441612365122', '
https:
//www.yelp.com/biz/brasserie-on-portland-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2401605', '53.4772517', 'undefined'),
  ('Windmill Carving Room', '81 Hulme Rd,Denton,Manchester M34 2WZ,United Kingdom', '+441613206144', '
https:
//www.yelp.com/biz/windmill-carving-room-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.14337', '53.455133', '£'),
  ('Saajan', '129 Wilmslow Road,Manchester M14 5AW,United Kingdom', '+441612563070', '
https:
//www.yelp.com/biz/saajan-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '££'),
  ('Costa Coffee', '124 Market Street,Manchester M1 1WA,United Kingdom', '+441612365491', '
https:
//www.yelp.com/biz/costa-coffee-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23849362775489', '53.4816320567226', '££'),
  ('Coffee Fix', '80 Church Road,Gatley SK8 4NQ,United Kingdom', '+441612820090', '
https:
//www.yelp.com/biz/coffee-fix-gatley?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2367762', '53.3917539', '£'),
  ('City Road Inn', '14 Albion Street,Manchester M1 5NZ,United Kingdom', '+441612363820', '
https:
//www.yelp.com/biz/city-road-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248398', '53.474034', '£'),
  ('Lola Lo', 'Arches 9-10 Deansgate Locks,Whitworth Street,Manchester M1 5LH,United Kingdom', '+441618351771', '
https:
//www.yelp.com/biz/lola-lo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2498486', '53.4746971', '£££'),
  ('Gourmet Burger Kitchen', '117-119 The Orient,Trafford Centre,Manchester M17 8AA,United Kingdom', '+441617498465', '
https:
//www.yelp.com/biz/gourmet-burger-kitchen-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34902000427246', '53.4661865234375', '££'),
  ('Chennai Dosa', '303 - 305 Palatine Road,Northenden,Manchester M22 4HH,United Kingdom', '+441613177251', '
https:
//www.yelp.com/biz/chennai-dosa-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2561599', '53.409436', '££'),
  ('Asian Fusion', '491 Barlow Moor Rd,Chorlton,Manchester M21 8AG,United Kingdom', '+441618817200', '
https:
//www.yelp.com/biz/asian-fusion-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2747812', '53.4383939', '£££'),
  ('Abdul`s', '133-135 Oxford Rd,Manchester M1 7DY,United Kingdom', '+441612737339', 'https://www.yelp.com/biz/abduls-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237064', '53.470471', '££'),
  ('BarCa', '8 & 9 Catalan Square,Castlefield,Manchester M3 4RU,United Kingdom', '+441618397099', 'https://www.yelp.com/biz/barca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2561924', '53.4748454', '££'),
  ('Café North', '66 Shudehill,Northern Quarter,Manchester M4 4AA,United Kingdom', '+441618394916', 'https://www.yelp.com/biz/caf%C3%A9-north-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237493', '53.485229', '££'),
  ('The Courtyard Bar', 'Chester Streer,Manchester M1 5SH,United Kingdom', '', 'https://www.yelp.com/biz/the-courtyard-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2410199', '53.47204', '£'),
  ('The MCR Coffee', '33 Oldham Street,Manchester M1 1JQ,United Kingdom', '+441618329024', 'https://www.yelp.com/biz/the-mcr-coffee-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23598186001313', '53.4822261371171', '£'),
  ('First Taste', '75 Oxford Street,Manchester M1 6EQ,United Kingdom', '+441612368088', 'https://www.yelp.com/biz/first-taste-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241975', '53.475845', '££'),
  ('Oké Poké', '59 Church Street,Manchester M4 1PD,United Kingdom', '+441618797735', 'https://www.yelp.com/biz/ok%C3%A9-pok%C3%A9-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23589915782213', '53.4827161293743', 'undefined'),
  ('Cafe Rouge - Salford Quays', 'Lowry Centre,Salford Quays,Manchester M50 3AZ,United Kingdom', '+441618773971', 'https://www.yelp.com/biz/cafe-rouge-salford-quays-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.29405788014833', '53.4704204015649', '£££'),
  ('Yates', 'The Printworks,Corporation Street,Manchester M4 1WZ,United Kingdom', '+441618391451', 'https://www.yelp.com/biz/yates-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240763', '53.485186', '£££'),
  ('Zombie Shack', '50 New Wakefield Street,Manchester M1 5NP,United Kingdom', '+441612366071', 'https://www.yelp.com/biz/zombie-shack-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24087339981927', '53.4736920289119', '££'),
  ('V Rev Vegan Diner', '20-26 Edge Street,Manchester M4 1HN,United Kingdom', '+441618393883', 'https://www.yelp.com/biz/v-rev-vegan-diner-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2364992', '53.4844433', '££'),
  ('Steak & Lobster Manchester', 'Peter Street,Manchester M2 5GP,United Kingdom', '+441618358903', 'https://www.yelp.com/biz/steak-and-lobster-manchester-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24684120559121', '53.477742591479', '££'),
  ('Centre Stage', '51 Bloom street,Manchester M1 3LY,United Kingdom', '', 'https://www.yelp.com/biz/centre-stage-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238049', '53.476904', '££'),
  ('The Pilcrow', 'Sadler`s Yard,Manchester M60 0AB,United Kingdom', '', '
https:
//www.yelp.com/biz/the-pilcrow-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24017840348506', '53.4867437065711', '£'),
  ('Starbucks', 'Nelson Street,Manchester M13 9NQ,United Kingdom', '+441612729651', '
https:
//www.yelp.com/biz/starbucks-manchester-47?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.228559', '53.461783', '££'),
  ('Starbucks', '1-3 Piccadilly Gardens,Manchester M1 1LZ,United Kingdom', '+441618195861', '
https:
//www.yelp.com/biz/starbucks-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23805849101461', '53.4818332653338', '££'),
  ('The Union Bar, University of Manchester Students Union', 'Steve Biko Bldg Oxford Rd,Manchester M13 9PR,United Kingdom', '+441612752930', 'https://www.yelp.com/biz/the-union-bar-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232225', '53.464386', '££'),
  ('Lupo Caffè Italiano', '142 Chapel Street,Salford M3 6AF,United Kingdom', '', 'https://www.yelp.com/biz/lupo-caff%C3%A8-italiano-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25255232304335', '53.4841418122583', '£'),
  ('Subway', '149 Oxford Road,Manchester M13 9DJ,United Kingdom', '+441612738573', 'https://www.yelp.com/biz/subway-manchester-14?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23670168504653', '53.4699700049808', '£'),
  ('Chez', '36 Whitworth Street,Manchester M1 3NR,United Kingdom', '', 'https://www.yelp.com/biz/chez-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23609931766987', '53.4762309220982', '££'),
  ('I Love BoBo Tea', 'Unit 2 Upper Mall,Arndale Centre,Manchester M4 3AQ,United Kingdom', '+447894457644', 'https://www.yelp.com/biz/i-love-bobo-tea-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24132895469666', '53.4828553879443', '££'),
  ('Gino D`Acampo My Restaurant', 'Unit 11,The Corn Exchange,Manchester M4 3TR,United Kingdom', '+441618274200', '
https:
//www.yelp.com/biz/gino-d-acampo-my-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24320942427983', '53.4849940626462', '££'),
  ('Dixy Chicken', 'Wilbraham Road,Fallowfield,Manchester M14 6JS,United Kingdom', '+441612245577', '
https:
//www.yelp.com/biz/dixy-chicken-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.220438', '53.442512', '£'),
  ('The
Drop', '356 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441612863317', '
https:
//www.yelp.com/biz/the-
drop-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27408', '53.438114', '££'),
  ('Royal Suite Darbar', '65-67 Wilmslow Road,Manchester M14 5TB,United Kingdom', '+441612244392', '
https:
//www.yelp.com/biz/royal-suite-darbar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2253216', '53.4562382', '££'),
  ('Nandos', '27 Piccadilly Gardens,Manchester M1 1LU,United Kingdom', '+441612371192', 'https://www.yelp.com/biz/nandos-manchester-11?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23646038363893', '53.4815032365633', '££'),
  ('Lime Cafe', 'Humanities Lime Grove Building,The University of Manchester,Manchester M13 9PL,United Kingdom', '', 'https://www.yelp.com/biz/lime-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233238', '53.467934', 'undefined'),
  ('Pizza Co', '121 Oxford Road,Manchester M1 7DU,United Kingdom', '+441612738101', 'https://www.yelp.com/biz/pizza-co-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2374847', '53.4708662', '£'),
  ('San Carlo Bottega', 'Selfridges,2nd Floor,Manchester M4,United Kingdom', '+441618380571', 'https://www.yelp.com/biz/san-carlo-bottega-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24368381454859', '53.4840252918662', 'undefined'),
  ('Arden Arms', '23 Millgate,Stockport SK1 2LX,United Kingdom', '+441614802185', 'https://www.yelp.com/biz/arden-arms-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.15507916074115', '53.4119517006965', '££'),
  ('Love Pizza', 'Unit 6B,26 Hulme High Street,Manchester M15 5JS,United Kingdom', '+441612327797', 'https://www.yelp.com/biz/love-pizza-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248492', '53.461765', '£'),
  ('2nd View Bar', '91 Deansgate,Manchester M2 7,United Kingdom', '+441618317156', 'https://www.yelp.com/biz/2nd-view-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24733434065224', '53.4815923762738', '££'),
  ('The Cafe At the Museum', 'Oxford Road,Manchester M13 9NR,United Kingdom', '+441612756256', 'https://www.yelp.com/biz/the-cafe-at-the-museum-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23434517065313', '53.4665474247641', '£'),
  ('Nandos', 'Unit 5A Parrs Wood Leisure,Wilmslow Road,Manchester M20 5PG,United Kingdom', '+441614380054', '
https:
//www.yelp.com/biz/nandos-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.219451', '53.409523', '££'),
  ('Subway', 'Cheetham Hill Road,Manchester Fort Shopping Park,Manchester M8 8EP,United Kingdom', '+441618328207', '
https:
//www.yelp.com/biz/subway-manchester-58?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23694176665651', '53.4975709714194', '£££'),
  ('TGI Friday', 'Royal Exchange Building,Cross Street,Manchester M2 7DH,United Kingdom', '+443446928903', '
https:
//www.yelp.com/biz/tgi-friday-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24460911750793', '53.4830474853516', '££'),
  ('Costa Coffee', 'Unit 1,Portland Street,Manchester M60 1HR,United Kingdom', '+441612375893', '
https:
//www.yelp.com/biz/costa-coffee-manchester-19?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23463078682175', '53.480599440024', '£'),
  ('Pizza Express', 'The Orient,The Trafford Centre,Manchester M17 8EQ,United Kingdom', '+441617472121', '
https:
//www.yelp.com/biz/pizza-express-manchester-13?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23705005645752', '53.4650993347168', '££'),
  ('Malmaison Brasserie', '1 Gore Street,Manchester M1 3AQ,United Kingdom', '+441612781001', '
https:
//www.yelp.com/biz/malmaison-brasserie-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2336966', '53.479799', 'undefined'),
  ('Anmol Sweet House', '390 Dickenson Road,Manchester M13 0WQ,United Kingdom', '+441612486286', '
https:
//www.yelp.com/biz/anmol-sweet-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2011267', '53.4560065', '£'),
  ('Lusitano', '613 Wilbraham Road,Manchester M21 9AN,United Kingdom', '+441618618880', '
https:
//www.yelp.com/biz/lusitano-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2794618', '53.4424557', '££'),
  ('Teatime Collective', 'St Wilfrids Enterprise Centre,Royce Road,Hulme,Manchester M15 5BJ,United Kingdom', '+447708927425', '
https:
//www.yelp.com/biz/teatime-collective-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25331', '53.4680405', '£'),
  ('Red n Hot Chinese', '56 Faulkner Street,Chinatown,Manchester M1 4FH,United Kingdom', '+441612362650', '
https:
//www.yelp.com/biz/red-n-hot-chinese-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2405786', '53.4780415', '££'),
  ('Loaf', 'Deansgate Locks,1a-5a Whitworth St West,Manchester M1 5LH,United Kingdom', '+441618195858', '
https:
//www.yelp.com/biz/loaf-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249864', '53.474705', '££££'),
  ('Yo! Sushi', 'Upper Level,Manchester Piccadilly Station,Manchester M1 2QF,United Kingdom', '+441612198775', '
https:
//www.yelp.com/biz/yo-sushi-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23130760988712', '53.4774472438384', '£'),
  ('Calvados Masterclass', 'Watson Street,Unit 1 A Great Northern Tower,Manchester M3 4EE,United Kingdom', '', '
https:
//www.yelp.com/biz/calvados-masterclass-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.248101', '53.477244', 'undefined'),
  ('The Hare and Hounds', '46 Shudehill,Northern Quarter,Manchester M4 1,United Kingdom', '+441618324737', '
https:
//www.yelp.com/biz/the-hare-and-hounds-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2379317', '53.4850713', '£'),
  ('Shahenshah', '135 Wilmslow Road,Manchester M14 5AW,United Kingdom', '+441612572534', '
https:
//www.yelp.com/biz/shahenshah-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '££'),
  ('Fresh Loaf', '2 Central Buildings,Oldham Street,Manchester M1 1JQ,United Kingdom', '+441612287899', '
https:
//www.yelp.com/biz/fresh-loaf-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236058', '53.481915', '£'),
  ('Costa Coffee', 'Retail Unit 1,263 Great Ancoats Street,Manchester M4 7DB,United Kingdom', '+441619263062', '
https:
//www.yelp.com/biz/costa-coffee-manchester-17?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22174459357916', '53.4789216012609', '£'),
  ('Swadesh', '98 Portland Street,Manchester M1 4GX,United Kingdom', '+441612361313', '
https:
//www.yelp.com/biz/swadesh-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24135108283488', '53.477016501456', '££'),
  ('Caffè Nero', '53 Cross Street,Manchester M2 4JN,United Kingdom', '+441618321663', '
https:
//www.yelp.com/biz/caff%C3%A8-nero-manchester-11?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2448580962376', '53.480426361079', '£'),
  ('Caffè Nero', 'Manchester Piccadilly Approach,Tower Unit Manchester,Manchester M60 7LP,United Kingdom', '', '
https:
//www.yelp.com/biz/caff%C3%A8-nero-manchester-31?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23306768572772', '53.4788415252107', '£'),
  ('Costa', 'Cheetham Hill Road,Manchester Fort Retail Park,Manchester M8 8EP,United Kingdom', '+441618392489', '
https:
//www.yelp.com/biz/costa-manchester-11?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23507494918215', '53.4973475965684', '££'),
  ('Mazaa', '608 Stockport Road,Manchester M13 0RQ,United Kingdom', '+441612257008', '
https:
//www.yelp.com/biz/mazaa-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.19919311937243', '53.4556550262574', '£'),
  ('The Rum Bus', 'Peter Street,Manchester,United Kingdom', '', '
https:
//www.yelp.com/biz/the-rum-bus-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24795199930668', '53.4779778734616', 'undefined'),
  ('Costa Coffee', 'Unit G41-42 Tower 12,18-20 Bridge Street,Spinningfields,Manchester M3 3BZ,United Kingdom', '+441618397281', '
https:
//www.yelp.com/biz/costa-coffee-manchester-15?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2507454', '53.4811399', '£'),
  ('The Hillary Step', '199 Upper Chorlton Road,Whalley Range,Manchester M16 9RT,United Kingdom', '+441618811978', '
https:
//www.yelp.com/biz/the-hillary-step-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.26838', '53.4521', '££'),
  ('The Village Restaurant', '97 Wilmslow Road,Manchester M14 5SU,United Kingdom', '+441612252614', '
https:
//www.yelp.com/biz/the-village-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2249998', '53.4555534', '££'),
  ('Ocean Treasure Seafood Restaurant', 'Treasure House Greengate Industrial Estate,Greenside Way,Middleton,Manchester M24 1SW,United Kingdom', '+441616536688', '
https:
//www.yelp.com/biz/ocean-treasure-seafood-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.177678', '53.534958', '£££'),
  ('Atlas Shawarma', 'Manchester M14 5AH,United Kingdom', '+447874675347', '
https:
//www.yelp.com/biz/atlas-shawarma-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22317218780518', '53.4528160095215', '£'),
  ('Spice Kitchens', '117 Wilmslow Road,Rusholme,Manchester M14 5AN,United Kingdom', '+441612257797', '
https:
//www.yelp.com/biz/spice-kitchens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224643', '53.454801', '££'),
  ('The Elk', '48 Beech Road,Manchester M21 9EQ,United Kingdom', '+441613125977', '
https:
//www.yelp.com/biz/the-elk-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2799701', '53.4382592', '££'),
  ('La Delicatezze Di Bruno', '564 Ashton New Road,Manchester M11 4RP,United Kingdom', '+441612234307', '
https:
//www.yelp.com/biz/la-delicatezze-di-bruno-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1876919', '53.483112', '££'),
  ('Greggs', '2 Piccadilly Plz,Manchester M1 4AH,United Kingdom', '+441612362456', '
https:
//www.yelp.com/biz/greggs-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239109', '53.48048', '£'),
  ('Byron', 'Corn Exchange,Exchange Square,Manchester M4 3TR,United Kingdom', '', '
https:
//www.yelp.com/biz/byron-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243249', '53.485082', '££'),
  ('Lean & Mean', '49 High Street,Arndale Food Market,Manchester M4 3AH,United Kingdom', '', '
https:
//www.yelp.com/biz/lean-and-mean-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23973913696439', '53.4828889459909', '£'),
  ('Porter + Cole', 'One Smithfield Square,High Street,Manchester M4 5JY,United Kingdom', '', '
https:
//www.yelp.com/biz/porter-cole-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2358275', '53.4852413', 'undefined'),
  ('Cafe Greco', 'Market Food Court,Arndale Centre,Manchester M4 3AQ,United Kingdom', '', '
https:
//www.yelp.com/biz/cafe-greco-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23934851368231', '53.4840341781858', '£'),
  ('Creation Café', '1 St Philips Place,Salford,Manchester M3 6FA,United Kingdom', '+441618330495', '
https:
//www.yelp.com/biz/creation-caf%C3%A9-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.263312', '53.48353', 'undefined'),
  ('St Michael`s Flags and Angel Meadow Park', 'Northern Quarter,Irk Street,Manchester M4 4,United Kingdom', '', 'https://www.yelp.com/biz/st-michaels-flags-and-angel-meadow-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23198413848877', '53.489143493386', 'undefined'),
  ('Fusion Deli', '109 Lapwing Lane,Manchester M20 6UR,United Kingdom', '+441614380404', 'https://www.yelp.com/biz/fusion-deli-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235636', '53.4247856', '£££'),
  ('The Saffron Room', 'Number 5,Castle Quay,Castlefield M15 4NT,United Kingdom', '+441618347578', 'https://www.yelp.com/biz/the-saffron-room-castlefield?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.256032', '53.473227', 'undefined'),
  ('Alan Turing Building', 'Oxford Road,Manchester M13 9PL,United Kingdom', '+441612755800', 'https://www.yelp.com/biz/alan-turing-building-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23148178226405', '53.4680570336007', 'undefined'),
  ('Nafees Take Away Food Shops', '616 Stockport Road,Manchester M13 0RQ,United Kingdom', '+441612256652', 'https://www.yelp.com/biz/nafees-take-away-food-shops-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1988375', '53.4553782', '£'),
  ('Wings Dai Pai Dong', '37 King Street W,Manchester M3 2PW,United Kingdom', '+441618349088', 'https://www.yelp.com/biz/wings-dai-pai-dong-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24917810410261', '53.4815840878765', '£'),
  ('Slug and Lettuce', 'Piccadilly Gardens,11 Portland Street,Manchester M1 3HU,United Kingdom', '+441612370631', 'https://www.yelp.com/biz/slug-and-lettuce-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23634073340625', '53.479717692446', '££'),
  ('Lloyds No. 1 Bar', 'The Printworks,27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618172980', 'https://www.yelp.com/biz/lloyds-no-1-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240197100469', '53.4850039224976', '££'),
  ('Sindhoor', '198-200 Mauldeth Rd,Levenshulme,Manchester M19 1AJ,United Kingdom', '+441614325246', 'https://www.yelp.com/biz/sindhoor-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.206552', '53.432066', '££'),
  ('St. Anns House', 'St Anns Street,Manchester M2 7,United Kingdom', '', 'https://www.yelp.com/biz/st-anns-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.344025', '53.51114', 'undefined'),
  ('Chez Gerard', '2 -8 Commerical Union House,Albert Square,Manchester M2 6LP,United Kingdom', '+441618347633', 'https://www.yelp.com/biz/chez-gerard-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23705005645752', '53.4650993347168', '£££'),
  ('La Rosa Pizza', '36 Great Ancoats Street,Manchester M4 5AB,United Kingdom', '+441612364555', 'https://www.yelp.com/biz/la-rosa-pizza-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2311851', '53.4836332', '£'),
  ('Petra', '267 Upper Brook Street,Manchester M13 0HR,United Kingdom', '+441612744441', 'https://www.yelp.com/biz/petra-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.221648', '53.460856', 'undefined'),
  ('Manchester Fine Food Market', 'St Anns Square,Manchester M2 7,United Kingdom', '+441612347356', '
https:
//www.yelp.com/biz/manchester-fine-food-market-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.245509', '53.482276', '££'),
  ('Lameizi Chinese Supermarket & Restaurant', 'Chester Street,Unit 2 The Quadrangle,Manchester M1 5QS,United Kingdom', '+441612280668', '
https:
//www.yelp.com/biz/lameizi-chinese-supermarket-and-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24015688465579', '53.4722899874425', 'undefined'),
  ('Fosters Fish & Chips', '812 Wilmslow Road,Manchester M20 6UH,United Kingdom', '+441614454430', '
https:
//www.yelp.com/biz/fosters-fish-and-chips-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23241794662901', '53.4146591460431', '£'),
  ('Mitre Hotel', 'Cathedral Gates,Manchester M3 1SW,United Kingdom', '+441618344128', '
https:
//www.yelp.com/biz/mitre-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24409', '53.484685', '££'),
  ('Glorious Grill', '288 Slade Lane,Manchester M19 2HR,United Kingdom', '+441612241666', '
https:
//www.yelp.com/biz/glorious-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.20019986017394', '53.4395798226958', '£'),
  ('The Deansgate', '321 Deansgate,Manchester M3 4LQ,United Kingdom', '+441618325215', '
https:
//www.yelp.com/biz/the-deansgate-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.251222', '53.475071', '££'),
  ('Bollywood Masala', '15-25 Liverpool Road,Manchester M3 4NW,United Kingdom', '+441618321290', '
https:
//www.yelp.com/biz/bollywood-masala-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2520111', '53.4757881', '££'),
  ('Starbucks', 'Pler House,75 Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441618392996', '
https:
//www.yelp.com/biz/starbucks-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24327087402344', '53.4855941799217', '££'),
  ('Pizza Hut', '6-12 Fountain Street,Manchester M2 2AA,United Kingdom', '+441618345877', '
https:
//www.yelp.com/biz/pizza-hut-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240065', '53.481772', 'undefined'),
  ('Eat.', 'Unit R1,Arndale Centre,Manchester M4 2HU,United Kingdom', '+441618394935', '
https:
//www.yelp.com/biz/eat-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24078178405762', '53.4829915863862', '££'),
  ('De Nada', '127 Manchester Road,Chorlton,Manchester M21 9PG,United Kingdom', '+441618816618', '
https:
//www.yelp.com/biz/de-nada-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27717253406536', '53.447461302434', '££'),
  ('The Baths Supper Bar', '113 Manchester Road,Chorlton,Manchester M21 9PG,United Kingdom', '+441612910056', '
https:
//www.yelp.com/biz/the-baths-supper-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2773957', '53.4473148', '££'),
  ('Platt Fields Park', 'Wilmslow Road,Manchester M14 6LA,United Kingdom', '', '
https:
//www.yelp.com/biz/platt-fields-park-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2198236', '53.4480696', 'undefined'),
  ('Affleck & Brown', '4 Hilton Street,Manchester M1 1JJ,United Kingdom', '', '
https:
//www.yelp.com/biz/affleck-and-brown-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2347097', '53.4828835', 'undefined'),
  ('Starbucks', '23A Princess Street,Manchester M2 4EN,United Kingdom', '+441612282517', '
https:
//www.yelp.com/biz/starbucks-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2442157257953', '53.479947204765', '££'),
  ('Salt n Pepper', 'Vicus Building,73-83 Liverpool Road,Manchester M3 4AQ,United Kingdom', '+441618191817', '
https:
//www.yelp.com/biz/salt-n-pepper-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.255177', '53.476375', 'undefined'),
  ('Zam Zam Tandoori', '452 Wilborougham Road,Chorlton,Manchester M21 0AG,United Kingdom', '+441618620999', '
https:
//www.yelp.com/biz/zam-zam-tandoori-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.276534', '53.442634', '£'),
  ('Palate', '516 Wilbraham Road,Manchester M21 9AW,United Kingdom', '+441618820286', '
https:
//www.yelp.com/biz/palate-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.280674', '53.442763', 'undefined'),
  ('Chorlton Park', 'Nell Ln,Chorlton,Manchester M21 7FZ,United Kingdom', '+441612242902', '
https:
//www.yelp.com/biz/chorlton-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.26897716522217', '53.4349266622303', 'undefined'),
  ('Fletcher Moss Park', '18 Stenner Lane,Manchester M20 2RQ,United Kingdom', '+44441614341877', '
https:
//www.yelp.com/biz/fletcher-moss-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22983895728176', '53.409182146613', 'undefined'),
  ('The Ducie Arms', '52 Devas Street,Greenheys,Manchester M15 6HS,United Kingdom', '+441612329834', '
https:
//www.yelp.com/biz/the-ducie-arms-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235035', '53.463158', '££'),
  ('The Grove', 'Whitworth Park Halls,316 Oxford Road,Manchester M13 9WJ,United Kingdom', '+441612731702', '
https:
//www.yelp.com/biz/the-grove-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2294823', '53.4620588', '£'),
  ('Raj Takeaway', '252 Wilmslow Road,Manchester M14 6LD,United Kingdom', '+441612259980', '
https:
//www.yelp.com/biz/raj-takeaway-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218711', '53.4433998', 'undefined'),
  ('Fantasy Manchester', '137 Levenshulme Road,Gorton,Manchester M18,United Kingdom', '+441612307398', '
https:
//www.yelp.com/biz/fantasy-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.17217447521284', '53.4551958381367', '££'),
  ('Old Parsonage Gardens', 'Wilmslow Road,Didsbury,Manchester M20 2SG,United Kingdom', '', '
https:
//www.yelp.com/biz/old-parsonage-gardens-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230952', '53.41026', 'undefined'),
  ('Caffé Grande by Piccolino', 'Clarence Street,Manchester M2 4DW,United Kingdom', '+441618359860', '
https:
//www.yelp.com/biz/caff%C3%A9-grande-by-piccolino-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24444573864115', '53.4800646635758', '££££'),
  ('Nectar Bistro', '404 Barlow Moor Road,Chorlton,Manchester M21 8AD,United Kingdom', '+441618619300', '
https:
//www.yelp.com/biz/nectar-bistro-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2760247', '53.4414823', 'undefined'),
  ('Fatso`s', '77 Picadilly,Manchester M1 2BU,United Kingdom', '+441612389155', 'https://www.yelp.com/biz/fatsos-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23404407501221', '53.4807229659361', 'undefined'),
  ('Dominos Pizza Group', '613 Wilbraham Road,Manchester M21 9AN,United Kingdom', '+441618819696', '
https:
//www.yelp.com/biz/dominos-pizza-group-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.279723', '53.44237', '££'),
  ('Zinc Bar & Grill', 'Unit 12a Hanging Ditch,Manchester M4 3TR,United Kingdom', '+441618274200', '
https:
//www.yelp.com/biz/zinc-bar-and-grill-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23438', '53.4807', '£££'),
  ('Al Bacio', '10-14 S King Street,Deansgate,Manchester M2 6DW,United Kingdom', '+441618327669', '
https:
//www.yelp.com/biz/al-bacio-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2466713', '53.4809393', '£££'),
  ('Hourglass', 'Manchester Piccadilly station,Manchester M60 7RA,United Kingdom', '+441612389109', '
https:
//www.yelp.com/biz/hourglass-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231156', '53.477212', '££'),
  ('Happy Garden Takeaway', '304 Parrs Wood Road,Manchester M20 6JY,United Kingdom', '+441614343663', '
https:
//www.yelp.com/biz/happy-garden-takeaway-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21945095062256', '53.4203681945801', '£'),
  ('Kebab King', '210 Wilmslow Road,Fallowfield,Manchester M14 6,United Kingdom', '+441612259717', '
https:
//www.yelp.com/biz/kebab-king-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2184245', '53.4444747', '£'),
  ('West Corner', '21 Hilton Street,Manchester M1 1JJ,United Kingdom', '+441612417070', '
https:
//www.yelp.com/biz/west-corner-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2324798', '53.4819228', '£'),
  ('San Rocco', '96 Bury Old Road,Manchester M8 5BW,United Kingdom', '+441617955300', '
https:
//www.yelp.com/biz/san-rocco-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2470514', '53.5145992', '££'),
  ('Mary & Archie', '111 Manchester Road,Manchester M21 9PG,United Kingdom', '+441612822795', '
https:
//www.yelp.com/biz/mary-and-archie-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2774107', '53.4472814', '££'),
  ('Great Wall', '52 Faulkner Street,Manchester M1 4FH,United Kingdom', '+441612375664', '
https:
//www.yelp.com/biz/great-wall-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2404634', '53.4781351', '££'),
  ('Woodhouse Gardens Inn', '48 Medlock Road,Failsworth,Manchester M35 9WN,United Kingdom', '+441616813782', '
https:
//www.yelp.com/biz/woodhouse-gardens-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.137684', '53.503461', '£££'),
  ('Dilshad Tandoori Restaurant', '385 Hollinwood Avenue,New Moston,Manchester M40 0JQ,United Kingdom', '+441616812204', '
https:
//www.yelp.com/biz/dilshad-tandoori-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1734475', '53.5244941', '££'),
  ('The Beer House Bar & Kitchen', 'Manchester Victoria Station,Hunts Bank,Manchester M3 1NY,United Kingdom', '+441618359586', '
https:
//www.yelp.com/biz/the-beer-house-bar-and-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242265', '53.486964', '££'),
  ('Caffe Nero', '133 Deansgate,Manchester M3 3WR,United Kingdom', '+441618330844', '
https:
//www.yelp.com/biz/caffe-nero-manchester-20?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2486852250579', '53.4795053482015', '££'),
  ('Chunky Chicken', '106 Wilmslow Road,Rusholme,Manchester M14 5AJ,United Kingdom', '+441612489709', '
https:
//www.yelp.com/biz/chunky-chicken-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2238036', '53.4535347', '£'),
  ('Zizzi', 'The Corn Exchange,Exchange Square,Manchester M4 3TR,United Kingdom', '+441618349395', '
https:
//www.yelp.com/biz/zizzi-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2449329', '53.4832348', '££'),
  ('Nudo Sushi Box', 'Unit B5 City Tower,Moseley Street,Manchester M2,United Kingdom', '', '
https:
//www.yelp.com/biz/nudo-sushi-box-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23988693207502', '53.4808309064164', 'undefined'),
  ('Bock Bière Cafe', '10 Tib Lane,Manchester M2 4JB,United Kingdom', '', '
https:
//www.yelp.com/biz/bock-bi%C3%A8re-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244593', '53.48037', 'undefined'),
  ('Czech Bar', '9-11 Church Road,Eccles,Manchester M30 0DL,United Kingdom', '', '
https:
//www.yelp.com/biz/czech-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.334181', '53.485177', 'undefined'),
  ('Black Lion Hotel', '65 Chapel Street,Salford M3 5BZ,United Kingdom', '+441616376960', '
https:
//www.yelp.com/biz/black-lion-hotel-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2497674594905', '53.484702430523', '££'),
  ('The Stokers Arms', 'Unit 655,657 Wilmslow Road,Manchester M20 6RA,United Kingdom', '+441614487941', 'https://www.yelp.com/biz/the-stokers-arms-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2312942', '53.4178552', '££'),
  ('Frankie & Bennys', 'Capital Quay,Trafford Road,Salford M50 3WL,United Kingdom', '+441618774738', '
https:
//www.yelp.com/biz/frankie-and-bennys-salford-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28309279410891', '53.4709582231243', '££'),
  ('Royal Oak', '729 Wilmslow Road,Manchester M20 6WF,United Kingdom', '+441614344788', '
https:
//www.yelp.com/biz/royal-oak-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231407', '53.416515', '£££'),
  ('The Home of Honest Coffee', '77 Chapel Street,Salford,Salford M3 5BZ,United Kingdom', '', '
https:
//www.yelp.com/biz/the-home-of-honest-coffee-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2498605', '53.4846321', '££'),
  ('University of Manchester Students Union', 'Steve Biko Building,Oxford Road,Manchester M13 9PR,United Kingdom', '+441612752930', 'https://www.yelp.com/biz/university-of-manchester-students-union-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.232225', '53.464386', '£'),
  ('Starbucks', 'Overseas House,Quay Street,Manchester M3 3HN,United Kingdom', '+441618340836', 'https://www.yelp.com/biz/starbucks-manchester-6?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25010771195414', '53.4782480707164', '££'),
  ('Hunan Restaurant', '1st Floor,19-21 George Street,Manchester M1 4HE,United Kingdom', '+441612368889', 'https://www.yelp.com/biz/hunan-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239945', '53.479058', 'undefined'),
  ('Sadaf Halaal', '167 Wilmslow Road,Manchester M14 5AP,United Kingdom', '+441612573557', 'https://www.yelp.com/biz/sadaf-halaal-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.223629', '53.453859', '£'),
  ('Persian Tasty Grill', '879 Stockport Rd,Levenshulme,Manchester M19 3PW,United Kingdom', '+441612488263', 'https://www.yelp.com/biz/persian-tasty-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1912392', '53.4435207', '£'),
  ('Chilli Peri Chicken', '120 Wilmslow Road,Rusholme,Manchester M14 5AH,United Kingdom', '', 'https://www.yelp.com/biz/chilli-peri-chicken-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.223386', '53.4530842', '£'),
  ('Shimla Pinks', 'Dolefield Crown Square,Manchester M3 3AB,United Kingdom', '+441618317099', 'https://www.yelp.com/biz/shimla-pinks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2513534', '53.480388', 'undefined'),
  ('Spice Lounge', '56-58 Shudehill,Manchester M4 4AA,United Kingdom', '+441618321000', 'https://www.yelp.com/biz/spice-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237493', '53.485229', 'undefined'),
  ('TGI Fridays', 'Upper Concourse,Piccadilly Station,Manchester M1 2PB,United Kingdom', '+443448804364', 'https://www.yelp.com/biz/tgi-fridays-manchester-11?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23073743436711', '53.4776366297138', '££'),
  ('Toro`s Steakhouse', '13-15 Wilmslow Road,Manchester M14 5TP,United Kingdom', '+441612249894', '
https:
//www.yelp.com/biz/toros-steakhouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2264543438438', '53.4575613493087', '££'),
  ('The Atlantic Fish Bar', '557 Wilbraham Rd,Chorlton,Manchester M21 0AE,United Kingdom', '+44441618610765', '
https:
//www.yelp.com/biz/the-atlantic-fish-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27601929282681', '53.4424119854271', '£'),
  ('Vimto Monument', 'Granby Row,Manchester M1 3NJ,United Kingdom', '', '
https:
//www.yelp.com/biz/vimto-monument-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23443796380947', '53.4755339092457', 'undefined'),
  ('Hunters BBQ & Asian Take Away', '94 High Street,Northern Quarter,Manchester M4 1EF,United Kingdom', '+441618395060', '
https:
//www.yelp.com/biz/hunters-bbq-and-asian-take-away-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2374311', '53.4842655', '£'),
  ('Camel One', '107 Wilmslow Rd,Manchester M14 5SU,United Kingdom', '+441612572282', '
https:
//www.yelp.com/biz/camel-one-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2248693', '53.4552323', 'undefined'),
  ('Casa Italia', '688-690 Wilmslow Road,Manchester M20 2DN,United Kingdom', '+441614454252', '
https:
//www.yelp.com/biz/casa-italia-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2321874', '53.4188602', '££'),
  ('Pret A Manger', '34 Oxford Street,Manchester M1 5EL,United Kingdom', '+441612287965', '
https:
//www.yelp.com/biz/pret-a-manger-manchester-8?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24243072387366', '53.4763546258558', '£'),
  ('Italia Mia', '21 Stand Lane,Radcliffe,Manchester M26 1NW,United Kingdom', '+441617245715', '
https:
//www.yelp.com/biz/italia-mia-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.323694', '53.558525', '££'),
  ('Spicy Grill', '37 Higher Ardwick,Manchester M12 6DB,United Kingdom', '', '
https:
//www.yelp.com/biz/spicy-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2205117', '53.4719505', '£'),
  ('Red Door', '78 Deansgate,Manchester M3 2FW,United Kingdom', '', '
https:
//www.yelp.com/biz/red-door-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2470551', '53.4827291', '££'),
  ('The Milton Club', '244 Milton Hall,Deansgate,Manchester M3 4BQ,United Kingdom', '+441618502353', '
https:
//www.yelp.com/biz/the-milton-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2500336', '53.4779685', '£££'),
  ('Frankie & Bennys', 'Trafford Centre,The Orient,Manchester M17 8WW,United Kingdom', '+441617471600', 'https://www.yelp.com/biz/frankie-and-bennys-manchester-5?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.353405', '53.464664', '££'),
  ('YeoPan`s', '522 Wilbraham Road,Chorlton,Manchester M21 9AW,United Kingdom', '+441618816888', '
https:
//www.yelp.com/biz/yeopans-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2810554', '53.4427549', '££'),
  ('Longford Park', 'Edge Lane,Stretford,Manchester M32 8PX,United Kingdom', '', '
https:
//www.yelp.com/biz/longford-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.294657', '53.444491', 'undefined'),
  ('Chalk Bar and Grill', '784-788 Wilmslow Road,Manchester M20 2DR,United Kingdom', '+441614451042', '
https:
//www.yelp.com/biz/chalk-bar-and-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2324552', '53.4155518', '££'),
  ('Starbucks', '3 Piccadilly Place,Manchester M1 3BN,United Kingdom', '+441612286619', '
https:
//www.yelp.com/biz/starbucks-manchester-35?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23328065127134', '53.4777214721968', '££'),
  ('Bowling Green', 'Brookburn Road,Manchester M21 9ES,United Kingdom', '+441618602800', '
https:
//www.yelp.com/biz/bowling-green-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.283451', '53.437112', '£'),
  ('Pizza Hut', 'Arndale Ctr,Market St,Manchester M2 1NP,United Kingdom', '+441618398307', '
https:
//www.yelp.com/biz/pizza-hut-manchester-8?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.242814', '53.482944', '££'),
  ('Sackville Lounge', 'Sackville Street,Manchester M1,United Kingdom', '+441619404444', '
https:
//www.yelp.com/biz/sackville-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23652444779873', '53.4765715383626', '££'),
  ('My Thai', 'St James Square,39 John Dalton Street,Manchester M2 6WH,United Kingdom', '+441618331016', '
https:
//www.yelp.com/biz/my-thai-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2457429', '53.4803079', '££'),
  ('Fallow Cafe', '2a Landcross Road,Manchester M14 6NA,United Kingdom', '+441612240467', '
https:
//www.yelp.com/biz/fallow-cafe-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21963', '53.4434316', '£'),
  ('Blue Bell Inn', '170 Barlow Road,Manchester M19 3HF,United Kingdom', '+441612241723', '
https:
//www.yelp.com/biz/blue-bell-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1826624', '53.4452287', '£'),
  ('Alif Grill', '105 Cheetham Hill Road,Manchester M8 8PY,United Kingdom', '+441618394444', '
https:
//www.yelp.com/biz/alif-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24026344716549', '53.4927649153173', '£'),
  ('Glasshouse Bar & Restaurant', '70 Shudehill,Manchester M4 4AF,United Kingdom', '+441618288600', '
https:
//www.yelp.com/biz/glasshouse-bar-and-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23624491691589', '53.4857711791992', '££'),
  ('Squid Ink', 'Unit 4 Nuovo,67 Great Ancoats Street,Manchester M4 5AB,United Kingdom', '+441612367258', '
https:
//www.yelp.com/biz/squid-ink-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2303664', '53.4832667', 'undefined'),
  ('Arora Hotel Manchester', '18-24 Princess Street,Manchester M1 4LG,United Kingdom', '+441612368999', '
https:
//www.yelp.com/biz/arora-hotel-manchester-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241838', '53.478182', '££'),
  ('Brunswick', '95 Piccadilly,Manchester M1 2DA,United Kingdom', '+441612364161', '
https:
//www.yelp.com/biz/brunswick-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233503', '53.480258', '££'),
  ('Wokooshii', '128 The Orient,Trafford Centre,Manchester M17 8EH,United Kingdom', '+441617472223', '
https:
//www.yelp.com/biz/wokooshii-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34970092773438', '53.4641387702241', '£££'),
  ('Wanasah Cafe', '68-70 Wilmslow Road,Manchester M14 5AL,United Kingdom', '+441612258879', '
https:
//www.yelp.com/biz/wanasah-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22498073355914', '53.4547355204745', '££'),
  ('Marco`s New York Italian', 'The Holiday Inn,Media City UK Broadway,Salford M50 2EQ,United Kingdom', '+441618131040', 'https://www.yelp.com/biz/marcos-new-york-italian-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.297721', '53.473998', 'undefined'),
  ('Genting Club', '110 Portland Street,Manchester M1 4RL,United Kingdom', '+441612280077', 'https://www.yelp.com/biz/genting-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24245395209355', '53.4764186939178', '££'),
  ('Al Bilal Restaurant', '87-91 Wilmslow Rd,Rusholme,Manchester M14 5SU,United Kingdom', '+441612570006', 'https://www.yelp.com/biz/al-bilal-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224994', '53.455717', '££'),
  ('Eats The Restaurant', 'University Place,Oxford Road,Manchester M13 9PL,United Kingdom', '', 'https://www.yelp.com/biz/eats-the-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233238', '53.467934', 'undefined'),
  ('Happiness Cafe Restaurant', 'Precinct Centre,Oxford Road,Manchester M13 9,United Kingdom', '', 'https://www.yelp.com/biz/happiness-cafe-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.234403', '53.46702', 'undefined'),
  ('Papu`s Place', '63 Peter Street,Manchester M2 5PB,United Kingdom', '+441618195678', '
https:
//www.yelp.com/biz/papus-place-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24577777906114', '53.4778682457144', 'undefined'),
  ('McDonalds', '16-18 St Anns Square,Manchester M2 7HQ,United Kingdom', '+441618397044', '
https:
//www.yelp.com/biz/mcdonalds-manchester-30?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24581559894394', '53.482184677312', '£'),
  ('Munch Restaurant & Takeaway', '186 Stockport Rd,Manchester M12 4,United Kingdom', '+441612744415', '
https:
//www.yelp.com/biz/munch-restaurant-and-takeaway-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21805', '53.46696', 'undefined'),
  ('Gardens Hotel', '55 Piccadilly,Manchester M1 2AP,United Kingdom', '+441612365155', '
https:
//www.yelp.com/biz/gardens-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.235134', '53.481171', '£'),
  ('Juan Sanchez Bar de Tapas', '366 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441618620267', '
https:
//www.yelp.com/biz/juan-sanchez-bar-de-tapas-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2740652', '53.4381057', '££'),
  ('Dominos', '9 Mirabel Street,Manchester M3 1NN,United Kingdom', '+441618319000', 'https://www.yelp.com/biz/dominos-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24686789512634', '53.4880523681641', 'undefined'),
  ('Insolito', '72 Mosley St,Manchester M2 3LW,United Kingdom', '+441612587847', 'https://www.yelp.com/biz/insolito-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2419655', '53.4790776', 'undefined'),
  ('Harvester', 'The Printworks,27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618390605', 'https://www.yelp.com/biz/harvester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24096568361591', '53.4855367949276', '££'),
  ('The Laundrette', '13 Jack Rosenthal St,First Street,Manchester M15 4FN,United Kingdom', '+441612361616', 'https://www.yelp.com/biz/the-laundrette-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24538398873237', '53.4727662767502', 'undefined'),
  ('Kiki', '4 Canal Street,Manchester M1 3HE,United Kingdom', '+441612365437', 'https://www.yelp.com/biz/kiki-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23567691975415', '53.4778728991149', '£££'),
  ('University V Grills', 'Precinct Centre,12 Oxford Road,Manchester M13 9RN,United Kingdom', '+441612732551', 'https://www.yelp.com/biz/university-v-grills-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239567', '53.4727087', '£'),
  ('Indihome', '384 Kingsway,Manchester M19 1PL,United Kingdom', '+441614420916', 'https://www.yelp.com/biz/indihome-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2142174', '53.4199791', '£'),
  ('Sadler`s Yard', 'Hanover Street,Manchester M60 0AB,United Kingdom', '', '
https:
//www.yelp.com/biz/sadlers-yard-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240336', '53.48694', 'undefined'),
  ('The Bar', '533 Wilbraham Road,Chorlton,Manchester M21 0BW,United Kingdom', '+441618617576', '
https:
//www.yelp.com/biz/the-bar-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2732757', '53.4423651', '££'),
  ('Caffe Ritazza', 'Piccadilly Station,Upper Level,Manchester M1 2PB,United Kingdom', '+441612365368', '
https:
//www.yelp.com/biz/caffe-ritazza-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.231061', '53.477437', '£'),
  ('Caribbean Flavas', '187 Chapel Street,Salford M3 5EQ,United Kingdom', '+441618339155', '
https:
//www.yelp.com/biz/caribbean-flavas-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2550844034556', '53.4833378637', '£'),
  ('Wythenshawe Park', 'Wythenshawe Road,Manchester M23 0AB,United Kingdom', '', '
https:
//www.yelp.com/biz/wythenshawe-park-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2799301', '53.4075089', 'undefined'),
  ('The Famous Crown', '770 Wilmslow Rd,Manchester M20 2DR,United Kingdom', '+441614347085', '
https:
//www.yelp.com/biz/the-famous-crown-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2321491', '53.4156694', '££££'),
  ('Gemini Takeaway', '308-310 Oxford Road,Manchester M13 9NS,United Kingdom', '+441612733201', '
https:
//www.yelp.com/biz/gemini-takeaway-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230515', '53.462897', '£'),
  ('Sanam Sweethouse', '145-151 Wilmslow Road,Manchester M14 5AW,United Kingdom', '+441612248824', '
https:
//www.yelp.com/biz/sanam-sweethouse-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '£'),
  ('Crazy Wendy`s', '210 Burton Road,Manchester M20 2LW,United Kingdom', '+441614455200', 'https://www.yelp.com/biz/crazy-wendys-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2428737', '53.4267245', '££'),
  ('The Beer Studio', '256 Wilmslow Road,Manchester M14 6LB,United Kingdom', '+441612490271', 'https://www.yelp.com/biz/the-beer-studio-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2187214', '53.4429131', '££'),
  ('The Wonder Inn', '29 Shudehill,Manchester M4 2AF,United Kingdom', '+447877305893', 'https://www.yelp.com/biz/the-wonder-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2396', '53.484775', '£'),
  ('Sir Ralph Abercromby', '35 Bootle Street,Manchester M2 5GU,United Kingdom', '+441618341807', 'https://www.yelp.com/biz/sir-ralph-abercromby-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247746', '53.47853', '£'),
  ('Hatty`s Cafe', '247 Deansgate,Manchester M3 4EN,United Kingdom', '+441618340494', '
https:
//www.yelp.com/biz/hattys-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2500277', '53.4772445', '£'),
  ('Kennedy and McCall', 'The Triangle,Exchange Square,Manchester M3 1BD,United Kingdom', '', '
https:
//www.yelp.com/biz/kennedy-and-mccall-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.243964', '53.483715', '££'),
  ('Costa Coffee', '91 Deansgate,Manchester M3 2BW,United Kingdom', '+441618373000', '
https:
//www.yelp.com/biz/costa-coffee-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246773', '53.482226', '££'),
  ('Eat', '62 Cross Street,Manchester M2 4JQ,United Kingdom', '+441618353503', '
https:
//www.yelp.com/biz/eat-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24676371070044', '53.4820561605123', '££'),
  ('The Buttery', '30 Albert Road,Manchester M19 2FP,United Kingdom', '+441612487990', '
https:
//www.yelp.com/biz/the-buttery-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.194333', '53.444028', '£'),
  ('Chicken King', '316 Wilmslow Road,Fallowfield,Manchester M14 6,United Kingdom', '+441612488989', '
https:
//www.yelp.com/biz/chicken-king-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2195835', '53.4406908', '£'),
  ('Heaton Park Beefeater and Premier Inn', 'Middleton Road,Crumpsall,Manchester M8 4NB,United Kingdom', '+441617206171', '
https:
//www.yelp.com/biz/heaton-park-beefeater-and-premier-inn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2486493', '53.5246588', '££'),
  ('Zizzi', 'Piccadilly Gardens,Manchester M1 1LU,United Kingdom', '+441612368855', '
https:
//www.yelp.com/biz/zizzi-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2363576', '53.4815917', '££'),
  ('Fress', '62 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612360856', '
https:
//www.yelp.com/biz/fress-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2339303', '53.4836063', '££'),
  ('Cafe at the Rylands', 'The Main Library,150 Deansgate,Manchester M3 3,United Kingdom', '+441612753764', '
https:
//www.yelp.com/biz/cafe-at-the-rylands-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.249429', '53.480311', '£'),
  ('Hispi', '1C School Lane,Manchester M20 6RD,United Kingdom', '+441614453996', '
https:
//www.yelp.com/biz/hispi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230977', '53.417648', '£££'),
  ('Sanam Sweet House and Restaurant', '145-151 Wilmsow Road,Rusholme M14 5AW,United Kingdom', '+441612241008', '
https:
//www.yelp.com/biz/sanam-sweet-house-and-restaurant-rusholme?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224264', '53.45437', '££'),
  ('Pizza la Citta', '75 Chapel St,Salford M3 5BZ,United Kingdom', '+441618347561', '
https:
//www.yelp.com/biz/pizza-la-citta-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2498243', '53.4846383', 'undefined'),
  ('AXM Club', '100 Bloom Street,Manchester M1 3LY,United Kingdom', '+441612287474', '
https:
//www.yelp.com/biz/axm-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238049', '53.476904', '££'),
  ('Subway', 'Unit 6 Ladybarn House,301 Wilmslow Road,Manchester M14 6ND,United Kingdom', '+441612256669', '
https:
//www.yelp.com/biz/subway-manchester-30?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21835317839155', '53.4421874213289', 'undefined'),
  ('The Fat Loaf', '62 Green Lane,Ashton Upon Mersey,Sale M33 5PG,United Kingdom', '+441619720397', '
https:
//www.yelp.com/biz/the-fat-loaf-sale?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.342526', '53.430521', '££'),
  ('Beastro', 'Irwell Square Leftbank,Manchester M3 3AG,United Kingdom', '+447703455347', '
https:
//www.yelp.com/biz/beastro-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25332372998048', '53.4807763858277', 'undefined'),
  ('Al Madina', '76 Wilmslow Road,Rusholme,Manchester M14 5AL,United Kingdom', '+441612244141', '
https:
//www.yelp.com/biz/al-madina-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225153', '53.454512', 'undefined'),
  ('Khan`s', '995 Stockport Road,Manchester M19 2SY,United Kingdom', '+441612224137', 'https://www.yelp.com/biz/khans-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.187835', '53.440384', 'undefined'),
  ('Canada Grill', '613A Wilbraham Road,Chorlton,Manchester M21 9AN,United Kingdom', '+441618811205', 'https://www.yelp.com/biz/canada-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2795154', '53.4424551', '£'),
  ('Mi & Pho', '384 Palatine Road,Wythenshawe M22 4FZ,United Kingdom', '+441613123290', 'https://www.yelp.com/biz/mi-and-pho-wythenshawe?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25850851569668', '53.407662709605', '££'),
  ('Manchester Pride', 'Suite 9c Manchester One,53 Portland Street,Manchester M1 3LF,United Kingdom', '+441612367474', 'https://www.yelp.com/biz/manchester-pride-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.238342', '53.478162', 'undefined'),
  ('Prezzo Manchester Printworks', 'Unit 22-23 The Printworks,27 Withy Grove,Manchester M4 2BS,United Kingdom', '+441618359160', 'https://www.yelp.com/biz/prezzo-manchester-printworks-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24098596721888', '53.4854670997363', '££'),
  ('La Casita', '372 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441612586927', 'https://www.yelp.com/biz/la-casita-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.274304', '53.438273', 'undefined'),
  ('Gio Ristorante', '5-7 Lower Mosley Street,Manchester M2 3WS,United Kingdom', '+441612282030', 'https://www.yelp.com/biz/gio-ristorante-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24435952791699', '53.4771080035136', '££'),
  ('Venice Pizza', '321 Wilmslow Road,Fallowfield,Manchester M14 6NW,United Kingdom', '+441612249340', 'https://www.yelp.com/biz/venice-pizza-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.218452', '53.4416548', 'undefined'),
  ('Chopsticks Chinese Restaurant', '161-169 Chorley Road,Swinton,Manchester M27 4AE,United Kingdom', '+441617279999', 'https://www.yelp.com/biz/chopsticks-chinese-restaurant-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.3390615', '53.5115785', '££'),
  ('The Foodie Farmer', 'Arndale Food Market,The Arndale Centre,Manchester M4 3AH,United Kingdom', '', 'https://www.yelp.com/biz/the-foodie-farmer-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23927998542786', '53.483959197998', 'undefined'),
  ('Hula West Didsbury', '158 Burton Road,Manchester M20 1LH,United Kingdom', '+441614456800', 'https://www.yelp.com/biz/hula-west-didsbury-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.241972', '53.427667', '£££'),
  ('Parched Tea Bar', 'Manchester,United Kingdom', '+447878122549', 'https://www.yelp.com/biz/parched-tea-bar-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', 'null', 'null', 'undefined'),
  ('The Yacht Club', 'Hardman Square,Manchester M3 3EB,United Kingdom', '', 'https://www.yelp.com/biz/the-yacht-club-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.252245', '53.479905', 'undefined'),
  ('The Sedge Lynn', '21a Manchester Road,Chorlton cum Hardy,Manchester M21 9PN,United Kingdom', '+441618600141', 'https://www.yelp.com/biz/the-sedge-lynn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.279073', '53.444277', '£££'),
  ('Saffron', '107 Cheetham Hill Road,Manchester M8 8PY,United Kingdom', '+441618341222', 'https://www.yelp.com/biz/saffron-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2403873', '53.4933765', '££'),
  ('Pau Brasil Bar and Grill Manchester', '58 Lever Street,Manchester M1 1DN,United Kingdom', '+441619236888', 'https://www.yelp.com/biz/pau-brasil-bar-and-grill-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23165238892657', '53.4839551634784', '£££'),
  ('The Waldorf Pub', '12 Gore Steet,Manchester M1 3AQ,United Kingdom', '+441612283269', 'https://www.yelp.com/biz/the-waldorf-pub-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2339465', '53.4796907', '£'),
  ('Al Jazeera Charcoal', '22 Wilmslow Rd,Manchester M14 5TQ,United Kingdom', '+441612573337', 'https://www.yelp.com/biz/al-jazeera-charcoal-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225717', '53.455805', '£'),
  ('Paradise Take Away', '600 Stockport Road,Manchester M13 0RQ,United Kingdom', '+441612251931', 'https://www.yelp.com/biz/paradise-take-away-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1994115', '53.4558595', '£'),
  ('Shahi Masala', '16-18 Wilmslow Road,Rusholme,Manchester M14 5TQ,United Kingdom', '+441612488344', 'https://www.yelp.com/biz/shahi-masala-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225717', '53.455805', '£££'),
  ('Chai Latte', '1-3 Stevenson Square,Manchester M1 1DN,United Kingdom', '+441612227919', 'https://www.yelp.com/biz/chai-latte-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.233953', '53.482863', '££'),
  ('Fog Lane Park', 'Heathside,133b Fog Lane,Manchester M20 6ED,United Kingdom', '+441614454241', 'https://www.yelp.com/biz/fog-lane-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2200711', '53.4218367', 'undefined'),
  ('Gray`s Larder', '123 Manchester Road,Manchester M21 9PG,United Kingdom', '+441612861961', '
https:
//www.yelp.com/biz/grays-larder-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2772974', '53.4474972', 'undefined'),
  ('The Veggie Deli', '109 Manchester Road,Manchester M21 9GA,United Kingdom', '+447946535248', '
https:
//www.yelp.com/biz/the-veggie-deli-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.27743464486271', '53.4470441271166', '£'),
  ('Blue Parrot', '11 Westminster House,Portland Street,Manchester M1 3DY,United Kingdom', '+441612368359', '
https:
//www.yelp.com/biz/blue-parrot-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236452', '53.479604', '££'),
  ('Plaza Theatre', 'Mersey Square,Stockport SK1 1SP,United Kingdom', '+441614777779', '
https:
//www.yelp.com/biz/plaza-theatre-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1625879', '53.4099395', '££'),
  ('Wrap It Up', '103 Deansgate,Manchester M3 2BQ,United Kingdom', '+441618325898', '
https:
//www.yelp.com/biz/wrap-it-up-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24765401045592', '53.481156607414', '£'),
  ('The Boulevard Deli', '22 The Boulevard,Manchester M20 2EU,United Kingdom', '+441614342051', '
https:
//www.yelp.com/biz/the-boulevard-deli-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24858175103228', '53.4302731494949', '£'),
  ('Bella House', '49 Manchester Road,Chorlton cum Hardy,Manchester M21 9PW,United Kingdom', '+441618610877', '
https:
//www.yelp.com/biz/bella-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.278539', '53.445546', 'undefined'),
  ('Sivori`s Café', 'Gorton Market,Garrett Way,Manchester M18,United Kingdom', '+441612230739', 'https://www.yelp.com/biz/sivoris-caf%C3%A9-manchester-21?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.17186828046554', '53.4625799498602', '£'),
  ('Pizza Express', '84-86 King Street,Manchester M2 4WQ,United Kingdom', '+441618325435', 'https://www.yelp.com/biz/pizza-express-manchester-14?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2434137', '53.4807204', '££'),
  ('KFC', '898 Stockport Road,Manchester M19 3AD,United Kingdom', '+441612249325', 'https://www.yelp.com/biz/kfc-manchester-9?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.1917949', '53.4452507', 'undefined'),
  ('Pizza Express', 'St James Buildings,79 Oxford Road,Manchester M1 6FQ,United Kingdom', '+441612286665', 'https://www.yelp.com/biz/pizza-express-manchester-9?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24141693115234', '53.4755935668945', '££'),
  ('King Street Tavern', 'King Street Townhouse,10 Booth Street,Manchester M2 4AW,United Kingdom', '+441616670707', 'https://www.yelp.com/biz/king-street-tavern-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2431724', '53.4800018', 'undefined'),
  ('Last Monsoon', '54 King Street West,Stockport SK3 0DT,United Kingdom', '+441614764266', 'https://www.yelp.com/biz/last-monsoon-stockport?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.166264', '53.406134', '££'),
  ('Nando`s', 'The Orient,Trafford Centre,Manchester M17 8AA,United Kingdom', '+441617487917', '
https:
//www.yelp.com/biz/nandos-manchester-10?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.34977817214872', '53.4652835863826', '££'),
  ('KFC', 'Cattermore Retail Park,Manchester M16 0SN,United Kingdom', '+441618723478', '
https:
//www.yelp.com/biz/kfc-manchester-10?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28586', '53.46248', '££'),
  ('Kashmiri Spice', '259 Kingsway,Burnage,Manchester M19 1AN,United Kingdom', '+441614423000', '
https:
//www.yelp.com/biz/kashmiri-spice-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.207844', '53.43148', '£'),
  ('The Great Central', '343 Wilmslow Road,Manchester M14 6NS,United Kingdom', '+441612481740', '
https:
//www.yelp.com/biz/the-great-central-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.219889', '53.441075', '£'),
  ('Salford Quays', 'Salford Quays,Salford M50 3,United Kingdom', '', '
https:
//www.yelp.com/biz/salford-quays-salford-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.293413', '53.472503', 'undefined'),
  ('The Pasta Project', 'Harpurhey Shopping Centre,Manchester M9 4DH,United Kingdom', '+44447787893099', '
https:
//www.yelp.com/biz/the-pasta-project-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.211191', '53.512888', 'undefined'),
  ('Noddys Take Away Food Shops', '573 Wilmslow Road,Manchester M20 3QH,United Kingdom', '+441614347600', '
https:
//www.yelp.com/biz/noddys-take-away-food-shops-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2284681', '53.4272913', '£'),
  ('Caffeine', 'Quay House,Quay Street,Manchester M3 3JE,United Kingdom', '+447787118578', '
https:
//www.yelp.com/biz/caffeine-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25179389717614', '53.479896563749', '££'),
  ('Peking Garden', '232 Moston Lane,Manchester M40 9WT,United Kingdom', '+441612058866', '
https:
//www.yelp.com/biz/peking-garden-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.20066094398499', '53.513671875', 'undefined'),
  ('Pinchjo`s', '192 Burton Road,West Didsbury,Manchester M20 1LH,United Kingdom', '+441614342020', 'https://www.yelp.com/biz/pinchjos-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2423822', '53.4271687', '££'),
  ('The Original Lal Qila', '310 Deasngate,Manchester M3 4HE,United Kingdom', '+441618396730', 'https://www.yelp.com/biz/the-original-lal-qila-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.251079', '53.476347', 'undefined'),
  ('Pintos', '3 Fairfax Road,Prestwich,Manchester M25 1AS,United Kingdom', '+441617734774', '
https:
//www.yelp.com/biz/pintos-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2851488', '53.5338626', '££'),
  ('Bernies Fish and Chips', '1A Andrew Road,Blackley,Manchester M9 8AY,United Kingdom', '+441617209290', '
https:
//www.yelp.com/biz/bernies-fish-and-chips-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.21723', '53.518875', '£'),
  ('24 Bar & Grill', '24 Princess Street,Manchester M1 4LY,United Kingdom', '+441612384348', '
https:
//www.yelp.com/biz/24-bar-and-grill-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2416229', '53.4781609', '£££'),
  ('Bierkeller Manchester', 'The Printworks,Withy Grove,Manchester M4 2BS,United Kingdom', '+448455333000', '
https:
//www.yelp.com/biz/bierkeller-manchester-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240763', '53.485187', '££'),
  ('Stalybridge Buffet Bar', 'Stalybridge Railway Station,Rassbottom Street,Stalybridge SK15 1RF,United Kingdom', '+441613030007', '
https:
//www.yelp.com/biz/stalybridge-buffet-bar-stalybridge?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.063058', '53.484451', '£'),
  ('Parish Church of St. Ann', 'St Ann Street,Manchester M2 7LF,United Kingdom', '+441618340239', '
https:
//www.yelp.com/biz/parish-church-of-st-ann-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2456626', '53.4817843', 'undefined'),
  ('Ariana', '113 Wilmslow Road,Manchester M14 5AN,United Kingdom', '+441616379897', '
https:
//www.yelp.com/biz/ariana-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.224643', '53.454801', '£'),
  ('The Stage Door', 'The Palace Theatre,Oxford Road,Manchester M13,United Kingdom', '+441612456600', '
https:
//www.yelp.com/biz/the-stage-door-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.234379', '53.467025', '£££'),
  ('Coffee Republic', '43 Cross Street,Manchester M2 4JF,United Kingdom', '+441618349321', '
https:
//www.yelp.com/biz/coffee-republic-manchester-4?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244908', '53.480773', '££'),
  ('The Corn Exchange', '2nd Floor,Exchange Square 2,Manchester M4 3TR,United Kingdom', '+441618348961', '
https:
//www.yelp.com/biz/the-corn-exchange-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24324294096471', '53.4848789786084', '£££'),
  ('17 Below', 'Bow Lane,Manchester M2 4JN,United Kingdom', '', '
https:
//www.yelp.com/biz/17-below-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244698', '53.480388', '££'),
  ('Salford Arms', '146 Chapel Street,Salford M3 6AF,United Kingdom', '+441618399548', '
https:
//www.yelp.com/biz/salford-arms-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2548734', '53.4836847', '££'),
  ('All Saints Park', 'Grosvenor Sq,Oxford Rd,Manchester M15 6BH,United Kingdom', '', '
https:
//www.yelp.com/biz/all-saints-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23913', '53.470925', 'undefined'),
  ('Burger King', '2 Mosley Street,Manchester M2 3AN,United Kingdom', '+441612369739', '
https:
//www.yelp.com/biz/burger-king-manchester-7?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23866085591003', '53.4813596620546', '£'),
  ('The Rovers
Return', '
89-91 Chapel Street,Salford M3 5DF,United Kingdom', '+441618332783', '
https:
//www.yelp.com/biz/the-rovers-
return-salford
?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.250298', '53.4844845', '££'),
  ('Second City', '37 Blossom Street,Manchester M4 5AF,United Kingdom', '+441612368648', '
https:
//www.yelp.com/biz/second-city-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.230238', '53.484102', '££'),
  ('Eagle Inn', '18 Collier Street,Salford M3 7DW,United Kingdom', '', '
https:
//www.yelp.com/biz/eagle-inn-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2512849', '53.4872838', '££'),
  ('M and M`s Caribbean Spice', '127 Stamford Street,Manchester M16 9LT,United Kingdom', '+441612266067', 'https://www.yelp.com/biz/m-and-ms-caribbean-spice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.262249', '53.460198', 'undefined'),
  ('Yates`s', '49 Portland Street,Manchester M1 3HG,United Kingdom', '+441612280162', '
https:
//www.yelp.com/biz/yatess-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2381877', '53.478555', '£'),
  ('Pizza Express', 'G38 The Lowry Designer Outlet,The Quays,Salford M50 3AG,United Kingdom', '+441618773585', '
https:
//www.yelp.com/biz/pizza-express-salford?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.293076', '53.47076', '££'),
  ('On Bar', '36 Canal Street,Manchester M1 3WD,United Kingdom', '', '
https:
//www.yelp.com/biz/on-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23777937258052', '53.4765575574252', '£££'),
  ('Mother Mac`s', '33 Back Piccadilly,Manchester M1 1HP,United Kingdom', '+441612361507', 'https://www.yelp.com/biz/mother-macs-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23485', '53.48145', '£'),
  ('Church Inn', '40 Church Lane,Prestwich,Manchester M25 1AJ,United Kingdom', '+441617986727', 'https://www.yelp.com/biz/church-inn-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.28483438491821', '53.5302708701895', '£££'),
  ('Cringle Park', 'Crossley Rd,Levenshulme,Manchester M19 2QP,United Kingdom', '+441612238278', 'https://www.yelp.com/biz/cringle-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.190203', '53.438025', 'undefined'),
  ('Joe & The Juice', 'Debenhams,123 Market Street,Manchester M4,United Kingdom', '', 'https://www.yelp.com/biz/joe-and-the-juice-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.14567399024963', '53.4798851013184', '£££'),
  ('Rotana Cafe', '122 Wilmslow Rd,Rusholme,Manchester M14 5AH,United Kingdom', '+441612490930', 'https://www.yelp.com/biz/rotana-cafe-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2231582', '53.4528686', '££££'),
  ('Ambiente', '4b Worsley Road,Worsley,Manchester M28 2NL,United Kingdom', '+441617936003', 'https://www.yelp.com/biz/ambiente-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.3800579192014', '53.500588117722', '£££'),
  ('Didsbury Kitchen', '101 Lapwing Lane,Manchester M20 6UR,United Kingdom', '+441614455454', 'https://www.yelp.com/biz/didsbury-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2357576712966', '53.4249111262018', '£'),
  ('Chinatown', 'George Street,Manchester M1 4HE,United Kingdom', '', 'https://www.yelp.com/biz/chinatown-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239944', '53.479058', 'undefined'),
  ('Monrose Hotel', '38 London Road,Manchester M1 2PF,United Kingdom', '+441612360564', 'https://www.yelp.com/biz/monrose-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2317774', '53.4767556', 'undefined'),
  ('The Cod Father', '331 Wilmslow Road,Fallowfield,Manchester M14 6NW,United Kingdom', '+441612489719', 'https://www.yelp.com/biz/the-cod-father-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2185885', '53.4414005', '£'),
  ('Viet Shack', 'Arndale Food Court,49-61 High Street,Manchester M4,United Kingdom', '', 'https://www.yelp.com/biz/viet-shack-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2393997', '53.4837244', '£'),
  ('PLY', '26 Lever Street,Manchester M1 1DW,United Kingdom', '+441617110401', 'https://www.yelp.com/biz/ply-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2338105', '53.4825996', '££'),
  ('Yelp goes to India - World Food Tour XL', 'Unit 5 The Quadrangle,Chester Street,Manchester M1,United Kingdom', '', 'https://www.yelp.com/biz/yelp-goes-to-india-world-food-tour-xl-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2401998', '53.4722389', 'undefined'),
  ('Ibérica', '14-15 The Avenue,Manchester M3 3HF,United Kingdom', '+441613581350', 'https://www.yelp.com/biz/ib%C3%A9rica-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24935', '53.48008', '££'),
  ('Hawksmoor Manchester', '184-186 Deansgate,Manchester M3 3WB,United Kingdom', '+441618366980', 'https://www.yelp.com/biz/hawksmoor-manchester-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24928384603277', '53.4790064587735', '£££'),
  ('The Molly House', '26/28 Richmond Street,Manchester M1 3NB,United Kingdom', '+441612379329', 'https://www.yelp.com/biz/the-molly-house-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23719310760498', '53.4773292541504', '££'),
  ('Fuzion', '264 Wilmslow Road,Fallowfield,Manchester M14 6JR,United Kingdom', '+441612486688', 'https://www.yelp.com/biz/fuzion-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2187545', '53.4419116', '££'),
  ('Crazy Pedro`s Part-Time Pizza Parlour', '55-57 Bridge Street,Manchester M3 3BQ,United Kingdom', '+441613593000', '
https:
//www.yelp.com/biz/crazy-pedros-part-time-pizza-parlour-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25025626879154', '53.4813783749877', '£'),
  ('The Castle Hotel', '66 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612379485', '
https:
//www.yelp.com/biz/the-castle-hotel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2333007515355', '53.484100311379', '££'),
  ('Waterstones', '91 Deansgate,Manchester M3 2BW,United Kingdom', '+441618373000', '
https:
//www.yelp.com/biz/waterstones-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.246773', '53.482226', '££'),
  ('Sapporo Teppanyaki', '91-93 Liverpool Road,Manchester M3 4JN,United Kingdom', '+441619790579', '
https:
//www.yelp.com/biz/sapporo-teppanyaki-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25578', '53.4765658', '£££'),
  ('El Rincon de Rafa', '244 Deansgate,Manchester M3 4BQ,United Kingdom', '+441618398819', '
https:
//www.yelp.com/biz/el-rincon-de-rafa-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2504535040692', '53.478027266691', '££'),
  ('Apotheca', '17 Thomas Street,Northern Quarter,Manchester M4 1FS,United Kingdom', '+441618349411', '
https:
//www.yelp.com/biz/apotheca-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.237684', '53.484582', '££'),
  ('Ezra & Gil', '20 Hilton Street,Manchester M1 1FR,United Kingdom', '', '
https:
//www.yelp.com/biz/ezra-and-gil-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2329212', '53.4820119', '££'),
  ('Red Chilli', '70 Portland Street,Manchester M1 4GU,United Kingdom', '+441612362888', '
https:
//www.yelp.com/biz/red-chilli-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.239742', '53.47798', '££'),
  ('Abel Heywood', '38 Turner Street,Northern Quarter,Manchester M4 1DZ,United Kingdom', '+441618191441', '
https:
//www.yelp.com/biz/abel-heywood-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23735091769709', '53.4836013453043', '££'),
  ('The Rose Garden', '218 Burton Road,West Didsbury,Manchester M20 2LW,United Kingdom', '+441614780747', '
https:
//www.yelp.com/biz/the-rose-garden-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24328994750977', '53.4264144897461', '£££'),
  ('Tampopo', '16 Albert Square,Manchester M2 5PF,United Kingdom', '+441618191966', '
https:
//www.yelp.com/biz/tampopo-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24581651658312', '53.4789318025307', '££'),
  ('The Temple', '100 Great Bridgewater Street,Manchester M1 5JW,United Kingdom', '+441612781610', '
https:
//www.yelp.com/biz/the-temple-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24224781070877', '53.4752431261803', '££'),
  ('Thaikhun', 'Unit 17,3 Hardman Street The Avenue,Manchester M3 3EB,United Kingdom', '+441618192065', '
https:
//www.yelp.com/biz/thaikhun-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2504327', '53.4798676', '££'),
  ('Home Sweet Home', 'Unit 4,Great Northern Warehouse,235 Deansgate,Manchester M3 4EN,United Kingdom', '', '
https:
//www.yelp.com/biz/home-sweet-home-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24938061088324', '53.4781466784291', '££'),
  ('The Old Wellington - Nicholsons', '4 Cathedral Gates,Manchester M3 1SW,United Kingdom', '+441618395179', 'https://www.yelp.com/biz/the-old-wellington-nicholsons-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24399350585971', '53.4846911555498', '££'),
  ('Canal Street', 'Canal Street,Manchester M1 3EZ,United Kingdom', '', 'https://www.yelp.com/biz/canal-street-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.236521', '53.477257', 'undefined'),
  ('The Oxnoble', '71 Liverpool Road,Castlefield,Manchester M3 4NQ,United Kingdom', '+441618397760', 'https://www.yelp.com/biz/the-oxnoble-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.252885', '53.476011', '££'),
  ('This & That', '3 Soap Street,Manchester M4 1EW,United Kingdom', '+441618324971', 'https://www.yelp.com/biz/this-and-that-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2381005', '53.4846242', '£'),
  ('Heaton Park', 'Middleton Road,Higher Blackley,Manchester M25 2SW,United Kingdom', '', 'https://www.yelp.com/biz/heaton-park-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25374221801758', '53.5350024873121', 'undefined'),
  ('Yakisoba', '360 Barlow Moor Road,Manchester M21 8AZ,United Kingdom', '+441618620888', 'https://www.yelp.com/biz/yakisoba-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2740652', '53.4381057', '££'),
  ('Wagamama', '1 Spinningfields Square,Manchester M3 3AP,United Kingdom', '+441618339883', 'https://www.yelp.com/biz/wagamama-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24936407213449', '53.4795904600887', '££'),
  ('Dogs n Dough', 'Bow Lane,Manchester M2 4JW,United Kingdom', '+441618343996', 'https://www.yelp.com/biz/dogs-n-dough-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.244548', '53.4802665', '££'),
  ('Turtle Bay', '46-50 Oldham Street,Manchester M4 1LE,United Kingdom', '+441612358411', 'https://www.yelp.com/biz/turtle-bay-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2343624039959', '53.4832045056393', '££'),
  ('Barburrito', '1 Piccadilly Gardens,Manchester M1 1RG,United Kingdom', '+441612286479', 'https://www.yelp.com/biz/barburrito-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23662032706357', '53.4804780540125', '£'),
  ('Vivid Lounge', '149A Great Ancoats Street,Manchester M4 6DH,United Kingdom', '+441612728474', 'https://www.yelp.com/biz/vivid-lounge-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.22334562230765', '53.4801651874691', '££'),
  ('Slice Pizza & Bread Bar', 'Stevenson Square,Manchester M1 1JJ,United Kingdom', '+441612369032', 'https://www.yelp.com/biz/slice-pizza-and-bread-bar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23403931651708', '53.4829305425444', '£'),
  ('Mowgli Street Food', 'Unit 16,37 Corn Exchange,Manchester M4 3TR,United Kingdom', '+441618320566', 'https://www.yelp.com/biz/mowgli-street-food-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2432122423279', '53.4850903600036', '££'),
  ('Dulcimer', '567 Wilbraham Road,Chorlton,Manchester M21 0AE,United Kingdom', '+441618606444', 'https://www.yelp.com/biz/dulcimer-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2766983', '53.4423718', '££'),
  ('Terrace', '43 Thomas Street,Manchester M4 1NA,United Kingdom', '+441618192345', 'https://www.yelp.com/biz/terrace-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23640194448656', '53.4842322426089', '££'),
  ('La Viña', '105-107 Deansgate,Manchester M3 2BQ,United Kingdom', '+441618353144', 'https://www.yelp.com/biz/la-vi%C3%B1a-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.247535', '53.481002', '££'),
  ('63 Degrees', '104 High Street,Manchester M4 1HQ,United Kingdom', '+441618325438', 'https://www.yelp.com/biz/63-degrees-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2363215', '53.4849667', '£££'),
  ('Soup Kitchen', '31-33 Spear Street,Northern Quarter,Manchester M1 1DF,United Kingdom', '+441612365100', 'https://www.yelp.com/biz/soup-kitchen-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23353981971741', '53.4835640433847', '££'),
  ('Thirsty Scholar', '50 New Wakefield Street,Manchester M1 5NP,United Kingdom', '+441612366071', 'https://www.yelp.com/biz/thirsty-scholar-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24119856480411', '53.4733489271766', '££'),
  ('EastZEast', 'Hotel Ibis,Princess Street,Manchester M1 7DG,United Kingdom', '+441612445353', 'https://www.yelp.com/biz/eastzeast-manchester-2?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23977398953108', '53.4770221606949', '££'),
  ('All Star Lanes', 'The Great Northern,235 Deansgate,Manchester M3 4EN,United Kingdom', '+441618713600', 'https://www.yelp.com/biz/all-star-lanes-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24910587392441', '53.4780027008904', '££'),
  ('Dusk til Pawn', 'Stevenson Square,Northern Quarter,Manchester M1 1DN,United Kingdom', '+441612365381', 'https://www.yelp.com/biz/dusk-til-pawn-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.23351035463111', '53.482523697178', '££'),
  ('Bills', '12 John Dalton Street,Manchester M2 6JP,United Kingdom', '+441618342756', '
https:
//www.yelp.com/biz/bills-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24731409675669', '53.4805177669747', '££'),
  ('Wasabi', '63 Faulkner Street,Manchester M1 4FF,United Kingdom', '+441612287288', '
https:
//www.yelp.com/biz/wasabi-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.240029', '53.478042', '£'),
  ('The Dockyard', 'Leftbank,Irwell Square,Spinningfields,Manchester M3 3AN,United Kingdom', '+441618323939', '
https:
//www.yelp.com/biz/the-dockyard-manchester-3?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.25375401849362', '53.4807599059917', '££'),
  ('The Botanist', '78 Deansgate,Manchester M3 2FW,United Kingdom', '+441618331878', '
https:
//www.yelp.com/biz/the-botanist-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2468436', '53.4826959', '££'),
  ('Falafel', 'Unit 14 Ifco Centre,Wilmslow Road,Manchester M14 5TG,United Kingdom', '+441612561372', '
https:
//www.yelp.com/biz/falafel-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.225431', '53.458512', '£'),
  ('Tampopo', 'The Corn Exchange,38 Exchange Sq Unit 2,Manchester M4 3TR,United Kingdom', '+441618396484', '
https:
//www.yelp.com/biz/tampopo-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.24269', '53.4844099', '££'),
  ('The Wharf', '6 Slate Wharf,Manchester M15 4SW,United Kingdom', '+441612202960', '
https:
//www.yelp.com/biz/the-wharf-manchester?adjust_creative=jPYs_HLXV-3CEuGBEbfPhw&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=jPYs_HLXV-3CEuGBEbfPhw', '-2.2567731972877', '53.473711400071', '££');
select *
from restaurants


