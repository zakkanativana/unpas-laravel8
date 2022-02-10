-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2022 at 01:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakkan_blog`
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
(1, 'Web Programming', 'web-programming', '2022-01-25 21:20:48', '2022-01-25 21:20:48'),
(2, 'Mobile Programming', 'mobile-programming', '2022-01-25 21:20:48', '2022-01-25 21:20:48'),
(3, 'Personal', 'personal', '2022-01-25 21:20:48', '2022-01-25 21:20:48');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(5, '2021_12_17_104601_create_posts_table', 1),
(6, '2021_12_19_142428_create_categories_table', 1),
(7, '2022_02_10_115358_add_is_admin_to_users_table', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Dolores dolore.', 'reprehenderit-non-aperiam-repellendus-earum', NULL, 'Et odit omnis eum placeat. Voluptas at cumque numquam atque porro minus perferendis. Deleniti temporibus reprehenderit blanditiis sed. Animi dolores voluptas nostrum qui quisquam fugit qui.', '<p> Tempore consectetur sapiente eius cum. Ipsa provident quod impedit quidem earum fuga a. In commodi rem vel. Corporis eum odio est itaque accusamus enim quaerat. </p><p> Voluptatibus enim accusamus vitae laborum sed esse deserunt. Voluptate explicabo et qui aspernatur incidunt dolor est. Perferendis aut atque qui expedita distinctio voluptatum. </p><p> Quia velit voluptas molestiae voluptatem dolorem veniam. Odit et deleniti molestiae sint incidunt quis. Consequuntur beatae enim cumque temporibus dolor sunt sapiente exercitationem. </p><p> Consequatur est dicta rem. Et dolores soluta autem explicabo. Et modi reprehenderit et sit quas dolore adipisci tenetur. </p><p> Tempora veritatis vel rerum optio qui. Porro quo deserunt officia quae est quos ducimus. Et esse ab quos quisquam. Nesciunt officiis voluptas aut dicta a esse qui. </p><p> Vel voluptas officiis tempore cum et rem totam. Non dolorem accusamus natus debitis odio nam quo vitae. Voluptatem totam temporibus harum nihil vel. Nulla cum ea doloribus. </p><p> Debitis quia esse dolores. Possimus aperiam labore sunt hic cumque dolores asperiores omnis. Explicabo qui cupiditate et labore atque facere. Itaque blanditiis porro cupiditate et. </p><p> In atque ut sit. Quia repellendus et ducimus quo commodi placeat optio. Expedita ex aliquid reiciendis et totam nihil quia. </p><p> Tempora id a et. Harum quaerat placeat modi cumque ea quis. Ut ad ex soluta incidunt inventore. Ullam et ipsam eos quia fuga animi consequatur. </p>', NULL, '2022-01-25 21:20:48', '2022-01-25 21:20:48'),
(2, 2, 1, 'Aut repellendus quibusdam esse consectetur sed sit aut.', 'ea-eveniet-qui-itaque-ipsa', NULL, 'Dolorum optio quidem repellat. Sunt eum doloremque aperiam quia et aut. Officiis iusto voluptas omnis architecto qui id.', '<p> Atque omnis veritatis eaque omnis id. Consequatur enim soluta repudiandae. Molestiae eaque et quia ad ut. </p><p> Et quaerat dolor at totam sit fugiat. Hic molestiae veritatis omnis sunt. Fugiat harum deserunt et maxime deleniti fugiat nostrum. Possimus corporis sed rerum maiores sed. </p><p> Et perspiciatis et beatae non. Repellendus officiis saepe minus asperiores tempore rerum a. Non ipsa amet omnis. Blanditiis tempore iste optio suscipit. Laudantium quam ea dolores est nobis vero aut. </p><p> Repellendus quidem pariatur tempora at est voluptatem voluptate. Sit soluta accusantium mollitia dolorem beatae rerum. Et sed est id temporibus. Sit deleniti voluptatem eum nisi. Temporibus velit accusamus ab eum minima. </p><p> Vel cumque nisi reiciendis non numquam nihil. Exercitationem impedit adipisci vero fugiat. Nisi adipisci voluptas accusantium numquam voluptatem est. Quisquam ut id nobis non. </p><p> Repellat qui omnis hic nobis amet nemo quisquam dolorem. Quidem placeat quo odio quas adipisci corporis perferendis. Sunt atque sed veritatis architecto eum. Earum in laborum voluptatibus molestias reprehenderit eum tenetur impedit. </p>', NULL, '2022-01-25 21:20:48', '2022-01-25 21:20:48'),
(3, 1, 2, 'Accusantium alias nulla et sed inventore.', 'quaerat-enim-molestiae-quo-deleniti-dolorem-atque', NULL, 'Dolorum eos officiis dolore quo et dolores eligendi. Repellendus illo et eum nobis quas. Sit officiis corrupti voluptas.', '<p> Quis et ex nisi at consectetur harum qui. Ex consequatur repudiandae officia. Amet et voluptatum alias omnis corporis. </p><p> Accusamus quia quis sed sit aut dolor. Quibusdam voluptas similique quo dolorem doloremque blanditiis ullam. Commodi omnis consequuntur est dolore error. Eum omnis culpa voluptate molestiae necessitatibus laboriosam. </p><p> Ducimus reiciendis amet accusamus quia ut. Quibusdam assumenda est quia architecto veritatis ipsa. </p><p> Odit quidem ut enim a voluptas quasi similique. Autem consequatur necessitatibus dolorem dolorum. Dolores omnis voluptatem nisi. Repudiandae magni recusandae non sunt dignissimos recusandae adipisci. </p><p> Qui saepe voluptas quia reiciendis esse. Assumenda et nisi beatae voluptatem. Exercitationem hic ullam aperiam aut quos voluptas voluptas impedit. Necessitatibus nemo accusantium et qui. Voluptatem corporis vel eius sequi error. </p><p> Autem tempore dicta esse. Sequi facere dolor officia. Aperiam sit eaque ut tempore. Culpa cupiditate in autem rerum quasi. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(4, 2, 1, 'Cumque eius ratione odit voluptas.', 'possimus-repellendus-unde-recusandae-et-eligendi-veritatis', NULL, 'Velit ratione voluptatibus illum. In sit cum doloremque debitis occaecati aut eius. Et aut sed necessitatibus libero quisquam quod voluptatibus. Delectus non aut impedit et. Nam quis accusantium inventore deleniti nostrum.', '<p> Fugit facere dolores non sed voluptas aut. Ut iure officiis quas dolorem facilis sequi in. Ex beatae eos officia voluptas fugiat sint. </p><p> Qui repellat iusto porro et molestiae voluptas quidem nesciunt. Sed laboriosam quisquam distinctio esse iusto vitae. Tempore neque excepturi aspernatur temporibus aut voluptas doloribus. Similique optio distinctio beatae aspernatur asperiores consequuntur ipsa. </p><p> Nulla et ipsa aspernatur sunt consectetur laboriosam. Nostrum est quasi minima vitae aut soluta est. Quo veniam tenetur voluptatem placeat quod illum. Ut cupiditate sit suscipit molestias maxime voluptatibus magni. </p><p> Ea tenetur quia consequatur dolorem facere. Quia voluptas ratione ducimus non aut. Ut odit rem non veritatis. Voluptatibus minus rerum veniam quisquam non consequatur. </p><p> Illum recusandae suscipit consequatur. Consequatur voluptatem consequatur numquam quis magnam odit. Ut perferendis sed quis itaque libero voluptatem. Id accusamus perspiciatis in eaque. </p><p> Sunt recusandae soluta quos est. Beatae dolorum adipisci deserunt quis est voluptas sapiente. </p><p> Et omnis occaecati labore quos. Omnis quam facilis voluptatem qui aut dolorem quo. Temporibus fuga et mollitia. Culpa consectetur ab accusantium et. </p><p> Consectetur ratione velit officiis quos reiciendis. Quis laudantium quae ut non et autem nemo. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(5, 1, 1, 'Debitis quae.', 'libero-amet-qui-temporibus-in', NULL, 'Et sint veniam voluptates non omnis dolores dignissimos magni. Sed et atque odio aliquam. Quis nulla maxime magnam quam et debitis facere.', '<p> Inventore et consequuntur non expedita eligendi commodi non. Dolorem expedita error sequi repellendus ea deserunt odit eaque. </p><p> Quo dolor error facilis quis dignissimos qui eum similique. Blanditiis libero ratione reiciendis totam iure. Dolore deleniti animi id. </p><p> Voluptatem et exercitationem necessitatibus sit non dignissimos. Vel laborum qui ipsam quis veniam facilis tenetur. Quasi ut rerum praesentium vel et esse vitae quam. </p><p> Recusandae et sit aut facilis sed consequuntur deserunt recusandae. Mollitia ex fuga quibusdam sint quidem. Excepturi sequi facere id dolor. Aut aperiam quo voluptas aut reprehenderit qui. </p><p> Nisi consequatur ut ipsam ipsum. Architecto est fuga aut omnis est itaque provident sit. Aut ut excepturi est quod consequatur sint amet. </p><p> Quas nobis reiciendis sed quo repellendus voluptates est. Eligendi est eum velit. Ex accusamus cupiditate nulla non corrupti rerum. Quae odit est velit minus voluptatem. </p><p> Error neque ea aliquam vero temporibus ad. Accusamus quasi quo numquam tenetur qui. Omnis quod totam suscipit dignissimos. Non repellendus facilis dolore sunt sed. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(6, 2, 3, 'Labore quis quo minus facere.', 'pariatur-soluta-qui-optio-inventore', NULL, 'Autem autem harum id aut adipisci voluptatum quo tenetur. Laudantium expedita eum fuga aut cumque quis illum. Dolores fugit ut eaque quam facilis.', '<p> Culpa aut in adipisci repellendus ea impedit. Illum quo et aut explicabo fuga nulla porro dignissimos. Voluptatem tempore eum molestias non est dolorem ab et. Nihil voluptatum possimus exercitationem laboriosam assumenda voluptate quibusdam ut. Ad qui officiis ab delectus tenetur. </p><p> Voluptatum non odio optio quia totam ab. Et quasi excepturi debitis quibusdam repellat nihil. Aut aliquid animi accusamus. Ipsam pariatur iusto id natus. </p><p> Quisquam nisi neque corporis placeat ut et omnis sint. Dolores adipisci quia tenetur. Ut eum nulla molestias ipsum. </p><p> Repellendus nemo dolorum laudantium nesciunt accusamus. Perferendis veniam et vitae ratione sed et sunt. A ipsa sit rerum maiores omnis minus molestiae sint. Ea fugit sed molestias illo occaecati. </p><p> Similique a soluta deleniti impedit voluptas natus maiores. Reprehenderit et omnis nostrum inventore. Ea voluptate quidem in cupiditate dolorem. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(7, 1, 2, 'Quia fuga quo nesciunt repellat totam.', 'velit-sint-officia-libero-et-ad-consectetur', NULL, 'Sed sit corporis ut molestiae. Distinctio consequatur inventore aut magni natus.', '<p> Vel non iusto ratione aut sed aliquam et. Eligendi quia voluptate eligendi necessitatibus mollitia. Nesciunt sit consequatur aut repellendus reiciendis et fugiat. Omnis et perspiciatis id. </p><p> Consectetur aut rem et. Enim optio quo ut nihil aliquid. Asperiores et laudantium sed facere ab et. Sunt itaque eos non consequatur cupiditate dolorem neque est. Et est enim voluptatem consequatur porro sed ut. </p><p> Mollitia repellat ipsa sit quibusdam voluptatum et nihil. Consequatur doloremque sed nobis qui. Explicabo sint et autem eum ex culpa. </p><p> Exercitationem minus sunt ut ipsam aut cupiditate autem labore. Sint ut et quod eius esse ducimus. Dolores adipisci non suscipit qui commodi. Culpa tempore iure illo aut. </p><p> Magni omnis quos est suscipit. Quaerat illum eum voluptates eligendi laudantium. Dolorum saepe incidunt ut quae placeat rerum nihil harum. </p><p> Dolor minus pariatur et voluptatem. Praesentium eligendi dolores quaerat nihil voluptas fugiat. Qui fugiat quasi laudantium quaerat dolores incidunt. </p><p> Repudiandae nisi eveniet excepturi provident. Dolor omnis sunt delectus ut. Maiores dolores recusandae non deleniti. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(8, 1, 1, 'Neque nihil eum.', 'ipsa-nihil-vero-deleniti-laboriosam-vel-sint-vero', NULL, 'Perspiciatis autem velit unde temporibus deleniti sunt. Provident eius possimus et officia nulla excepturi. Omnis suscipit totam eos aut omnis aut aut tempore. Illum ipsa omnis totam voluptas et non.', '<p> Est qui cum est ratione consequatur magnam. Repellendus cumque ab eius et assumenda quo. Consequatur quo vero ratione ea repudiandae dignissimos. </p><p> Voluptatibus et cupiditate sit id ipsum ut nostrum corporis. Dolorum fugit dignissimos consequatur animi officia voluptates amet. Rerum quis atque dolorum et accusantium saepe. Enim veniam iste id consequuntur. </p><p> Quaerat dolorem est fuga dolore ut in et laudantium. Sed nulla commodi accusantium quaerat officiis ut debitis quisquam. Non eveniet assumenda et dolorem quisquam. Magnam neque eos nihil velit qui repellat reprehenderit. </p><p> Eum cumque et et. Rerum magni officiis et cupiditate eum est. Voluptas laboriosam porro voluptas ea architecto aspernatur. Quis sed incidunt in laborum libero odit et. Itaque consequatur quo quam nobis autem nihil ut. </p><p> Nisi aut quo facilis accusamus rerum in quo. Quia id et odio. Animi enim rerum sit aspernatur. Veniam similique dolores voluptas vero illum dicta quae. </p><p> Omnis vitae possimus fuga in et a beatae. Accusamus sit sed vitae et. </p><p> Beatae ex nisi vero rem aut hic dignissimos ut. Illum laudantium accusamus ex consectetur omnis in autem. Et suscipit est a molestias dignissimos sed molestiae reiciendis. Nisi asperiores mollitia blanditiis culpa nemo. Error et hic quod. </p><p> Impedit autem quos numquam nulla sit sapiente. Deserunt ut autem vel et eaque. Ut voluptas perferendis eos quisquam ut voluptate. Necessitatibus omnis voluptates odio officia unde et. </p><p> Eligendi itaque magni inventore ut tenetur culpa est. Illum quam voluptatem possimus enim. Non qui quidem quis. Similique cupiditate minus dolor optio vel ut. </p><p> Perferendis hic rerum officiis aut. Consequatur et quis velit omnis. Consequatur qui alias repudiandae ut expedita tenetur. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(9, 1, 3, 'Est dolores voluptatem exercitationem.', 'voluptatem-libero-dignissimos-eos-placeat-doloremque-quis', NULL, 'Quam numquam consequatur deleniti itaque ratione alias nostrum. Qui tenetur qui recusandae sapiente. Aut consequatur dignissimos iusto. Est reprehenderit enim molestias in.', '<p> Quod eaque sit quidem autem facilis non. Hic impedit temporibus quam inventore sit. Autem atque illo earum nihil et doloribus. Quia cupiditate esse tempora eius non qui voluptate. </p><p> Voluptates sint dolor sit repellat laudantium molestiae officiis. Quisquam dignissimos iusto asperiores quia voluptas delectus. Officia aliquam quisquam qui a deleniti culpa distinctio. Possimus est occaecati debitis ex. </p><p> Atque cumque earum nostrum sit dolorum. Esse vel ipsa fugit voluptatibus similique in est. Officia ea ratione aspernatur ab sit iure. </p><p> Debitis ut eum et. Repellat eveniet velit velit assumenda consequuntur ea. Enim sapiente quam quisquam sit vel odit temporibus. </p><p> Magni dolorem natus molestias aliquam nihil est qui. Nihil eos reprehenderit qui dicta ratione voluptas. Possimus aut occaecati non quis aut ut qui distinctio. Quia rerum recusandae accusantium. </p><p> Quia eum ut quae quas laborum et consequatur. Libero sunt natus sapiente. Repudiandae rerum est aliquam autem voluptatem quam. Maiores at cum vel aut consequuntur esse. Et a occaecati omnis officiis temporibus sit minima et. </p><p> Fugit numquam consequatur eum ullam consequatur optio inventore. Voluptatem dolorem vel voluptas architecto officia labore eos. Sit mollitia pariatur occaecati itaque architecto id voluptatem. </p><p> Reprehenderit debitis aut nulla nesciunt. Impedit fugiat dolores sed sequi impedit qui voluptates. Dicta quisquam non ipsam sit sapiente est non. </p><p> Eveniet magni aliquid dolorem qui officia id. Odio autem in ipsum et sint consequatur. Quaerat vero rerum eos molestiae. In ex sit culpa voluptas molestiae eligendi rerum. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(10, 2, 3, 'Quibusdam eum quibusdam asperiores aut quis velit.', 'et-voluptatem-fugit-est-sunt-cum-eum-velit', NULL, 'Aperiam et eius voluptatem necessitatibus. Quod voluptate ut inventore ut hic numquam. Consequatur et consectetur sunt omnis enim placeat facere aut. Illum velit et labore odio.', '<p> Sapiente quasi placeat qui aut qui ratione rerum. Dolore dignissimos et qui expedita. Nostrum eos laudantium enim culpa fugiat. Hic eaque quia harum eos qui modi. </p><p> Fugiat nulla placeat at asperiores laudantium. Voluptates hic vel saepe mollitia. Et quasi reiciendis sapiente aliquam quaerat id corrupti distinctio. </p><p> Aut et ullam molestias. Eum et voluptates velit repellendus id. Occaecati dolorem consectetur saepe voluptate atque. </p><p> Facilis adipisci consectetur aut aut quae dolor ipsum. Placeat qui eaque ut placeat incidunt. Corporis voluptas asperiores fugit voluptatem. Temporibus sed est fugiat atque officiis. Provident provident ab perferendis inventore. </p><p> Voluptas dolores hic id consequuntur. Qui dolor beatae sit amet voluptatem aut. </p><p> Mollitia asperiores est sint ut et. Dolorem sed vero sed asperiores ad porro quis. Ea quidem molestiae quibusdam aliquid. </p><p> Neque sed rem non aut dignissimos. Ea consequatur velit soluta repellat asperiores est. Aut et sit veniam iure. </p><p> Totam consequatur error neque magni dicta maxime. Quasi consequatur sed eum laborum cum magnam. Eum voluptate est in. </p><p> Quis ad voluptatem blanditiis expedita animi quae quo. Incidunt sunt soluta ducimus. Nesciunt et sit quia. Doloremque ratione necessitatibus quia sunt enim. </p><p> Ratione corporis voluptates quaerat autem quasi ad quisquam. Velit culpa provident dolorem delectus aspernatur itaque doloremque. Ullam atque unde et repellat neque neque ullam. Optio voluptas aperiam esse. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(11, 1, 2, 'Et fugit quos distinctio inventore sequi.', 'vitae-aut-delectus-recusandae-ea', NULL, 'Eos ipsam molestiae rem iusto architecto corrupti quos aut. Voluptates fugit laudantium ducimus id necessitatibus laboriosam. Aperiam est voluptatem unde aut. Non quidem reprehenderit dolores placeat reiciendis sint. Itaque et dolorum et voluptatibus.', '<p> Et officiis sapiente recusandae et. Placeat numquam quia tempore. Minima placeat non quis fuga non. Eveniet nulla reiciendis ipsa laboriosam aut. Velit nihil quo molestiae accusantium maxime. </p><p> Adipisci voluptatem iusto temporibus et dolores. Ea consequatur ullam nam incidunt ea et quia ut. Fuga debitis explicabo magni eligendi saepe minus omnis. </p><p> Consequatur quia voluptatem minus animi ullam quos repellendus. Quaerat facilis nemo dolores est. Eos fugiat vel sunt laboriosam non. </p><p> Neque enim qui consequatur deserunt dolore voluptatem velit. Veniam et quaerat eum natus fugit pariatur. Aut id omnis distinctio laboriosam consequuntur maxime minima. Molestiae blanditiis a ad quisquam quidem aut dolores. </p><p> Et sed earum ducimus vel quas praesentium. Dolores aut quod esse. Amet esse et iste ducimus esse perspiciatis enim qui. Aliquid officia mollitia aut quasi. </p><p> Sed omnis accusantium ab iste rem aut. Qui dolor sed numquam velit sunt. Eum magnam ut magnam aut sed. Aut dolor quae et quasi et perferendis mollitia consectetur. </p><p> Et nemo saepe totam impedit sequi sunt quidem. Est facilis debitis sunt atque asperiores aut mollitia minima. </p><p> Eaque quas corporis quidem. Ut quasi earum quia saepe iure. Sit iste similique qui corrupti natus sapiente iste. </p><p> Saepe voluptatem ea nihil a quod facere soluta. Est rerum porro alias laboriosam. Repellat aut ratione aspernatur unde est molestias. Eum quis aspernatur ea odit quis accusamus iusto. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(12, 1, 2, 'Illo itaque possimus aut.', 'doloremque-corrupti-est-incidunt', NULL, 'Fuga cumque voluptatem dolorem laboriosam rerum beatae fugit. Odit ea atque a consequatur consectetur consequatur suscipit odio. Magnam tempore maxime magni vel excepturi aut maiores nihil. Est quam repellat culpa sit pariatur. Natus consequatur necessitatibus et voluptatem in aut.', '<p> Ullam libero earum quis ipsam quae qui eligendi non. Quae quidem omnis hic eligendi harum iure explicabo. Quos et at consequatur nam est cupiditate quo. Ab minima et nihil ut atque voluptas. </p><p> Perspiciatis sed qui autem et. Magnam quisquam voluptatem ad ullam a assumenda praesentium consectetur. Deleniti fuga eveniet ut. </p><p> Et provident nobis architecto quos corporis doloribus. Ex quia dolorum numquam. Qui cumque accusamus doloremque. Sit veritatis voluptatem velit et quibusdam labore. </p><p> Quis necessitatibus odio sequi modi odio. Expedita itaque nisi tenetur expedita ipsa sunt. </p><p> Dicta sunt numquam ab eos est. Optio aut sit optio ut doloribus et. Quia officia numquam ratione. </p><p> Aut dignissimos dolores sit animi voluptas. Quis at iusto nobis et quisquam aperiam. Voluptas et porro debitis sed molestiae iusto. Voluptas eos laborum ratione enim. </p><p> Laboriosam repellat ut cumque reprehenderit. Qui quia quaerat occaecati voluptatum et quod atque. Possimus corporis dolor impedit libero. Vel sint ut nobis. </p><p> Et quo provident voluptatibus. Aut quidem soluta vel. Odit et tempora ea consequatur et commodi. Dolore velit voluptatem enim tempora. </p><p> Explicabo sint porro dolorem soluta fugit natus perspiciatis. Hic praesentium itaque ut dolore consectetur. Saepe quos voluptatum porro rerum quia sint. Et officiis exercitationem et numquam dolor ut blanditiis. </p><p> Dolorem ipsa qui deleniti dolor laudantium. Dicta omnis dolores cupiditate et aut quia. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(13, 2, 1, 'Quia dolorem veritatis omnis error magni blanditiis expedita quasi.', 'debitis-iure-molestias-dolorum', NULL, 'Omnis et omnis maiores. Quaerat qui libero tenetur eos est. Necessitatibus unde et quaerat in ut dicta voluptatem deserunt. Dolores possimus est sit totam aut.', '<p> Doloremque asperiores tenetur officiis molestiae et quis nam. Vitae ipsa fugit facilis adipisci praesentium molestiae. Rerum sunt hic nihil culpa in eum quisquam. </p><p> Odio omnis repellat libero dolorem in. Autem ducimus nostrum soluta repudiandae. Voluptatibus pariatur neque sequi et quos ut. Provident est aut rerum incidunt expedita. </p><p> Iste laboriosam occaecati suscipit et. Sed voluptatum dolor eum animi. Aut excepturi aut dicta et est. </p><p> Non quia qui totam accusamus vitae eligendi. Est consectetur pariatur ipsam amet fugiat corrupti consequatur. Impedit cupiditate aut reiciendis. </p><p> Corporis eos quia consequatur temporibus sint. Ut maiores repellat aliquam accusamus. Quia molestiae consequatur animi. Enim dolores excepturi dolore. Eos enim nihil dolorem nulla nemo. </p><p> Ratione aperiam qui aspernatur autem. Placeat harum quo dolores consectetur praesentium nostrum officia. Rerum impedit voluptate ea nobis ut optio. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(14, 2, 2, 'Veniam hic est incidunt.', 'architecto-perspiciatis-sed-quaerat-ex-nisi', NULL, 'Repellat sit ipsa impedit voluptates possimus. Similique sapiente nihil est aspernatur maxime. Perferendis rerum eligendi ex natus.', '<p> Doloribus labore consequuntur voluptas est. Nam ut ab cum sint. Nostrum voluptate accusamus ipsam eos rerum dolor reprehenderit. </p><p> Ipsa itaque voluptatibus ea aut corrupti. Ut veniam non blanditiis assumenda dolorem impedit est. Et quas itaque qui qui. </p><p> Voluptatem consectetur nulla quos et. Et libero consequatur voluptate et. Omnis cupiditate eaque sed sit aut suscipit. </p><p> Laudantium consequuntur eius voluptate. Et omnis quibusdam blanditiis accusantium velit ea. In minus illo sint est. </p><p> Sunt deserunt ut tempore sed. Eos ab in nam optio voluptatem hic. Quasi tenetur eum deserunt. </p><p> Voluptas itaque quos quia sit velit eos ad. Ad distinctio debitis ut architecto. Nemo assumenda quis consequatur consectetur perferendis molestiae. Qui minus nihil amet cum quo qui. </p><p> Sit ullam voluptas facilis. Expedita enim et doloribus error. Ex enim suscipit laudantium ratione ipsam enim. Laboriosam ipsum accusamus optio natus reiciendis illum placeat. </p><p> Earum beatae eveniet fuga doloremque libero consequatur. Perferendis omnis molestiae doloremque quia. Pariatur neque nobis fuga porro eius itaque. </p><p> Et veniam mollitia cum pariatur ullam facilis saepe vitae. Iusto ut porro omnis. Excepturi dolor ratione aut sit. Exercitationem rerum voluptatibus autem non nesciunt est sit. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(15, 2, 3, 'Aut culpa ut eaque qui ut distinctio eos hic maxime.', 'voluptatem-minus-cupiditate-esse-fugiat-occaecati-sint', NULL, 'Libero hic sed voluptatem vel architecto ut amet. Ut quia vitae culpa omnis autem. Quia officiis incidunt sunt voluptatum. Expedita deserunt cumque autem nam quas ut cupiditate.', '<p> Velit provident qui rerum voluptatem animi. Et cupiditate et dolorem. Rerum debitis consequatur voluptatem perspiciatis debitis occaecati et in. Sed eius hic dolorum quaerat. </p><p> Suscipit rem corrupti corporis omnis. Est aut sint doloremque incidunt autem perspiciatis sint. Quo magnam cum velit officiis saepe. </p><p> Ipsam quae doloribus dolores velit. Aperiam atque velit voluptatum quia sint velit sed. Officiis qui sunt repellendus. Earum voluptatem quo quibusdam aut iusto reiciendis eos fugiat. Distinctio id asperiores iste. </p><p> Non iste voluptatum aut et dolor itaque. Consequatur excepturi minima voluptatem ut qui nisi in rem. Repellat doloribus nemo quas alias non corporis corrupti. </p><p> Ut qui laborum velit sunt. Aperiam aut itaque qui assumenda exercitationem. Non atque molestiae consequatur asperiores qui qui voluptatem mollitia. Fugiat temporibus eum autem porro recusandae. </p><p> Nihil qui officia hic placeat quod quod quisquam sequi. Nobis impedit optio voluptatem voluptatem neque dolor. Accusamus placeat eveniet voluptatem molestias dolorem non. Provident debitis exercitationem dignissimos. </p><p> Laudantium dolores vel saepe nulla amet voluptatem. Rem consequatur dolore repellendus in quas et. Sunt praesentium rerum est. </p><p> Fuga temporibus qui temporibus magnam. Reprehenderit voluptas illum rem dolor omnis ea. Quis aut omnis cum ut. Magnam aspernatur beatae et illo nostrum ratione est et. </p><p> Rerum velit tempore voluptatem quae quasi. Expedita laudantium iure hic eaque. Doloribus doloribus assumenda id et praesentium reiciendis suscipit. </p><p> Dolorum id dicta sed non nobis exercitationem aut voluptatibus. Et rem veritatis et voluptatem voluptatum et. Laborum qui dolores accusantium doloremque dolores pariatur. Voluptatum possimus et repudiandae odio ut natus. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(16, 1, 1, 'Consectetur qui qui praesentium autem.', 'deserunt-rerum-ut-doloribus-et-veniam-consequuntur', NULL, 'Atque laboriosam eius quis deleniti similique. Ut magni eos sed nisi provident molestiae. Officiis aut omnis neque voluptatum error.', '<p> Et nulla omnis ut illum. Iste quos magnam corrupti earum. Ut delectus quidem in vel. Soluta quas dolorum dolore nostrum aliquam. </p><p> Labore eligendi iste repellat eveniet molestiae quia. Aut animi quia quo eius ut qui non. Nam quo ad modi iure deleniti et minima. </p><p> Assumenda harum ullam incidunt alias commodi ut. Veniam dicta ut sed architecto. Id architecto quas nobis doloremque accusamus quas velit. </p><p> Aut in minus blanditiis pariatur. Nemo id nihil maiores repellat. </p><p> Voluptatem molestias aliquam et amet maxime ipsam atque. Aut ipsam quaerat libero aspernatur dolor quos doloribus. Nihil nemo natus provident et nostrum. </p><p> Ab esse voluptates ducimus quam tempore debitis ad. Aliquid eum quas rem saepe autem. Hic et impedit dolorem eos omnis harum eveniet. Eligendi iste error sunt occaecati. </p><p> Magni rem quia et aut expedita incidunt error. Suscipit sed porro impedit est. Ut minus alias numquam dolore. </p><p> Quis tempore dicta voluptate odit harum aut maiores accusamus. Consequatur modi molestiae itaque itaque. Occaecati dolorem ut harum accusamus a. Est blanditiis ratione blanditiis repellendus. </p><p> Qui voluptatem tenetur qui alias debitis ut aspernatur. Iure quasi provident harum. Quas minima dignissimos repellendus sunt. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(17, 2, 1, 'Consequatur modi consequatur ut.', 'ducimus-ea-doloribus-et', NULL, 'Debitis unde dolorem non enim. Quibusdam laboriosam eligendi veritatis quas labore. Tempora et facilis qui non voluptas. Ipsum quia est accusantium facilis. Provident rerum aut et odit consequatur.', '<p> Sed sed minima est quis reiciendis officia et. Sit sint natus numquam debitis quidem neque. Est delectus vel numquam cum. </p><p> Temporibus ipsam est corrupti et. Non ratione ut quasi quis. Ut aut officiis fugit. </p><p> Et quisquam minima iste odit. Necessitatibus consectetur sunt et voluptatum maiores. Voluptatem optio perferendis corporis ut vel. Earum harum consequuntur accusantium vel eos praesentium. </p><p> Ad quia ex itaque tenetur consequatur delectus doloribus. Id at perferendis iusto minus alias. Deserunt iusto reiciendis suscipit cum non vitae adipisci. </p><p> Eaque dignissimos doloribus at et est ea. Vel alias labore ut mollitia error quia illum. Eius perferendis quasi voluptatem. </p><p> Cupiditate rerum voluptas exercitationem pariatur. Nihil nisi rerum ipsum. Maiores expedita earum itaque dolorem. </p><p> Voluptas hic cumque voluptatem id asperiores magnam at. Adipisci aut consequatur commodi dolores eius. Incidunt voluptatem voluptatibus vel cumque itaque. Dolores qui voluptates recusandae exercitationem. </p>', NULL, '2022-01-25 21:20:49', '2022-01-25 21:20:49'),
(18, 2, 1, 'Ullam qui facilis.', 'eius-suscipit-soluta-iure-quam-vel-modi-odio', NULL, 'Nobis incidunt molestias deleniti debitis consequatur culpa. Autem animi eum qui ea delectus voluptatem a. Eos delectus culpa repellat laboriosam perspiciatis.', '<p> Et molestias sunt eaque libero corrupti officia tenetur. Repellendus recusandae ut doloremque officia placeat ullam quos corrupti. Commodi recusandae qui architecto debitis. Et accusamus architecto ut tempore esse assumenda. </p><p> Repudiandae autem veritatis voluptatibus quidem. Ea nostrum magni quibusdam quam dignissimos. Porro earum qui quisquam impedit quod. </p><p> Nihil dolores tempora saepe ea magnam ab. Quae fuga fugiat sunt aut eos. Consequatur assumenda et qui quas. Et consectetur sapiente ipsam dolor similique vel enim. Rerum facilis ad placeat in veritatis molestiae. </p><p> Ipsum illo at velit quia. Veniam officiis voluptatem quis sequi doloribus doloribus. Laboriosam excepturi voluptates minima in in eum rem ut. </p><p> Nihil ut maiores sint illum. Suscipit quia aut totam et magni. </p><p> Ducimus dolores tenetur omnis in. Nulla laudantium dolor cumque sit perferendis et eveniet. Voluptatum optio blanditiis qui ut consequatur accusamus consequatur. Ad sint sed dolores. </p><p> Ipsam et commodi minima ut. Temporibus voluptatem sed deleniti ea qui adipisci saepe. Maxime exercitationem harum ducimus quia perferendis accusamus. Eos occaecati sequi unde tempore quo cupiditate debitis. </p><p> Minus temporibus ratione deserunt corporis. Animi modi sint deleniti dolorem harum dolores fugiat. Ut quo aut enim recusandae. Labore architecto quod deleniti culpa voluptas porro. </p>', NULL, '2022-01-25 21:20:50', '2022-01-25 21:20:50'),
(19, 1, 3, 'Omnis illum repellat dolore sequi.', 'ipsum-voluptas-magni-laboriosam', NULL, 'Laborum omnis ut sunt sequi. Magnam natus et incidunt ducimus est dolore eum. Voluptate pariatur sit distinctio sed nesciunt. Eligendi et et et consequatur facilis eius.', '<p> Sunt accusantium maiores quia molestias iste quo. Excepturi qui odit consequuntur et omnis dolore et. Corrupti velit in libero velit mollitia temporibus ut. </p><p> Aliquid occaecati quo est qui atque. Sapiente inventore sunt quae deleniti. Quidem fugiat commodi dolore. Nulla voluptas et et. </p><p> Pariatur ipsum modi error earum cumque. Ratione quas excepturi quo quas ex illum ut. Incidunt occaecati inventore et unde reiciendis sed qui. Ut ut reprehenderit est adipisci aut voluptatem. Debitis suscipit adipisci vero ut est veniam eos. </p><p> Possimus est saepe quae esse placeat quia est et. Ullam quidem perferendis libero et totam nostrum quod odit. Tenetur et culpa porro totam voluptatum. </p><p> Maxime et vero rerum tempora labore. Iure ipsa molestias in assumenda. Et quo iusto quas incidunt inventore nobis. </p><p> Quaerat voluptatem quidem sed. Laborum rem voluptate quae. Dolorem dolore hic minus ipsa repellat et debitis. </p><p> Aperiam aut esse qui earum qui eos quidem voluptas. Nihil similique nesciunt autem ad omnis. Laudantium et quis autem pariatur ut amet dolor. Et vel sint omnis et et. </p><p> Quod odit rerum dolores provident repellendus facere autem. Illo cumque quasi qui consectetur praesentium illo quasi. Reprehenderit deleniti omnis deleniti nostrum corporis est. </p>', NULL, '2022-01-25 21:20:50', '2022-01-25 21:20:50');

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Zakkan Ativana', 'zakkanativana', 'zakkan@gmail.com', NULL, '$2y$10$WuxbZ99MlI.1uV5LRLhYh.Qa04FtP0Yx51VtgFBmgl8EHI68Q/vWu', NULL, '2022-01-25 21:20:46', '2022-01-25 21:20:46', 1),
(2, 'Betania Amelia Lailasari', 'abyasa.maheswara', 'namaga.rusman@example.org', '2022-01-25 21:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'szEY77KQfD', '2022-01-25 21:20:48', '2022-01-25 21:20:48', 0),
(3, 'Darsirah Megantara', 'narpati.reza', 'usada.nyana@example.net', '2022-01-25 21:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FzQWUIGDeJ', '2022-01-25 21:20:48', '2022-01-25 21:20:48', 0),
(4, 'Jasmani Gatot Rajasa S.H.', 'hardiansyah.luwes', 'kani73@example.com', '2022-01-25 21:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '33PkoU3MTj', '2022-01-25 21:20:48', '2022-01-25 21:20:48', 0),
(5, 'nafila', 'nafila', 'nafila@gmail.com', NULL, '$2y$10$gRNm6djSu7f/IhCmW4kV4OVMRCgKrenqe150m3gj7l5g0UL99Cw2S', NULL, '2022-02-10 02:05:17', '2022-02-10 02:05:17', 1);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
