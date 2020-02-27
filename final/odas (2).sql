-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 03:37 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odas`
--

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE `diet` (
  `id` int(1) NOT NULL,
  `deficiency` int(1) NOT NULL,
  `day` int(1) NOT NULL,
  `breakfast` varchar(1000) NOT NULL,
  `lunch` varchar(1000) NOT NULL,
  `dinner` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`id`, `deficiency`, `day`, `breakfast`, `lunch`, `dinner`) VALUES
(3, 1, 1, '2Pumpkin Pancakes\r\nTopped with cup walnuts,2 tablespoons honey,and1 banana sliced\r\n8 ounces Skim (', 'Pasta salad\r\n(Eliminate cauliflower, used whole grain pasta, and use the olive oil.)\r\nTopped with ', 'cup spicy chicken salad, 3 Romaine leaves; Use 1.5 cup chicken salad per leaf) Citrus Fruit Salad'),
(4, 1, 2, '2 Breakfast Sandwiches (Build each breakfast sandwich with 1 whole wheat English muffin toasted and split, 1 scrambled egg white, 1 slice reduced fat cheese, 1 slice tomato) 8 ounces Skim milk Tropical Fruit Salad (1 orange and 1 kiwi  peeled and sliced)', '1 cup Snow Pea & Orzo Salad (Omit chicken from the recipe.) 3 ounces Roasted Pork Loin Wilted Garden Salad (1 cup baby spinach,cup sun-dried tomatoes, and 1 teaspoon lemon juice. Wilt salad slightly by sauting.) Water', 'Pasta Bolognese\r\ncup whole wheat pasta, 3 ounces fat free lean ground beef (drained), and  cup of the Bolognese recipe without meat or rice noodles)\r\nSteamed Garlic Green Beans cup steamed +  teaspoon garlic powder)\r\nBaked Potato with butter and cheese \r\n(1 small baked potato, 1 tablespoon shredded reduced-fat cheddar cheese, 1 teaspoon unsalted butter, 1/8 teaspoon black pepper)\r\nWhole Grain Roll\r\nWater'),
(5, 1, 3, 'cup milk prepared from dry milk and cup distilled water, or cup evaporated milk with cup distilled water\r\n1 single serving of cereal\r\n1 Tablespoon sugar\r\n½ cup pineapple (single serving)', '2 slices white bread\r\ncup low-sodium tuna (open new can daily)\r\n1 tablespoon margarine or mayonnaise (individual packet or open new jar daily)\r\ncup pears (single serving)\r\nPowdered drink mix with cup distilled water', '2 slices white bread\r\ncup (2 oz.) low-odium chicken (open new can daily)\r\n2 tablespoons margarine or mayonnaise (individual packet or open new jar daily)\r\ncup peaches (single serving)\r\ncup cranberry juice (from box or pouch)'),
(6, 1, 4, 'cup milk prepared from dry milk and cup distilled water, or cup evaporated milk with cup distilled water\r\n1 single serving of cereal \r\n1 Tablespoon sugar\r\ncup pineapple (single serving)', '2 slices white bread\r\ncup low-sodium tuna (open new can daily)\r\n1 tablespoon margarine or mayonnaise (individual packet or open new jar daily)\r\ncup pears (single serving)\r\nPowdered drink mix with ½ cup distilled water', '2 slices white bread\r\ncup (2 oz.) low-odium chicken (open new can daily)\r\n2 tablespoons margarine or mayonnaise (individual packet or open new jar daily)\r\ncup peaches (single serving)\r\ncup cranberry juice (from box or pouch)'),
(7, 1, 5, 'Cottage cheese pancakes with fresh strawberries\r\nWhipped topping or syrup\r\nScrambled egg or egg whites\r\nCoffee or tea\r\nSweetener or creamer', 'Lemon curry chicken salad\r\nNaan (Indian flatbread) or pita bread\r\nCranberry juice', 'Cilantro-lime cod\r\nLettuce, cucumber and carrot salad\r\nBasic salad dressing\r\nSteamed Rice\r\nLuscious Lime Dessert\r\nLemon-lime soda'),
(8, 1, 6, 'cup milk prepared from dry milk and cup distilled water,\r\nOr cup evaporated milk with cup distilled water\r\n1 single serving of cereal cup from box)\r\n1 Tablespoon sugar\r\ncup pears (single serving)', '2 slices white bread\r\n2 Tablespoons low-sodium peanut butter\r\ncup peaches (single serving)\r\nPowdered drink mix with cup distilled water', '2 slices white bread\r\ncup (2 oz.) low-sodium chicken (open new can daily)\r\n2 tablespoons margarine or mayonnaise (individual packets or open new jar daily)\r\ncup mandarin oranges (single serving)\r\ncup cranberry juice (from box or pouch )'),
(9, 1, 7, 'Cottage cheese pancakes with fresh strawberries\r\nWhipped topping or syrup\r\nScrambled egg or egg whit', 'Lemon curry chicken salad\r\nNaan (Indian flatbread) or pita bread\r\nCranberry juice', 'Cilantro-lime cod\r\nLettuce, cucumber and carrot salad\r\nBasic salad dressing\r\nSteamed Rice\r\nLuscious '),
(10, 2, 1, '1 serving Avocado Egg Toast\r\n\r\n', 'Chickpea & Veggie Salad\r\n2 cups mixed greens\r\ncup veggies of your choice (try cucumbers and tomatoes)\r\n2/3 cup chickpeas, rinsed\r\n1 Tbsp. almonds, chopped\r\nCombine ingredients and top salad with 1 Tbsp. red-wine vinegar, 2 tsp. olive oil and freshly ground pepper.', '1 serving Seared Salmon with Green Peppercorn Sauce\r\n1 cup steamed green beans\r\n1 baked medium red potato, drizzled with Tbsp. olive oil and a pinch each of salt and pepper.'),
(11, 2, 2, '1 cup bran cereal\r\n1 cup skim milk\r\n cup blueberrie', '1 serving Veggie-Hummus Sandwich', '2 cups Roasted Tofu & Peanut Noodle Salad'),
(12, 2, 3, '1 cup nonfat plain Greek yogurt\r\n cup blueberries\r\n1 Tbsp. slivered almonds\r\n2 tsp. Honey', '1cups Roasted Tofu & Peanut Noodle Salad', '1 serving Grilled Romaine with Avocado-Lime Dressing\r\n4 oz. cooked chicken breast, cooked in 1 tsp. olive oil and seasoned with tsp. cumin and a pinch each of salt and pepper'),
(13, 2, 4, '1 cup bran cereal\r\n1 cup skim milk\r\ncup blueberries', 'Green Salad with Chicken\r\n3 cups mixed greens\r\n3 oz. leftover cooked chicken breast\r\n5 cherry tomatoes, halved\r\ncup cucumber slices\r\ncup shredded carrot\r\nCombine ingredients and top salad with 1 Tbsp. red-wine vinegar and 2 tsp. olive oil.', '1 serving Cod with Tomato Cream Sauce\r\ncup cooked brown rice\r\n2 cups mixed greens, topped with 1 Tbsp. balsamic vinegar and 2 tsp. olive oi'),
(14, 2, 5, 'cup rolled oats, cooked in 1 cup milk\r\ncup sliced strawberries\r\nCook oats and top with strawberries and a pinch of cinnamon', 'Toaster-Oven Tostadas\r\n2 corn tortillas\r\ncup canned black beans, rinsed\r\nbell pepper, sliced\r\n2 Tbsp. shredded Cheddar cheese\r\n2 Tbsp. salsa or pico de gallo\r\nTop tortillas with beans, bell pepper and cheese. Toast until the cheese begins to melt. Top with salsa.', 'cups Chicken Cauliflower Fried \"Rice\"\r\n2 cups mixed greens, topped with 1 Tbsp. red wine vinegar and 2 tsp. olive oil.'),
(15, 2, 6, '1 cup bran cereal\r\n1 cup skim milk\r\n cup blueberries', '1  cups Chicken Cauliflower Fried \"Rice\"\r\n1 kiwi fruit\r\n\r\n', '1 serving Toaster-Oven Tostada'),
(16, 2, 7, '1 serving Avocado Egg Toast  ', 'Tuna & White Bean Spinach Salad\r\n2 cups spinach\r\n2.5 oz. chunk light tuna in water, drained\r\n1/2 cup canned white beans, rinsed\r\n3/4 cup veggies of your choice (try tomatoes & cucumbers)\r\nCombine ingredients and top salad with 1 Tbsp. red-wine vinegar and 2 tsp. olive oil.', '1 serving Lemongrass Pork & Spaghetti Squash Noodle Bowl'),
(17, 3, 1, 'cup oats cooked in cup each milk and water\r\n1 medium plum, chopped\r\n4 walnut halves, chopped\r\nTop oats with plum and walnuts.', 'Turkey & Apple Cheddar Melt\r\n2 slices whole-wheat bread\r\n2 tsp. whole-grain mustard, divided\r\nmedium apple, sliced\r\n2 oz. low-sodium deli turkey\r\n2 Tbsp. shredded Cheddar cheese, divided\r\n1 cup mixed greens', '2  cups Vegetable Weight-Loss Soup\r\n1 serving Rosemary-Goat Cheese Toast'),
(18, 3, 2, '1 serving Everything Bagel Avocado Toast\r\ncup blueberries\r\n25 pistachios', '1 cups Vegetable Weight-Loss Soup\r\n2 slices whole-wheat baguette ', '2 cups Lentil & Roasted Vegetable Salad with Green Goddess Dressing\r\n1 serving Frozen Chocolate-Banana Bites, to enjoy after dinner'),
(19, 3, 3, '1 serving Yogurt with Blueberries & Honey\r\n1 tsp. ground flaxseed\r\n6 walnut halves, chopped or whole', '3 cups Mixed Greens with Lentils & Sliced Apple', 'cups Chicken Sausage & Peppers\r\ncup cooked brown rice\r\ntsp. extra-virgin olive oil\r\ntsp. no-salt-added Italian seasoning\r\nSalt to taste\r\nSeason rice with oil, Italian seasoning and salt. Serve chicken, sausage & peppers over the rice.\r\n\r\ncups mixed greens\r\ncup shredded carrot\r\ncup sliced cucumbers\r\n1 Tbsp. Garlic-Oregano Vinaigrette, or a premade Italian salad dressing*\r\nCombine greens, carrot, cucumber and vinaigrette.'),
(20, 3, 4, 'cup oats cooked in 1cup each 2% milk and water\r\n1 tsp. ground flaxseed\r\n1 medium plum, chopped\r\n3 walnut halves, chopped', '1 serving Veggie & Hummus Sandwich\r\n3 dried apricots', '1 serving Lemon-Herb Salmon with Caponata & Farro*'),
(21, 3, 5, '1 serving Everything Bagel Avocado Toast\r\n20 cherries', 'Turkey & Pear Pita Melt\r\nlarge whole-wheat pita round (save the other half for lunch on Day 7)\r\n low-sodium deli turkey\r\nmedium pear, sliced\r\n2 Tbsp. shredded Cheddar cheese\r\n1 cup mixed greens\r\nStuff pita pocket with turkey, pear and cheese. Toast in a toaster oven until the cheese starts to melt. Add greens to the pita just before eating.', '1 serving Spaghetti Squash & Meatballs\r\n1 slice whole-wheat baguette, toasted\r\nTbsp. goat cheese\r\ntsp. fresh chopped rosemary\r\nToast baguette and top with cheese and rosemary.'),
(22, 3, 6, '1 serving Yogurt with Blueberries & Honey\r\n2 tsp. ground flaxseed\r\n5 walnut halves, chopped\r\nMix yogurt and flaxseed. Serve topped with walnuts.', '2cups Vegetable Weight-Loss Soup', '1 serving Apple-Glazed Chicken with Spinach\r\ncup Steamed Butternut Squash\r\n2 tsp. extra-virgin olive oil\r\ntsp. fresh thyme or 1/8 tsp. dried\r\nSalt and pepper to taste\r\nToss squash with oil and thyme. Season with salt and pepper to taste.'),
(23, 3, 7, '2 Blueberry-Pecan Pancakes\r\n3 Tbsp. blueberries, fresh or frozen\r\n2 tsp. ground flaxseed\r\nMicrowave blueberries until soft and sauce-like, about 1 minute. Stir in the flaxseed for an extra fiber kick, and serve with the pancakes.', '2 cups mixed greens\r\nHALF cup sliced cucumber\r\nhalf cup grated carrot\r\nTbsp. Garlic-Oregano Vinaigrette, or a premade Italian salad dressing\r\nCombine greens, cucumber, carrot and vinaigrette.\r\n\r\n1/2 large whole-wheat pita round, toasted\r\n1/4 cup hummus', '1 serving Mushroom-Sauced Pork Chops\r\ncup cooked brown rice\r\ncup Roasted Brussels Sprouts with Sun-Dried Tomato Pesto');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `disease` int(1) NOT NULL DEFAULT '1',
  `food` varchar(50) NOT NULL,
  `Energy` int(4) NOT NULL,
  `Moisture` int(4) NOT NULL,
  `Protein` int(4) NOT NULL,
  `Fat` int(4) NOT NULL,
  `Minerals` int(4) NOT NULL,
  `Fibre` int(4) NOT NULL,
  `Carbos` int(4) NOT NULL,
  `Calcium` int(4) NOT NULL,
  `Phosphorous` int(4) NOT NULL,
  `Iron` int(4) NOT NULL,
  `cure` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `disease`, `food`, `Energy`, `Moisture`, `Protein`, `Fat`, `Minerals`, `Fibre`, `Carbos`, `Calcium`, `Phosphorous`, `Iron`, `cure`) VALUES
(16, 2, 'BENGAL GRAM, whole', 360, 10, 17, 5, 3, 4, 61, 202, 312, 5, 'no'),
(17, 1, 'BARLEY', 336, 12, 11, 1, 1, 4, 70, 26, 215, 2, 'no'),
(18, 1, 'CAULIFLOWER', 30, 91, 3, 0, 1, 1, 4, 33, 57, 1, 'yes'),
(19, 3, 'SPINACH', 26, 92, 2, 1, 2, 1, 3, 73, 21, 1, 'yes'),
(20, 3, 'ITALIAN MILLET', 331, 11, 12, 4, 3, 8, 61, 31, 290, 3, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `deficiency` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `deficiency`) VALUES
(1, 'user1', 'user1@mail.com', '123', '1'),
(3, 'user2', 'user2@mail', '123', '1'),
(4, 'user3', 'user3@mail', '12qw', '2'),
(5, 'user4', 'user4@mail', 'qwer', '3'),
(6, 'name5', 'user5@mail.com', 'name5', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diet`
--
ALTER TABLE `diet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diet`
--
ALTER TABLE `diet`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
