-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2022 at 04:51 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(2, 'Web Design', 'web-design', '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(3, 'Personal', 'personal', '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(4, 'Graphic Design', 'graphic-design', '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(5, 'System Analyst', 'system-analyst', '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(6, 'Machine Learning', 'machine-learning', '2022-01-22 08:44:40', '2022-01-22 08:44:40'),
(8, 'Mobile Developer', 'mobile-developer', '2022-01-22 10:16:53', '2022-01-22 11:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_18_120147_create_posts_table', 1),
(6, '2022_01_19_004146_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Nostrum et dolorem molestiae.', 'in-minima-eveniet-est-voluptatem', NULL, 'Dolores deserunt qui nostrum ut. Quis fuga maxime commodi id et nam veritatis. Illum nisi quia ullam est eos.', '<p>Exercitationem eum blanditiis veniam officia iure delectus deserunt. Sed eaque harum nemo est dolor ea sed. Est quasi tempora atque temporibus ut eveniet nihil.</p><p>Voluptatum repellat dolorem enim nam dolorem quis rerum. Incidunt soluta ab adipisci impedit fuga.</p><p>In quaerat quisquam voluptas excepturi minima quis. Rerum nihil error sequi aperiam omnis vitae officiis. Et id eos dolorem ipsa saepe qui ea.</p><p>Non dolores officia quisquam et aut recusandae distinctio. Voluptas ut dolores eaque impedit nobis ut et velit.</p><p>Qui ad commodi repellendus inventore. Quibusdam sequi quidem aut dolorem. Veniam earum ut voluptas. Laboriosam saepe quidem corporis pariatur et odio.</p><p>Voluptas veritatis nam inventore ea aut iste distinctio. Autem magni necessitatibus omnis eum et aut voluptatem. Qui sunt nisi sit dolorem. Iure commodi amet assumenda occaecati officiis eligendi sit. Ducimus molestiae provident earum laboriosam fugiat quia.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(2, 5, 5, 'Placeat et delectus et possimus eos voluptas qui.', 'perferendis-qui-velit-beatae', NULL, 'Nam fugiat accusantium sit quia minus sunt consequatur. Aspernatur repellat est repellat in deleniti. Vero officiis dolores expedita autem error sed.', '<p>Est velit sed maiores magnam. Nostrum aut possimus id nemo. Sint alias dolor ea porro. Laboriosam delectus recusandae excepturi facere ex repudiandae sint qui.</p><p>Autem ipsum facilis earum ad et id. Reiciendis distinctio sed et voluptatem culpa. Non et ab ad deleniti libero sed voluptate et.</p><p>Suscipit odit sit cum et dicta. Mollitia hic magnam neque voluptatem. Et sint quis ipsa sed enim saepe.</p><p>Aut provident enim veritatis sapiente sequi vitae. In sequi distinctio voluptatem sunt enim placeat atque iusto. Quis eos voluptatibus reiciendis maiores omnis et. Nisi porro nesciunt nam molestias non quia consequatur. Quibusdam aut magni qui sed.</p><p>Tempora consequatur sit itaque soluta. Non natus sed et suscipit voluptatem ut asperiores ea. Totam et minus unde. Laboriosam veritatis aspernatur voluptatem quidem aut rerum. Maxime vitae enim maiores dolor.</p><p>Pariatur perferendis enim tempora eos corporis. Consequatur placeat deserunt vero dolores non. Omnis et libero dolor sint.</p><p>Quae et voluptatem rerum quod. Aliquid et temporibus ea ab dolor. Enim accusantium animi deserunt dolorem. Numquam quis natus rerum et recusandae eaque dolorem. Explicabo officia sit odio.</p><p>Odio delectus sed dolorum facilis ut laboriosam ea. Similique eaque beatae optio et consequatur porro sit. Eos perspiciatis et et nisi cum. Fugiat nemo voluptatem quia adipisci.</p><p>Esse error vel neque ducimus tempore. Fuga quam minus ut rerum assumenda exercitationem. Quas ut hic quis sunt in. Culpa illum dolor ut repudiandae necessitatibus qui.</p><p>Necessitatibus eveniet iste ut et fugit suscipit. Pariatur et officiis non explicabo non qui. Amet molestiae quas accusamus et distinctio ut.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(4, 4, 3, 'Dolor quo velit quia perferendis et explicabo praesentium.', 'omnis-quas-iusto-sunt-magnam', NULL, 'Quas enim quo tempora ratione est dignissimos a ab. Provident nesciunt ipsa sapiente quae asperiores. Quis vitae rerum quidem laudantium. Voluptas exercitationem occaecati quos pariatur placeat consequatur.', '<p>Sit error eos amet aperiam atque facere et. Nostrum vel dolorem dolorum eum corporis et ut ut. Est dolorum inventore labore consequatur minus quo eaque nisi. Itaque nihil sequi earum possimus ut. Qui sit a dolorem quis sit.</p><p>Sint quis quis officiis eaque molestiae id. Ducimus sint nam dolor tenetur et velit ut.</p><p>Possimus quam et voluptatibus doloribus aliquid facere. Magni neque rerum quia rerum distinctio. Perferendis aperiam nihil est quod commodi.</p><p>Nihil quis quis enim magnam. Qui non reprehenderit exercitationem reiciendis. Corrupti ab similique modi temporibus eveniet aut possimus. Fugit culpa voluptas dolores corrupti.</p><p>Expedita sed eum et vel non inventore. Non ullam tempora aut est non consequatur. Temporibus omnis vitae dolor consequatur nostrum assumenda.</p><p>Recusandae quibusdam explicabo est corporis eius. Qui sed omnis dolorem animi. Culpa porro et expedita distinctio quisquam voluptas. Accusamus ut ea consequatur odio aut dolor nisi.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(5, 3, 4, 'Placeat nisi repellat dignissimos.', 'ut-et-soluta-necessitatibus-et-iusto-vitae-nobis', NULL, 'Soluta sed et ducimus magni consequatur minus porro. Maiores tenetur quibusdam illum aperiam. Laudantium sunt soluta est iste cum.', '<p>Aliquid necessitatibus consequatur dolore odit. Sit veniam facilis placeat quaerat ad quibusdam. Repudiandae mollitia facere sunt.</p><p>Aut amet repellat exercitationem velit distinctio. Soluta reprehenderit excepturi deleniti nemo. At dolores vitae quos omnis alias.</p><p>Quia natus aut voluptatum tenetur qui nam. Perspiciatis nisi eligendi dicta in quis minima. Commodi dicta eos soluta dolorem molestiae architecto eaque.</p><p>Sint repellat sit ad perspiciatis non error. Omnis aspernatur aperiam aut nisi voluptatem animi. Consequatur rem nesciunt veniam itaque distinctio consequuntur. Nobis incidunt iure voluptas sed. Ut voluptate voluptatem est ut quis.</p><p>Vel numquam facilis suscipit odio ad mollitia vero. Animi officiis doloremque non ea rem iste. Sit deserunt eum in voluptate architecto. Quia nobis nihil nam dolores impedit ex et.</p><p>Iste neque numquam consequatur harum cupiditate in suscipit non. Adipisci tempora perspiciatis sit suscipit labore magnam repudiandae. Fuga minus fugiat animi et.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(6, 1, 3, 'Quas aut.', 'deserunt-perferendis-excepturi-aspernatur-harum-natus', NULL, 'Voluptatem et dolor voluptas molestiae dolorem. Autem asperiores fugit minus inventore.', '<p>Labore tempore perferendis quo ad ex ipsum omnis. Totam vero veritatis itaque. Nihil qui sed iste ea. Qui ut libero doloribus rem quisquam.</p><p>Est voluptatem dolor delectus aut nulla. Tenetur pariatur veniam ducimus quis. Asperiores in laboriosam iste laborum id. Aut nesciunt libero accusamus consequuntur unde nulla molestias doloribus. Repellendus dignissimos sapiente est tempore.</p><p>Et eaque perspiciatis dolor exercitationem sit mollitia ut. Nihil pariatur veniam cupiditate mollitia. Officiis ipsam quae voluptatem velit.</p><p>Tenetur impedit quae omnis sit voluptas animi ad omnis. Harum ducimus consequatur suscipit consectetur inventore a. Hic deserunt hic magni laboriosam excepturi odit quia.</p><p>Voluptates id ullam quibusdam ipsum. Quos enim deleniti sed consequuntur. Ullam consequuntur magnam ut ut repellendus qui sit. In impedit repellat ad inventore voluptas dolorem.</p><p>Et qui ipsam facere ut saepe quo. Et et consequuntur incidunt. Neque voluptatem labore aliquam nisi sit dolor et. Ducimus et ea id voluptas laudantium.</p><p>Tempora consequatur quo porro ut. Sunt nisi vitae et velit reiciendis quidem ut. Animi voluptas harum occaecati perspiciatis. Voluptatum laboriosam sunt voluptate et.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(7, 1, 5, 'Et quia eius in.', 'repellendus-iure-sint-mollitia-nostrum-voluptatem-delectus-et', NULL, 'Velit ut possimus vel iusto modi accusantium. Est eius quos officiis qui mollitia laboriosam. Inventore quia facilis a ratione voluptas. Ut deserunt labore quidem maxime modi vitae non.', '<p>Corrupti dicta odio dolorem ullam. Explicabo impedit cumque eaque aliquid sapiente. Delectus consequatur corporis suscipit exercitationem id est repellat eveniet. Sed ut ut fugiat non velit.</p><p>Et pariatur corporis debitis ea tenetur est nulla. Qui ut mollitia asperiores occaecati possimus. Rerum et incidunt ut illum esse et animi sed.</p><p>Eius sit possimus et. Debitis quos error distinctio commodi. Eos dolorum et rerum officia facilis temporibus.</p><p>Harum sit unde amet quae modi. Tenetur fugit porro animi asperiores assumenda iure libero. Ipsum rerum rerum reiciendis at illo explicabo voluptates. Et earum tempore temporibus labore quos placeat.</p><p>Dignissimos rem voluptate aspernatur corporis. Reiciendis vel vel quis animi. Cupiditate error atque expedita earum quibusdam modi cum dolor.</p><p>Officia et voluptatum ab et. At earum tempore molestias magni ipsa. Officiis aut et minima recusandae illum eligendi. Nemo reiciendis corrupti qui neque facilis. Corporis eos non ut quam dignissimos esse et.</p><p>In ut aut voluptatem nostrum aspernatur voluptatem iure. Est minus ratione molestias quis. Quia consequatur et in fugiat quod beatae. Magnam quod in tempora quae ipsam.</p><p>Est nam autem nihil adipisci quia. Laborum provident fugit rem.</p>', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34'),
(8, 3, 5, 'Nihil sunt repudiandae ut beatae ad iste.', 'repellat-libero-in-voluptas-iste', NULL, 'Iusto et rem recusandae. Necessitatibus doloremque laboriosam consequatur ad. Ut rerum ipsam minima molestiae necessitatibus assumenda quae.', '<p>Illum et voluptatem non exercitationem doloribus blanditiis quas. Dolores soluta maiores qui ut perferendis quia officiis rem. Illum cum at porro dolores molestiae.</p><p>Officiis laudantium rerum quis rerum. Delectus necessitatibus aliquid atque similique. Voluptas et aut sed nam adipisci. Et facilis odit et iusto soluta.</p><p>Aut praesentium velit culpa accusantium ullam reprehenderit. Soluta nesciunt ipsam distinctio esse qui. Laborum corrupti ipsa autem sed similique ipsum.</p><p>Ut sint perspiciatis aut. Eaque nisi velit expedita vitae. Cum esse assumenda optio nostrum.</p><p>Animi fugiat et aliquam maxime labore cum eligendi. Blanditiis ad officia et aut voluptatum.</p><p>Ullam eveniet quis dolore sit expedita. Libero eos hic aut est nesciunt minus. Possimus distinctio ut quasi voluptas vero eos quas. Non veritatis facilis in.</p><p>Dolore eveniet ipsum iure accusantium dolor ullam. Est sequi reiciendis aut non. Ut voluptate voluptatem consequatur nemo a id doloremque quia. Odit veritatis impedit corporis et labore.</p><p>Qui dolorem architecto alias vero ut repellat. Temporibus quis nihil aut pariatur voluptatem voluptatem quo.</p><p>Iusto temporibus sed rerum culpa sit sed dicta. Voluptas quasi sequi ut a hic. Nisi odio illum consectetur quaerat repellendus. Similique officia velit rerum voluptas expedita eos.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(9, 5, 1, 'Quasi qui sit voluptates.', 'aspernatur-numquam-dolores-nostrum-aut-modi-rerum', NULL, 'Quas nulla inventore ut nemo. Consequatur autem expedita et quae est ut. Rem consequatur quidem distinctio quisquam. Qui atque doloremque deleniti.', '<p>Sunt velit possimus quibusdam nobis vel. Fugit est et quisquam architecto dolorem est aut. Omnis architecto blanditiis fugiat sit natus. Et ea consequatur ut aspernatur. Aut ut aspernatur facilis reprehenderit harum libero enim.</p><p>Rerum doloribus molestiae voluptas quibusdam. Officia veniam nobis quos. Quis tempore aliquid omnis. Aut delectus dolore voluptas fugit nemo dolores et.</p><p>Soluta earum natus fuga qui autem minus. Et dolorum velit consectetur minus error occaecati aspernatur. Enim aliquam commodi aut illum impedit. Quos cupiditate praesentium est laudantium est nostrum voluptates saepe.</p><p>Nemo ut aut optio rerum ea. Tempore amet sit et ea adipisci ea omnis repudiandae. Numquam deleniti distinctio sit quaerat.</p><p>Ullam est temporibus et quasi minus aut consequatur. Quo praesentium architecto voluptatem voluptatem assumenda non tempore. Mollitia et architecto minima voluptas iste omnis nobis temporibus. Debitis cum saepe aliquam id numquam incidunt.</p><p>Amet eveniet iste deleniti odio aspernatur. Aut aspernatur et non in blanditiis. Odio autem qui odio est laborum delectus voluptatem amet. Quos qui blanditiis maxime labore.</p><p>A a doloremque sapiente quia aperiam. Eveniet ut non inventore accusantium accusantium. Voluptas necessitatibus perferendis iste officiis delectus quam.</p><p>Illum facilis et in temporibus. Adipisci quae ut itaque consequatur. Facere nihil et quo incidunt. Laboriosam dolorem quia non est nihil.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(10, 5, 4, 'Sint beatae est maxime facere.', 'aperiam-sunt-laboriosam-suscipit', NULL, 'Quo ab necessitatibus tempore et. Modi fuga reprehenderit nulla non. Error quam officiis ea quod dolore eveniet. Et non vel veritatis qui.', '<p>Veritatis nobis quas voluptas et in. Fugiat ut vero fugiat qui. In amet qui non reprehenderit.</p><p>Ut dolores est iste qui explicabo sint. Recusandae necessitatibus voluptate molestiae aliquid quia deleniti tempore. Tenetur dolor quia eum. Quo esse sapiente rerum sed labore.</p><p>Architecto dolores qui dolorum. Ut numquam laudantium voluptate in. Est inventore et eos delectus. Harum molestiae velit sunt libero sit dicta eum molestias. Ut quia neque aut molestiae.</p><p>Est nobis maiores aut a facilis nihil earum. Sequi enim et non soluta occaecati dolorem eos dolores. Corrupti molestiae nostrum hic enim et facilis nihil.</p><p>Eaque saepe delectus corrupti veniam quis non aut. In placeat quaerat ea at aut voluptatem.</p><p>Rerum nihil officiis dolores eligendi blanditiis. Quae omnis quam qui molestiae. Ducimus distinctio laborum aut.</p><p>Dolor quis ut temporibus enim doloremque similique. Rem dolorem id quas dolor. Sit illo optio labore quo rerum quia. Et culpa est id aperiam libero expedita.</p><p>Voluptas nam incidunt ullam non atque. Illum est fugiat sit sed. Voluptatem explicabo aperiam modi recusandae.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(11, 5, 5, 'Et voluptatem dicta velit repudiandae voluptatem nesciunt.', 'nobis-autem-expedita-aut-non-quis', NULL, 'Ducimus sint veniam quia nobis natus rerum qui. Est sint quis rerum dolorem libero voluptatem dolor. Corrupti repellendus non libero sed. Voluptas dolor non voluptate enim fugit.', '<p>Et velit quo aut dicta non dolor. Doloribus enim esse quas excepturi autem asperiores debitis. Hic deleniti aut eum non tempore sed. Numquam blanditiis atque voluptas ex magnam.</p><p>Velit facere aliquid neque ipsam cupiditate alias odio. Est vel soluta dignissimos aut voluptates ex voluptatem saepe. Quis non aut et est.</p><p>Perferendis laudantium ex sunt suscipit sunt et reprehenderit odit. Quos libero quod sint a. Fuga optio beatae similique iusto rerum tempora odit eos. At quia sit nihil voluptatibus sint unde.</p><p>Impedit quae delectus veritatis ut voluptatem dignissimos nam dolores. Voluptatem omnis temporibus deserunt molestias facere dolores incidunt aliquid. Porro sunt rerum dignissimos culpa quo. Soluta ipsam illo et libero iure voluptas.</p><p>Maiores nemo similique voluptatum vero nemo est totam et. Eveniet magni et perspiciatis repellat deserunt. Est laudantium laboriosam numquam voluptas nam.</p><p>Dolorem nisi aut alias consequatur adipisci. Sed voluptatibus culpa debitis magnam et. Impedit sint laboriosam sunt accusantium.</p><p>Sunt velit molestiae qui repudiandae laboriosam quia vel. A ut commodi ex doloribus quibusdam modi autem neque. Et qui ad voluptatem autem eveniet non ut. Et vero voluptatum voluptates quasi.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(12, 5, 1, 'Explicabo sapiente doloribus deserunt voluptatum adipisci aut inventore.', 'voluptas-a-autem-et-qui', NULL, 'Ab accusantium et aut autem quidem commodi. Id pariatur dolores quod. Molestiae est adipisci placeat earum cum ab error.', '<p>Amet assumenda eligendi illum quo laboriosam sunt. Et aliquid error optio itaque voluptate consequatur. Repellendus quam explicabo sunt et.</p><p>Tenetur sequi illum et odit exercitationem. Velit nulla nesciunt voluptatum veritatis est amet id numquam. Vel expedita est est aliquid et sit magnam necessitatibus. Consequuntur sint eos odio ut eum.</p><p>Et et ut ut officia est accusantium similique in. Impedit qui eligendi in atque voluptatibus magni. Consequatur consequatur vel et distinctio.</p><p>Architecto quis dolorem sunt at. Odit deleniti qui magnam velit. Numquam expedita beatae quia nisi quia at.</p><p>Et consectetur dolorem explicabo itaque voluptas. Quas ut ut voluptatem quam iusto esse. Molestiae veniam aut voluptas totam provident fuga accusamus.</p><p>Mollitia enim quis ut consequatur voluptates quas voluptate. Qui dolore et placeat libero voluptatem. Aut doloribus ratione sapiente quaerat aliquam quis soluta. Molestias et repellendus voluptas voluptas est rerum.</p><p>Explicabo tempora molestiae necessitatibus. Error amet qui quidem atque quos.</p><p>Sunt fugit voluptatem alias maxime. Blanditiis velit et facere perferendis. Provident sint quod soluta accusantium eligendi.</p><p>Quidem soluta doloremque qui ad sunt. Dolor voluptate maxime voluptatem natus dolor dolor rerum. Laboriosam ut soluta sed quo illum. Laboriosam molestiae et quae qui enim sapiente architecto.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(13, 4, 2, 'Modi aut.', 'ut-quo-est-fugit-perspiciatis-neque-aut-earum-qui', NULL, 'Nobis distinctio distinctio pariatur quasi sit. Cumque consequatur sit dolorum aliquid ea inventore. Reiciendis magni aspernatur enim voluptas ea. Debitis at voluptas aut dolore et.', '<p>Hic illum quas incidunt animi qui. Perferendis similique nemo neque quibusdam at aliquam maxime. Tempora nemo quia neque. Consequatur quidem maiores sapiente omnis libero ut.</p><p>Enim aut dolore non est. Non voluptatum ab magnam. Nam rerum laudantium repudiandae occaecati tenetur iusto.</p><p>Quis saepe deserunt laboriosam et est qui. Quo aut amet maiores et non. Pariatur suscipit ab autem qui earum sunt aut necessitatibus.</p><p>Esse quasi ea repellat laborum animi quis fugit consectetur. Unde reprehenderit saepe consequatur dolor doloremque sint. Perferendis ad ipsa expedita minus. Velit aspernatur blanditiis deleniti dolore exercitationem aut voluptatem odio.</p><p>Dolor nulla ea quia enim ut repudiandae. Nulla rerum nostrum numquam mollitia. Autem et non et aut deleniti pariatur.</p><p>Ut natus fugit id nam sit. Dolores possimus earum vero earum aut et. Est aperiam sapiente et numquam. Recusandae cupiditate quisquam in.</p><p>Occaecati sit nesciunt aut voluptas quia aut. Eius beatae ipsum veniam non. Magni et reprehenderit et et commodi dolores.</p><p>Earum ducimus eveniet fugiat aut ipsum quia possimus. Magnam sapiente rerum quod laudantium minus corrupti aperiam iusto. Officiis sunt fugit possimus sit omnis id laborum. Illum qui ut qui aspernatur blanditiis dignissimos doloribus.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(14, 5, 2, 'Eum qui et perferendis id commodi et.', 'dolor-dignissimos-distinctio-blanditiis-architecto-ullam-saepe', NULL, 'Cupiditate pariatur rerum quidem aliquam minus. Voluptas facere laudantium ut asperiores iure. Fuga occaecati minus ducimus doloribus.', '<p>Perspiciatis iure autem quis ex. Esse fugit at aliquam qui. Omnis quaerat odit aut ea.</p><p>Laboriosam adipisci fugiat id ut voluptatem. Similique amet illum molestiae consectetur tempora sit. Accusamus corrupti nulla facilis perspiciatis porro et ut velit. Necessitatibus quis et quos expedita id esse ullam.</p><p>Laboriosam error eligendi distinctio et. Qui deserunt nostrum maxime voluptate et quia. Enim ratione omnis incidunt veniam magnam odit. Velit modi rerum voluptatum officia quis.</p><p>Laborum consequatur in qui occaecati voluptatem. Est perspiciatis natus dolores sapiente vel nobis est porro. Eum debitis voluptatem aut voluptatem.</p><p>Unde sint odit molestiae in temporibus provident. Aut sed sapiente vel et.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(15, 3, 1, 'Mollitia deserunt expedita voluptatem et itaque voluptas.', 'ducimus-quas-maiores-quibusdam-dolores-architecto', NULL, 'Quod qui sed esse quis dicta sed dolores. Quae voluptate facilis ab quia illo tempore quam. Laborum culpa ea suscipit totam voluptatem magnam. Molestiae minus quaerat ipsam quia deserunt. Qui aut officiis aliquam nihil deserunt cupiditate dicta.', '<p>Quo quaerat consequatur ut et ut. Officiis voluptatem deleniti facere commodi et. Nobis sed voluptatibus similique suscipit est qui. Est numquam error et minima saepe aspernatur consequuntur.</p><p>Repellendus ex unde nam quo. Rerum est voluptas nobis eum quis.</p><p>Quia id modi sit fugiat dolorum doloremque mollitia aut. Sunt eos sint et voluptates praesentium consequatur.</p><p>Et itaque sint ratione autem fugiat quidem laboriosam magnam. Eligendi ex aliquam aliquam. Sapiente ut debitis voluptates repudiandae ut ullam.</p><p>Sit magni et et. Et qui temporibus aut eligendi odit. Tempore error quos fuga sequi sit eos. Fugiat saepe quam accusantium cupiditate placeat.</p><p>Architecto praesentium velit sed aut repellat. Nemo perspiciatis iure molestiae. Harum sunt quia et quibusdam quis.</p><p>Quos adipisci illo quidem cum sed et repellat. Repellat soluta quasi dolorum nobis nam consequatur ducimus. Dicta molestiae itaque dignissimos delectus dolor maxime.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(16, 1, 3, 'Perspiciatis consequatur ratione nobis eum corporis.', 'optio-aspernatur-ducimus-autem-dolorem', NULL, 'Atque sint et maiores voluptatem dolores dicta. Vero consequatur sit quis. Et praesentium non debitis id impedit minima debitis.', '<p>Incidunt quae necessitatibus voluptas eveniet rerum earum odio. Est voluptas qui et quam aperiam rerum. Et sed aut dolore repellendus qui fugiat et.</p><p>Maiores optio eos aut occaecati voluptatem nostrum. Similique harum architecto architecto laudantium amet. Modi et tempore occaecati vel quidem vero delectus. Officia tempore necessitatibus tempore voluptatem numquam sed.</p><p>Quidem quia ea pariatur quo eum rem accusamus. Enim et inventore et doloremque. Alias explicabo non rem corrupti cum et.</p><p>Animi est iste nesciunt maiores voluptas. Repellat natus quidem eaque sunt non. Beatae consequatur error maxime quis architecto corporis. Similique delectus quo quo quis et aut et. Iste distinctio autem autem.</p><p>Impedit et optio sunt dolor. Inventore quo atque quia veritatis. Illo dolorem corporis vero et voluptatem. Inventore ea voluptatem dolorem repellat. Corporis ipsum ducimus voluptatem voluptatum nemo.</p><p>Similique explicabo atque sunt in non. Incidunt ut qui explicabo incidunt autem nisi ex. Ea laudantium quisquam dolores reprehenderit. Odio id qui voluptatem et voluptas.</p><p>Itaque facilis nihil adipisci commodi velit. Quam molestiae aut mollitia neque. Esse molestiae possimus explicabo expedita.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(17, 5, 4, 'Necessitatibus unde omnis voluptate et culpa provident.', 'eius-iusto-magnam-dolorum-omnis-et-facilis-minus', NULL, 'Ea dolor enim quaerat libero sit. Officia doloribus est quo consequuntur corporis asperiores. Ut tempore sunt dignissimos animi minima fugiat soluta id.', '<p>Id numquam ut ea est. Dolor enim beatae numquam iusto illo hic dolorum consequatur. Non quo voluptates modi repellat amet quas nihil. Earum ducimus ut tempore rerum hic.</p><p>Facere dolores totam mollitia doloribus non et. Omnis laudantium eveniet repellat blanditiis aspernatur. Consequatur molestiae eligendi quis at modi vitae.</p><p>Deleniti dolorem magnam quia inventore eos similique incidunt. Dolorem voluptatem amet eum non et aut sunt. Deleniti adipisci nostrum et quia quis.</p><p>Vitae amet molestiae accusamus deserunt ut quo. Exercitationem enim et dolore animi magnam. Pariatur et illum esse quam molestiae non.</p><p>Reiciendis illum molestias magni quasi harum. Est hic alias quo voluptatem. Sed sapiente est animi nam maiores distinctio et commodi.</p><p>Minima quia vel animi ipsa repudiandae eius veniam. Qui perferendis temporibus quos fugit. Amet harum ut aut sed. Modi asperiores eius ducimus est voluptate.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(18, 3, 2, 'Nam quos in illo.', 'et-ad-modi-praesentium-odio-ea', NULL, 'Dolores ducimus quaerat ipsum. Maxime tenetur provident harum iusto. Sed soluta quam laborum enim a omnis. Omnis doloribus sit rerum dolor qui suscipit.', '<p>Dicta molestias perspiciatis nobis quaerat. Delectus debitis veniam est dolorem qui aut non asperiores. Praesentium perferendis ab facere dicta culpa et corrupti. Sed itaque ducimus in neque cum iste. Provident corporis magnam hic veniam aut.</p><p>Vitae eligendi officia voluptatem doloremque ut voluptas et. Minima omnis vitae incidunt cumque vitae. Sapiente consectetur consequatur molestiae deleniti. Est beatae eum eum labore.</p><p>Velit explicabo maxime enim nesciunt est voluptatem. Sint consequatur dolorem similique magni vel. Quasi autem sint accusantium facilis quidem excepturi. Molestiae est molestiae ipsam inventore.</p><p>Quia voluptas et vel quis odit omnis aspernatur omnis. Saepe sed nostrum quisquam. Consequatur ipsa voluptas inventore sit molestiae nihil.</p><p>Non corporis mollitia optio doloremque non pariatur. Odio pariatur sed quas et impedit. Perspiciatis cupiditate iure cupiditate expedita facere architecto illo.</p><p>Placeat tenetur voluptate debitis porro quisquam consequatur minus in. Rerum aut voluptate necessitatibus magnam soluta cum necessitatibus. Voluptatem rerum sit sit dolor odio aut.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(19, 5, 5, 'Quo corrupti ut consequatur quia iste.', 'ullam-ipsum-aliquam-ipsam', NULL, 'Quas at porro ratione rerum voluptates quo sint. Beatae repellat suscipit quis porro laudantium exercitationem est aperiam.', '<p>Magnam cupiditate sed quasi reiciendis commodi ullam. Tempore cum delectus placeat non qui. Laboriosam saepe assumenda excepturi nostrum.</p><p>Aut minus aspernatur pariatur error dolore perspiciatis. Possimus consequatur id harum. Quia et et in dolores aperiam in.</p><p>Provident saepe officiis beatae incidunt. Sit sint vel dolores est beatae perspiciatis velit. Rerum vel eum ullam. Non cum rem esse quia voluptatem velit minus magnam.</p><p>Ut sint eligendi eum laborum libero magni nemo aut. Vero eveniet sit accusantium esse blanditiis. Autem dolor non quam quia aut veritatis.</p><p>Reprehenderit exercitationem corporis molestias impedit repudiandae. Sunt reiciendis eos aperiam atque alias occaecati enim. Consequatur culpa voluptas nobis atque. Aut laboriosam adipisci cupiditate placeat quo impedit aut quis.</p><p>Quo atque aut ut nesciunt optio. Et voluptatibus accusantium totam exercitationem aut. Voluptatem in sed quasi aut harum aperiam sunt. Dolores ad beatae temporibus distinctio mollitia ratione facilis.</p><p>Cumque adipisci dolorum facere ipsum. Animi numquam voluptate ut aut dolor eaque. Sapiente enim deserunt aperiam dignissimos suscipit et mollitia. Perspiciatis sit odit ut qui necessitatibus ipsam non veniam.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(20, 4, 3, 'Voluptatem animi velit aliquid veritatis necessitatibus ea consectetur similique corporis qui.', 'voluptatem-tenetur-dicta-incidunt-sed-omnis-quidem-quasi-sit', NULL, 'Est quis et ut ut incidunt aliquid. Deleniti ea doloremque voluptatem ut quibusdam nihil atque aliquam. Accusantium amet et qui rerum. Illum accusamus voluptatem quaerat labore optio expedita aut.', '<p>Mollitia illo alias assumenda placeat dignissimos suscipit. Voluptatem optio molestiae iure. Dolorem hic voluptatibus et facilis commodi sapiente.</p><p>Soluta amet consectetur fuga dolor est et. Maxime maiores culpa numquam autem aut. Placeat ea provident blanditiis optio facere ullam.</p><p>Ut distinctio quae soluta. Eum dolores optio illum ut fugit unde dolores nulla. Animi voluptas qui ut ut accusantium atque qui. Et quia voluptatum aut et deleniti et.</p><p>Voluptatibus officia voluptas sed voluptatum id. Excepturi et neque aut aut impedit fugit quibusdam. Quas eius sed molestiae velit velit minus.</p><p>Doloribus et harum mollitia odio. Repudiandae earum accusamus aliquam veniam est aliquid quo. Quos praesentium et dolor.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(21, 4, 3, 'Soluta eos voluptas sed nisi.', 'laboriosam-eius-quia-aut-a-numquam-nihil-et', NULL, 'Eveniet minus vel est fugiat harum id. Earum officia quasi qui ipsa consequatur sit ea sit. Ea sequi sapiente est porro dolor doloribus aut maxime. Amet qui qui delectus molestias.', '<p>Quam animi aut et sed incidunt expedita. Deserunt velit enim nostrum occaecati quidem quo non. Ratione voluptates fugiat dicta iste qui.</p><p>Dolorem quas ea enim neque minima qui. Sequi vitae aut a perferendis.</p><p>Eum sit deleniti fugit ex libero voluptas esse possimus. Magnam quae minus et nesciunt. Sunt est vel eum omnis officia at.</p><p>Architecto distinctio id autem aut et quisquam. Quas itaque ut consequatur enim hic repudiandae commodi. Iure culpa quia adipisci perferendis. Sed quasi occaecati mollitia recusandae id.</p><p>Quam reprehenderit est aut est. Qui blanditiis et ea eligendi voluptatibus necessitatibus esse nemo. Fuga alias debitis vel a non molestiae. Beatae voluptatem non dolor sint ex laboriosam.</p><p>Repellendus ut excepturi ratione quia enim delectus. Eveniet excepturi culpa perspiciatis harum nesciunt nihil. Consequatur quos incidunt inventore aut ea sit nam. Perspiciatis aut corrupti omnis quod tempora eaque eum. Id voluptatem incidunt placeat dolor.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(22, 5, 1, 'Quos fuga.', 'similique-ex-illo-laboriosam-ut-dolores-illum-autem', NULL, 'Ab aliquid et quibusdam provident at et id. Tempore totam consectetur quidem voluptatem fugit. Beatae cumque non sed est ex rerum aspernatur odio. Ipsa cumque quod dolore dolores qui repellat enim.', '<p>Nihil aspernatur quasi sed placeat et. Officia id aut voluptates omnis in dolorum. Quae optio quos doloremque est fugiat maxime.</p><p>Voluptatem fugiat assumenda iure voluptatum. Sed aut dolor delectus nemo enim quis rerum. Rerum tempore optio sapiente dolorem beatae suscipit omnis minima. Minus et laboriosam eos reprehenderit rerum.</p><p>Quia dolore cumque omnis rerum fugit sint necessitatibus. Ut beatae molestias reprehenderit sint autem fugiat molestias. Nemo ad itaque libero enim aliquam.</p><p>Repellendus ut est rerum facilis dolorum molestiae quos. Ex omnis eos nam omnis eum error ea. Assumenda rerum illo maiores dolor.</p><p>Sint cumque dolorem neque quod. Qui similique nulla odit velit ad. Provident autem in minus fuga eos dolor. Voluptates accusamus saepe ipsum eius consectetur doloremque non.</p><p>Omnis nam necessitatibus ad ut quam. Dolorum unde quidem nemo quisquam sed enim omnis. Praesentium necessitatibus omnis fuga dolores velit consectetur.</p><p>Aut nam qui soluta dolor qui sequi fugiat omnis. Alias optio et ut excepturi. Esse officia facere est molestiae placeat illo aliquam.</p><p>Ea sapiente quia dolorem quae molestiae omnis culpa. Ut tenetur sit dignissimos aliquid nam sed voluptas. Dignissimos veritatis quidem delectus et unde sed. Sunt sed aut et fuga. Voluptas harum sit ullam voluptatum debitis.</p><p>Eum provident quis expedita dolor totam earum fugit. Nam ipsam officiis saepe enim sequi itaque. Et distinctio voluptate quos ipsum. Non fuga eius est officia aut.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(23, 1, 1, 'Non veniam.', 'sed-saepe-et-aut-molestias-consectetur', NULL, 'Et odio neque ducimus quia reprehenderit molestiae. Ipsa dolor eum cum in. Eaque dolorem ut dignissimos. Blanditiis vitae beatae libero recusandae tenetur rerum.', '<p>Consequatur perspiciatis omnis deleniti a. Laboriosam iste voluptatem at facilis. Rerum placeat et perspiciatis fuga. Molestiae corrupti modi doloremque incidunt asperiores.</p><p>Sint repellendus enim mollitia voluptatibus similique aut. Reprehenderit rerum itaque delectus accusantium libero reiciendis. Maiores nobis praesentium laboriosam nihil accusamus saepe. Similique enim amet deserunt quod aliquid.</p><p>Consequatur voluptate eum nihil dolores eum. Hic similique ipsum expedita veritatis aliquid in. Aut aut in fugit. Voluptates debitis sequi et earum error. Hic ut qui sapiente voluptatem.</p><p>Aut enim minima quia ut. Sed laboriosam molestias voluptatum omnis non tenetur. Omnis porro tempora blanditiis et deserunt.</p><p>Aperiam ut deleniti et velit. Rerum sit rem ipsam porro dolor at. Quod in qui quia.</p><p>Illum qui laudantium ut iusto. Ipsum voluptate voluptatem laboriosam omnis. Odit ut alias aliquam ex assumenda. Quidem corporis voluptates qui harum quod sed et.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(24, 5, 5, 'Nihil tempore temporibus culpa amet placeat.', 'reiciendis-autem-dolores-soluta-nesciunt', NULL, 'Aut beatae nobis tenetur eos voluptates. Dignissimos eum ut necessitatibus est dolor.', '<p>Eius qui eum rerum quo. Perferendis nobis molestiae fugit molestiae molestiae voluptas. Quia recusandae ipsa ex quod aut.</p><p>Libero vitae et rerum non autem dolores harum non. Aut quasi qui sunt et atque et eligendi. Optio quam qui et quisquam autem. Sit velit aliquid animi amet earum.</p><p>Consectetur cupiditate dignissimos quos blanditiis iusto vel. Sit molestiae perspiciatis explicabo dicta fuga eum. Qui porro vero ullam necessitatibus totam. Omnis molestiae sapiente eaque nostrum qui occaecati molestiae tempora. Dolorem consectetur cum sapiente itaque et.</p><p>Rerum doloremque fuga id dolorem. Nulla ut dicta nemo nisi nulla incidunt laudantium. Necessitatibus rerum enim quas ullam voluptatum delectus.</p><p>Et ut odio veritatis cumque dolor perferendis et. Quos est dolores dignissimos. Laboriosam vel non qui natus minus.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(25, 1, 1, 'Ipsam numquam culpa eos.', 'et-soluta-odit-qui-suscipit-maxime-aut', NULL, 'Praesentium neque voluptatem qui autem in. Dolore quae quidem quasi sed deleniti et.', '<p>Deserunt et sunt libero dolor ut. Voluptate nam doloribus minima nostrum eaque. Deserunt aspernatur autem aut autem inventore similique et. Quisquam dolorem dolorum ab minima voluptates.</p><p>Iste sed blanditiis rerum autem modi. Consequuntur hic blanditiis vel cupiditate sapiente minima. Aut non voluptas totam illo rerum eum minus. Expedita vero est exercitationem.</p><p>Necessitatibus minus esse nemo eveniet id velit debitis. Voluptatum quos aut quis odit. Voluptas asperiores debitis corporis. Libero illo est quia a deleniti et.</p><p>Ipsum repellendus atque quis vitae quaerat amet. Exercitationem veritatis aspernatur ab at in voluptate. Vel ut quaerat laudantium similique tempore consequuntur.</p><p>Fugiat eligendi praesentium qui est. Pariatur qui culpa atque reiciendis temporibus.</p><p>Fugit quaerat quibusdam quos reiciendis ducimus consectetur voluptas. Aut est accusantium voluptas voluptatum magni dolores. Perspiciatis incidunt tenetur vel commodi molestias. Amet magnam qui neque voluptatibus.</p><p>Quae nisi magni nihil qui error laborum. Quae illum iure dolorum dolore expedita vel molestiae. Quia magnam est provident voluptatibus ipsum officia soluta. Sit modi quos quam ad repellat iusto exercitationem.</p><p>Non illo ut voluptatum quam beatae sit architecto. Accusantium id distinctio omnis reiciendis doloremque impedit rerum. Et ad possimus voluptas.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(26, 5, 3, 'Laboriosam dolores.', 'et-blanditiis-ut-enim-quae-reprehenderit-adipisci', NULL, 'Aliquam totam quod sint molestiae odit quis ducimus. Corporis sunt eveniet odio dignissimos est et. Sit facere alias distinctio eveniet eos. Minima repudiandae necessitatibus rerum hic laboriosam hic.', '<p>Et impedit hic tempora suscipit. Rerum amet omnis porro mollitia.</p><p>Velit eum sed odio ad voluptates. Impedit sequi vel et ipsam veritatis facere veritatis. Distinctio minima cumque consequuntur. Pariatur dolorem tempora saepe quis commodi natus.</p><p>Ut rerum qui nemo reiciendis voluptatibus esse. Optio nostrum non vel repellendus sed aut aut. Officiis omnis aliquid reiciendis quia est.</p><p>Consequatur rerum tempora ea laboriosam omnis sit doloribus. Et autem deleniti eos. Nihil sed aut enim et vel vero.</p><p>Possimus hic dicta est labore. Eius explicabo inventore tempora ipsa quia nemo quas. Veritatis est sint sed ut reiciendis ipsa. Ea tenetur doloribus voluptatem dolorem explicabo nobis. Nobis ea ea consectetur consectetur esse.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(27, 4, 3, 'Quae beatae est esse impedit ratione facere.', 'rerum-tenetur-commodi-earum', NULL, 'Autem qui qui commodi dolores voluptas aspernatur. Quasi numquam doloremque quasi voluptas perspiciatis quo asperiores. Adipisci architecto labore provident quia.', '<p>Necessitatibus voluptas nostrum ullam iusto vel. Qui unde recusandae error nobis ab. Ullam consequatur voluptates sint tenetur. Ut vel maxime perferendis quia. Facilis fuga velit ut accusamus et vitae est.</p><p>Nesciunt est blanditiis recusandae vel. Quaerat officiis sunt et aut. Ex veniam cumque voluptatum iste.</p><p>Molestiae cupiditate ipsa impedit explicabo saepe. Adipisci omnis iure quo eos ut ad. Adipisci autem omnis qui nisi eligendi ea tempore. Ut sint quasi rerum sunt minima.</p><p>Facere accusantium quidem atque pariatur quis quas. Voluptatem qui non quia dolorum alias non placeat. Est voluptatem iure qui culpa temporibus fugit ipsam voluptate.</p><p>Dolor corporis rerum est aut voluptatem optio cumque. Nemo aut necessitatibus nihil facere. Autem vero ex et maxime doloribus blanditiis. Vitae corporis dolore nesciunt voluptas aliquam et.</p><p>Vel ut numquam autem dicta in fuga omnis. Accusantium at qui occaecati nam velit velit. In sequi neque eum aut ut.</p><p>Sint quia necessitatibus facere quia. Qui velit enim dolorum qui sit cupiditate. Aliquam iure voluptatem nisi placeat eum beatae. Quo quas alias laudantium qui laborum.</p><p>Temporibus voluptatem quae earum veniam adipisci. Officia numquam vitae libero. Incidunt cupiditate similique aut magni consequatur et ut dolorem. Facere ex id repudiandae earum.</p><p>Quia magnam occaecati vel voluptatem. In alias inventore porro. Suscipit placeat quis doloremque repellendus sapiente quia.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(28, 1, 1, 'Commodi et assumenda neque ad sit tempore illum.', 'consequatur-culpa-et-voluptates-at-autem-ab-repudiandae-quo', NULL, 'Laudantium temporibus et dolorem quo. Rerum cum ratione cupiditate adipisci qui. Quod et exercitationem non assumenda porro eos ab. Iste beatae excepturi officiis corporis.', '<p>Magnam reiciendis et dolorum. Modi id nam porro sit et esse ab et. Adipisci consequatur similique rerum perspiciatis. Culpa iste dolores ut vel doloremque et recusandae qui. Laborum quis et fugit fugiat.</p><p>Dolorum quia dolor esse non facere vel. Nobis sint consequatur quos non inventore quae repellat. Ad at pariatur consequuntur. Id qui quas est est placeat laboriosam reiciendis.</p><p>Consectetur expedita aut ad provident velit. Voluptatem excepturi neque eum atque natus. Dolore eos aut autem enim et.</p><p>Rerum nulla ab et ipsam porro eaque illum. Reprehenderit sint dolor animi neque sed qui ullam nihil. Velit aliquam blanditiis sit voluptate reiciendis quo. Sint ut quidem sit dolor aspernatur distinctio.</p><p>Eveniet ad facere ipsum quis animi. Esse nostrum eius hic. Id hic cupiditate qui omnis omnis est omnis sit. Iusto non doloribus ut incidunt ipsa.</p><p>Numquam enim aut modi nihil architecto unde. Ut ab ex dolores facere cumque. Debitis ipsa voluptatem quia quia. Repudiandae vel dolorem quo eveniet ut sit labore.</p><p>Deserunt totam laborum aliquam facilis nisi. Earum quis quo esse dicta non dolore. Omnis magni ea eos iste illum sed omnis aspernatur.</p><p>Minima officia eum saepe unde. Atque ea et qui est veritatis adipisci blanditiis. Et voluptatum omnis deleniti sunt laudantium voluptatem. Blanditiis necessitatibus sunt consequatur sunt architecto unde. Consequatur in repudiandae magnam minus.</p><p>Quis minima mollitia quia. Qui possimus facere qui delectus amet est modi. Dolores fugiat accusantium totam saepe laboriosam.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(29, 3, 3, 'Quas est facere explicabo totam a et fugiat.', 'magni-voluptas-veritatis-aliquam', NULL, 'Aut consequatur quis voluptatem veritatis nulla. Sed nisi animi dolor voluptatibus. Sit voluptatum quibusdam ullam voluptates.', '<p>Qui sunt occaecati sit expedita voluptatem. Ratione et nisi illo.</p><p>Sapiente cupiditate alias natus consectetur itaque est veniam. Corporis distinctio dignissimos voluptate incidunt. Molestiae illo dolorum autem et.</p><p>A in aut officiis et cum. At praesentium ipsam repellat dicta est ullam laboriosam rerum. Quia quasi maxime sint voluptates sint voluptatem non. Dignissimos tempora quod delectus eveniet pariatur.</p><p>Iure assumenda dicta earum assumenda. Dolores tenetur quos quia debitis pariatur. Voluptate velit ipsam officia. Deserunt itaque omnis autem quia minima libero odio.</p><p>Consequatur natus eius iure ullam impedit eos. Consequatur non et est.</p><p>Deleniti rerum et aliquid aut et. Modi a sed assumenda nesciunt possimus illum aut. Nihil aut et cumque quasi qui reiciendis iste. Sed porro natus earum voluptates aut magnam.</p><p>Animi rerum ut officiis quis consequatur eveniet tenetur. Delectus est esse saepe in.</p><p>Consequatur fuga quia modi. Dolores in soluta sapiente similique ut.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(30, 5, 2, 'Illo expedita exercitationem.', 'omnis-qui-voluptatum-nobis-ratione-dolorum', NULL, 'Nam quasi explicabo molestiae molestiae id soluta molestiae enim. Minima sed corrupti et et cum excepturi. Ut rerum dolore reiciendis et.', '<p>Nobis ab aliquid unde porro laborum quia explicabo. Velit et quam omnis voluptatem assumenda. Ut aut voluptatibus debitis omnis in et doloribus. Autem quam odit est. Sed et et repellendus id temporibus ut corporis.</p><p>Neque distinctio iure est. Dignissimos vel quo soluta eos quo blanditiis. Omnis non ut sunt aut sapiente sit quo. Ut nesciunt nostrum blanditiis est sit.</p><p>Expedita repellat laudantium laudantium reiciendis. Totam porro laudantium consequuntur non quod voluptas. Vel quam et sed impedit. Libero a occaecati unde minima aut. Exercitationem numquam omnis dolorem placeat accusamus et esse illo.</p><p>Et commodi quia modi ut laudantium repudiandae. Accusamus voluptatem rerum voluptate soluta. Beatae saepe delectus voluptatem tempore enim pariatur at. Blanditiis dolores praesentium inventore debitis praesentium et provident.</p><p>Quo consequuntur dignissimos qui officiis rem. Cum nobis eius aut fugit voluptatem eaque alias tempore. Enim accusantium numquam rerum odio vitae error.</p><p>Molestiae et et fugiat. Dolor voluptatem itaque eligendi delectus sit. Sit quo ab ducimus.</p><p>In non molestiae aut velit. Voluptatum laborum dolorem necessitatibus enim eos. Aperiam iste ipsum natus.</p>', NULL, '2022-01-22 02:21:35', '2022-01-22 02:21:35'),
(31, 1, 1, 'Web Programming Unpas', 'web-programming-unpas', NULL, 'fadsfadfadfas', '<div>fadsfadfadfas</div>', NULL, '2022-01-22 02:40:01', '2022-01-22 02:40:01'),
(32, 2, 1, 'Learning Photoshop in 24 Hours', 'learning-photoshop-in-24-hours', 'post-images/JwZOFKmSMVkdT6BmLsZBdvysaNooHrFv0gIdmsGg.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore aliquid nesciunt odit? Reprehenderit ratione, hic non, facere cupiditate esse quia blanditiis est nam, quo magni tenetur voluptates...', '<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore aliquid nesciunt odit? Reprehenderit ratione, hic non, facere cupiditate esse quia blanditiis est nam, quo magni tenetur voluptates quaerat repellat? Ipsum laborum iure, officiis consequatur voluptatum nesciunt dolore laboriosam quas nam.</div><div><br></div><div>Exercitationem quos molestias officia. Est perspiciatis illo quaerat tenetur aliquid eaque. Maxime corrupti neque quae dicta vel ab delectus, eveniet consectetur voluptatem labore excepturi error, numquam quod ipsam sed deleniti repudiandae sit tenetur, pariatur nihil quibusdam autem esse aspernatur. Expedita blanditiis alias velit eius. Itaque, sint facere voluptate commodi ea rerum, ratione iusto vero consectetur eum animi fugiat atque accusamus necessitatibus dolorum quod eius nam aspernatur.</div><div><br></div><div>Sapiente quos nesciunt incidunt inventore ratione corporis laborum, vero suscipit corrupti non magnam repudiandae, illum neque iusto laudantium fugit soluta nemo. Ad et itaque libero, voluptate mollitia alias minima ipsam. Optio culpa earum cupiditate? Accusamus perferendis in, fuga ex quisquam at. Ut optio officia similique inventore quo tempore ipsam nam placeat, voluptatum a, autem distinctio totam nulla eaque quisquam, quod expedita? Quasi aperiam deleniti voluptatem necessitatibus sint molestias porro qui quis magnam, eum tempore quo, a itaque at sunt eaque ad cumque voluptates repellat recusandae dolores! Dignissimos sunt inventore iure eum, ut laudantium hic magni facilis. Ab, facere quidem.</div><div><br></div><div>Aut suscipit, sit explicabo perspiciatis fuga enim earum commodi saepe dolores corrupti cumque voluptatum at perferendis ducimus. Ipsum quos, ullam quaerat nihil nam doloribus, veniam, placeat facilis aspernatur voluptate error. Natus labore esse repudiandae asperiores harum fugiat quia quod, possimus consectetur nemo eaque, sequi suscipit?</div>', NULL, '2022-01-22 02:48:55', '2022-01-22 06:41:35'),
(34, 6, 1, 'Magnam nulla veniam', 'magnam-nulla-veniam', 'post-images/emrVNsPPOlxkUOtoo2F23K1GfFApxfEJCuEAtdLs.jpg', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Error optio molestiae fuga ea quibusdam? Nulla dicta optio ipsum. Perferendis quaerat itaque quo impedit! Ab harum beatae dolore atque exceptu...', '<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Error optio molestiae fuga ea quibusdam? Nulla dicta optio ipsum. Perferendis quaerat itaque quo impedit! Ab harum beatae dolore atque excepturi, maiores quas commodi sint.</div><div><br></div><div>Qui provident, mollitia magni quas minima facilis eligendi dicta? Illum quas dolore repellat! Aperiam, quaerat aliquid. Excepturi ad ipsa aut cupiditate assumenda saepe. Hic porro tenetur reiciendis laborum earum culpa enim aut cumque ducimus et eaque omnis, quasi eligendi, perspiciatis distinctio reprehenderit tempora quas, odio quod itaque nisi doloremque aperiam? Molestias facilis dolore earum. Sit quia dolorem expedita voluptas culpa.</div><div><br></div><div>Magnam nulla veniam ea iusto neque magni dolorum ex omnis accusantium et recusandae rerum, voluptatum alias error? Tempora magnam tenetur incidunt pariatur numquam sit. Quae eum rem ab facere vero laudantium omnis animi, tempore illo sint placeat exercitationem, consectetur blanditiis nulla, voluptatem eveniet iste repudiandae assumenda voluptates architecto soluta.</div><div><br></div><div>Numquam repellendus, culpa deleniti repellat minima, doloremque fugit, in porro illum voluptates optio sed quisquam? Dolores dolor aperiam iste asperiores explicabo officia autem.</div>', NULL, '2022-01-22 12:04:46', '2022-01-22 12:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Ramdhani Akbar', 'ramdhaniakbar', 'ramdhaniakbarmuhamad@gmail.com', NULL, '$2y$10$rF.0Yfk.kHE2Osduv9wTNOsr9JVALHMhmsasD.L8WcovuK6/e7U2e', NULL, '2022-01-22 02:21:34', '2022-01-22 02:21:34', 1),
(2, 'Lasmono Wisnu Sitorus S.IP', 'sihombing.cawisono', 'nurul35@gmail.com', '2022-01-22 02:21:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VnBm5UoeuOFaeffM7RFgitcyc5P1VklzKtC4qhCkEOek2FtOyha4m3YWm2xm', '2022-01-22 02:21:34', '2022-01-22 02:21:34', 1),
(3, 'Prabowo Utama Narpati', 'hamima.yulianti', 'danuja09@gmail.com', '2022-01-22 02:21:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2yJSClK5Jf2kSMxlDtbSUsVAdj29ce5e8D6tTqlXqfOash9yv9kEvivZjVlI', '2022-01-22 02:21:34', '2022-01-22 02:21:34', 0),
(4, 'Ina Pia Maryati', 'jindra.prabowo', 'mhastuti@example.net', '2022-01-22 02:21:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PzWN4IKuGq', '2022-01-22 02:21:34', '2022-01-22 02:21:34', 0),
(5, 'Nasab Cahyadi Mahendra', 'situmorang.indah', 'jane68@example.com', '2022-01-22 02:21:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fz4tndGRmL', '2022-01-22 02:21:34', '2022-01-22 02:21:34', 0),
(6, 'Halima Pudjiastuti', 'npurnawati', 'xardianto@gmail.com', '2022-01-22 02:21:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4oPApZw9DxGV4niy58pENXTD9QFdAOf2Wa6h6Jx7G0YsibjcuanDCAWjhs9P', '2022-01-22 02:21:34', '2022-01-22 02:21:34', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
