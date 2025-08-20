-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2025 at 12:12 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egateway_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google2fa_secret` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `name`, `email`, `email_verified_at`, `google2fa_secret`, `two_factor_enabled`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', 'admin@example.com', NULL, 'NETRECB3H62WWJ4D', 0, '$2y$12$.nHLjRMK7pkbXN0coTm9bOGRiQN/6luk8HBETbVYk4OWHIgz66.2y', 1, NULL, '2024-12-27 22:30:20', '2025-08-05 17:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `category_id`, `excerpt`, `content`, `meta_title`, `meta_description`, `meta_keywords`, `thumbnail`, `admin_id`, `status`, `created_at`, `updated_at`) VALUES
(6, '{\"en\": \"10 Essential DigiKash Wallet Strategies for Smarter Money Management\", \"es\": \"Domina tus Finanzas: 10 Estrategias Esenciales de Billetera DigiKash para una Gestión Financiera más Inteligente\"}', 'master-your-finances-10-essential-digikash-wallet-strategies-for-smarter-money-management', 3, '{\"en\": \"Master your finances with these simple and powerful DigiKash wallet tricks.\", \"es\": \"Domina tus finanzas con estos simples y poderosos trucos de billetera DigiKash.\"}', '{\"en\":\"<p>Managing your money effectively has never been more important. With <strong>DigiKash Wallet<\\/strong>, you have the tools to take control of your financial future. Below are ten proven strategies to maximize your savings, enhance your spending habits, and streamline your financial management journey.<\\/p><p><br><\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">1. Set Clear Financial Goals<\\/p><p style=\\\"margin-bottom:20px;\\\">Identify your short-term and long-term goals. Whether it\\u2019s building an emergency fund, saving for a dream vacation, or investing in your future, clear goals will keep you motivated and disciplined.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">2. Track Your Spending Daily<\\/p><p style=\\\"margin-bottom:20px;\\\">Use DigiKash Wallet\'s real-time transaction tracking feature to monitor where your money goes each day. Small daily habits lead to significant long-term improvements.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">3. Categorize Your Expenses<\\/p><p style=\\\"margin-bottom:20px;\\\">Organize your expenses by category \\u2014 groceries, entertainment, utilities, etc. This will help you visualize your spending patterns and easily spot areas where you can cut back.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">4. Automate Your Savings<\\/p><p style=\\\"margin-bottom:20px;\\\">Set up automatic transfers from your main wallet to your savings wallet. Paying yourself first ensures you consistently build your reserves without overthinking it.<\\/p><p><br><\\/p><p>Saving is a habit, not a luxury. Start small, think big, and grow consistently over time.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">5. Set Monthly Spending Limits<\\/p><p style=\\\"margin-bottom:20px;\\\">Utilize DigiKash\'s budgeting tools to establish spending limits for each category. It helps in building conscious spending habits and prevents overspending.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">6. Analyze Your Monthly Reports<\\/p><p style=\\\"margin-bottom:20px;\\\">Review your monthly summary reports. Identify trends, areas of improvement, and celebrate milestones where you successfully met or stayed below your budget.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">7. Leverage Rewards and Cashback Offers<\\/p><p style=\\\"margin-bottom:20px;\\\">Make full use of DigiKash Wallet\\u2019s partner offers. Cashback and rewards add up over time, helping you save even while you spend smartly.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">8. Secure Your Wallet<\\/p><p style=\\\"margin-bottom:20px;\\\">Enable two-factor authentication (2FA) and ensure your wallet access is protected with a strong password and biometric verification for additional security.<\\/p><p><br><\\/p><div><p>\\u00a0 \\u00a0\\u00a0 \\u00a0<img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_100206_image_YUUq.png\\\" style=\\\"width: 25%;\\\" alt=\\\"20250413_100206_image_YUUq.png\\\">\\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0 \\u00a0<img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_100242_image_I3tJ.png\\\" style=\\\"width: 25%; float: right;\\\" alt=\\\"20250413_100242_image_I3tJ.png\\\"><\\/p><\\/div><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">9. Build an Emergency Fund<\\/p><p style=\\\"margin-bottom:20px;\\\">Ensure you maintain a separate savings wallet dedicated to emergencies. Experts recommend having 3\\u20136 months\' worth of living expenses saved up.<\\/p><p><br><\\/p><p style=\\\"font-weight:600;font-size:20px;margin-bottom:8px;\\\">10. Educate Yourself Constantly<\\/p><p style=\\\"margin-bottom:20px;\\\">Financial literacy is a lifelong journey. Stay updated with DigiKash Wallet\\u2019s learning resources and keep sharpening your money management skills.<\\/p><p><br><\\/p><p><br><\\/p><p>By implementing these strategies, you\\u2019ll not only take charge of your current finances but also pave the way for a more secure and prosperous future. Start your smarter money management journey today with <strong>DigiKash Wallet<\\/strong>!<\\/p><div><br><\\/div>\",\"es\":\"<p>Gestionar tu dinero de manera efectiva nunca ha sido m\\u00e1s importante. Con DigiKash Wallet, tienes las herramientas para tomar el control de tu futuro financiero. A continuaci\\u00f3n, te presentamos diez estrategias comprobadas para maximizar tus ahorros, mejorar tus h\\u00e1bitos de gasto y optimizar tu gesti\\u00f3n financiera.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>1. Establece Objetivos Financieros Claros<\\/strong><\\/p><p>Identifica tus metas a corto y largo plazo. Ya sea construir un fondo de emergencia, ahorrar para unas vacaciones so\\u00f1adas o invertir en tu futuro, tener objetivos claros te mantendr\\u00e1 motivado y disciplinado.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>2. Registra Tus Gastos Diariamente<\\/strong><\\/p><p>Usa la funci\\u00f3n de seguimiento de transacciones en tiempo real de DigiKash Wallet para monitorear a d\\u00f3nde va tu dinero cada d\\u00eda. Los peque\\u00f1os h\\u00e1bitos diarios conducen a grandes mejoras a largo plazo.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>3. Categoriza Tus Gastos<\\/strong><\\/p><p>Organiza tus gastos por categor\\u00edas, como alimentos, entretenimiento, servicios p\\u00fablicos, etc. Esto te ayudar\\u00e1 a visualizar tus patrones de gasto y detectar f\\u00e1cilmente d\\u00f3nde puedes ahorrar.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>4. Automatiza Tus Ahorros<\\/strong><\\/p><p>Configura transferencias autom\\u00e1ticas de tu billetera principal a tu billetera de ahorros. Pagarte primero asegura que construyas tu fondo de reserva de manera constante.<\\/p><p><br><\\/p><p><em>Ahorrar es un h\\u00e1bito, no un lujo. Comienza peque\\u00f1o, piensa en grande y crece de forma constante.<\\/em><\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>5. Establece L\\u00edmites de Gasto Mensuales<\\/strong><\\/p><p>Utiliza las herramientas de presupuesto de DigiKash para establecer l\\u00edmites de gasto por categor\\u00eda. Esto fomenta h\\u00e1bitos de gasto conscientes y previene los excesos.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>6. Analiza Tus Informes Mensuales<\\/strong><\\/p><p>Revisa tus informes mensuales resumidos. Identifica tendencias, \\u00e1reas de mejora y celebra los logros cuando cumples tus presupuestos.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>7. Aprovecha las Recompensas y Ofertas de Reembolso<\\/strong><\\/p><p>Aprovecha las ofertas de socios de DigiKash Wallet. Las recompensas y reembolsos se acumulan con el tiempo, ayud\\u00e1ndote a ahorrar mientras gastas de forma inteligente.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>8. Protege Tu Billetera<\\/strong><\\/p><p>Habilita la autenticaci\\u00f3n de dos factores (2FA) y protege tu acceso a la billetera con una contrase\\u00f1a segura y verificaci\\u00f3n biom\\u00e9trica para mayor seguridad.<\\/p><p><br><\\/p><p>\\u00a0 \\u00a0<img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_102835_image_OVwu.png\\\" style=\\\"width: 25%;\\\" alt=\\\"20250413_102835_image_OVwu.png\\\"><img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_102846_image_tu1g.png\\\" style=\\\"width: 25%; float: right;\\\" alt=\\\"20250413_102846_image_tu1g.png\\\"> <\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>9. Construye un Fondo de Emergencia<\\/strong><\\/p><p>Aseg\\u00farate de mantener una billetera de ahorros separada dedicada a emergencias. Los expertos recomiendan tener de 3 a 6 meses de gastos b\\u00e1sicos guardados.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p><strong>10. Ed\\u00facate Constantemente<\\/strong><\\/p><p>La educaci\\u00f3n financiera es un viaje de toda la vida. Mantente actualizado con los recursos de aprendizaje de DigiKash Wallet y sigue perfeccionando tus habilidades de gesti\\u00f3n financiera.<\\/p><p><br><\\/p><p><br><\\/p><p><br><\\/p><p>Implementando estas estrategias, no solo tomar\\u00e1s control de tus finanzas actuales, sino que tambi\\u00e9n allanar\\u00e1s el camino hacia un futuro m\\u00e1s seguro y pr\\u00f3spero. \\u00a1Comienza hoy tu camino hacia una mejor gesti\\u00f3n del dinero con DigiKash Wallet!<\\/p><div><br><\\/div>\"}', '{\"en\": \"DigiKash Wallet Tips for Smart Saving\", \"es\": \"Consejos de Billetera DigiKash para Ahorros Inteligentes\"}', '{\"en\": \"Explore smart strategies for managing and growing your DigiKash wallet.\", \"es\": \"Explora estrategias inteligentes para administrar y hacer crecer tu billetera DigiKash.\"}', 'digital wallet,send money,receive money,online payment,fast transfer,secure wallet', 'images/2025/04/13/20250413_081214_3d_cryptocurrency_rendering_design_23_2149074564_c4bb.jpg', NULL, 1, '2025-04-11 15:20:04', '2025-04-13 04:29:15'),
(7, '{\"en\": \"Managing Multi-Currency Wallets Made Easy with DigiKash\", \"es\": \"Gestión de Billeteras Multimoneda Fácil con DigiKash\"}', 'managing-multi-currency-wallets-made-easy-with-digikash', 4, '{\"en\": \"Handle multiple currencies effortlessly with DigiKash\'s smart wallet system.\", \"es\": \"Maneja múltiples monedas sin esfuerzo con el sistema inteligente de billetera de DigiKash.\"}', '{\"en\":\"<p>Managing multiple currencies has never been easier with <strong>DigiKash Wallet<\\/strong>. Whether you\\u2019re a global traveler, an online shopper, or a business owner dealing with different currencies, DigiKash provides you with a seamless, smart solution to keep your finances organized.<\\/p><p><br><\\/p><p>Here\\u2019s how DigiKash simplifies your multi-currency experience:<\\/p><p><br><\\/p><strong>Create Wallets Instantly:<\\/strong> Open wallets for USD, EUR, GBP, and more within seconds, without any hidden charges.<strong>Live Exchange Rates:<\\/strong> Get access to real-time conversion rates and make smart financial decisions without leaving the app.<strong>One-Tap Transfers:<\\/strong> Move funds between different wallets effortlessly with minimal transaction fees.<strong>Secure Transactions:<\\/strong> Advanced encryption and biometric security features keep your money safe across currencies.<strong>Multi-Currency Payment:<\\/strong> Send and receive payments globally, directly from your DigiKash wallets.<p><br><\\/p><p>Experience true financial freedom and take full control over your multi-currency needs \\u2014 all in one powerful app. Make global money management easy, fast, and secure with DigiKash Wallet.<\\/p><p><br><\\/p><div><p>\\u00a0 \\u00a0<img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_101704_flat_man_with_golden_coins_receive_cashback_e_wallet_88138_835_Sn9e.jpg\\\" style=\\\"width: 100%;\\\" alt=\\\"20250413_101704_flat_man_with_golden_coins_receive_cashback_e_wallet_88138_835_Sn9e.jpg\\\"> <\\/p><\\/div><div><br><\\/div>\",\"es\":\"<p>Gestionar m\\u00faltiples monedas nunca ha sido tan f\\u00e1cil con <strong>DigiKash Wallet<\\/strong>. Ya seas un viajero internacional, un comprador en l\\u00ednea o un empresario que maneja distintas divisas, DigiKash te ofrece una soluci\\u00f3n inteligente y fluida para organizar tus finanzas.<\\/p><p><br><\\/p><p>As\\u00ed es como DigiKash simplifica tu experiencia multimoneda:<\\/p><p><br><\\/p><strong>Crea billeteras al instante:<\\/strong> Abre billeteras en USD, EUR, GBP y m\\u00e1s en segundos, sin cargos ocultos.<strong>Tipos de cambio en tiempo real:<\\/strong> Accede a conversiones actualizadas y toma decisiones financieras inteligentes sin salir de la aplicaci\\u00f3n.<strong>Transferencias con un solo toque:<\\/strong> Mueve fondos entre diferentes billeteras f\\u00e1cilmente con tarifas m\\u00ednimas.<strong>Transacciones seguras:<\\/strong> La avanzada encriptaci\\u00f3n y las funciones de seguridad biom\\u00e9trica protegen tu dinero en todas las monedas.<strong>Pagos multimoneda:<\\/strong> Env\\u00eda y recibe pagos a nivel mundial directamente desde tus billeteras DigiKash.<p><br><\\/p><p>Experimenta la verdadera libertad financiera y toma el control total de tus necesidades multimoneda \\u2014 todo en una sola y poderosa aplicaci\\u00f3n. Gestiona tu dinero global de forma f\\u00e1cil, r\\u00e1pida y segura con DigiKash Wallet.<\\/p><p><br><\\/p><div><p>\\u00a0 \\u00a0<img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_102054_flat_man_with_golden_coins_receive_cashback_e_wallet_88138_835_uPh7.jpg\\\" style=\\\"width: 100%;\\\" alt=\\\"20250413_102054_flat_man_with_golden_coins_receive_cashback_e_wallet_88138_835_uPh7.jpg\\\"> <\\/p><\\/div><div><br><\\/div>\"}', '{\"en\": \"Best Multi-Currency Wallet for Travelers\", \"es\": \"La Mejor Billetera Multimoneda para Viajeros\"}', '{\"en\": \"Find out how DigiKash makes global money management simple and affordable.\", \"es\": \"Descubre cómo DigiKash hace que la gestión del dinero global sea simple y asequible.\"}', 'Digital Wallet,Currency Exchange,Global Payments,DigiKash Wallet,Wallet App,Secure Wallet,Mobile Wallet', 'images/2025/04/13/20250413_101320_gradient_staking_illustration_23_2149412093_YZHl.jpg', NULL, 1, '2025-04-11 15:20:04', '2025-04-13 04:23:56'),
(8, '{\"en\": \"Top Security Features to Protect Your DigiKash Wallet\", \"es\": \"Principales Funciones de Seguridad para Proteger tu Billetera DigiKash\"}', 'top-security-features-to-protect-your-digikash-wallet', 5, '{\"en\": \"Your DigiKash wallet uses cutting-edge encryption to keep your funds safe.\", \"es\": \"Tu billetera DigiKash utiliza cifrado de última generación para mantener seguros tus fondos.\"}', '{\"en\":\"<p>Protecting your DigiKash Wallet is easier than ever with our advanced security measures. Here\'s a fresh look at the top features designed to keep your money safe:<\\/p><p><br><\\/p><strong>\\ud83d\\udd10 Two-Factor Authentication (2FA):<\\/strong> Secure your login by requiring a one-time code along with your password for added protection.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd11 Strong Password Policy:<\\/strong> Always use complex passwords with a mix of characters, numbers, and symbols to defend against breaches.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83e\\uddec Biometric Access:<\\/strong> Authenticate with fingerprint or face recognition for maximum wallet security.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udce9 Instant Login Alerts:<\\/strong> Get notified immediately of any login attempts or sensitive actions performed on your account.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\u23f3 Auto-Logout for Inactivity:<\\/strong> Stay secure with automatic session timeout when inactive for a certain period.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd12 Data Encryption:<\\/strong> All transactions and personal information are encrypted to prevent unauthorized access.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udcf1 Trusted Device Management:<\\/strong> Control and approve devices that can access your DigiKash Wallet.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83c\\udf10 IP Whitelisting (for Business):<\\/strong> Allow access only from your specified trusted networks.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udee1\\ufe0f Secure Recovery Options:<\\/strong> Ensure safe recovery of your account with backup security questions and verified recovery emails.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd01 Regular Security Updates:<\\/strong> DigiKash continually upgrades its platform with the latest security protocols to keep you protected.<p><br><\\/p><p><br><\\/p><p><br><\\/p><p>Stay one step ahead of cyber threats. Activate these security features today and enjoy complete peace of mind with DigiKash Wallet!<\\/p><div><br><\\/div>\",\"es\":\"<p>Proteger tu Billetera DigiKash es m\\u00e1s f\\u00e1cil que nunca con nuestras avanzadas medidas de seguridad. Aqu\\u00ed tienes un vistazo renovado a las mejores funciones dise\\u00f1adas para mantener tu dinero seguro:<\\/p><p><br><\\/p><strong>\\ud83d\\udd10 Autenticaci\\u00f3n de Dos Factores (2FA):<\\/strong> Protege tu inicio de sesi\\u00f3n requiriendo un c\\u00f3digo \\u00fanico junto con tu contrase\\u00f1a.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd11 Pol\\u00edtica de Contrase\\u00f1as Seguras:<\\/strong> Utiliza contrase\\u00f1as complejas con combinaci\\u00f3n de caracteres, n\\u00fameros y s\\u00edmbolos para evitar vulneraciones.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83e\\uddec Acceso Biom\\u00e9trico:<\\/strong> Autent\\u00edcate usando huella dactilar o reconocimiento facial para mayor seguridad.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udce9 Alertas de Inicio de Sesi\\u00f3n:<\\/strong> Recibe notificaciones inmediatas de cualquier intento de acceso o actividad sensible en tu cuenta.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\u23f3 Cierre de Sesi\\u00f3n Autom\\u00e1tico:<\\/strong> Protege tu cuenta cerrando sesi\\u00f3n autom\\u00e1ticamente despu\\u00e9s de un tiempo de inactividad.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd12 Cifrado de Datos:<\\/strong> Todas las transacciones e informaci\\u00f3n personal est\\u00e1n protegidas mediante cifrado avanzado.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udcf1 Gesti\\u00f3n de Dispositivos Confiables:<\\/strong> Controla y aprueba los dispositivos que pueden acceder a tu billetera DigiKash.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83c\\udf10 Lista Blanca de IP (para Empresas):<\\/strong> Permite el acceso solo desde redes autorizadas por ti.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udee1\\ufe0f Opciones Seguras de Recuperaci\\u00f3n:<\\/strong> Recupera tu cuenta de manera segura mediante preguntas de seguridad y correos electr\\u00f3nicos verificados.<p>\\u00a0 \\u00a0 <br><\\/p><strong>\\ud83d\\udd01 Actualizaciones de Seguridad Constantes:<\\/strong> DigiKash actualiza regularmente su plataforma con los \\u00faltimos protocolos de seguridad para protegerte siempre.<p><br><\\/p><p><br><\\/p><p><br><\\/p><p>Mantente un paso adelante de las amenazas digitales. \\u00a1Activa estas funciones de seguridad hoy mismo y disfruta de la tranquilidad total con DigiKash Wallet!<\\/p><div><br><\\/div>\"}', '{\"en\": \"Secure Your DigiKash Wallet Effectively\", \"es\": \"Protege tu Billetera DigiKash Efectivamente\"}', '{\"en\": \"Discover the latest security features keeping your digital money safe with DigiKash.\", \"es\": \"Descubre las últimas funciones de seguridad que mantienen tu dinero digital seguro con DigiKash.\"}', 'seguridad,protección,billetera,cuenta segura,2FA,alertas,autenticación,biometría,cifrado,actualización,protección de datos,verificación', 'images/2025/04/13/20250413_103046_flat_background_safer_internet_day_23_2151121208_SyHx.jpg', NULL, 1, '2025-04-11 15:20:04', '2025-04-13 04:35:42'),
(9, '{\"en\": \"How to Improve Your Financial Health with DigiKash\", \"es\": \"Cómo Mejorar tu Salud Financiera con DigiKash\"}', 'how-to-improve-your-financial-health-with-digikash', 6, '{\"en\": \"Plan budgets, track spending, and set savings goals easily inside DigiKash.\", \"es\": \"Planifica presupuestos, rastrea gastos y establece objetivos de ahorro fácilmente dentro de DigiKash.\"}', '{\"en\":\"<p>Managing your financial health is the key to building a secure future. With <strong>DigiKash Wallet<\\/strong>, it\'s easier than ever to gain full control over your finances. Here\'s how you can transform your money management:<\\/p><p><br><\\/p><strong>1. Create a Monthly Budget:<\\/strong> Set realistic spending limits and stick to them. Track every penny easily with DigiKash\\u2019s intuitive dashboard.<strong>2. Build Emergency Savings:<\\/strong> Allocate a portion of your income into a separate wallet for unexpected expenses. A little today ensures security tomorrow.<strong>3. Automate Payments:<\\/strong> Avoid late fees by scheduling your bills and savings transfers automatically through DigiKash.<strong>4. Monitor Spending Habits:<\\/strong> Analyze your spending patterns with smart analytics and adjust where necessary to avoid wastage.<strong>5. Prioritize Debt Repayment:<\\/strong> Use DigiKash to organize and prioritize debts, starting from the highest interest ones to minimize your total payout.<p><br><\\/p><div><p style=\\\"margin:0;\\\"><em>\\\"Financial freedom is not a dream; it\'s a series of small smart choices made every day.\\\"<\\/em><\\/p><\\/div><p><br><\\/p><p style=\\\"margin-top:20px;\\\">With DigiKash Wallet\\u2019s powerful features, improving your financial health becomes a simple and rewarding journey. Start today, and secure a better tomorrow!<\\/p><p><img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_104156_image_H50G.png\\\" style=\\\"width: 100%;\\\" alt=\\\"20250413_104156_image_H50G.png\\\"><br><\\/p><div><br><\\/div>\",\"es\":\"<p>Gestionar tu salud financiera es clave para construir un futuro seguro. Con <strong>DigiKash Wallet<\\/strong>, ahora es m\\u00e1s f\\u00e1cil que nunca tener el control total de tus finanzas. Aqu\\u00ed te mostramos c\\u00f3mo transformar tu gesti\\u00f3n financiera:<\\/p><p><br><\\/p><strong>1. Crea un presupuesto mensual:<\\/strong> Establece l\\u00edmites de gasto realistas y s\\u00edguelos. Supervisa cada gasto f\\u00e1cilmente con el panel intuitivo de DigiKash.<strong>2. Construye un fondo de emergencia:<\\/strong> Destina una parte de tus ingresos a un monedero separado para imprevistos. Ahorra hoy para vivir tranquilo ma\\u00f1ana.<strong>3. Automatiza tus pagos:<\\/strong> Programa pagos y transferencias de ahorro autom\\u00e1ticas a trav\\u00e9s de DigiKash para evitar retrasos.<strong>4. Monitorea tus h\\u00e1bitos de gasto:<\\/strong> Analiza tus patrones de consumo con informes inteligentes y ajusta tu comportamiento cuando sea necesario.<strong>5. Prioriza el pago de deudas:<\\/strong> Organiza tus deudas en DigiKash, empezando por las de mayor inter\\u00e9s para reducir tu carga financiera.<p><br><\\/p><div><p style=\\\"margin:0;\\\"><em>\\\"La libertad financiera no es un sue\\u00f1o, es el resultado de decisiones inteligentes tomadas cada d\\u00eda.\\\"<\\/em><\\/p><\\/div><p><br><\\/p><p style=\\\"margin-top:20px;\\\">Con las funciones avanzadas de DigiKash Wallet, mejorar tu salud financiera ser\\u00e1 una experiencia sencilla y gratificante. \\u00a1Empieza hoy y asegura un ma\\u00f1ana m\\u00e1s pr\\u00f3spero!<\\/p><p><br><\\/p><div><img src=\\\"http:\\/\\/digikash.test\\/storage\\/images\\/blogs\\/2025\\/04\\/13\\/20250413_104207_image_LUuA.png\\\" style=\\\"width: 100%;\\\" alt=\\\"20250413_104207_image_LUuA.png\\\"><br><\\/div>\"}', '{\"en\": \"Achieve Financial Freedom with DigiKash\", \"es\": \"Logra la Libertad Financiera con DigiKash\"}', '{\"en\": \"Master your finances and savings using DigiKash smart tools.\", \"es\": \"Domina tus finanzas y ahorros utilizando las herramientas inteligentes de DigiKash.\"}', 'finanzas,ahorro,gastos,billetera,DigiKash,metas,seguridad', 'images/2025/04/13/20250413_103926_financial_instability_flat_icons_composition_blank_background_with_doodle_people_falling_from_stack_coins_vector_illustration_98292_9330_wzMv.jpg', NULL, 1, '2025-04-11 15:20:04', '2025-04-13 04:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3, '{\"en\": \"Security & Safety\", \"es\": \"Seguridad y Protección\"}', 'security-safety', 1, '2025-04-05 09:25:05', '2025-04-11 09:09:52'),
(4, '{\"en\": \"Multi Currency\", \"es\": \"Multimoneda\"}', 'multi-currency', 1, '2025-04-05 09:25:29', '2025-04-11 09:09:23'),
(5, '{\"en\": \"Wallet Tips\", \"es\": \"Consejos de Billetera\"}', 'wallet-tips', 1, '2025-04-05 09:25:45', '2025-04-11 09:08:33'),
(6, '{\"en\": \"Finance Management\", \"es\": \"Gestión Financiera\"}', 'finance-management', 1, '2025-04-11 09:10:12', '2025-04-11 09:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `kyc_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('coinmarketcap', 'a:3:{s:7:\"api_key\";s:36:\"8cea3244-8c3a-45d8-8061-63957aa6087b\";s:6:\"fields\";a:3:{s:16:\"auto_update_time\";s:1:\"1\";s:21:\"auto_update_time_unit\";s:1:\"1\";s:18:\"auto_update_status\";s:1:\"1\";}s:6:\"status\";i:1;}', 2046874992),
('crypto_conversion_1_USD_BUSD', 'd:0.9974296701816528;', 1731515051),
('currencylayer', 'a:3:{s:7:\"api_key\";s:32:\"0778ef789e953fcde0be156459277bc5\";s:6:\"fields\";a:3:{s:16:\"auto_update_time\";s:1:\"2\";s:21:\"auto_update_time_unit\";s:1:\"1\";s:18:\"auto_update_status\";s:1:\"1\";}s:6:\"status\";i:1;}', 2046874992),
('default_currency', 'a:2:{s:4:\"code\";s:3:\"USD\";s:6:\"symbol\";s:1:\"$\";}', 1731601391),
('default_language', 'O:19:\"App\\Models\\Language\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"languages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:4:\"code\";s:2:\"en\";s:6:\"is_rtl\";i:0;}s:11:\"\0*\0original\";a:2:{s:4:\"code\";s:2:\"en\";s:6:\"is_rtl\";i:0;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"flag\";i:1;s:4:\"name\";i:2;s:4:\"code\";i:3;s:10:\"is_default\";i:4;s:6:\"is_rtl\";i:5;s:6:\"status\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 2046874991);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('gratech_cache_settings.all', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:89:{i:0;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"mail_host\";s:3:\"val\";s:14:\"smtp.gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-03-02 16:05:14\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:1;s:3:\"key\";s:9:\"mail_host\";s:3:\"val\";s:14:\"smtp.gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-03-02 16:05:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:1;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:2;s:3:\"key\";s:9:\"mail_port\";s:3:\"val\";s:3:\"465\";s:4:\"type\";s:7:\"integer\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:33\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:2;s:3:\"key\";s:9:\"mail_port\";s:3:\"val\";s:3:\"465\";s:4:\"type\";s:7:\"integer\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:33\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:2;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:3:\"key\";s:11:\"mail_secure\";s:3:\"val\";s:3:\"ssl\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-04-06 07:26:25\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:3;s:3:\"key\";s:11:\"mail_secure\";s:3:\"val\";s:3:\"ssl\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:33\";s:10:\"updated_at\";s:19:\"2024-04-06 07:26:25\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:3;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:4;s:3:\"key\";s:15:\"email_from_name\";s:3:\"val\";s:5:\"Coevs\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-04-06 06:55:35\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:4;s:3:\"key\";s:15:\"email_from_name\";s:3:\"val\";s:5:\"Coevs\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-04-06 06:55:35\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:4;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:5;s:3:\"key\";s:18:\"email_from_address\";s:3:\"val\";s:20:\"coevs.info@gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:59\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:5;s:3:\"key\";s:18:\"email_from_address\";s:3:\"val\";s:20:\"coevs.info@gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:59\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:5;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:6;s:3:\"key\";s:13:\"mail_username\";s:3:\"val\";s:20:\"coevs.info@gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-04 08:00:10\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:6;s:3:\"key\";s:13:\"mail_username\";s:3:\"val\";s:20:\"coevs.info@gmail.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-04 08:00:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:6;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:7;s:3:\"key\";s:13:\"mail_password\";s:3:\"val\";s:19:\"wasm tpdz uwqw uwhf\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:38\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:7;s:3:\"key\";s:13:\"mail_password\";s:3:\"val\";s:19:\"wasm tpdz uwqw uwhf\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 16:04:38\";s:10:\"updated_at\";s:19:\"2024-03-02 16:04:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:7;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:8;s:3:\"key\";s:9:\"site_logo\";s:3:\"val\";s:39:\"general/images/wvufGLnYBwrryFIbVYEX.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-05 03:38:42\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:8;s:3:\"key\";s:9:\"site_logo\";s:3:\"val\";s:39:\"general/images/wvufGLnYBwrryFIbVYEX.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-05 03:38:42\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:8;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:9;s:3:\"key\";s:12:\"site_favicon\";s:3:\"val\";s:39:\"general/images/8JG4xYcXxW3j8ptNE1xD.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-25 09:44:05\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:9;s:3:\"key\";s:12:\"site_favicon\";s:3:\"val\";s:39:\"general/images/8JG4xYcXxW3j8ptNE1xD.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-25 09:44:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:9;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:10;s:3:\"key\";s:8:\"login_bg\";s:3:\"val\";s:39:\"general/images/mRWV4LD7yOoj1Uh9srTM.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-05 16:38:29\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:10;s:3:\"key\";s:8:\"login_bg\";s:3:\"val\";s:39:\"general/images/mRWV4LD7yOoj1Uh9srTM.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-05 16:38:29\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:10;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:11;s:3:\"key\";s:10:\"site_title\";s:3:\"val\";s:7:\"gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-20 07:07:17\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:11;s:3:\"key\";s:10:\"site_title\";s:3:\"val\";s:7:\"gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-20 07:07:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:11;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:12;s:3:\"key\";s:13:\"support_email\";s:3:\"val\";s:19:\"support@gratech.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-25 13:41:55\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:12;s:3:\"key\";s:13:\"support_email\";s:3:\"val\";s:19:\"support@gratech.com\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-02 18:02:58\";s:10:\"updated_at\";s:19:\"2024-03-25 13:41:55\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:12;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"address\";s:3:\"val\";s:12:\"demo address\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:13;s:3:\"key\";s:7:\"address\";s:3:\"val\";s:12:\"demo address\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:13;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:14;s:3:\"key\";s:13:\"opening_hours\";s:3:\"val\";s:29:\"Mon - Sat: 10.00 AM - 4.00 PM\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:48\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:14;s:3:\"key\";s:13:\"opening_hours\";s:3:\"val\";s:29:\"Mon - Sat: 10.00 AM - 4.00 PM\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:48\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:14;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:15;s:3:\"key\";s:10:\"phone_call\";s:3:\"val\";s:28:\"208-6666-0112, 308-5555-0113\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:31\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:15;s:3:\"key\";s:10:\"phone_call\";s:3:\"val\";s:28:\"208-6666-0112, 308-5555-0113\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-03 04:11:31\";s:10:\"updated_at\";s:19:\"2024-03-03 04:11:31\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:15;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:16;s:3:\"key\";s:20:\"header_contact_title\";s:3:\"val\";s:7:\"Call Us\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:24:48\";s:10:\"updated_at\";s:19:\"2024-03-05 16:42:18\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:16;s:3:\"key\";s:20:\"header_contact_title\";s:3:\"val\";s:7:\"Call Us\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:24:48\";s:10:\"updated_at\";s:19:\"2024-03-05 16:42:18\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:16;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:17;s:3:\"key\";s:14:\"header_contact\";s:3:\"val\";s:13:\"+208-555-0112\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:24:48\";s:10:\"updated_at\";s:19:\"2024-03-05 16:27:17\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:17;s:3:\"key\";s:14:\"header_contact\";s:3:\"val\";s:13:\"+208-555-0112\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:24:48\";s:10:\"updated_at\";s:19:\"2024-03-05 16:27:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:17;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:18;s:3:\"key\";s:19:\"header_button_title\";s:3:\"val\";s:11:\"Get A Quote\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:54:17\";s:10:\"updated_at\";s:19:\"2024-03-05 16:54:51\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:18;s:3:\"key\";s:19:\"header_button_title\";s:3:\"val\";s:11:\"Get A Quote\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:54:17\";s:10:\"updated_at\";s:19:\"2024-03-05 16:54:51\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:18;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:19;s:3:\"key\";s:18:\"header_button_link\";s:3:\"val\";s:8:\"/contact\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:54:17\";s:10:\"updated_at\";s:19:\"2024-05-01 09:19:11\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:19;s:3:\"key\";s:18:\"header_button_link\";s:3:\"val\";s:8:\"/contact\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-05 16:54:17\";s:10:\"updated_at\";s:19:\"2024-05-01 09:19:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:19;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:20;s:3:\"key\";s:25:\"footer_slide_left_regular\";s:3:\"val\";s:39:\"general/images/BAQVgLnU7QvZtTJjG4Jh.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:05:38\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:20;s:3:\"key\";s:25:\"footer_slide_left_regular\";s:3:\"val\";s:39:\"general/images/BAQVgLnU7QvZtTJjG4Jh.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:05:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:20;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:21;s:3:\"key\";s:23:\"footer_slide_left_solid\";s:3:\"val\";s:39:\"general/images/x8UL5jR65pUMjCNXZayT.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:06:33\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:21;s:3:\"key\";s:23:\"footer_slide_left_solid\";s:3:\"val\";s:39:\"general/images/x8UL5jR65pUMjCNXZayT.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:06:33\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:21;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:22;s:3:\"key\";s:19:\"footer_left_regular\";s:3:\"val\";s:39:\"general/images/7M3hW5ujcUBOy7o1R82F.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 00:53:41\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:22;s:3:\"key\";s:19:\"footer_left_regular\";s:3:\"val\";s:39:\"general/images/7M3hW5ujcUBOy7o1R82F.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 00:53:41\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:22;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:23;s:3:\"key\";s:18:\"footer_right_solid\";s:3:\"val\";s:39:\"general/images/UqVx6L4239ct7n3yeXfe.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:12:54\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:23;s:3:\"key\";s:18:\"footer_right_solid\";s:3:\"val\";s:39:\"general/images/UqVx6L4239ct7n3yeXfe.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:12:54\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:23;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:24;s:3:\"key\";s:19:\"footer_shadow_shape\";s:3:\"val\";s:39:\"general/images/Il3Ju0hJ6BFqI4lRFh62.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:13:23\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:24;s:3:\"key\";s:19:\"footer_shadow_shape\";s:3:\"val\";s:39:\"general/images/Il3Ju0hJ6BFqI4lRFh62.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:13:23\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:24;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:25;s:3:\"key\";s:18:\"footer_description\";s:3:\"val\";s:98:\"Phasellus ultricies aliquam volutpat ullamcorper laoreet neque, a lacinia curabitur lacinia mollis\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-22 06:03:53\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:25;s:3:\"key\";s:18:\"footer_description\";s:3:\"val\";s:98:\"Phasellus ultricies aliquam volutpat ullamcorper laoreet neque, a lacinia curabitur lacinia mollis\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-22 06:03:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:25;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:26;s:3:\"key\";s:9:\"copyright\";s:3:\"val\";s:24:\"© All Copyright 2024 by\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-10-08 07:18:30\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:26;s:3:\"key\";s:9:\"copyright\";s:3:\"val\";s:24:\"© All Copyright 2024 by\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-10-08 07:18:30\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:26;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:27;s:3:\"key\";s:22:\"terms_condition_button\";s:3:\"val\";s:17:\"Terms & Condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:21:45\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:27;s:3:\"key\";s:22:\"terms_condition_button\";s:3:\"val\";s:17:\"Terms & Condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:21:45\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:27;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:28;s:3:\"key\";s:20:\"terms_condition_link\";s:3:\"val\";s:16:\"/terms-condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-05-01 08:16:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:28;s:3:\"key\";s:20:\"terms_condition_link\";s:3:\"val\";s:16:\"/terms-condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-05-01 08:16:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:28;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:29;s:3:\"key\";s:21:\"privacy_policy_button\";s:3:\"val\";s:14:\"Privacy Policy\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:21:45\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:29;s:3:\"key\";s:21:\"privacy_policy_button\";s:3:\"val\";s:14:\"Privacy Policy\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-03-06 01:21:45\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:29;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:30;s:3:\"key\";s:19:\"privacy_policy_link\";s:3:\"val\";s:15:\"/privacy-policy\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-04-25 04:54:00\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:30;s:3:\"key\";s:19:\"privacy_policy_link\";s:3:\"val\";s:15:\"/privacy-policy\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 00:53:41\";s:10:\"updated_at\";s:19:\"2024-04-25 04:54:00\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:30;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:31;s:3:\"key\";s:20:\"footer_right_regular\";s:3:\"val\";s:39:\"general/images/NM5dHWi3A6tYT1Qwx1wy.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 01:12:54\";s:10:\"updated_at\";s:19:\"2024-03-06 01:12:54\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:31;s:3:\"key\";s:20:\"footer_right_regular\";s:3:\"val\";s:39:\"general/images/NM5dHWi3A6tYT1Qwx1wy.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 01:12:54\";s:10:\"updated_at\";s:19:\"2024-03-06 01:12:54\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:31;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:32;s:3:\"key\";s:14:\"copyright_text\";s:3:\"val\";s:21:\"All Copyright 2024 by\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 01:18:23\";s:10:\"updated_at\";s:19:\"2024-03-06 01:19:28\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:32;s:3:\"key\";s:14:\"copyright_text\";s:3:\"val\";s:21:\"All Copyright 2024 by\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 01:18:23\";s:10:\"updated_at\";s:19:\"2024-03-06 01:19:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:32;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:33;s:3:\"key\";s:15:\"contact_address\";s:3:\"val\";s:47:\"4517 Washington Ave. Manchester, Kentucky 39495\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 04:26:15\";s:10:\"updated_at\";s:19:\"2024-03-06 04:26:38\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:33;s:3:\"key\";s:15:\"contact_address\";s:3:\"val\";s:47:\"4517 Washington Ave. Manchester, Kentucky 39495\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 04:26:15\";s:10:\"updated_at\";s:19:\"2024-03-06 04:26:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:33;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:34;s:3:\"key\";s:25:\"footer_navigation_title_1\";s:3:\"val\";s:10:\"Quick Link\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 05:48:33\";s:10:\"updated_at\";s:19:\"2024-03-06 05:49:52\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:34;s:3:\"key\";s:25:\"footer_navigation_title_1\";s:3:\"val\";s:10:\"Quick Link\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 05:48:33\";s:10:\"updated_at\";s:19:\"2024-03-06 05:49:52\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:34;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:35;s:3:\"key\";s:25:\"footer_navigation_title_2\";s:3:\"val\";s:10:\"Other Link\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 05:48:33\";s:10:\"updated_at\";s:19:\"2024-03-06 05:49:52\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:35;s:3:\"key\";s:25:\"footer_navigation_title_2\";s:3:\"val\";s:10:\"Other Link\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 05:48:33\";s:10:\"updated_at\";s:19:\"2024-03-06 05:49:52\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:35;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:36;s:3:\"key\";s:16:\"error_background\";s:3:\"val\";s:39:\"general/images/zVbWUa5RROX4VhLihmbH.jpg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:24:06\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:36;s:3:\"key\";s:16:\"error_background\";s:3:\"val\";s:39:\"general/images/zVbWUa5RROX4VhLihmbH.jpg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:24:06\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:36;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:37;s:3:\"key\";s:22:\"error_breadcrumb_title\";s:3:\"val\";s:4:\"Home\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:37;s:3:\"key\";s:22:\"error_breadcrumb_title\";s:3:\"val\";s:4:\"Home\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:37;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:38;s:3:\"key\";s:21:\"error_breadcrumb_link\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:38;s:3:\"key\";s:21:\"error_breadcrumb_link\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:38;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:39;s:3:\"key\";s:18:\"error_button_title\";s:3:\"val\";s:12:\"Go Back Home\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:27:47\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:39;s:3:\"key\";s:18:\"error_button_title\";s:3:\"val\";s:12:\"Go Back Home\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:27:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:39;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:40;s:3:\"key\";s:17:\"error_button_link\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:40;s:3:\"key\";s:17:\"error_button_link\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:22:49\";s:10:\"updated_at\";s:19:\"2024-03-06 09:22:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:40;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:41;s:3:\"key\";s:9:\"error_404\";s:3:\"val\";s:39:\"general/images/rsSzvbxSnji0KOKvexMM.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:03\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:41;s:3:\"key\";s:9:\"error_404\";s:3:\"val\";s:39:\"general/images/rsSzvbxSnji0KOKvexMM.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:03\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:41;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:42;s:3:\"key\";s:20:\"error_banner_shape_1\";s:3:\"val\";s:39:\"general/images/cSldlNHJ2tvKAO3zOW4z.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:42;s:3:\"key\";s:20:\"error_banner_shape_1\";s:3:\"val\";s:39:\"general/images/cSldlNHJ2tvKAO3zOW4z.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:42;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:43;s:3:\"key\";s:20:\"error_banner_shape_2\";s:3:\"val\";s:39:\"general/images/2td2373sJb8SHOW7zRF7.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:43;s:3:\"key\";s:20:\"error_banner_shape_2\";s:3:\"val\";s:39:\"general/images/2td2373sJb8SHOW7zRF7.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:43;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:44;s:3:\"key\";s:20:\"error_banner_shape_3\";s:3:\"val\";s:39:\"general/images/6JMhnPgb2Uj61uOE4oDv.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:44;s:3:\"key\";s:20:\"error_banner_shape_3\";s:3:\"val\";s:39:\"general/images/6JMhnPgb2Uj61uOE4oDv.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:25:39\";s:10:\"updated_at\";s:19:\"2024-03-06 09:25:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:44;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:45;s:3:\"key\";s:13:\"error_heading\";s:3:\"val\";s:97:\"Oops! Looks like you followed a bad link. If you think this is a problem with us, please tell us.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:27:31\";s:10:\"updated_at\";s:19:\"2024-03-06 09:40:30\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:45;s:3:\"key\";s:13:\"error_heading\";s:3:\"val\";s:97:\"Oops! Looks like you followed a bad link. If you think this is a problem with us, please tell us.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-06 09:27:31\";s:10:\"updated_at\";s:19:\"2024-03-06 09:40:30\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:45;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:46;s:3:\"key\";s:21:\"breadcrumb_background\";s:3:\"val\";s:39:\"general/images/QCm3zzbme5hta1zbNLJs.jpg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:26:27\";s:10:\"updated_at\";s:19:\"2024-03-12 17:26:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:46;s:3:\"key\";s:21:\"breadcrumb_background\";s:3:\"val\";s:39:\"general/images/QCm3zzbme5hta1zbNLJs.jpg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:26:27\";s:10:\"updated_at\";s:19:\"2024-03-12 17:26:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:46;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:47;s:3:\"key\";s:20:\"breadcrumb_shape_one\";s:3:\"val\";s:39:\"general/images/lvmLc2mZ9vhkwUGBVeBM.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:47;s:3:\"key\";s:20:\"breadcrumb_shape_one\";s:3:\"val\";s:39:\"general/images/lvmLc2mZ9vhkwUGBVeBM.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:47;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:48;s:3:\"key\";s:20:\"breadcrumb_shape_two\";s:3:\"val\";s:39:\"general/images/pxzAm9rA4BuWjccbttrU.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:48;s:3:\"key\";s:20:\"breadcrumb_shape_two\";s:3:\"val\";s:39:\"general/images/pxzAm9rA4BuWjccbttrU.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:48;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:49;s:3:\"key\";s:22:\"breadcrumb_shape_three\";s:3:\"val\";s:39:\"general/images/6vSu4fkkvCyLfBNRNH1T.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:49;s:3:\"key\";s:22:\"breadcrumb_shape_three\";s:3:\"val\";s:39:\"general/images/6vSu4fkkvCyLfBNRNH1T.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-12 17:27:35\";s:10:\"updated_at\";s:19:\"2024-03-12 17:27:35\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:49;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:50;s:3:\"key\";s:10:\"light_logo\";s:3:\"val\";s:39:\"general/images/wabOEMUHMOixz8ZLLGKX.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-25 09:43:08\";s:10:\"updated_at\";s:19:\"2024-03-25 09:43:08\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:50;s:3:\"key\";s:10:\"light_logo\";s:3:\"val\";s:39:\"general/images/wabOEMUHMOixz8ZLLGKX.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-25 09:43:08\";s:10:\"updated_at\";s:19:\"2024-03-25 09:43:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:50;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:51;s:3:\"key\";s:9:\"dark_logo\";s:3:\"val\";s:39:\"general/images/qmLcVPHMuiYjTp4jTelH.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-25 09:43:08\";s:10:\"updated_at\";s:19:\"2024-03-25 09:43:08\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:51;s:3:\"key\";s:9:\"dark_logo\";s:3:\"val\";s:39:\"general/images/qmLcVPHMuiYjTp4jTelH.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-03-25 09:43:08\";s:10:\"updated_at\";s:19:\"2024-03-25 09:43:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:51;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:52;s:3:\"key\";s:10:\"secret_key\";s:3:\"val\";s:6:\"secret\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-06-12 18:07:19\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:52;s:3:\"key\";s:10:\"secret_key\";s:3:\"val\";s:6:\"secret\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-06-12 18:07:19\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:52;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:53;s:3:\"key\";s:17:\"maintenance_title\";s:3:\"val\";s:42:\"This site currently undergoing maintenance\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-04-06 02:18:44\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:53;s:3:\"key\";s:17:\"maintenance_title\";s:3:\"val\";s:42:\"This site currently undergoing maintenance\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-04-06 02:18:44\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:53;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:54;s:3:\"key\";s:16:\"maintenance_text\";s:3:\"val\";s:48:\"No problem! The site will be live again shortly.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-04-06 01:02:24\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:54;s:3:\"key\";s:16:\"maintenance_text\";s:3:\"val\";s:48:\"No problem! The site will be live again shortly.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 00:29:03\";s:10:\"updated_at\";s:19:\"2024-04-06 01:02:24\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:54;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:55;s:3:\"key\";s:16:\"maintenance_mode\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-04-06 00:32:34\";s:10:\"updated_at\";s:19:\"2024-06-15 08:43:59\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:55;s:3:\"key\";s:16:\"maintenance_mode\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-04-06 00:32:34\";s:10:\"updated_at\";s:19:\"2024-06-15 08:43:59\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:55;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:56;s:3:\"key\";s:17:\"maintenance_cover\";s:3:\"val\";s:39:\"general/images/Y8rdSTUHdRK8PkCQZAus.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 02:10:39\";s:10:\"updated_at\";s:19:\"2024-04-06 02:17:38\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:56;s:3:\"key\";s:17:\"maintenance_cover\";s:3:\"val\";s:39:\"general/images/Y8rdSTUHdRK8PkCQZAus.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 02:10:39\";s:10:\"updated_at\";s:19:\"2024-04-06 02:17:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:56;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:57;s:3:\"key\";s:13:\"home_redirect\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 10:06:38\";s:10:\"updated_at\";s:19:\"2024-05-22 12:24:45\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:57;s:3:\"key\";s:13:\"home_redirect\";s:3:\"val\";s:1:\"/\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 10:06:38\";s:10:\"updated_at\";s:19:\"2024-05-22 12:24:45\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:57;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:58;s:3:\"key\";s:16:\"development_mode\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-04-06 13:42:26\";s:10:\"updated_at\";s:19:\"2024-10-19 04:34:31\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:58;s:3:\"key\";s:16:\"development_mode\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-04-06 13:42:26\";s:10:\"updated_at\";s:19:\"2024-10-19 04:34:31\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:58;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:59;s:3:\"key\";s:10:\"site_color\";s:3:\"val\";s:7:\"#3c72fc\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 17:24:45\";s:10:\"updated_at\";s:19:\"2024-04-06 18:13:24\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:59;s:3:\"key\";s:10:\"site_color\";s:3:\"val\";s:7:\"#3c72fc\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 17:24:45\";s:10:\"updated_at\";s:19:\"2024-04-06 18:13:24\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:59;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:60;s:3:\"key\";s:9:\"site_mode\";s:3:\"val\";s:10:\"production\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 18:21:26\";s:10:\"updated_at\";s:19:\"2024-04-06 18:21:26\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:60;s:3:\"key\";s:9:\"site_mode\";s:3:\"val\";s:10:\"production\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 18:21:26\";s:10:\"updated_at\";s:19:\"2024-04-06 18:21:26\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:60;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:61;s:3:\"key\";s:16:\"site_environment\";s:3:\"val\";s:5:\"local\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 18:29:27\";s:10:\"updated_at\";s:19:\"2024-10-19 04:34:31\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:61;s:3:\"key\";s:16:\"site_environment\";s:3:\"val\";s:5:\"local\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-04-06 18:29:27\";s:10:\"updated_at\";s:19:\"2024-10-19 04:34:31\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:61;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:62;s:3:\"key\";s:17:\"footer_visibility\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 10:57:57\";s:10:\"updated_at\";s:19:\"2024-05-02 10:59:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:62;s:3:\"key\";s:17:\"footer_visibility\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 10:57:57\";s:10:\"updated_at\";s:19:\"2024-05-02 10:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:62;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:63;s:3:\"key\";s:12:\"header_style\";s:3:\"val\";s:7:\"style_1\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-09-04 11:22:47\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:63;s:3:\"key\";s:12:\"header_style\";s:3:\"val\";s:7:\"style_1\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-09-04 11:22:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:63;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:64;s:3:\"key\";s:14:\"get_quote_link\";s:3:\"val\";s:1:\"#\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-02 19:49:16\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:64;s:3:\"key\";s:14:\"get_quote_link\";s:3:\"val\";s:1:\"#\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-02 19:49:16\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:64;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:65;s:3:\"key\";s:7:\"call_us\";s:3:\"val\";s:1:\"#\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-02 19:49:16\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:65;s:3:\"key\";s:7:\"call_us\";s:3:\"val\";s:1:\"#\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-02 19:49:16\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:65;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:66;s:3:\"key\";s:14:\"header_top_bar\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-03 11:31:36\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:66;s:3:\"key\";s:14:\"header_top_bar\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-03 11:31:36\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:66;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:67;s:3:\"key\";s:17:\"header_visibility\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-03 06:35:24\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:67;s:3:\"key\";s:17:\"header_visibility\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-02 19:49:16\";s:10:\"updated_at\";s:19:\"2024-05-03 06:35:24\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:67;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:68;s:3:\"key\";s:14:\"site_preloader\";s:3:\"val\";s:5:\"basic\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-03 12:35:50\";s:10:\"updated_at\";s:19:\"2024-05-08 09:32:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:68;s:3:\"key\";s:14:\"site_preloader\";s:3:\"val\";s:5:\"basic\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-03 12:35:50\";s:10:\"updated_at\";s:19:\"2024-05-08 09:32:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:68;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:69;s:3:\"key\";s:14:\"site_animation\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-04 17:21:39\";s:10:\"updated_at\";s:19:\"2024-05-04 17:34:59\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:69;s:3:\"key\";s:14:\"site_animation\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-04 17:21:39\";s:10:\"updated_at\";s:19:\"2024-05-04 17:34:59\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:69;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:70;s:3:\"key\";s:9:\"img_error\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-04 17:21:39\";s:10:\"updated_at\";s:19:\"2024-05-20 23:42:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:70;s:3:\"key\";s:9:\"img_error\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-04 17:21:39\";s:10:\"updated_at\";s:19:\"2024-05-20 23:42:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:70;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:71;s:3:\"key\";s:15:\"site_appearance\";s:3:\"val\";s:10:\"light_mode\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-06 02:06:28\";s:10:\"updated_at\";s:19:\"2024-05-21 09:55:49\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:71;s:3:\"key\";s:15:\"site_appearance\";s:3:\"val\";s:10:\"light_mode\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-06 02:06:28\";s:10:\"updated_at\";s:19:\"2024-05-21 09:55:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:71;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:72;s:3:\"key\";s:9:\"scroll_up\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-06 02:23:55\";s:10:\"updated_at\";s:19:\"2024-05-06 02:24:19\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:72;s:3:\"key\";s:9:\"scroll_up\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-06 02:23:55\";s:10:\"updated_at\";s:19:\"2024-05-06 02:24:19\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:72;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:73;s:3:\"key\";s:13:\"primary_color\";s:3:\"val\";s:7:\"#3c72fc\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-08 10:16:19\";s:10:\"updated_at\";s:19:\"2024-05-08 10:16:19\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:73;s:3:\"key\";s:13:\"primary_color\";s:3:\"val\";s:7:\"#3c72fc\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-08 10:16:19\";s:10:\"updated_at\";s:19:\"2024-05-08 10:16:19\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:73;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:74;s:3:\"key\";s:15:\"secondary_color\";s:3:\"val\";s:7:\"#0f0d1d\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-08 10:16:19\";s:10:\"updated_at\";s:19:\"2024-05-08 10:16:19\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:74;s:3:\"key\";s:15:\"secondary_color\";s:3:\"val\";s:7:\"#0f0d1d\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-08 10:16:19\";s:10:\"updated_at\";s:19:\"2024-05-08 10:16:19\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:74;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:75;s:3:\"key\";s:12:\"cookie_title\";s:3:\"val\";s:15:\"Cookies Consent\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:75;s:3:\"key\";s:12:\"cookie_title\";s:3:\"val\";s:15:\"Cookies Consent\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:75;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:76;s:3:\"key\";s:14:\"cookie_summary\";s:3:\"val\";s:106:\"This website use cookies to help you have a superior and more relevant browsing experience on the website.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:76;s:3:\"key\";s:14:\"cookie_summary\";s:3:\"val\";s:106:\"This website use cookies to help you have a superior and more relevant browsing experience on the website.\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:76;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:77;s:3:\"key\";s:11:\"cookie_page\";s:3:\"val\";s:15:\"terms-condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:77;s:3:\"key\";s:11:\"cookie_page\";s:3:\"val\";s:15:\"terms-condition\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:24:14\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:77;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:78;s:3:\"key\";s:13:\"cookie_status\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:28:39\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:78;s:3:\"key\";s:13:\"cookie_status\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-13 06:24:14\";s:10:\"updated_at\";s:19:\"2024-05-13 06:28:39\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:78;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:79;s:3:\"key\";s:12:\"admin_prefix\";s:3:\"val\";s:5:\"admin\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-05-14 08:28:05\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:79;s:3:\"key\";s:12:\"admin_prefix\";s:3:\"val\";s:5:\"admin\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-05-14 08:28:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:79;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:80;s:3:\"key\";s:5:\"color\";s:3:\"val\";s:9:\"dark_mode\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-20 16:41:18\";s:10:\"updated_at\";s:19:\"2024-05-20 16:42:02\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:80;s:3:\"key\";s:5:\"color\";s:3:\"val\";s:9:\"dark_mode\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-20 16:41:18\";s:10:\"updated_at\";s:19:\"2024-05-20 16:42:02\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:80;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:81;s:3:\"key\";s:19:\"language_visibility\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-29 09:36:52\";s:10:\"updated_at\";s:19:\"2024-10-09 08:47:32\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:81;s:3:\"key\";s:19:\"language_visibility\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-05-29 09:36:52\";s:10:\"updated_at\";s:19:\"2024-10-09 08:47:32\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:81;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:82;s:3:\"key\";s:10:\"meta_title\";s:3:\"val\";s:5:\"coevs\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:82;s:3:\"key\";s:10:\"meta_title\";s:3:\"val\";s:5:\"coevs\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:82;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:83;s:3:\"key\";s:16:\"meta_description\";s:3:\"val\";s:13:\"coevs gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:83;s:3:\"key\";s:16:\"meta_description\";s:3:\"val\";s:13:\"coevs gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:83;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:84;s:3:\"key\";s:12:\"meta_keyword\";s:3:\"val\";s:39:\"[{\"value\":\"coevs\"},{\"value\":\"gratech\"}]\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:84;s:3:\"key\";s:12:\"meta_keyword\";s:3:\"val\";s:39:\"[{\"value\":\"coevs\"},{\"value\":\"gratech\"}]\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:84;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:85;s:3:\"key\";s:12:\"meta_charset\";s:3:\"val\";s:5:\"UTF-8\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:23\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:85;s:3:\"key\";s:12:\"meta_charset\";s:3:\"val\";s:5:\"UTF-8\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:23\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:85;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:86;s:3:\"key\";s:11:\"meta_author\";s:3:\"val\";s:13:\"coevs gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:86;s:3:\"key\";s:11:\"meta_author\";s:3:\"val\";s:13:\"coevs gratech\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-06-03 16:03:23\";s:10:\"updated_at\";s:19:\"2024-06-03 16:03:53\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:86;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:87;s:3:\"key\";s:18:\"site_currency_type\";s:3:\"val\";s:4:\"fiat\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-09-10 14:57:46\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:87;s:3:\"key\";s:18:\"site_currency_type\";s:3:\"val\";s:4:\"fiat\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-09-10 14:57:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:87;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:88;s:3:\"key\";s:13:\"site_currency\";s:3:\"val\";s:3:\"USD\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-09-10 14:57:46\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:88;s:3:\"key\";s:13:\"site_currency\";s:3:\"val\";s:3:\"USD\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-05-14 08:21:37\";s:10:\"updated_at\";s:19:\"2024-09-10 14:57:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:88;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:93;s:3:\"key\";s:15:\"currency_symbol\";s:3:\"val\";s:1:\"$\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-09-02 01:20:33\";s:10:\"updated_at\";s:19:\"2024-09-02 01:20:33\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:93;s:3:\"key\";s:15:\"currency_symbol\";s:3:\"val\";s:1:\"$\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-09-02 01:20:33\";s:10:\"updated_at\";s:19:\"2024-09-02 01:20:33\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2044682133);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('settings.all', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:13:{i:0;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:1;s:3:\"key\";s:10:\"site_title\";s:3:\"val\";s:8:\"DigiKash\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-13 11:49:18\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:1;s:3:\"key\";s:10:\"site_title\";s:3:\"val\";s:8:\"DigiKash\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-13 11:49:18\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:1;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:2;s:3:\"key\";s:12:\"admin_prefix\";s:3:\"val\";s:5:\"admin\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-09 05:08:37\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:2;s:3:\"key\";s:12:\"admin_prefix\";s:3:\"val\";s:5:\"admin\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-09 05:08:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:2;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:3:\"key\";s:14:\"copyright_text\";s:3:\"val\";s:49:\"Copyright © 2024 DigiKash  | All rights reserved\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-13 13:19:08\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:3;s:3:\"key\";s:14:\"copyright_text\";s:3:\"val\";s:49:\"Copyright © 2024 DigiKash  | All rights reserved\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:08:37\";s:10:\"updated_at\";s:19:\"2024-07-13 13:19:08\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:3;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:4;s:3:\"key\";s:4:\"logo\";s:3:\"val\";s:32:\"uploads/SKqNaLEChpmlxJ661vSR.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:4;s:3:\"key\";s:4:\"logo\";s:3:\"val\";s:32:\"uploads/SKqNaLEChpmlxJ661vSR.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:4;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:5;s:3:\"key\";s:10:\"light_logo\";s:3:\"val\";s:32:\"uploads/JjXIReQ5keAHhZx7ZFDr.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:5;s:3:\"key\";s:10:\"light_logo\";s:3:\"val\";s:32:\"uploads/JjXIReQ5keAHhZx7ZFDr.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:5;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:6;s:3:\"key\";s:10:\"small_logo\";s:3:\"val\";s:32:\"uploads/J6xyAJHkjr4WDQxeY4E1.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:6;s:3:\"key\";s:10:\"small_logo\";s:3:\"val\";s:32:\"uploads/J6xyAJHkjr4WDQxeY4E1.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:6;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:7;s:3:\"key\";s:12:\"site_favicon\";s:3:\"val\";s:32:\"uploads/pTPUSgnQBPM6KyBmNtp2.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:7;s:3:\"key\";s:12:\"site_favicon\";s:3:\"val\";s:32:\"uploads/pTPUSgnQBPM6KyBmNtp2.svg\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:09:57\";s:10:\"updated_at\";s:19:\"2024-07-09 05:12:27\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:7;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:8;s:3:\"key\";s:12:\"login_banner\";s:3:\"val\";s:32:\"uploads/gJVUwubWSx8CP39KNOVF.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:10:31\";s:10:\"updated_at\";s:19:\"2024-07-25 16:26:55\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:8;s:3:\"key\";s:12:\"login_banner\";s:3:\"val\";s:32:\"uploads/gJVUwubWSx8CP39KNOVF.png\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-07-09 05:10:31\";s:10:\"updated_at\";s:19:\"2024-07-25 16:26:55\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:8;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:9;s:3:\"key\";s:11:\"screen_lock\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-07-14 10:32:48\";s:10:\"updated_at\";s:19:\"2024-07-14 10:38:19\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:9;s:3:\"key\";s:11:\"screen_lock\";s:3:\"val\";s:1:\"0\";s:4:\"type\";s:4:\"bool\";s:10:\"created_at\";s:19:\"2024-07-14 10:32:48\";s:10:\"updated_at\";s:19:\"2024-07-14 10:38:19\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:9;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:10;s:3:\"key\";s:16:\"screen_lock_time\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:7:\"integer\";s:10:\"created_at\";s:19:\"2024-07-14 10:32:48\";s:10:\"updated_at\";s:19:\"2024-07-14 10:36:44\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:10;s:3:\"key\";s:16:\"screen_lock_time\";s:3:\"val\";s:1:\"1\";s:4:\"type\";s:7:\"integer\";s:10:\"created_at\";s:19:\"2024-07-14 10:32:48\";s:10:\"updated_at\";s:19:\"2024-07-14 10:36:44\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:10;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:11;s:3:\"key\";s:18:\"site_currency_type\";s:3:\"val\";s:4:\"fiat\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:26:29\";s:10:\"updated_at\";s:19:\"2024-09-02 01:14:17\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:11;s:3:\"key\";s:18:\"site_currency_type\";s:3:\"val\";s:4:\"fiat\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:26:29\";s:10:\"updated_at\";s:19:\"2024-09-02 01:14:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:11;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:12;s:3:\"key\";s:13:\"site_currency\";s:3:\"val\";s:3:\"AED\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:27:46\";s:10:\"updated_at\";s:19:\"2024-09-02 01:14:17\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:12;s:3:\"key\";s:13:\"site_currency\";s:3:\"val\";s:3:\"AED\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:27:46\";s:10:\"updated_at\";s:19:\"2024-09-02 01:14:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}i:12;O:18:\"App\\Models\\Setting\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"settings\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:13;s:3:\"key\";s:15:\"currency_symbol\";s:3:\"val\";s:2:\"Ξ\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:27:46\";s:10:\"updated_at\";s:19:\"2024-08-22 10:20:25\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:13;s:3:\"key\";s:15:\"currency_symbol\";s:3:\"val\";s:2:\"Ξ\";s:4:\"type\";s:6:\"string\";s:10:\"created_at\";s:19:\"2024-08-13 07:27:46\";s:10:\"updated_at\";s:19:\"2024-08-22 10:20:25\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 2046874991),
('svg.add-money', 's:2710:\"<svg width=\"16\" height=\"16\" viewBox=\"0 0 16 16\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r    <path d=\"M12.935 6.955C12.8321 6.70345 12.6941 6.46777 12.525 6.255C12.9302 5.75859 13.1573 5.14067 13.17 4.5C13.17 2.257 10.385 0.5 6.83 0.5C3.28 0.5 0.5 2.257 0.5 4.5C0.509755 5.1383 0.730579 5.75542 1.128 6.255C0.731256 6.7511 0.510378 7.36485 0.5 8C0.510771 8.63745 0.733485 9.25317 1.133 9.75C0.733485 10.2468 0.510771 10.8626 0.5 11.5C0.5 13.743 3.28 15.5 6.83 15.5C7.67329 15.4964 8.51269 15.3855 9.328 15.17C10.4112 15.612 11.6242 15.6136 12.7085 15.1744C13.7928 14.7352 14.6628 13.89 15.1331 12.8188C15.6034 11.7476 15.6368 10.5351 15.2262 9.43958C14.8156 8.34409 13.9935 7.45323 12.935 6.955ZM6.83 1.5C9.724 1.5 12.17 2.874 12.17 4.5C12.1477 5.03529 11.9139 5.53985 11.52 5.903C11.2823 6.14477 11.0145 6.35484 10.723 6.528C9.87707 6.57688 9.0626 6.86583 8.375 7.361C7.86555 7.45607 7.34824 7.50261 6.83 7.5C3.94 7.5 1.5 6.126 1.5 4.5C1.5 2.874 3.94 1.5 6.83 1.5ZM6.501 10.987C4.9016 11.0071 3.34985 10.4428 2.137 9.4C1.74745 9.03624 1.51832 8.53266 1.5 8C1.50686 7.63379 1.62281 7.27796 1.833 6.978C3.28284 8.02737 5.04136 8.56299 6.83 8.5C6.983 8.5 7.125 8.487 7.274 8.48C6.77155 9.21962 6.5023 10.0929 6.501 10.987ZM6.83 14.5C3.94 14.5 1.5 13.126 1.5 11.5C1.50683 11.131 1.62423 10.7725 1.837 10.471C3.22543 11.4792 4.90224 12.0123 6.618 11.991C6.83624 12.9353 7.35485 13.7834 8.096 14.408C7.67667 14.4682 7.25363 14.4989 6.83 14.5ZM11 14.5C10.5287 14.5002 10.0622 14.4046 9.629 14.219L9.615 14.211C8.87907 13.8949 8.27404 13.3356 7.90119 12.6267C7.52834 11.9178 7.41028 11.1024 7.56677 10.3169C7.72327 9.53134 8.14482 8.82341 8.76087 8.31155C9.37693 7.79968 10.1501 7.51495 10.951 7.505L10.969 7.503C10.98 7.503 10.989 7.5 10.999 7.5C11.9273 7.5 12.8175 7.86875 13.4739 8.52513C14.1303 9.1815 14.499 10.0717 14.499 11C14.499 11.9283 14.1303 12.8185 13.4739 13.4749C12.8175 14.1313 11.9273 14.5 10.999 14.5H11Z\" fill=\"var(--ci-primary-color, currentColor)\" class=\"ci-primary\"/>\r    <path d=\"M12.5 10.5H11.5V9.5C11.5 9.36739 11.4473 9.24021 11.3536 9.14645C11.2598 9.05268 11.1326 9 11 9C10.8674 9 10.7402 9.05268 10.6464 9.14645C10.5527 9.24021 10.5 9.36739 10.5 9.5V10.5H9.5C9.36739 10.5 9.24021 10.5527 9.14645 10.6464C9.05268 10.7402 9 10.8674 9 11C9 11.1326 9.05268 11.2598 9.14645 11.3536C9.24021 11.4473 9.36739 11.5 9.5 11.5H10.5V12.5C10.5 12.6326 10.5527 12.7598 10.6464 12.8536C10.7402 12.9473 10.8674 13 11 13C11.1326 13 11.2598 12.9473 11.3536 12.8536C11.4473 12.7598 11.5 12.6326 11.5 12.5V11.5H12.5C12.6326 11.5 12.7598 11.4473 12.8536 11.3536C12.9473 11.2598 13 11.1326 13 11C13 10.8674 12.9473 10.7402 12.8536 10.6464C12.7598 10.5527 12.6326 10.5 12.5 10.5Z\" fill=\"#445375\"/>\r</svg>\r\";', 2046874993),
('svg.dashboard', 's:2631:\"<svg width=\"16\" height=\"16\" viewBox=\"0 0 16 16\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M6.16663 5.33337H1.16663C0.523313 5.33337 0 4.81006 0 4.16663V1.16663C0 0.523313 0.523313 0 1.16663 0H6.16663C6.81006 0 7.33337 0.523313 7.33337 1.16663V4.16663C7.33337 4.81006 6.81006 5.33337 6.16663 5.33337ZM1.16663 1C1.12244 1.00003 1.08008 1.0176 1.04884 1.04884C1.0176 1.08008 1.00003 1.12244 1 1.16663V4.16663C1.00001 4.21083 1.01756 4.25322 1.0488 4.28448C1.08005 4.31575 1.12242 4.33333 1.16663 4.33337H6.16663C6.21084 4.33336 6.25325 4.31578 6.28452 4.28452C6.31578 4.25325 6.33336 4.21084 6.33337 4.16663V1.16663C6.33333 1.12242 6.31575 1.08005 6.28448 1.0488C6.25322 1.01756 6.21083 1.00001 6.16663 1H1.16663ZM6.16663 16H1.16663C0.523313 16 0 15.4767 0 14.8334V7.83337C0 7.18994 0.523313 6.66663 1.16663 6.66663H6.16663C6.81006 6.66663 7.33337 7.18994 7.33337 7.83337V14.8334C7.33337 15.4767 6.81006 16 6.16663 16ZM1.16663 7.66663C1.12242 7.66667 1.08005 7.68425 1.0488 7.71552C1.01756 7.74678 1.00001 7.78917 1 7.83337V14.8334C1.00003 14.8776 1.0176 14.9199 1.04884 14.9512C1.08008 14.9824 1.12244 15 1.16663 15H6.16663C6.21083 15 6.25322 14.9824 6.28448 14.9512C6.31575 14.92 6.33333 14.8776 6.33337 14.8334V7.83337C6.33336 7.78916 6.31578 7.74675 6.28452 7.71548C6.25325 7.68422 6.21084 7.66664 6.16663 7.66663H1.16663ZM14.8334 16H9.83337C9.18994 16 8.66663 15.4767 8.66663 14.8334V11.8334C8.66663 11.1899 9.18994 10.6666 9.83337 10.6666H14.8334C15.4767 10.6666 16 11.1899 16 11.8334V14.8334C16 15.4767 15.4767 16 14.8334 16ZM9.83337 11.6666C9.78916 11.6666 9.74675 11.6842 9.71548 11.7155C9.68422 11.7468 9.66664 11.7892 9.66663 11.8334V14.8334C9.66667 14.8776 9.68425 14.92 9.71552 14.9512C9.74678 14.9824 9.78917 15 9.83337 15H14.8334C14.8776 15 14.9199 14.9824 14.9512 14.9512C14.9824 14.9199 15 14.8776 15 14.8334V11.8334C15 11.7892 14.9824 11.7468 14.9512 11.7155C14.92 11.6843 14.8776 11.6667 14.8334 11.6666H9.83337ZM14.8334 9.33337H9.83337C9.18994 9.33337 8.66663 8.81006 8.66663 8.16663V1.16663C8.66663 0.523313 9.18994 0 9.83337 0H14.8334C15.4767 0 16 0.523313 16 1.16663V8.16663C16 8.81006 15.4767 9.33337 14.8334 9.33337ZM9.83337 1C9.78917 1.00001 9.74678 1.01756 9.71552 1.0488C9.68425 1.08005 9.66667 1.12242 9.66663 1.16663V8.16663C9.66664 8.21084 9.68422 8.25325 9.71548 8.28452C9.74675 8.31578 9.78916 8.33336 9.83337 8.33337H14.8334C14.8776 8.33333 14.92 8.31575 14.9512 8.28448C14.9824 8.25322 15 8.21083 15 8.16663V1.16663C15 1.12244 14.9824 1.08008 14.9512 1.04884C14.9199 1.0176 14.8776 1.00003 14.8334 1H9.83337Z\" fill=\"var(--ci-primary-color, currentColor)\" class=\"ci-primary\" />\n</svg>\n\";', 2046874993),
('svg.delete', 's:533:\"<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"m19 22.289l-.688-.689l2.055-2.1H15.5v-1h4.867l-2.056-2.1l.689-.688L22.288 19zM5.616 20q-.691 0-1.153-.462T4 18.384V5.616q0-.691.463-1.153T5.616 4h12.769q.69 0 1.153.463T20 5.616v7.811q-.244-.06-.497-.09t-.509-.03q-1.052 0-1.975.368t-1.667.989L12.689 12l2.85-2.85l-.689-.689l-2.85 2.85l-2.85-2.85l-.689.689l2.85 2.85l-2.85 2.85l.689.688l2.85-2.85l2.664 2.664q-.622.744-.989 1.67T13.308 19q0 .256.03.506t.089.494z\"/></svg>\n\";', 2046874992),
('svg.deposit', 's:759:\"<svg width=\"15\" height=\"16\" viewBox=\"0 0 15 16\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\r    <path d=\"M4.65792 6.48792L3.54167 7.60417L7.5 11.5625L11.4583 7.60417L10.3421 6.48792L8.29167 8.53042L8.29167 0.875L6.70833 0.875L6.70833 8.53042L4.65792 6.48792ZM14.625 13.5417L14.625 2.45833C14.625 2.03841 14.4582 1.63568 14.1613 1.33875C13.8643 1.04181 13.4616 0.875 13.0417 0.875L9.875 0.875L9.875 2.45833L13.0417 2.45833L13.0417 13.5417L1.95833 13.5417L1.95833 2.45833L5.125 2.45833L5.125 0.875L1.95833 0.874999C1.53841 0.874999 1.13568 1.04181 0.838748 1.33875C0.541815 1.63568 0.375 2.03841 0.375 2.45833L0.374999 13.5417C0.374999 14.4125 1.0875 15.125 1.95833 15.125L13.0417 15.125C13.9125 15.125 14.625 14.4125 14.625 13.5417Z\" fill=\"white\"/>\r</svg>\r\";', 2046874992),
('svg.logout', 's:1133:\"<svg width=\"16\" height=\"16\" viewBox=\"0 0 16 16\" fill=\"var(--ci-primary-color, currentColor)\" class=\"ci-primary\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M13.6886 7.64659L11.6886 5.64659C11.4953 5.45325 11.1753 5.45325 10.982 5.64659C10.7886 5.83992 10.7886 6.15992 10.982 6.35325L12.1286 7.49992H6.00195C5.72862 7.49992 5.50195 7.72659 5.50195 7.99992C5.50195 8.27325 5.72862 8.49992 6.00195 8.49992H12.1286L10.982 9.64659C10.7886 9.83992 10.7886 10.1599 10.982 10.3533C11.082 10.4533 11.2086 10.4999 11.3353 10.4999C11.462 10.4999 11.5886 10.4533 11.6886 10.3533L13.6886 8.35325C13.882 8.15992 13.882 7.83992 13.6886 7.64659Z\" fill=\"var(--ci-primary-color, currentColor)\" class=\"ci-primary\"/>\n<path d=\"M4 2.16663H6C6.27333 2.16663 6.5 2.39329 6.5 2.66663C6.5 2.93996 6.27333 3.16663 6 3.16663H4C3.54 3.16663 3.16667 3.53996 3.16667 3.99996V12C3.16667 12.46 3.54 12.8333 4 12.8333H6C6.27333 12.8333 6.5 13.06 6.5 13.3333C6.5 13.6066 6.27333 13.8333 6 13.8333H4C2.98667 13.8333 2.16667 13.0133 2.16667 12V3.99996C2.16667 2.98663 2.98667 2.16663 4 2.16663Z\" fill=\"var(--ci-primary-color, currentColor)\" class=\"ci-primary\"/>\n</svg>\n\";', 2046874993),
('svg.wallet', 's:646:\"<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" viewBox=\"0 0 24 24\"><g fill=\"none\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"1.5\" color=\"currentColor\"><path d=\"M15 15a1.5 1.5 0 1 0 3 0a1.5 1.5 0 0 0-3 0\"/><path d=\"M3 12V6c2.105.621 6.576 1.427 12.004 1.803c2.921.202 4.382.303 5.189 1.174c.807.87.807 2.273.807 5.078v2.013c0 2.889 0 4.333-.984 5.232c-.983.899-2.324.768-5.005.506a62 62 0 0 1-2.011-.23\"/><path d=\"M17.626 8c.377-1.423.72-4.012-.299-5.297c-.645-.815-1.605-.736-2.545-.654c-4.944.435-8.437 1.318-10.389 1.918C3.553 4.225 3 5.045 3 5.96M11 18H7m0 0H3m4 0v4m0-4v-4\"/></g></svg>\r\";', 2046874992),
('svg.wallet-cog', 's:834:\"<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M2 7.25A3.25 3.25 0 0 1 5.25 4h13.5A3.25 3.25 0 0 1 22 7.25v5.56a6.5 6.5 0 0 0-1.5-1.078V7.25a1.75 1.75 0 0 0-1.75-1.75H5.25A1.75 1.75 0 0 0 3.5 7.25v9.5c0 .966.784 1.75 1.75 1.75h5.826c.081.523.224 1.026.422 1.5H5.25A3.25 3.25 0 0 1 2 16.75zm12.278 6.726a2 2 0 0 1-1.441 2.496l-.584.144a5.7 5.7 0 0 0 .006 1.808l.54.13a2 2 0 0 1 1.45 2.51l-.187.631c.44.386.94.699 1.484.922l.494-.519a2 2 0 0 1 2.899 0l.498.525a5.3 5.3 0 0 0 1.483-.913l-.198-.686a2 2 0 0 1 1.441-2.496l.584-.144a5.7 5.7 0 0 0-.006-1.808l-.54-.13a2 2 0 0 1-1.45-2.51l.187-.63a5.3 5.3 0 0 0-1.484-.922l-.493.518a2 2 0 0 1-2.9 0l-.498-.525a5.3 5.3 0 0 0-1.483.912zM17.5 19c-.8 0-1.45-.672-1.45-1.5S16.7 16 17.5 16s1.45.672 1.45 1.5S18.3 19 17.5 19\"/></svg>\r\";', 2046874993),
('svg.withdraw-1', 's:430:\"<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M22 2H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h3v9a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-9h3a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1M7 20v-2a2 2 0 0 1 2 2Zm10 0h-2a2 2 0 0 1 2-2Zm0-4a4 4 0 0 0-4 4h-2a4 4 0 0 0-4-4V8h10Zm4-6h-2V7a1 1 0 0 0-1-1H6a1 1 0 0 0-1 1v3H3V4h18Zm-9 5a3 3 0 1 0-3-3a3 3 0 0 0 3 3m0-4a1 1 0 1 1-1 1a1 1 0 0 1 1-1\"/></svg>\r\";', 2046874992);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardholders`
--

CREATE TABLE `cardholders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'personal',
  `businesses_id` bigint UNSIGNED DEFAULT NULL,
  `kyc_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `kyc_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_proof_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kyc_documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `note` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('crypto','fiat') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` float DEFAULT '0',
  `rate_live` tinyint(1) NOT NULL DEFAULT '0',
  `auto_wallet` tinyint(1) NOT NULL DEFAULT '0',
  `default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `flag`, `name`, `code`, `symbol`, `type`, `exchange_rate`, `rate_live`, `auto_wallet`, `default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/2025-03-12_11-31-27_dollar_sign_cxc0.png', 'United States Dollar', 'USD', '$', 'fiat', 1, 1, 1, '1', '1', '2024-11-10 01:23:21', '2025-07-14 11:48:50'),
(5, 'images/2025/05/17/20250517_165736_euro_QPPH.png', 'Euro', 'EUR', '€', 'fiat', 0.86, 0, 1, '0', '1', '2024-11-15 10:15:50', '2025-07-14 12:11:32'),
(11, 'images/2025/05/17/20250517_162042_usdt_9Lqn.png', 'Tether', 'USDT', '₮', 'crypto', 1, 0, 0, '0', '1', '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(12, 'images/2025/05/18/20250518_171444_south_african_rand_wKoN.png', 'South African Rand', 'ZAR', 'R', 'fiat', 18.11, 0, 0, '0', '1', '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(13, 'images/2025/08/09/20250809_164704_flag_of_tanzaniasvg_d9P8.png', 'Tanzanian Shilling', 'TZS', 'TSh', 'fiat', 2485, 1, 0, '0', '1', '2025-08-09 11:47:04', '2025-08-09 11:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `currency_roles`
--

CREATE TABLE `currency_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_limit` double DEFAULT NULL,
  `max_limit` double DEFAULT NULL,
  `fee_type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fixed = fixed fee, percent = percentage fee',
  `fee` double DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_roles`
--

INSERT INTO `currency_roles` (`id`, `currency_id`, `role_name`, `min_limit`, `max_limit`, `fee_type`, `fee`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'sender', 10, 100, 'percent', 5, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(2, 1, 'request_money', 10, 100, 'fixed', 20, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(3, 1, 'exchange', 10, 100, 'percent', 2, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(4, 1, 'payment', 10, 100, 'percent', 2, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(5, 1, 'withdraw', 0, NULL, NULL, 0, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(6, 5, 'sender', 25, 200, 'fixed', 2, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(7, 5, 'request_money', 25, 200, 'fixed', 15, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(8, 5, 'exchange', 10, 200, 'fixed', 5, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(9, 5, 'payment', 25, 200, 'fixed', 15, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(10, 5, 'withdraw', 0, NULL, NULL, 0, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(51, 5, 'voucher', 10, 300, 'fixed', 5, 1, '2024-12-04 12:59:49', '2025-07-14 12:11:33'),
(52, 1, 'voucher', 10, 250, 'percent', 4, 1, '2024-12-04 12:59:49', '2025-07-14 11:48:50'),
(65, 11, 'sender', 10, 10000, 'percent', 2, 1, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(66, 11, 'request_money', 10, 100, 'percent', 15, 0, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(67, 11, 'exchange', 10, 1000, 'percent', 5, 1, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(68, 11, 'voucher', 0, NULL, 'percent', 5, 0, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(69, 11, 'payment', 0, NULL, 'percent', 15, 0, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(70, 11, 'withdraw', 0, NULL, NULL, 0, 0, '2025-05-17 10:20:42', '2025-05-17 11:18:59'),
(71, 12, 'sender', 10, 1000, 'percent', 2, 1, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(72, 12, 'request_money', 10, 1000, 'percent', 15, 0, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(73, 12, 'exchange', 10, 1000, 'percent', 5, 1, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(74, 12, 'voucher', 10, 1000, 'percent', 5, 0, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(75, 12, 'payment', 10, 1000, 'percent', 15, 0, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(76, 12, 'withdraw', 0, NULL, NULL, 0, 0, '2025-05-18 11:14:44', '2025-05-18 11:14:51'),
(77, 13, 'sender', 10, 1000, 'percent', 2, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04'),
(78, 13, 'request_money', 10, 1000, 'percent', 15, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04'),
(79, 13, 'exchange', 10, 1000, 'percent', 5, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04'),
(80, 13, 'voucher', 10, 1000, 'percent', 5, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04'),
(81, 13, 'payment', 10, 1000, 'percent', 15, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04'),
(82, 13, 'withdraw', 0, NULL, NULL, 0, 0, '2025-08-09 11:47:04', '2025-08-09 11:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `custom_codes`
--

CREATE TABLE `custom_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_codes`
--

INSERT INTO `custom_codes` (`id`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'css', '/*\r\n|--------------------------------------------------------------------------\r\n| Demo CSS Playground\r\n|--------------------------------------------------------------------------\r\n*/\r\n\r\n.about-section-demo {\r\n	position: relative;\r\n    background: white;\r\n}\r\n\r\n.demo-playground-card {\r\n    background: #f9fafb;\r\n    border: 2px dashed #60a5fa;\r\n    border-radius: 14px;\r\n    padding: 24px 26px;\r\n    max-width: 360px;\r\n    margin: 40px auto 24px auto;\r\n    text-align: center;\r\n    font-family: \'Inter\', Arial, sans-serif;\r\n    color: #1e293b;\r\n    transition: background 0.2s, border 0.2s;\r\n}\r\n\r\n.demo-playground-card h3 {\r\n    color: #2563eb;\r\n    margin-top: 0;\r\n    margin-bottom: 8px;\r\n    font-size: 1.18rem;\r\n    font-weight: 600;\r\n}\r\n\r\n/* Example button style */\r\n.demo-playground-btn {\r\n    background: #2563eb;\r\n    color: #fff;\r\n    border: none;\r\n    border-radius: 20px;\r\n    padding: 8px 26px;\r\n    font-weight: 600;\r\n    font-size: 1rem;\r\n    cursor: pointer;\r\n    margin-top: 10px;\r\n    transition: background 0.18s;\r\n}\r\n.demo-playground-btn:hover {\r\n    background: #1e40af;\r\n}', 1, '2025-05-09 01:07:49', '2025-07-20 23:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `custom_landings`
--

CREATE TABLE `custom_landings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_landings`
--

INSERT INTO `custom_landings` (`id`, `name`, `folder`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Digital Wallet Landing', 'digital-wallet-landing-1752500682', 0, '2025-07-14 07:44:42', '2025-08-05 11:56:08'),
(10, 'Virtual Card Landing', 'virtual-card-landing-1752500798', 0, '2025-07-14 07:46:38', '2025-08-05 11:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_methods`
--

CREATE TABLE `deposit_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_gateway_id` int DEFAULT NULL COMMENT 'Payment gateway id',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'auto = automatic, manual = manual',
  `method_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_deposit` double NOT NULL,
  `max_deposit` double NOT NULL,
  `conversion_rate_live` tinyint(1) DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL,
  `charge_type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'fixed = fixed charge, percent = percent charge',
  `charge` double NOT NULL,
  `user_charge` double DEFAULT NULL,
  `user_charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `merchant_charge` double DEFAULT NULL,
  `merchant_charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `receive_payment_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit_methods`
--

INSERT INTO `deposit_methods` (`id`, `payment_gateway_id`, `logo`, `name`, `type`, `method_code`, `currency`, `currency_symbol`, `min_deposit`, `max_deposit`, `conversion_rate_live`, `conversion_rate`, `charge_type`, `charge`, `user_charge`, `user_charge_type`, `merchant_charge`, `merchant_charge_type`, `fields`, `receive_payment_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Paypal USD', 'auto', 'paypal-usd', 'USD', '$', 100, 2000, 0, 1, 'percent', 10, 10, 'percent', 5, 'percent', NULL, NULL, 1, '2024-08-15 20:38:54', '2025-07-20 00:04:49'),
(2, NULL, 'images/2025/05/17/20250517_160209_usdt_KZwB.png', 'USDT (TRC20)', 'manual', 'usdt_trc20', 'USDT', 'USDT', 10, 1000, NULL, 1, 'fixed', 2, NULL, 'percent', NULL, 'percent', '[{\"name\":\"TX Hash\",\"type\":\"text\",\"validation\":\"required\"}]', '<div><p><strong>Network:</strong> TRC20</p><p><strong>Wallet:</strong> <code>TYZf91m4fjrHtTgNyB5q3ovzk9bt1c1gU8</code></p><p>After sending, enter your <strong>TX Hash</strong> below.</p><p style=\"margin:0;\">Only TRC20 transfers are accepted.</p></div>', 1, '2024-08-15 20:42:57', '2025-05-17 11:17:53'),
(19, NULL, 'images/2025/05/17/20250517_165513_payment_yypt.png', 'Mobile Wallet (USD)', 'manual', 'mobile-usd', 'USD', '$', 5, 500, NULL, 1, 'percent', 2, NULL, 'percent', NULL, 'percent', '{\"2\":{\"name\":\"Sender Name\",\"type\":\"text\",\"validation\":\"required\"},\"3\":{\"name\":\"Mobile Number Used\",\"type\":\"text\",\"validation\":\"required\"}}', '<p><strong>Send payment to:</strong> <code>+1 (305) 123-4567</code></p><p>After sending, provide:</p><p><b>  Sender Name</b></p><p><b>  Mobile Number used</b></p><p style=\"margin:0;\">Make sure the amount matches exactly.</p>', 1, '2025-05-17 10:55:13', '2025-05-17 11:14:44'),
(20, 2, NULL, 'Stripe Usd', 'auto', 'stripe-usd', 'USD', '$', 10, 1000, 0, 1, 'percent', 10, 10, 'percent', 5, 'percent', NULL, NULL, 1, '2025-05-17 11:36:12', '2025-07-20 00:05:04'),
(21, 3, NULL, 'Mollie', 'auto', 'mollie-usd', 'USD', '$', 10, 100, 0, 0.89, 'percent', 2, NULL, 'percent', NULL, 'percent', NULL, NULL, 1, '2025-05-18 03:00:29', '2025-05-18 10:01:31'),
(23, 5, NULL, 'Coinbase', 'auto', 'coinbase-usd', 'USD', '$', 10, 10000, 0, 1, 'percent', 5, 5, 'percent', 2, 'percent', NULL, NULL, 1, '2025-05-18 10:52:28', '2025-07-28 22:03:04'),
(24, 6, NULL, 'Paystack', 'auto', 'paystack-zar', 'ZAR', 'R', 100, 1000, 0, 18.11, 'percent', 2, NULL, 'percent', NULL, 'percent', NULL, NULL, 1, '2025-05-18 10:59:38', '2025-05-18 11:53:46'),
(25, 7, NULL, 'Flutterwave', 'auto', 'flutterwave-usd', 'USD', '$', 10, 1000, 0, 1, 'percent', 0.8, NULL, 'percent', NULL, 'percent', NULL, NULL, 1, '2025-05-18 11:00:34', '2025-05-18 11:00:34'),
(26, 8, NULL, 'Cryptomus', 'auto', 'cryptomus-usdt', 'USDT', '₮', 10, 1000, 0, 1, 'percent', 0, NULL, 'percent', NULL, 'percent', NULL, NULL, 1, '2025-05-18 11:01:14', '2025-08-19 08:59:40'),
(29, 13, NULL, 'Moneroo', 'auto', 'moneroo-usd', 'USD', '$', 10, 100, 0, 1, 'percent', 5, 5, 'percent', 2, 'percent', NULL, NULL, 1, '2025-07-26 00:19:36', '2025-07-26 00:34:54'),
(30, 4, NULL, '2Checkout', 'auto', 'twocheckout-usd', 'USD', '$', 10, 100, 0, 1, 'fixed', 5, 5, 'fixed', 2, 'fixed', NULL, NULL, 1, '2025-07-28 22:47:25', '2025-07-28 22:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footer_items`
--

CREATE TABLE `footer_items` (
  `id` bigint UNSIGNED NOT NULL,
  `footer_section_id` bigint UNSIGNED NOT NULL,
  `label` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url_type` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `social_id` bigint UNSIGNED DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `footer_items`
--

INSERT INTO `footer_items` (`id`, `footer_section_id`, `label`, `content`, `url_type`, `url`, `page_id`, `social_id`, `icon`, `order`, `status`, `created_at`, `updated_at`) VALUES
(8, 6, '{\"en\": \"Privacy Policy\", \"es\": \"política de privacidad\"}', '{\"en\":\"dfgdfgfgj\",\"es\":null}', 'page', 'http://digikash.test/', 5, NULL, 'fa-solid fa-angles-right', 2, 1, '2025-04-04 10:42:32', '2025-07-17 11:28:13'),
(9, 6, '{\"en\": \"Terms & Conditions\", \"es\": \"Tranvías y servicios\"}', '{\"en\":\"fgjfgj\",\"es\":null}', 'page', 'http://digikash.test/', 12, NULL, 'fa-solid fa-angles-right', 1, 1, '2025-04-07 11:49:47', '2025-07-17 11:28:13'),
(10, 7, '{\"en\": \"All In One Powerful Platform\", \"es\": \"Una Plataforma Todo en Uno\"}', '{\"en\":\"Manage money easily with Digikash. Send, receive, deposit, and pay merchants \\u2014 all from one smart wallet.\",\"es\":\"Administra tu dinero f\\u00e1cilmente con Digikash. Env\\u00eda, recibe, deposita y paga a comerciantes desde una \\u00fanica billetera inteligente.\"}', 'none', NULL, NULL, NULL, 'fa-solid fa-angles-right', 1, 1, '2025-04-08 04:45:06', '2025-04-08 11:39:22'),
(11, 5, '{\"en\": \"About Us\", \"es\": \"Sobre nosotras\"}', '{\"en\":null,\"es\":null}', 'page', NULL, 4, NULL, 'fa-solid fa-angles-right', 1, 1, '2025-04-08 05:24:28', '2025-04-08 11:20:33'),
(12, 8, '{\"en\": \"Facebook\", \"es\": null}', '{\"en\":null,\"es\":null}', 'social', 'https://www.facebook.com/yourpage', NULL, 4, 'fa-solid fa-angles-right', 1, 1, '2025-04-08 09:41:48', '2025-04-08 11:19:40'),
(13, 8, '{\"en\": \"Twitter\", \"es\": null}', '{\"en\":null,\"es\":null}', 'social', NULL, NULL, 5, 'fa-solid fa-angles-right', 2, 1, '2025-04-08 09:42:41', '2025-04-08 11:16:53'),
(14, 8, '{\"en\": \"Linkedin\", \"es\": null}', '{\"en\":null,\"es\":null}', 'social', NULL, NULL, 6, 'fa-solid fa-angles-right', 3, 1, '2025-04-08 09:42:58', '2025-04-08 11:16:55'),
(15, 7, '{\"en\": \"Fast, Secure, and Seamless Transactions\", \"es\": \"Transacciones Rápidas, Seguras y Sin Interrupciones\"}', '{\"en\":\"Enjoy instant transfers, top-notch security, and real-time balance updates with Digikash.\",\"es\":\"Disfruta de transferencias instant\\u00e1neas, m\\u00e1xima seguridad y actualizaciones de saldo en tiempo real con Digikash.\"}', 'none', NULL, NULL, NULL, 'fa-solid fa-angles-right', 2, 1, '2025-04-08 11:32:28', '2025-05-21 01:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `footer_sections`
--

CREATE TABLE `footer_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `footer_sections`
--

INSERT INTO `footer_sections` (`id`, `title`, `type`, `status`, `order`, `created_at`, `updated_at`) VALUES
(5, '{\"en\": \"Page\", \"es\": \"Página\"}', 'page', 1, 2, '2025-04-03 21:26:47', '2025-04-08 11:49:22'),
(6, '{\"en\": \"Useful Links\", \"es\": \"Enlaces útiles\"}', 'link', 1, 3, '2025-04-03 21:26:59', '2025-07-17 11:27:45'),
(7, '{\"en\": \"About\", \"es\": \"Acerca de\"}', 'text', 1, 1, '2025-04-07 11:19:20', '2025-04-08 11:49:22'),
(8, '{\"en\": \"Social Link\", \"es\": \"Enlace social\"}', 'social', 1, 4, '2025-04-08 09:37:47', '2025-07-17 11:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blocked_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(3694, 'default', '{\"uuid\":\"f5ce2582-1c90-49b0-8fc4-0e02530920b5\",\"displayName\":\"App\\\\Notifications\\\\TemplateNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:22;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\TemplateNotification\\\":3:{s:13:\\\"\\u0000*\\u0000identifier\\\";s:21:\\\"payment_user_received\\\";s:7:\\\"\\u0000*\\u0000data\\\";a:3:{s:6:\\\"amount\\\";s:10:\\\"242.25 USD\\\";s:5:\\\"payer\\\";s:14:\\\"SANDBOX: Payer\\\";s:3:\\\"trx\\\";s:15:\\\"TXNX9RKPG0UTV3O\\\";}s:2:\\\"id\\\";s:36:\\\"26de1f9e-3595-45f3-9eba-bae161f488ba\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1755671192, 1755671192),
(3695, 'default', '{\"uuid\":\"833c36ea-6027-49ed-aeaa-b08097a28802\",\"displayName\":\"App\\\\Notifications\\\\TemplateNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:22;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:38:\\\"App\\\\Notifications\\\\TemplateNotification\\\":3:{s:13:\\\"\\u0000*\\u0000identifier\\\";s:21:\\\"payment_user_received\\\";s:7:\\\"\\u0000*\\u0000data\\\";a:3:{s:6:\\\"amount\\\";s:10:\\\"242.25 USD\\\";s:5:\\\"payer\\\";s:14:\\\"SANDBOX: Payer\\\";s:3:\\\"trx\\\";s:15:\\\"TXNQR64VN20FX9K\\\";}s:2:\\\"id\\\";s:36:\\\"69bcc07e-d650-4d90-ba74-8198ae47e4db\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:8:\\\"database\\\";}}\"}}', 0, NULL, 1755671487, 1755671487);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_submissions`
--

CREATE TABLE `kyc_submissions` (
  `id` bigint UNSIGNED NOT NULL,
  `kyc_template_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `submission_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` int NOT NULL DEFAULT '0',
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kyc_submissions`
--

INSERT INTO `kyc_submissions` (`id`, `kyc_template_id`, `user_id`, `submission_data`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 18, '{\"Full Name\":\"Usama Akhtar\",\"Phone Number\":\"03008062261\",\"Passport Front Picture\":\"files\\/2025\\/08\\/06\\/20250806_151749_untitled_design_2_removebg_preview_dWIT.png\",\"Passport Back Picture\":\"files\\/2025\\/08\\/06\\/20250806_151749_untitled_design_1_removebg_preview_EWdQ.png\"}', 1, NULL, '2025-08-06 10:17:49', '2025-08-06 10:18:19'),
(2, 1, 22, '{\"Full Name\":\"Merchnat\",\"Phone Number\":\"0123123123\",\"Passport Front Picture\":\"files\\/2025\\/08\\/19\\/20250819_154452_clocked_out_flower_thca_7g_sativa_600x600_z3fj.webp\",\"Passport Back Picture\":\"files\\/2025\\/08\\/19\\/20250819_154452_clocked_out_flower_thca_7g_hybrid_1_600x600_mAKe.webp\"}', 0, NULL, '2025-08-19 10:44:52', '2025-08-19 10:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_templates`
--

CREATE TABLE `kyc_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `applicable_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kyc_templates`
--

INSERT INTO `kyc_templates` (`id`, `title`, `description`, `fields`, `applicable_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Passport Verify', 'Verify identity using a valid passport by uploading a clear copy of the photo and details page.', '[{\"label\":\"Full Name\",\"type\":\"text\",\"required\":\"true\"},{\"label\":\"Phone Number\",\"type\":\"text\",\"required\":\"true\"},{\"label\":\"Passport Front Picture\",\"type\":\"file\",\"required\":\"true\"},{\"label\":\"Passport Back Picture\",\"type\":\"file\",\"required\":\"true\"}]', '[\"user\", \"merchant\"]', 1, '2025-02-22 20:46:34', '2025-08-06 05:36:57'),
(2, 'NID Verify', 'Verify identity using a National ID by uploading a clear front and back copy', '[{\"type\": \"text\", \"label\": \"NID Number\", \"required\": \"true\"}, {\"type\": \"file\", \"label\": \"NID Front Image\", \"required\": \"true\"}, {\"type\": \"file\", \"label\": \"NID Back Image\", \"required\": \"true\"}]', '[\"user\"]', 1, '2025-02-23 02:18:10', '2025-05-12 14:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `flag`, `name`, `code`, `is_default`, `is_rtl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'images/2025-02-27_15-27-02_united_states_ytAv.png', 'English', 'en', 1, 1, 1, '2024-07-11 02:24:52', '2025-06-28 08:17:51'),
(20, 'images/2025-03-21_16-49-25_spain_TehZ.png', 'Spain', 'es', 0, 0, 1, '2025-03-21 10:49:25', '2025-06-28 08:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `login_activities`
--

CREATE TABLE `login_activities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_activities`
--

INSERT INTO `login_activities` (`id`, `user_id`, `ip_address`, `country`, `platform`, `device`, `browser`, `user_agent`, `login_at`, `created_at`, `updated_at`) VALUES
(31, 18, '139.135.36.196', 'Pakistan', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-05 18:03:08', '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(32, 18, '39.56.19.190', 'Pakistan', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-06 05:35:14', '2025-08-06 05:35:14', '2025-08-06 05:35:14'),
(33, 18, '139.135.36.196', 'Pakistan', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-06 10:16:57', '2025-08-06 10:16:57', '2025-08-06 10:16:57'),
(34, 18, '139.135.36.196', 'Pakistan', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-06 10:17:05', '2025-08-06 10:17:05', '2025-08-06 10:17:05'),
(35, 18, '103.77.191.107', 'Bangladesh', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-06 11:44:58', '2025-08-06 11:44:58', '2025-08-06 11:44:58'),
(36, 18, '103.77.191.107', 'Bangladesh', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-06 21:43:53', '2025-08-06 21:43:53', '2025-08-06 21:43:53'),
(39, 18, '139.135.36.196', 'Pakistan', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-07 11:05:35', '2025-08-07 11:05:35', '2025-08-07 11:05:35'),
(40, 18, '172.99.189.36', 'France', 'iOS', 'iPhone', 'Safari', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '2025-08-07 12:16:12', '2025-08-07 12:16:12', '2025-08-07 12:16:12'),
(41, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-09 11:47:58', '2025-08-09 11:47:58', '2025-08-09 11:47:58'),
(42, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '2025-08-09 11:49:09', '2025-08-09 11:49:09', '2025-08-09 11:49:09'),
(44, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-11 06:59:10', '2025-08-11 06:59:10', '2025-08-11 06:59:10'),
(45, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-12 01:49:15', '2025-08-12 01:49:15', '2025-08-12 01:49:15'),
(46, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-12 05:03:54', '2025-08-12 05:03:54', '2025-08-12 05:03:54'),
(47, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-18 03:07:25', '2025-08-18 03:07:25', '2025-08-18 03:07:25'),
(48, 18, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 05:39:53', '2025-08-19 05:39:53', '2025-08-19 05:39:53'),
(49, 19, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 09:57:15', '2025-08-19 09:57:15', '2025-08-19 09:57:15'),
(50, 19, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:00:01', '2025-08-19 10:00:01', '2025-08-19 10:00:01'),
(51, 19, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:05:23', '2025-08-19 10:05:23', '2025-08-19 10:05:23'),
(52, 19, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:05:55', '2025-08-19 10:05:55', '2025-08-19 10:05:55'),
(53, 22, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:15:22', '2025-08-19 10:15:22', '2025-08-19 10:15:22'),
(54, 22, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:15:29', '2025-08-19 10:15:29', '2025-08-19 10:15:29'),
(55, 22, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:43:00', '2025-08-19 10:43:00', '2025-08-19 10:43:00'),
(56, 22, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 10:48:50', '2025-08-19 10:48:50', '2025-08-19 10:48:50'),
(57, 23, '127.0.0.1', 'United States', 'Windows', 'WebKit', 'Chrome', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-19 11:57:22', '2025-08-19 11:57:22', '2025-08-19 11:57:22'),
(58, 22, '127.0.0.1', 'United States', 'Windows', 'Unknown', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0', '2025-08-20 05:32:37', '2025-08-20 05:32:37', '2025-08-20 05:32:37'),
(59, 22, '127.0.0.1', 'United States', 'Windows', 'Unknown', 'Firefox', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0', '2025-08-20 10:15:55', '2025-08-20 10:15:55', '2025-08-20 10:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `merchant_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `business_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fee` double NOT NULL DEFAULT '0',
  `api_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_api_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_api_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_merchant_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `webhook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_mode` enum('sandbox','production') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sandbox',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `user_id`, `merchant_key`, `business_name`, `site_url`, `currency_id`, `business_logo`, `business_email`, `business_description`, `fee`, `api_key`, `api_secret`, `test_api_key`, `test_api_secret`, `test_merchant_key`, `sandbox_enabled`, `webhook_url`, `current_mode`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 22, 'kBm34HqndfEp', 'Merchant Account', 'https://e-gatepay.net/', 1, NULL, NULL, NULL, 5, '0nNeZlFqMuoTvro7w9YuB7Mh0Ae4', 'nxjg329WvYbd4c0jlw67VFKJJoj7VcQSwJ2HK2', 'test_nUx6Gz3m0gr5pSY4W1zCByVGTVZUTdwbxCPnATFN', 'test_secret_5y3uR0ZwRonAyJS1qBUu0EoIW27x9A7F', 'test_merchant_sR3nOqfAGtDan0r7', 1, NULL, 'sandbox', 'approved', '2025-08-19 11:40:17', '2025-08-19 12:06:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED DEFAULT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_05_014145_create_admins_table', 1),
(5, '2024_07_05_120640_create_settings_table', 1),
(6, '2024_07_06_093402_create_plugins_table', 1),
(7, '2024_07_08_060826_create_permission_tables', 1),
(8, '2024_07_08_124553_create_staff_table', 1),
(9, '2018_08_29_200844_create_languages_table', 2),
(10, '2018_08_29_205156_create_translations_table', 2),
(11, '2024_07_11_042348_create_languages_table', 3),
(12, '0001_01_01_000000_create_users_table', 4),
(13, '2024_08_11_083809_create_payment_gateways_table', 5),
(14, '2024_08_11_090520_create_deposit_methods_table', 5),
(16, '2024_10_27_042832_create_currencies_table', 6),
(17, '2024_11_12_040813_create_wallets_table', 7),
(20, '2024_11_16_150322_create_transactions_table', 8),
(21, '2024_12_04_031019_create_currency_roles_table', 8),
(23, '2024_12_23_060751_create_vouchers_table', 9),
(26, '2024_12_27_141240_create_withdraw_methods_table', 10),
(27, '2024_12_27_141326_create_withdraw_schedules_table', 10),
(28, '2024_12_29_164640_create_withdraw_accounts_table', 11),
(29, '2025_01_07_150435_create_referrals_table', 12),
(30, '2025_01_08_002400_create_rewards_table', 12),
(31, '2025_01_21_032753_create_support_categories_table', 13),
(34, '2025_01_21_033403_create_messages_table', 15),
(35, '2025_01_21_033417_create_tickets_table', 16),
(38, '2025_01_25_033412_create_user_ranks_table', 17),
(42, '2025_01_31_161024_create_merchants_table', 18),
(43, '2025_02_06_072549_create_personal_access_tokens_table', 19),
(45, '2024_09_12_080045_create_notifications_table', 20),
(50, '2025_02_20_090013_create_kyc_templates_table', 21),
(51, '2025_02_20_141033_create_kyc_submissions_table', 21),
(52, '2025_03_10_134122_create_login_activities_table', 22),
(53, '2025_03_10_150952_create_i_p_blocks_table', 23),
(55, '2025_03_12_162814_create_user_features_table', 24),
(59, '2025_03_18_170040_create_pages_table', 25),
(60, '2025_03_18_170126_create_page_components_table', 25),
(61, '2025_03_18_170201_create_page_component_contents_table', 25),
(62, '2025_03_27_193454_create_navigations_table', 26),
(63, '2025_04_01_042811_create_footer_sections_table', 27),
(65, '2025_04_01_042834_create_footer_items_table', 28),
(66, '2025_04_04_173541_create_socials_table', 29),
(67, '2025_04_05_070247_create_blog_categories_table', 30),
(68, '2025_04_05_070334_create_blogs_table', 30),
(69, '2025_04_06_121632_create_site_seos_table', 31),
(70, '2025_04_14_104122_create_subscribers_table', 32),
(73, '2025_04_24_011128_create_notification_templates_table', 33),
(74, '2025_04_24_011503_create_notification_template_channels_table', 33),
(75, '2025_05_08_155310_create_custom_codes_table', 34),
(76, '2025_06_08_044546_add_token_and_expires_at_to_transactions_table', 35),
(82, '2025_06_09_161907_create_virtual_card_requests_table', 36),
(103, '0002_01_01_000000_add_state_and_postal_code_to_users_table', 37),
(104, '2025_06_08_044546_create_virtual_card_providers_table', 37),
(105, '2025_06_10_015927_create_virtual_cards_table', 37),
(106, '2025_06_17_125731_create_personal_access_tokens_table', 37),
(107, '2025_06_21_142932_create_virtual_card_fee_settings_table', 37),
(108, '2025_06_21_180221_create_cardholders_table', 37),
(109, '2025_06_21_185311_create_businesses_table', 37),
(110, '2025_07_02_153950_add_cardholder_id_to_virtual_card_requests_table', 36),
(111, '2025_07_14_041924_create_custom_landings_table', 38),
(112, '2025_07_20_044207_add_user_merchant_charges_to_withdraw_methods_table', 39),
(113, '2025_07_20_053613_add_user_merchant_charges_to_deposit_methods_table', 40),
(114, '2025_07_21_085832_add_business_fields_to_users_table', 41),
(115, '2025_07_21_125506_create_referral_contents_table', 42),
(116, '2025_07_27_210000_add_test_credentials_to_merchants_table', 43),
(117, '2025_07_27_213500_refactor_merchant_webhooks_and_environment', 44),
(119, '2025_08_20_113924_create_settlements_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(3, 'App\\Models\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint UNSIGNED DEFAULT NULL,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `target` enum('_self','_blank') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `name`, `slug`, `page_id`, `order`, `target`, `is_active`, `created_at`, `updated_at`) VALUES
(15, '{\"en\": \"Home\", \"es\": \"Hogar\"}', '/', 1, 1, '_self', 1, '2025-04-08 04:09:07', '2025-05-04 01:25:04'),
(16, '{\"en\": \"About\", \"es\": \"Acerca de\"}', 'about', 4, 2, '_self', 1, '2025-04-08 04:10:10', '2025-05-04 01:25:04'),
(17, '{\"en\": \"Privacy\", \"es\": \"Privacidad\"}', 'privacy', 5, 3, '_self', 1, '2025-04-08 04:10:31', '2025-05-25 02:28:25'),
(19, '{\"en\": \"Blog\", \"es\": \"Blog\"}', 'blog', 2, 4, '_self', 1, '2025-04-12 04:32:14', '2025-04-12 04:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('036559ae-98c5-4c30-b28f-d32582d5a444', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 47.5 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:08:01', '2025-08-19 12:08:01'),
('504d556b-e644-48bd-9e5c-121c8d4122d7', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 114 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:09:22', '2025-08-19 12:09:22'),
('57a2dc5a-9a7e-4e22-8e77-32e36b0e6ce2', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 475 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:43:52', '2025-08-19 12:43:52'),
('6eebfed2-6dd1-4917-8e25-6abe809dae9b', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 237.5 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:10:56', '2025-08-19 12:10:56'),
('81a15823-591b-4a2b-9093-f1415bbdc361', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 20 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:06:19', '2025-08-19 12:06:19'),
('acfe25a8-1f93-4378-9666-b0bdda4e2fad', 'App\\Notifications\\TemplateNotification', 'App\\Models\\User', 22, '{\"title\":\"New Payment\",\"message\":\"SANDBOX: Payer paid you 237.5 USD.\",\"icon\":\"wallet-receive\",\"action_type\":\"completed\",\"action_link\":\"\",\"sender\":null}', NULL, '2025-08-19 12:12:02', '2025-08-19 12:12:02'),
('c79835f1-3d4b-4a32-bdd2-fc5a83fb6447', 'App\\Notifications\\TemplateNotification', 'App\\Models\\Admin', 1, '{\"title\":\"KYC Submission Alert\",\"message\":\"Merchant Account submitted KYC (Passport Verify).\",\"icon\":\"kyc-alert\",\"action_type\":\"requested\",\"action_link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/kyc\\/pending\",\"sender\":{\"id\":22,\"name\":\"Merchant Account\",\"avatar\":\"\\/general\\/static\\/default\\/user.png\"}}', NULL, '2025-08-19 10:44:52', '2025-08-19 10:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variables` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `identifier`, `user_type`, `action_type`, `name`, `icon`, `info`, `variables`, `created_at`, `updated_at`) VALUES
(1, 'kyc_admin_notify_submission', 'admin', 'requested', 'KYC Verification Requested', 'kyc-alert', 'Admin alert when a user submits a KYC verification request.', '[\"user\", \"kyc_type\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(2, 'kyc_user_notify_approved', 'user', 'approved', 'KYC Approved', 'kyc-approved', 'Notifies user when their KYC is approved by admin.', '[\"kyc_type\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(3, 'kyc_user_notify_rejected', 'user', 'rejected', 'KYC Rejected', 'kyc-rejected', 'Notifies user when their KYC verification is rejected by admin.', '[\"kyc_type\", \"rejection_reason\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(4, 'deposit_user_auto_success', 'user', 'completed', 'Automatic Deposit Completed', 'deposit-auto', 'Triggered after user completes auto deposit using gateway.', '[\"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(5, 'deposit_admin_auto_processed', 'admin', 'logged', 'Auto Deposit Logged', 'deposit-log', 'Admin log for user deposit made automatically via gateway.', '[\"user\", \"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(6, 'deposit_user_submitted', 'user', 'requested', 'Manual Deposit Submitted', 'deposit-request', 'Triggered when user submits a manual deposit request.', '[\"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(7, 'deposit_admin_notify_submission', 'admin', 'requested', 'Manual Deposit Requested', 'deposit-alert', 'Admin alert when user submits manual deposit.', '[\"user\", \"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(8, 'deposit_user_approved', 'user', 'completed', 'Deposit Approval Notification', 'deposit-success', 'Sent to user after admin approves manual deposit.', '[\"amount\", \"method\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(9, 'deposit_user_rejected', 'user', 'rejected', 'Deposit Rejected Notification', 'deposit-failed', 'Sent when admin rejects user deposit request.', '[\"amount\", \"method\", \"reason\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(10, 'send_money_user_sent', 'user', 'completed', 'Money Transfer Confirmation', 'send-money', 'Notify user after sending money successfully.', '[\"amount\", \"recipient\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(11, 'send_money_user_received', 'user', 'completed', 'Money Received Notification', 'receive-money', 'Notify user when they receive money from another wallet.', '[\"amount\", \"sender\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(12, 'request_money_user_requested', 'user', 'requested', 'Money Request Submitted', 'request-money', 'Notify requestor when they send a money request.', '[\"amount\", \"recipient\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(13, 'request_money_user_received', 'user', 'requested', 'Money Request Received', 'request-received', 'Notify user of incoming money request.', '[\"amount\", \"sender\", \"trx\"]', '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(14, 'request_money_user_approved', 'user', 'completed', 'Money Request Approved', 'request-approved', 'Notify requestor when their money request is approved by the recipient.', '[\"amount\", \"receiver\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(15, 'request_money_user_rejected', 'user', 'rejected', 'Money Request Rejected', 'request-rejected', 'Notify requestor when their money request is rejected by the recipient.', '[\"amount\", \"receiver\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(16, 'exchange_money_user_exchanged', 'user', 'completed', 'Currency Exchange Completed', 'exchange-money', 'Notify user after successful currency exchange.', '[\"from_amount\", \"from_currency\", \"to_amount\", \"to_currency\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(17, 'voucher_user_redeemed', 'user', 'completed', 'Voucher Redemption Confirmed', 'voucher', 'Notify user after redeeming voucher successfully.', '[\"amount\", \"voucher_code\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(18, 'payment_user_made', 'user', 'completed', 'Wallet Payment Completed', 'wallet-payment', 'Notify user when they pay via wallet.', '[\"amount\", \"merchant\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(19, 'payment_user_received', 'user', 'completed', 'Payment Received from User', 'wallet-receive', 'Notify receiver when wallet payment is received.', '[\"amount\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(20, 'admin_balance_added', 'user', 'completed', 'Balance Added by Admin', 'balance-add', 'Notify user when admin adds wallet balance.', '[\"amount\", \"admin\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(21, 'admin_balance_subtracted', 'user', 'completed', 'Balance Deducted by Admin', 'balance-subtract', 'Notify user when admin deducts wallet balance.', '[\"amount\", \"admin\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(22, 'withdraw_admin_manual_submitted', 'admin', 'requested', 'Manual Withdraw Requested', 'withdraw-alert', 'Notify admin when user requests withdrawal.', '[\"user\", \"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(23, 'withdraw_admin_auto_processed', 'admin', 'logged', 'Auto Withdraw Processed', 'withdraw-log', 'Notify admin when auto withdrawal completes.', '[\"user\", \"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(24, 'withdraw_user_requested', 'user', 'requested', 'Withdraw Request Submitted', 'withdraw-request', 'Notify user after submitting withdrawal request.', '[\"amount\", \"method\", \"trx\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(25, 'withdraw_user_approved', 'user', 'completed', 'Withdraw Approved', 'withdraw-success', 'Notify user when admin approves withdrawal.', '[\"amount\", \"method\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(26, 'withdraw_user_rejected', 'user', 'rejected', 'Withdraw Rejected', 'withdraw-failed', 'Notify user if withdrawal is rejected.', '[\"amount\", \"method\", \"reason\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(27, 'reward_user_referral', 'user', 'completed', 'Referral Reward Earned', 'reward-referral', 'Notify user when they earn referral reward.', '[\"amount\", \"referred_user\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(28, 'reward_user_system', 'user', 'completed', 'Achievement Reward Granted', 'reward-achievement', 'Notify user when system reward is granted.', '[\"amount\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(29, 'support_user_created', 'admin', 'created', 'Support Ticket Created', 'support-open', 'Notify admin when a user opens support ticket.', '[\"user\", \"ticket_number\", \"subject\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(30, 'support_admin_replied', 'user', 'completed', 'Support Reply Notification', 'support-reply-admin', 'Notify user when admin replies to ticket.', '[\"ticket_number\", \"subject\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(31, 'support_user_replied', 'admin', 'completed', 'Support Ticket Reply from User', 'support-reply', 'Notify admin when a user replies to a support ticket.', '[\"user\", \"ticket_number\", \"subject\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(32, 'support_user_closed', 'user', 'completed', 'Support Ticket Closed', 'support-closed', 'Notify user when ticket is closed.', '[\"ticket_number\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(33, 'merchant_admin_notify_shop_request', 'admin', 'requested', 'Merchant Shop Request', 'merchant-alert', 'Admin alert when a merchant submits a new shop/business for approval.', '[\"user\", \"business_name\", \"business_email\", \"site_url\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(34, 'merchant_user_notify_shop_approved', 'user', 'approved', 'Merchant Shop Approved', 'merchant-approved', 'Notifies merchant when their shop is approved by admin.', '[\"business_name\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(35, 'merchant_user_notify_shop_rejected', 'user', 'rejected', 'Merchant Shop Rejected', 'merchant-rejected', 'Notifies merchant when their shop is rejected by admin.', '[\"business_name\", \"rejection_reason\"]', '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(36, 'virtual_card_user_approved', 'user', 'approved', 'Virtual Card Approved', 'card-approved', 'User is notified when their virtual card request is approved.', '[\"card_network\", \"last4\", \"wallet\", \"fee\"]', '2025-06-16 21:55:47', '2025-06-16 21:55:47'),
(37, 'virtual_card_admin_notify_request', 'admin', 'requested', 'Virtual Card Request Submission', 'card-request', 'Admin is alerted when a user submits a new virtual card request.', '[\"user\", \"network\", \"wallet\"]', '2025-06-16 21:55:47', '2025-06-16 21:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `notification_template_channels`
--

CREATE TABLE `notification_template_channels` (
  `id` bigint UNSIGNED NOT NULL,
  `template_id` bigint UNSIGNED NOT NULL,
  `channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_template_channels`
--

INSERT INTO `notification_template_channels` (`id`, `template_id`, `channel`, `title`, `message`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'email', 'New KYC Submission', 'User {user} submitted a KYC verification request using {kyc_type}. Please review it.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(2, 1, 'push', 'KYC Submission Alert', '{user} submitted KYC ({kyc_type}).', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(3, 1, 'sms', NULL, '{user} submitted KYC type: {kyc_type}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(4, 2, 'email', 'Your KYC is Approved', 'Your KYC verification using {kyc_type} has been approved. You can now access all features.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(5, 2, 'push', 'KYC Approved', 'Your KYC ({kyc_type}) is approved.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(6, 2, 'sms', NULL, 'Your KYC ({kyc_type}) is approved.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(7, 3, 'email', 'Your KYC Was Rejected', 'We’re sorry, your KYC verification using {kyc_type} has been rejected. Reason: {rejection_reason}. Please re-submit with valid documents.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(8, 3, 'push', 'KYC Rejected', 'Your KYC ({kyc_type}) was rejected. Reason: {rejection_reason}', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(9, 3, 'sms', NULL, 'KYC ({kyc_type}) rejected. Reason: {rejection_reason}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(10, 4, 'email', 'Deposit Completed', 'Your deposit of {amount} via {method} has been successfully completed. Transaction ID: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(11, 4, 'push', 'Deposit Confirmed', 'Deposit {amount} via {method} is now complete.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(12, 4, 'sms', NULL, 'Deposit {amount} via {method} successful. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(13, 5, 'email', 'Auto Deposit Logged', 'User {user} has completed an automatic deposit of {amount} via {method}. Transaction ID: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(14, 5, 'push', 'New Auto Deposit', '{user} completed auto deposit of {amount}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(15, 5, 'sms', NULL, '{user} deposited {amount} via {method}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(16, 6, 'email', 'Deposit Request Received', 'We have received your deposit request of {amount} via {method}. Transaction ID: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(17, 6, 'push', 'Request Submitted', 'You submitted a deposit request for {amount}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(18, 6, 'sms', NULL, 'Deposit {amount} via {method} submitted. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(19, 7, 'email', 'Deposit Request Submitted', 'User {user} submitted a deposit request of {amount} via {method}. Trx: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(20, 7, 'push', 'Deposit Request Alert', '{user} requested deposit of {amount}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(21, 7, 'sms', NULL, '{user} requested deposit {amount}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(22, 8, 'email', 'Deposit Approved', 'Your deposit of {amount} via {method} has been approved and added to your wallet.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(23, 8, 'push', 'Deposit Approved', '{amount} added to your balance.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(24, 8, 'sms', NULL, 'Deposit {amount} approved.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(25, 9, 'email', 'Deposit Rejected', 'Your deposit of {amount} via {method} was rejected. Reason: {reason}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(26, 9, 'push', 'Deposit Declined', 'Deposit {amount} rejected. Reason: {reason}', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(27, 9, 'sms', NULL, 'Deposit {amount} rejected. Reason: {reason}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(28, 10, 'email', 'Money Sent', 'You sent {amount} to {recipient}. Trx: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(29, 10, 'push', 'Money Sent', '{amount} sent to {recipient}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(30, 10, 'sms', NULL, 'Sent {amount} to {recipient}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(31, 11, 'email', 'Money Received', 'You received {amount} from {sender}. Trx: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(32, 11, 'push', 'Money Received', '{amount} received from {sender}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(33, 11, 'sms', NULL, 'Received {amount} from {sender}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(34, 12, 'email', 'Request Sent', 'You requested {amount} from {recipient}. Trx: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(35, 12, 'push', 'Request Sent', '{amount} requested from {recipient}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(36, 12, 'sms', NULL, 'Requested {amount} from {recipient}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(37, 13, 'email', 'Request Received', 'You have a request of {amount} from {sender}. Trx: {trx}.', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(38, 13, 'push', 'Request Received', 'Incoming request {amount} from {sender}.', 1, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(39, 13, 'sms', NULL, 'Request of {amount} from {sender}. Trx: {trx}', 0, '2025-05-20 05:14:36', '2025-05-20 05:14:36'),
(40, 14, 'email', 'Request Approved', 'Your money request of {amount} has been approved by {receiver}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(41, 14, 'push', 'Request Approved', 'Request of {amount} approved by {receiver}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(42, 14, 'sms', NULL, 'Approved: {amount} by {receiver}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(43, 15, 'email', 'Request Rejected', 'Your money request of {amount} was rejected by {receiver}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(44, 15, 'push', 'Request Rejected', 'Request of {amount} rejected by {receiver}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(45, 15, 'sms', NULL, 'Rejected: {amount} by {receiver}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(46, 16, 'email', 'Exchange Completed', 'You exchanged {from_amount} {from_currency} to {to_amount} {to_currency}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(47, 16, 'push', 'Exchange Successful', 'Exchanged {from_amount} {from_currency} → {to_amount} {to_currency}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(48, 16, 'sms', NULL, 'Exchanged {from_amount} to {to_amount}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(49, 17, 'email', 'Voucher Redeemed', 'You redeemed voucher {voucher_code} worth {amount}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(50, 17, 'push', 'Voucher Redeemed', '{amount} added from voucher.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(51, 17, 'sms', NULL, 'Voucher {voucher_code} redeemed. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(52, 18, 'email', 'Payment Successful', 'Paid {amount} to {merchant}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(53, 18, 'push', 'Payment Completed', 'Payment of {amount} successful.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(54, 18, 'sms', NULL, 'Paid {amount} to {merchant}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(55, 19, 'email', 'Payment Received', 'Received {amount} from payer. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(56, 19, 'push', 'New Payment', '{payer} paid you {amount}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(57, 19, 'sms', NULL, 'Payment of {amount} by {payer}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(58, 20, 'email', 'Balance Credited', 'Admin {admin} added {amount}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(59, 20, 'push', 'Balance Added', '{amount} credited by admin.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(60, 20, 'sms', NULL, 'Added {amount} by admin {admin}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(61, 21, 'email', 'Balance Deducted', 'Admin {admin} deducted {amount}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(62, 21, 'push', 'Balance Deducted', '{amount} deducted by admin.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(63, 21, 'sms', NULL, 'Deducted {amount} by {admin}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(64, 22, 'email', 'Withdraw Request', 'User {user} requested withdrawal of {amount} via {method}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(65, 22, 'push', 'Withdraw Request', '{user} requested {amount} withdraw.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(66, 22, 'sms', NULL, '{user} requested withdraw {amount}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(67, 23, 'email', 'Auto Withdraw Logged', 'User {user} completed auto withdrawal of {amount}. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(68, 23, 'push', 'Auto Withdraw Completed', '{user} auto withdrew {amount}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(69, 23, 'sms', NULL, '{user} auto withdraw {amount}. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(70, 24, 'email', 'Withdraw Request Submitted', 'Your withdrawal request of {amount} via {method} has been submitted. Trx: {trx}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(71, 24, 'push', 'Withdraw Requested', 'You requested withdraw of {amount}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(72, 24, 'sms', NULL, 'Withdraw {amount} requested. Trx: {trx}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(73, 25, 'email', 'Withdraw Approved', 'Your withdrawal of {amount} via {method} has been approved.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(74, 25, 'push', 'Withdraw Approved', '{amount} approved for withdrawal.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(75, 25, 'sms', NULL, 'Withdrawal {amount} approved.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(76, 26, 'email', 'Withdraw Rejected', 'Your withdrawal of {amount} via {method} was rejected. Reason: {reason}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(77, 26, 'push', 'Withdraw Rejected', 'Withdraw {amount} rejected.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(78, 26, 'sms', NULL, 'Withdrawal {amount} rejected. Reason: {reason}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(79, 27, 'email', 'Referral Reward', 'You earned {amount} for referring {referred_user}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(80, 27, 'push', 'Referral Reward', 'Earned {amount} reward.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(81, 27, 'sms', NULL, 'Referral reward {amount} earned.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(82, 28, 'email', 'Reward Granted', 'You received {amount}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(83, 28, 'push', 'Reward Received', '{amount} reward credited for achieving a new rank..', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(84, 28, 'sms', NULL, 'Reward {amount} received.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(85, 29, 'email', 'New Ticket Submitted', 'User {user} opened ticket #{ticket_number}: {subject}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(86, 29, 'push', 'New Support Ticket', 'Ticket {ticket_number} created by {user}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(87, 29, 'sms', NULL, 'New ticket #{ticket_number} from {user}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(88, 30, 'email', 'Support Reply', 'We replied to ticket {ticket_number}: {subject}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(89, 30, 'push', 'Ticket Reply', 'Reply to ticket #{ticket_number}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(90, 30, 'sms', NULL, 'Reply for ticket #{ticket_number}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(91, 31, 'email', 'Reply on Ticket #{ticket_number}', 'User {user} replied to ticket #{ticket_number}: {subject}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(92, 31, 'push', 'Ticket #{ticket_number} Reply', '{user} replied to support ticket #{ticket_number}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(93, 31, 'sms', NULL, 'User {user} replied on ticket #{ticket_number}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(94, 32, 'email', 'Ticket Closed', 'Your ticket #{ticket_number} is now closed.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(95, 32, 'push', 'Ticket Closed', 'Ticket {ticket_number} closed.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(96, 32, 'sms', NULL, 'Ticket #{ticket_number} closed.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(97, 33, 'email', 'New Merchant Shop Request', 'Merchant {user} requested a new shop named \"{business_name}\" with website: {site_url} and contact: {business_email}. Please review.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(98, 33, 'push', 'New Merchant Request', '{user} submitted new shop: {business_name}.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(99, 33, 'sms', NULL, 'Shop \"{business_name}\" requested by {user}.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(100, 34, 'email', 'Shop Approved', 'Good news! Your shop \"{business_name}\" has been approved. You can now start accepting payments.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(101, 34, 'push', 'Shop Approved', 'Shop \"{business_name}\" is approved.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(102, 34, 'sms', NULL, 'Shop \"{business_name}\" approved. Start using it.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(103, 35, 'email', 'Shop Request Rejected', 'Sorry, your shop \"{business_name}\" was rejected. Reason: {rejection_reason}. Please update and resubmit.', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(104, 35, 'push', 'Shop Rejected', 'Your shop \"{business_name}\" was rejected.', 1, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(105, 35, 'sms', NULL, 'Shop \"{business_name}\" rejected. Reason: {rejection_reason}', 0, '2025-05-20 05:14:37', '2025-05-20 05:14:37'),
(118, 37, 'email', 'New Virtual Card Request', 'User {user} submitted a virtual card request for {network} network (wallet: {wallet}). Please review and approve.', 1, '2025-06-19 08:45:11', '2025-06-19 08:45:11'),
(119, 37, 'push', 'Virtual Card Request', '{user} requested a {network} card.', 1, '2025-06-19 08:45:11', '2025-06-19 08:45:11'),
(120, 37, 'sms', NULL, 'Virtual card request: {user}, {network}, {wallet}', 0, '2025-06-19 08:45:11', '2025-06-19 08:45:11'),
(121, 36, 'email', 'Your Virtual Card is Ready!', 'Congratulations! Your {card_network} card (****{last4}) has been approved and added to your wallet ({wallet}). Issuing fee: {fee}.', 1, '2025-06-19 08:45:11', '2025-06-19 08:45:11'),
(122, 36, 'push', 'Virtual Card Approved', 'Your {card_network} card is approved.', 1, '2025-06-19 08:45:11', '2025-06-19 08:45:11'),
(123, 36, 'sms', NULL, '{card_network} card (****{last4}) approved.', 0, '2025-06-19 08:45:11', '2025-06-19 08:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_breadcrumb` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `component_ids`, `type`, `breadcrumb`, `is_breadcrumb`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": \"Home\", \"es\": \"Hogar\"}', '/', '[\"1\", \"2\", \"4\", \"5\", \"6\", \"7\", \"8\", \"9\", \"10\", \"11\", \"13\", \"14\", \"29\"]', 'static', NULL, 0, 1, '2025-03-26 12:31:30', '2025-04-14 04:11:16'),
(2, '{\"en\": \"Blog\", \"es\": \"Blog\"}', 'blog', '[\"12\"]', 'static', NULL, 1, 1, '2025-04-12 03:09:57', '2025-04-14 02:35:28'),
(4, '{\"en\": \"About\", \"es\": \"acerca de\"}', 'about', '[\"2\"]', 'dynamic', NULL, 1, 1, '2025-04-08 04:06:54', '2025-05-24 20:23:48'),
(5, '{\"en\": \"Privacy\", \"es\": \"Privacidad\"}', 'privacy', '[\"30\"]', 'dynamic', NULL, 1, 1, '2025-04-08 04:07:11', '2025-05-25 02:28:15'),
(12, '{\"en\": \"Terms & Conditions\", \"es\": \"Términos y Condiciones\"}', 'terms-conditions', '[\"31\"]', 'dynamic', NULL, 1, 1, '2025-05-16 19:38:05', '2025-05-16 19:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `page_components`
--

CREATE TABLE `page_components` (
  `id` bigint UNSIGNED NOT NULL,
  `component_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int DEFAULT NULL,
  `repeated_content` tinyint(1) NOT NULL DEFAULT '0',
  `page_id` int DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status of the component',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page_components`
--

INSERT INTO `page_components` (`id`, `component_icon`, `component_name`, `component_key`, `content_data`, `type`, `sort`, `repeated_content`, `page_id`, `is_protected`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general/static/component/banner.png', 'Banner', 'banner', '{\"background_image\":\"images\\/2025\\/04\\/10\\/20250410_055802_hero_bg_SfUo.png\",\"hero_main_image\":\"images\\/2025\\/08\\/06\\/20250806_150806_untitled_design_2_removebg_preview_81mj.png\",\"shape_image_1\":\"images\\/2025\\/04\\/10\\/20250410_060504_frame_1_YXLr.png\",\"shape_image_2\":\"images\\/2025\\/04\\/10\\/20250410_060504_frame_2_P1Qe.png\",\"shape_image_3\":\"images\\/2025\\/04\\/10\\/20250410_060444_frame_3_T2YI.png\",\"subheading\":{\"en\":\"Welcome to E-Gatepay Wallet\",\"es\":\"Bienvenido a la billetera DigiKash\"},\"heading\":{\"en\":\"Manage Your Money More Quickly\",\"es\":\"Administra tu dinero m\\u00e1s r\\u00e1pido\"},\"description\":{\"en\":\"Send, receive, deposit, request, invest, and exchange money globally in multiple currencies \\u2014 easily, quickly, and safely, with great rates and low fees.\",\"es\":\"Env\\u00eda, recibe, deposita, solicita, invierte y cambia dinero globalmente en m\\u00faltiples monedas, de manera f\\u00e1cil, r\\u00e1pida y segura, con excelentes tarifas y bajas comisiones.\"},\"button_text\":{\"en\":\"My Account\",\"es\":\"Mi Billetera\"},\"button_url\":\"\\/user\\/dashboard\"}', 'static', 1, 0, NULL, 0, 1, NULL, '2025-08-06 10:08:06'),
(2, 'general/static/component/about.png', 'About', 'about', '{\"main_image\":\"images\\/2025\\/04\\/10\\/20250410_072254_a_1_OtCO.png\",\"bg_shape_image\":\"images\\/2025\\/04\\/10\\/20250410_072335_bg_shape_06d9.png\",\"content_shape_image\":\"images\\/2025\\/04\\/10\\/20250410_072425_content_shape_HCJ4.png\",\"about_tool_shape_image\":\"images\\/2025\\/04\\/10\\/20250410_072604_tool_shape_Evex.png\",\"title_bar_image\":\"images\\/2025\\/04\\/10\\/20250410_072622_title_bar_8RzP.png\",\"subheading\":{\"en\":\"About E-Gatepay\",\"es\":\"Sobre DigiKash\"},\"heading\":{\"en\":\"Why Choose E-Gatepay\",\"es\":\"Por qu\\u00e9 elegir DigiKash\"},\"description\":{\"en\":\"Manage your money easily with E-Gatepay. Send, receive, and exchange funds instantly in multiple currencies \\u2014 all with low fees and great rates.\",\"es\":\"Administra tu dinero f\\u00e1cilmente con DigiKash. Env\\u00eda, recibe y cambia fondos al instante en m\\u00faltiples monedas, con bajas comisiones y excelentes tarifas.\"},\"additional_description\":{\"en\":\"E-Gatepay empowers you to control your finances with ease \\u2014 send, store, and spend globally with unmatched speed and security.\",\"es\":\"DigiKash te permite controlar tus finanzas con facilidad: env\\u00eda, guarda y gasta a nivel global con velocidad y seguridad incomparables.\"},\"button_text\":{\"en\":\"Open Wallet\",\"es\":\"Abrir Billetera\"},\"button_url\":\"\\/user\\/wallet\\/list\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-08-05 11:48:11'),
(4, 'general/static/component/feature.png', 'Feature', 'feature', '{\"heading\": {\"en\": \"Special Key Features\", \"es\": \"Características Clave Especiales\"}, \"subheading\": {\"en\": \"Features\", \"es\": \"Características\"}, \"title_bar_image\": \"images/2025/04/10/20250410_164848_title_bar_EDPV.png\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-10 10:54:28'),
(5, 'general/static/component/services.png', 'Services', 'service', '{\"heading\": {\"en\": \"Our Perfect Solutions\", \"es\": \"Nuestras Soluciones Perfectas\"}, \"subheading\": {\"en\": \"Our Services\", \"es\": \"Nuestros Servicios\"}, \"title_bar_image\": \"images/2025/04/10/20250410_183109_title_bar_IAxb.png\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-10 12:31:09'),
(6, 'general/static/component/work_process.png', 'Work Process', 'work_process', '{\"heading\": {\"en\": \"Our Process\", \"es\": \"Nuestro Proceso\"}, \"subheading\": {\"en\": \"How It Works\", \"es\": \"Cómo Funciona\"}, \"title_bar_image\": \"images/2025/04/11/20250411_015314_title_bar_qAs5.png\", \"line_shape_image\": \"images/2025/04/11/20250411_015314_line_41DR.png\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-10 19:53:14'),
(7, 'general/static/component/offer.png', 'Offer & Counter', 'offer', '{\"button_url\": \"/register\", \"button_text\": {\"en\": \"Sign Up Now\", \"es\": \"Regístrate Ahora\"}, \"offer_title\": {\"en\": \"Get the Bonus Offer $99\", \"es\": \"Obtén la Oferta de Bono de $99\"}, \"background_image\": \"images/2025/04/11/20250411_070408_cta_offer_bg_BJfW.jpg\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-05-20 08:20:16'),
(8, 'general/static/component/special-feature.png', 'Special Feature', 'special_feature', '{\"heading\": {\"en\": \"Exploring Our Special Features\", \"es\": \"Explorando Nuestras Funciones Especiales\"}, \"subheading\": {\"en\": \"Special Features\", \"es\": \"Funciones Especiales\"}, \"description\": {\"en\": \"Easily manage your money, transfer securely, and track all transactions with real-time settlement and multi-currency support.\", \"es\": \"Administra fácilmente tu dinero, transfiere de forma segura y rastrea todas las transacciones con liquidaciones en tiempo real y soporte multimoneda.\"}, \"title_bar_image\": \"images/2025/04/11/20250411_123549_title_bar_7LBF.png\", \"feature_center_image\": \"images/2025/04/11/20250411_122827_feature_image_qsKq.jpg\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-11 06:35:49'),
(9, 'general/static/component/testimonial.png', 'Testimonial', 'testimonial', '{\"heading\": {\"en\": \"What People Say About DigiKash\", \"es\": \"Lo que la gente dice sobre DigiKash\"}, \"subheading\": {\"en\": \"Our Testimonials\", \"es\": \"Nuestros Testimonios\"}, \"title_bar_image\": \"images/2025/04/11/20250411_132416_title_bar_5ZSI.png\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-11 07:24:16'),
(10, 'general/static/component/team.png', 'Team', 'team', '{\"heading\": {\"en\": \"DigiKash Expert Team Members\", \"es\": \"Miembros Expertos del Equipo de DigiKash\"}, \"subheading\": {\"en\": \"Our Experts\", \"es\": \"Nuestros Expertos\"}, \"title_bar_image\": \"images/2025/04/11/20250411_134907_title_bar_wEBm.png\"}', 'static', 1, 1, NULL, 0, 1, NULL, '2025-04-11 07:49:07'),
(11, 'general/static/component/blog.png', 'Blog', 'blog', '{\"heading\": {\"en\": \"Our Latest Blog Posts\", \"es\": \"Nuestras Últimas Entradas de Blog\"}, \"button_url\": \"/blog\", \"subheading\": {\"en\": \"Our Blog\", \"es\": \"Nuestro Blog\"}, \"button_text\": {\"en\": \"View All Blogs\", \"es\": \"Ver Todos los Blogs\"}, \"title_bar_image\": \"images/2025/04/11/20250411_145046_title_bar_cZ0e.png\"}', 'static', 1, 0, NULL, 0, 1, NULL, '2025-05-20 08:18:04'),
(12, 'general/static/component/blog-standard.png', 'Blog Standard', 'blog_standard', '{}', 'static', 1, 0, 2, 1, 1, NULL, '2025-04-11 08:50:46'),
(13, 'general/static/component/contact.png', 'Contact', 'contact', '{\"heading\": {\"en\": \"Let’s Get in Touch\", \"es\": \"Pongámonos en contacto\"}, \"subheading\": {\"en\": \"Contact Us\", \"es\": \"Contáctanos\"}, \"contact_image\": \"images/2025/04/13/20250413_181952_c1_MWgM.jpg\", \"title_bar_image\": \"images/2025/04/13/20250413_181952_title_bar_Hti0.png\"}', 'static', 1, 0, NULL, 0, 1, NULL, '2025-04-13 12:19:52'),
(14, 'general/static/component/payment.png', 'Payment Partners', 'payment_partner', '{\"section_heading\": {\"en\": \"Our Payment Partners\", \"es\": \"Nuestros socios de pago\"}}', 'static', 1, 0, NULL, 0, 1, NULL, '2025-04-14 03:25:21'),
(29, 'general/static/component/subscribed.png', 'Subscribed', 'subscribed', '{\"heading\": {\"en\": \"Get Subscribed Today!\", \"es\": \"¡Suscríbete hoy!\"}, \"button_text\": {\"en\": \"Subscribe\", \"es\": \"Suscribirse\"}, \"email_image\": \"images/2025/04/14/20250414_101517_email_xhcQ.png\", \"small_title\": {\"en\": \"Don’t Miss Our Future Updates!\", \"es\": \"¡No te pierdas nuestras futuras actualizaciones!\"}, \"dot_shape_image\": \"images/2025/04/14/20250414_101517_dot_shape_uPFR.png\"}', 'static', 1, 0, NULL, 0, 1, NULL, '2025-04-14 04:15:17'),
(30, 'images/2025/05/17/20250517_010841_compliant_1_DM5w.png', 'Privecy', 'privecy', '{\"content\": {\"en\": \"<div><h3><span style=\\\"font-weight:bolder;\\\"><span style=\\\"font-weight:bolder;\\\">Privacy Policy</span></span></h3></div><div><p>At <span style=\\\"font-weight:bolder;\\\">Digikash</span>, your privacy is our priority. This policy outlines how we collect, use, and protect your information when you use our wallet services.</p></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">1. Information We Collect</span></h4></div><div><p>We may collect the following types of data:</p></div><div><span style=\\\"font-weight:bolder;\\\">  <span style=\\\"font-weight:bolder;\\\">Personal Details:</span> Name, email address, phone number</span></div><div><span style=\\\"font-weight:bolder;\\\">  <span style=\\\"font-weight:bolder;\\\">Transactional Data:</span> Deposits, withdrawals, transfers</span></div><div><span style=\\\"font-weight:bolder;\\\">  <span style=\\\"font-weight:bolder;\\\">Device Information:</span> IP address, browser type</span></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">2. How We Use Your Information</span></h4></div><div><p>Your information is used to:</p></div><div><span style=\\\"font-weight:bolder;\\\">  Deliver and improve our wallet services</span></div><div><span style=\\\"font-weight:bolder;\\\">  Prevent fraudulent or unauthorized access</span></div><div><span style=\\\"font-weight:bolder;\\\">  Comply with applicable legal and regulatory obligations</span></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">3. Data Security</span></h4></div><div><p>We secure your personal information using encryption, firewalls, and two-factor authentication. These measures help ensure the safety and confidentiality of your data.</p></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">4. Third-Party Sharing</span></h4></div><div><p>We do not sell or rent your personal data. Information may be shared only with:</p></div><div><span style=\\\"font-weight:bolder;\\\">  Government or legal authorities when required</span></div><div><span style=\\\"font-weight:bolder;\\\">  Trusted service providers, such as payment processors</span></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">5. Your Rights</span></h4></div><div><p>You have the right to:</p></div><div><span style=\\\"font-weight:bolder;\\\">  Access the personal data we hold about you</span></div><div><span style=\\\"font-weight:bolder;\\\">  Request corrections or deletions of your data</span></div><div><span style=\\\"font-weight:bolder;\\\">  Withdraw consent to data processing at any time</span></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">6. Cookies</span></h4></div><div><p>We use cookies to enhance your experience and analyze usage trends. You may control or disable cookies through your browser settings.</p></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">7. Policy Updates</span></h4></div><div><p>This privacy policy may be updated occasionally. Any significant changes will be posted on our platform to keep you informed.</p></div><div><span style=\\\"font-weight:bolder;\\\"><br></span></div><div><h4><span style=\\\"font-weight:bolder;\\\">8. Contact Us</span></h4></div><div><p>If you have questions or concerns regarding this policy, you may contact us at <a href=\\\"mailto:support@digikash.com\\\">support@digikash.com</a>.</p></div><div><br></div>\", \"es\": \"<p>Política de PrivacidadEn Digikash, la privacidad de nuestros usuarios es una prioridad. Esta política explica cómo recopilamos, usamos y protegemos su información cuando utiliza nuestros servicios de billetera digital.1. Información que RecopilamosPodemos recopilar los siguientes tipos de datos:  Datos personales: Nombre, dirección de correo electrónico, número de teléfono  Datos de transacciones: Depósitos, retiros, transferencias  Información del dispositivo: Dirección IP, tipo de navegador2. Cómo Usamos Su InformaciónUtilizamos su información para:  Ofrecer y mejorar nuestros servicios  Prevenir fraudes y accesos no autorizados  Cumplir con obligaciones legales y regulatorias3. Seguridad de los DatosProtegemos su información mediante cifrado, cortafuegos y autenticación de dos factores. Estas medidas garantizan la confidencialidad y seguridad de sus datos.4. Compartición con TercerosNo vendemos ni alquilamos su información personal. Solo podrá compartirse con:  Autoridades legales cuando sea requerido  Proveedores de servicios confiables, como procesadores de pagos5. Sus DerechosUsted tiene derecho a:  Acceder a su información personal  Solicitar la corrección o eliminación de sus datos  Retirar su consentimiento en cualquier momento6. CookiesUtilizamos cookies para mejorar su experiencia y analizar el uso del sitio. Puede controlar o desactivar las cookies desde la configuración de su navegador.7. Actualizaciones de la PolíticaEsta política puede actualizarse ocasionalmente. Cualquier cambio importante será notificado a través de nuestra plataforma.8. ContáctenosSi tiene preguntas o inquietudes sobre esta política, puede escribirnos a support@digikash.com.</p>\"}}', 'dynamic', NULL, 0, NULL, 0, 1, '2025-05-16 19:08:41', '2025-07-14 13:22:06'),
(31, 'images/2025/05/17/20250517_013710_terms_and_conditions_mIcA.png', 'Terms & Conditions', 'terms_conditions', '{\"content\": {\"en\": \"<h3><span style=\\\"font-weight:bolder;\\\">Terms and Conditions</span></h3><p>These Terms and Conditions govern your use of the Digikash wallet platform. By registering or using our services, you agree to comply with the following terms. Please read them carefully.</p><p><br></p><h4>1. Acceptance of Terms</h4><p>By accessing or using Digikash, you confirm that you have read, understood, and agree to be bound by these Terms. If you do not agree, you may not use our services.</p><p><br></p><h4>2. User Eligibility</h4><p>You must be at least 18 years old or the legal age in your jurisdiction to use this platform. By creating an account, you confirm that all registration information provided is accurate and up-to-date.</p><p><br></p><h4>3. Account Security</h4><p>You are responsible for maintaining the confidentiality of your account credentials. Digikash will not be liable for any loss or damage resulting from unauthorized access to your account.</p><p><br></p><h4>4. Acceptable Use</h4><p>You agree not to misuse the service for illegal activities, including but not limited to fraud, money laundering, or any activity that violates applicable laws and regulations.</p><p><br></p><h4>5. Transactions and Fees</h4><p>All transactions are subject to applicable fees, which may vary depending on the service. Digikash reserves the right to modify fee structures at any time with prior notice.</p><p><br></p><h4>6. Service Availability</h4><p>We strive to maintain uninterrupted service but do not guarantee 100% uptime. Scheduled maintenance or unforeseen issues may result in temporary unavailability.</p><p><br></p><h4>7. Suspension or Termination</h4><p>We reserve the right to suspend or terminate your account without notice if we suspect any breach of these Terms or any unlawful activity.</p><p><br></p><h4>8. Limitation of Liability</h4><p>Digikash is not liable for any indirect, incidental, or consequential damages arising out of your use or inability to use the platform.</p><p><br></p><h4>9. Changes to Terms</h4><p>We may revise these Terms from time to time. Updated versions will be posted on our platform, and continued use of the service constitutes acceptance of the revised terms.</p><p><br></p><h4>10. Contact Information</h4><p>If you have any questions or concerns regarding these Terms, please contact us at <a href=\\\"mailto:support@digikash.com\\\">support@digikash.com</a>.</p><div><br></div>\", \"es\": \"<p>Términos y CondicionesEstos Términos y Condiciones regulan el uso de la plataforma Digikash. Al registrarse o utilizar nuestros servicios, usted acepta cumplir con los siguientes términos. Por favor, léalos detenidamente.1. Aceptación de los TérminosAl acceder o utilizar Digikash, usted confirma que ha leído, entendido y aceptado estos Términos. Si no está de acuerdo, no debe utilizar nuestros servicios.2. Elegibilidad del UsuarioDebe tener al menos 18 años de edad o la edad legal en su jurisdicción para utilizar esta plataforma. Al crear una cuenta, confirma que la información proporcionada es precisa y actualizada.3. Seguridad de la CuentaUsted es responsable de mantener la confidencialidad de sus credenciales. Digikash no será responsable por pérdidas o daños derivados del acceso no autorizado a su cuenta.4. Uso AceptableUsted se compromete a no utilizar el servicio para actividades ilegales, incluyendo pero no limitándose al fraude, lavado de dinero o cualquier acción que viole las leyes y regulaciones aplicables.5. Transacciones y TarifasTodas las transacciones están sujetas a tarifas aplicables, que pueden variar según el servicio. Digikash se reserva el derecho de modificar la estructura de tarifas en cualquier momento con previo aviso.6. Disponibilidad del ServicioNos esforzamos por mantener un servicio continuo, pero no garantizamos una disponibilidad del 100%. El mantenimiento programado o problemas imprevistos pueden causar interrupciones temporales.7. Suspensión o TerminaciónNos reservamos el derecho de suspender o cancelar su cuenta sin previo aviso si se sospecha una violación de estos Términos o cualquier actividad ilegal.8. Limitación de ResponsabilidadDigikash no será responsable por daños indirectos, incidentales o consecuentes derivados del uso o la imposibilidad de usar la plataforma.9. Cambios en los TérminosPodemos actualizar estos Términos ocasionalmente. Las versiones actualizadas se publicarán en nuestra plataforma, y el uso continuo del servicio implica su aceptación.10. Información de ContactoSi tiene preguntas o inquietudes sobre estos Términos, puede contactarnos a través de support@digikash.com.</p>\"}}', 'dynamic', NULL, 0, NULL, 0, 1, '2025-05-16 19:37:10', '2025-07-14 13:18:12'),
(32, 'images/2025/08/07/20250807_153043_3d_render_secure_login_password_illustration_DmTA.jpg', 'Merchant Registration Complete', 'merchant_registration_complete', '{\"content\":{\"en\":\"<p>Your account has been created. Our team will contact you via email shortly for KYC verification and next steps.<\\/p>\",\"es\":\"<p>Your account has been created. Our team will contact you via email shortly for KYC verification and next steps.<\\/p>\"}}', 'dynamic', NULL, 0, NULL, 0, 1, '2025-08-07 10:30:43', '2025-08-07 10:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `page_component_repeated_contents`
--

CREATE TABLE `page_component_repeated_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `component_id` bigint UNSIGNED NOT NULL,
  `content_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `page_component_repeated_contents`
--

INSERT INTO `page_component_repeated_contents` (`id`, `component_id`, `content_data`, `created_at`, `updated_at`) VALUES
(7, 2, '{\"about_text\": {\"en\": \"Experience fast and secure money transfers across the globe.\", \"es\": \"Experimenta transferencias de dinero rápidas y seguras en todo el mundo\"}, \"about_title\": {\"en\": \"Secure Transactions\", \"es\": \"Transacciones Seguras\"}, \"about_icon_class\": \"fas fa-hand-holding-dollar\"}', '2025-04-10 00:28:50', '2025-04-10 06:37:08'),
(8, 2, '{\"about_text\": {\"en\": \"Access your funds anytime, anywhere with multi-currency support.\", \"es\": \"Accede a tus fondos en todo momento con soporte multimoneda.\"}, \"about_title\": {\"en\": \"Global Wallet Access\", \"es\": \"Acceso Global a la Billetera\"}, \"about_icon_class\": \"fas fa-wallet\"}', '2025-04-10 00:30:04', '2025-04-10 06:33:39'),
(15, 4, '{\"feature_icon_class\":\"icon-icon7\",\"feature_title\":{\"en\":\"Stable Usability\",\"es\":\"Usabilidad Estable\"},\"feature_text\":{\"en\":\"Enjoy a smooth, consistent wallet experience across all devices with E-Gatepay, ensuring reliability and efficiency every time.\",\"es\":\"Disfruta de una experiencia de billetera fluida y consistente en todos los dispositivos con DigiKash, garantizando confiabilidad y eficiencia en todo momento.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:49:03'),
(16, 4, '{\"feature_icon_class\":\"icon-icon8\",\"feature_title\":{\"en\":\"Different Wallet\",\"es\":\"Cartera Diferente\"},\"feature_text\":{\"en\":\"Easily create and manage multiple wallets for personal savings, business transactions, and global investments through E-Gatepay.\",\"es\":\"Crea y gestiona f\\u00e1cilmente m\\u00faltiples carteras para ahorros personales, transacciones comerciales e inversiones globales con DigiKash.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:49:36'),
(17, 4, '{\"feature_icon_class\":\"icon-icon9\",\"feature_title\":{\"en\":\"Multiple Currency\",\"es\":\"Moneda M\\u00faltiple\"},\"feature_text\":{\"en\":\"Send, receive, and exchange money in multiple currencies instantly, all while enjoying the best rates through E-Gatepay.\",\"es\":\"Env\\u00eda, recibe e intercambia dinero en m\\u00faltiples monedas al instante, disfrutando siempre de las mejores tarifas con DigiKash.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:50:03'),
(18, 4, '{\"feature_icon_class\":\"icon-icon9\",\"feature_title\":{\"en\":\"Fast Transaction\",\"es\":\"Transacci\\u00f3n R\\u00e1pida\"},\"feature_text\":{\"en\":\"Experience ultra-fast money transfers worldwide with minimal fees, powered by E-Gatepay\'s cutting-edge technology.\",\"es\":\"Experimenta transferencias de dinero ultrarr\\u00e1pidas en todo el mundo con tarifas m\\u00ednimas, impulsadas por la tecnolog\\u00eda avanzada de DigiKash.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:50:16'),
(19, 4, '{\"feature_icon_class\":\"icon-icon11\",\"feature_title\":{\"en\":\"Safe Transaction\",\"es\":\"Transacci\\u00f3n Segura\"},\"feature_text\":{\"en\":\"Keep your money safe with E-Gatepay, where every transaction is protected by advanced, bank-grade security protocols.\",\"es\":\"Mant\\u00e9n tu dinero seguro con DigiKash, donde cada transacci\\u00f3n est\\u00e1 protegida por protocolos de seguridad avanzados de nivel bancario.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:50:23'),
(20, 4, '{\"feature_icon_class\":\"icon-icon12\",\"feature_title\":{\"en\":\"Various Method\",\"es\":\"Varios M\\u00e9todos\"},\"feature_text\":{\"en\":\"Enjoy flexible deposit and withdrawal options with E-Gatepay, supporting multiple secure methods for your convenience.\",\"es\":\"Disfruta de opciones flexibles de dep\\u00f3sito y retiro con DigiKash, que admite m\\u00faltiples m\\u00e9todos seguros para tu comodidad.\"}}', '2025-04-10 17:27:20', '2025-08-05 11:50:29'),
(25, 5, '{\"service_image\":\"images\\/2025\\/04\\/10\\/20250410_183859_01_6Eac.jpg\",\"service_title\":{\"en\":\"Instant Wallet Transfers\",\"es\":\"Transferencias Instant\\u00e1neas de Billetera\"},\"service_text\":{\"en\":\"Send money instantly between E-Gatepay wallets worldwide with just a few clicks.\",\"es\":\"Env\\u00eda dinero instant\\u00e1neamente entre billeteras DigiKash en todo el mundo con solo unos clics.\"}}', '2025-04-10 18:37:02', '2025-08-05 11:51:18'),
(26, 5, '{\"service_image\":\"images\\/2025\\/04\\/10\\/20250410_183908_02_Nd1O.jpg\",\"service_title\":{\"en\":\"Multi-Currency Support\",\"es\":\"Soporte Multimoneda\"},\"service_text\":{\"en\":\"Operate with various global currencies and easily convert funds within E-Gatepay.\",\"es\":\"Opera con diversas monedas globales y convierte fondos f\\u00e1cilmente dentro de DigiKash.\"}}', '2025-04-10 18:37:02', '2025-08-05 11:51:24'),
(27, 5, '{\"service_image\":\"images\\/2025\\/04\\/10\\/20250410_183921_03_RLju.jpg\",\"service_title\":{\"en\":\"Secure Online Payments\",\"es\":\"Pagos en L\\u00ednea Seguros\"},\"service_text\":{\"en\":\"Accept and make secure online payments for goods and services using E-Gatepay.\",\"es\":\"Acepta y realiza pagos en l\\u00ednea seguros para bienes y servicios utilizando DigiKash.\"}}', '2025-04-10 18:37:02', '2025-08-05 11:51:31'),
(28, 5, '{\"service_image\":\"images\\/2025\\/04\\/10\\/20250410_190030_19199349_4V2O.jpg\",\"service_title\":{\"en\":\"Merchant Payment Solutions\",\"es\":\"Soluciones de Pago para Comerciantes\"},\"service_text\":{\"en\":\"Grow your business with E-Gatepay\'s flexible and secure merchant payment solutions.\",\"es\":\"Haz crecer tu negocio con las soluciones de pago flexibles y seguras de DigiKash.\"}}', '2025-04-10 18:37:02', '2025-08-05 11:51:38'),
(29, 6, '{\"step_title\": {\"en\": \"Choose a Service\", \"es\": \"Elige un Servicio\"}, \"step_icon_class\": \"icon-icon1\", \"step_description\": {\"en\": \"Select the service you need from our platform with ease.\", \"es\": \"Selecciona el servicio que necesitas desde nuestra plataforma con facilidad.\"}}', '2025-04-11 01:54:42', '2025-04-11 01:54:42'),
(30, 6, '{\"step_title\": {\"en\": \"Define Requirements\", \"es\": \"Define Requisitos\"}, \"step_icon_class\": \"icon-icon2\", \"step_description\": {\"en\": \"Specify the requirements to help us tailor the solution for you.\", \"es\": \"Especifica los requisitos para que podamos adaptar la solución para ti.\"}}', '2025-04-11 01:54:42', '2025-04-11 01:54:42'),
(31, 6, '{\"step_title\": {\"en\": \"Request a Meeting\", \"es\": \"Solicitar una Reunión\"}, \"step_icon_class\": \"icon-icon3\", \"step_description\": {\"en\": \"Schedule a meeting with our team to discuss your project details.\", \"es\": \"Programa una reunión con nuestro equipo para discutir los detalles de tu proyecto.\"}}', '2025-04-11 01:54:42', '2025-04-11 01:54:42'),
(32, 6, '{\"step_title\": {\"en\": \"Final Solution Delivery\", \"es\": \"Entrega de la Solución Final\"}, \"step_icon_class\": \"icon-icon4\", \"step_description\": {\"en\": \"Receive the final solution that meets your expectations.\", \"es\": \"Recibe la solución final que cumpla con tus expectativas.\"}}', '2025-04-11 01:54:42', '2025-04-11 01:54:42'),
(37, 7, '{\"counter_title\": {\"en\": \"Total User\", \"es\": \"Total de Usuarios\"}, \"counter_number\": \"25623\", \"counter_prefix\": \"\", \"counter_suffix\": \"\"}', '2025-04-11 07:11:55', '2025-04-11 07:11:55'),
(38, 7, '{\"counter_title\": {\"en\": \"Total Money Sent\", \"es\": \"Total de Dinero Enviado\"}, \"counter_number\": \"3.5\", \"counter_prefix\": \"$\", \"counter_suffix\": \"M\"}', '2025-04-11 07:11:55', '2025-04-11 07:11:55'),
(39, 7, '{\"counter_title\": {\"en\": \"Total Received\", \"es\": \"Total Recibido\"}, \"counter_number\": \"6.5\", \"counter_prefix\": \"$\", \"counter_suffix\": \"M\"}', '2025-04-11 07:11:55', '2025-04-11 07:11:55'),
(40, 7, '{\"counter_title\": {\"en\": \"Daily Transaction\", \"es\": \"Transacciones Diarias\"}, \"counter_number\": \"59623\", \"counter_prefix\": \"\", \"counter_suffix\": \"\"}', '2025-04-11 07:11:55', '2025-04-11 07:11:55'),
(41, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123558_icon1_Y2MR.png\", \"feature_text\": {\"en\": \"Easily transfer money between your wallets and bank accounts securely.\", \"es\": \"Transfiere dinero fácilmente entre tus billeteras y cuentas bancarias de forma segura.\"}, \"feature_title\": {\"en\": \"Account Transfers\", \"es\": \"Transferencias de Cuenta\"}}', '2025-04-11 12:22:47', '2025-04-11 06:35:58'),
(42, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123605_icon2_bv3D.png\", \"feature_text\": {\"en\": \"Settle your transactions flexibly at your convenience with real-time tracking.\", \"es\": \"Liquida tus transacciones de manera flexible y con seguimiento en tiempo real.\"}, \"feature_title\": {\"en\": \"Flexible Settlement\", \"es\": \"Liquidación Flexible\"}}', '2025-04-11 12:22:47', '2025-04-11 06:36:05'),
(43, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123612_icon3_FBbg.png\", \"feature_text\": {\"en\": \"Quickly match your transactions for complete financial clarity and reports.\", \"es\": \"Conciliación rápida de transacciones para claridad y reportes financieros.\"}, \"feature_title\": {\"en\": \"Easy Reconciliation\", \"es\": \"Conciliación Fácil\"}}', '2025-04-11 12:22:47', '2025-04-11 06:36:12'),
(44, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123619_icon4_Ay3L.png\", \"feature_text\": {\"en\": \"Multiple payment channels to send and receive funds globally with ease.\", \"es\": \"Múltiples canales de pago para enviar y recibir fondos globalmente.\"}, \"feature_title\": {\"en\": \"Payment Channel Options\", \"es\": \"Opciones de Canales de Pago\"}}', '2025-04-11 12:22:47', '2025-04-11 06:36:19'),
(45, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123627_icon5_1Bfh.png\", \"feature_text\": {\"en\": \"Settle payments safely with our bank-grade encrypted settlement network.\", \"es\": \"Liquida pagos de forma segura con nuestra red de cifrado de nivel bancario.\"}, \"feature_title\": {\"en\": \"Secure Settlements\", \"es\": \"Liquidaciones Seguras\"}}', '2025-04-11 12:22:47', '2025-04-11 06:36:27'),
(46, 8, '{\"feature_icon\": \"images/2025/04/11/20250411_123634_icon6_DdCm.png\", \"feature_text\": {\"en\": \"Test all transactions risk-free with our fully functional sandbox mode.\", \"es\": \"Prueba todas las transacciones sin riesgo con nuestro modo sandbox funcional.\"}, \"feature_title\": {\"en\": \"Fully Featured Sandbox\", \"es\": \"Sandbox Completamente Funcional\"}}', '2025-04-11 12:22:47', '2025-04-11 06:36:34'),
(47, 9, '{\"client_image\":\"images\\/2025\\/04\\/11\\/20250411_133154_client1_ubBg.jpg\",\"client_name\":{\"en\":\"Kristin Watson\",\"es\":\"Kristin Watson\"},\"client_position\":{\"en\":\"Web Designer\",\"es\":\"Dise\\u00f1ador Web\"},\"comment_text\":{\"en\":\"Using E-Gatepay has made my international transactions effortless and fast.\",\"es\":\"Usar DigiKash ha hecho que mis transacciones internacionales sean f\\u00e1ciles y r\\u00e1pidas.\"},\"rating\":\"5\"}', '2025-04-11 13:30:55', '2025-08-05 11:52:43'),
(48, 9, '{\"rating\": \"4\", \"client_name\": {\"en\": \"Brooklyn Simmons\", \"es\": \"Brooklyn Simmons\"}, \"client_image\": \"images/2025/04/11/20250411_133220_client2_ZQos.jpg\", \"comment_text\": {\"en\": \"A reliable platform to manage and send money worldwide, highly recommended!\", \"es\": \"Una plataforma confiable para gestionar y enviar dinero en todo el mundo, ¡muy recomendada!\"}, \"client_position\": {\"en\": \"App Developer\", \"es\": \"Desarrollador de Aplicaciones\"}}', '2025-04-11 13:30:55', '2025-04-11 07:32:20'),
(49, 9, '{\"rating\": \"4\", \"client_name\": {\"en\": \"Darlene Robertson\", \"es\": \"Darlene Robertson\"}, \"client_image\": \"images/2025/04/11/20250411_133227_client3_U5Uj.jpg\", \"comment_text\": {\"en\": \"The best wallet app I have ever used — smooth experience and strong security.\", \"es\": \"La mejor aplicación de billetera que he usado: experiencia fluida y gran seguridad.\"}, \"client_position\": {\"en\": \"Freelancer\", \"es\": \"Freelancer\"}}', '2025-04-11 13:30:55', '2025-04-11 07:32:27'),
(50, 10, '{\"name\": {\"en\": \"Darlene Robertson\", \"es\": \"Darlene Robertson\"}, \"team_image\": \"images/2025/04/11/20250411_134922_team1_Ma8U.jpg\", \"designation\": {\"en\": \"Financial Advisor\", \"es\": \"Asesora Financiera\"}, \"twitter_url\": \"https://twitter.com/darlene\", \"facebook_url\": \"https://facebook.com/darlene\", \"linkedin_url\": \"https://linkedin.com/in/darlene\", \"pinterest_url\": \"https://pinterest.com/darlene\"}', '2025-04-11 13:48:44', '2025-04-11 07:49:22'),
(51, 10, '{\"name\": {\"en\": \"Leslie Alexander\", \"es\": \"Leslie Alexander\"}, \"team_image\": \"images/2025/04/11/20250411_134929_team2_8O92.jpg\", \"designation\": {\"en\": \"Account Manager\", \"es\": \"Gerente de Cuentas\"}, \"twitter_url\": \"https://twitter.com/leslie\", \"facebook_url\": \"https://facebook.com/leslie\", \"linkedin_url\": \"https://linkedin.com/in/leslie\", \"pinterest_url\": \"https://pinterest.com/leslie\"}', '2025-04-11 13:48:44', '2025-04-11 07:49:29'),
(52, 10, '{\"name\": {\"en\": \"Ralph Edwards\", \"es\": \"Ralph Edwards\"}, \"team_image\": \"images/2025/04/11/20250411_134935_team3_S0Un.jpg\", \"designation\": {\"en\": \"Payment Solutions Expert\", \"es\": \"Experto en Soluciones de Pago\"}, \"twitter_url\": \"https://twitter.com/ralph\", \"facebook_url\": \"https://facebook.com/ralph\", \"linkedin_url\": \"https://linkedin.com/in/ralph\", \"pinterest_url\": \"https://pinterest.com/ralph\"}', '2025-04-11 13:48:44', '2025-04-11 07:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Code for payment gateway e.g. paypal, stripe, razorpay',
  `currencies` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Json encoded currencies',
  `credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Json encoded credentials',
  `withdraw_field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipn` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `logo`, `name`, `code`, `currencies`, `credentials`, `withdraw_field`, `ipn`, `status`, `created_at`, `updated_at`) VALUES
(1, 'general/static/gateway/paypal.png', 'Paypal', 'paypal', '[\"USD\", \"EUR\", \"GBP\", \"CAD\", \"AUD\", \"JPY\", \"SGD\", \"NZD\", \"CHF\", \"SEK\", \"NOK\", \"DKK\", \"PLN\", \"HUF\", \"CZK\", \"ILS\", \"BRL\", \"MXN\", \"HKD\", \"TWD\", \"TRY\", \"INR\", \"RUB\", \"ZAR\", \"MYR\", \"THB\", \"IDR\", \"PHP\", \"NGN\", \"GHS\"]', '{\"client_id\":\"AU8UU5EUmN3osoPAAGOwuthxSDmXUi1E8C52inCAKL6M_zrroAj8ibGyzT-_nRK5MxxKkUw3O14VCMf7\",\"client_secret\":\"EGpkCB9YVSIuk53wXD2xIPZGCzMv-0XN603ioeOGIzYHJiUHDfCuSrAUN8wTT6W7KJFC265DN-rCPFC7\",\"app_id\":\"APP-80W284485P519543T\",\"mode\":\"sandbox\"}', 'email', 1, 1, '2024-08-11 13:35:35', '2025-07-14 14:40:37'),
(2, 'general/static/gateway/stripe.png', 'Stripe', 'stripe', '[\"USD\",\"AUD\",\"BRL\",\"CAD\",\"CHF\",\"DKK\",\"EUR\",\"GBP\",\"HKD\",\"INR\",\"JPY\",\"MXN\",\"MYR\",\"NOK\",\"NZD\",\"PLN\",\"SEK\",\"SGD\"]', '{\"stripe_key\":\"pk_test_51QCDexGMiQWh4ibfOPw9hZolWrnVD8Y3VSxJH9sSbwb0jGEfA1n3kztLwGTiztJtfLsJ87MP0ZycGMJiUW8A3d2000Twic22WG\",\"stripe_secret\":\"sk_test_51QCDexGMiQWh4ibfKcun6XAlwtBGf01KeBaEsGBfeQzyWmn04mInGDXT5cYxOVXGJcC0l1rwuH7c3rkxjGX5KABC00tGislRIA\",\"webhook_secret\":\"whsec_PWkKsIVVBmmhIksj8tCWzLz4eQfF945P\"}', NULL, 1, 1, '2025-04-14 09:14:11', '2025-05-18 01:02:01'),
(3, 'general/static/gateway/mollie.png', 'Mollie', 'mollie', '[\"EUR\", \"USD\", \"GBP\", \"CAD\", \"AUD\", \"CHF\", \"DKK\", \"NOK\", \"SEK\", \"PLN\", \"CZK\", \"HUF\", \"RON\", \"BGN\", \"HRK\", \"ISK\", \"ZAR\"]', '{\"api_key\":\"test_intSTCDEBaDSu28D6DUpn5wnQhTnzB\"}', NULL, 0, 1, '2025-04-14 09:14:11', '2025-05-18 10:00:23'),
(4, 'general/static/gateway/twocheckout.png', '2Checkout', 'twocheckout', '[\"USD\",\"EUR\",\"GBP\",\"CAD\",\"AUD\"]', '{\"merchant_code\":\"255633005943\",\"secret_key\":\"]m3H_k|^(Z+)sun#wTt8\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 04:36:24'),
(5, 'general/static/gateway/coinbase.png', 'Coinbase', 'coinbase', '[\"USD\", \"EUR\", \"GBP\", \"CAD\", \"AUD\", \"JPY\", \"BTC\", \"ETH\", \"LTC\", \"BCH\", \"XRP\", \"EOS\"]', '{\"api_key\":\"8ef6c4ca-f5c7-4717-9d9a-002adf7e7590\",\"webhook_secret\":\"b789f547-8954-4880-89ae-5a0233006647\"}', NULL, 1, 1, '2025-04-14 09:14:11', '2025-04-14 09:14:11'),
(6, 'general/static/gateway/paystack.png', 'Paystack', 'paystack', '[\"NGN\", \"USD\", \"GBP\", \"EUR\", \"GHS\", \"KES\", \"ZAR\", \"UGX\", \"TZS\", \"RWF\"]', '{\"public_key\":\"pk_test_b5e4a4477cb7a0a897972a5ba5fc819acafbc638\",\"secret_key\":\"sk_test_434461a79ce3d904e004076eba06ab6a02665d57\",\"merchant_email\":\"coevs.dev@gmail.com\"}', NULL, 1, 1, '2025-04-14 09:14:11', '2025-04-14 09:14:11'),
(7, 'general/static/gateway/flutterwave.png', 'Flutterwave', 'flutterwave', '[\"USD\", \"EUR\", \"GBP\", \"NGN\", \"GHS\", \"KES\", \"ZAR\", \"UGX\", \"TZS\", \"RWF\", \"CAD\", \"AUD\", \"JPY\", \"INR\"]', '{\"public_key\":\"FLWPUBK_TEST-9a294e81b66857f0f0f3e1f793d90e3f-X\",\"secret_key\":\"FLWSECK_TEST-ff0c925381c35872203637a5aa7a59d0-X\",\"encryption_key\":\"FLWSECK_TEST21afba65b376\"}', NULL, 1, 1, '2025-04-14 09:14:11', '2025-04-14 09:14:11'),
(8, 'general/static/gateway/cryptomus.png', 'Cryptomus', 'cryptomus', '[\"BCH\",\"BNB\",\"BTC\",\"BUSD\",\"CGPT\",\"DAI\",\"DASH\",\"DOFE\",\"ETH\",\"LTC\",\"MATIC\",\"TON\",\"TRX\",\"USDC\",\"USDT\",\"VERSE\",\"XMR\"]\r\n\r\n', '{\"api_key\":\"pk_test_uQ4LFWCBE3dT84uQnt7ycL7p9WcSwjkSPQaZbik3ChoWO0egw51f4EAaZQ\",\"merchant_id\":\"c26b80a8-9549-4a66-bb53-774f12809249\"}', NULL, 0, 1, '2025-04-14 09:14:11', '2025-05-19 00:31:51'),
(9, 'general/static/gateway/moneroo.svg', 'Moneroo', 'moneroo', '[\"USD\",\"EUR\",\"GBP\",\"BTC\",\"ETH\"]', '{\"api_key\":\"pvk_sandbox_teb330|01K120C7BN2TXPT6D1BYQFEZ24\",\"api_secret\":\"api_secret\",\"webhook_signing_secret\":\"digikash\"}', NULL, 1, 1, NULL, '2025-07-29 04:41:45'),
(10, 'general/static/gateway/strowallet.png', 'Strowallet', 'strowallet', '[\"USD\",\"NGN\"]', '{\"public_key\":\"public_key\",\"secret_key\":\"secret_key\",\"mode\":\"sandbox\"}', NULL, 1, 1, NULL, '2025-07-03 05:38:20'),
(11, 'general/static/gateway/binance.png', 'Binance Pay', 'binance', '[\"USDT\",\"BTC\",\"ETH\",\"BNB\",\"BUSD\",\"USD\",\"EUR\"]', '{\"certificate_sn\":\"certificate_sn\",\"private_key\":\"private_key\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:30:10'),
(12, 'general/static/gateway/airtel.png', 'Airtel Money', 'airtel', '[\"UGX\",\"KES\",\"TZS\",\"RWF\",\"ZMW\"]', '{\"client_id\":\"client_id\",\"client_secret\":\"client_secret\",\"country\":\"UG\",\"currency\":\"UGX\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:41:55'),
(13, 'general/static/gateway/blockchain.png', 'Blockchain.info', 'blockchain', '[\"BTC\"]', '{\"receive_address\":\"receive_address\",\"callback_secret\":\"callback_secret\",\"required_confirmations\":1}', NULL, 1, 1, NULL, NULL),
(14, 'general/static/gateway/blockio.png', 'Block.io', 'blockio', '[\"BTC\",\"LTC\",\"DOGE\"]', '{\"api_key\":\"api_key\",\"required_confirmations\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:42:03'),
(15, 'general/static/gateway/btcpayserver.png', 'BTCPay Server', 'bitpayserver', '[\"BTC\",\"USD\",\"EUR\",\"GBP\"]', '{\"server_url\":\"https:\\/\\/your-btcpay-server.com\",\"api_token\":\"api_token\"}', NULL, 1, 1, NULL, NULL),
(16, 'general/static/gateway/cashmaal.png', 'Cashmaal', 'cashmaal', '[\"USD\",\"EUR\",\"GBP\",\"PKR\"]', '{\"web_id\":\"web_id\"}', NULL, 1, 1, NULL, NULL),
(17, 'general/static/gateway/coingate.png', 'CoinGate', 'coingate', '[\"EUR\",\"USD\",\"BTC\",\"ETH\",\"LTC\"]', '{\"auth_token\":\"auth_token\",\"receive_currency\":\"EUR\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:42:19'),
(18, 'general/static/gateway/coinpayments.svg', 'CoinPayments', 'coinpayments', '[\"BTC\",\"ETH\",\"LTC\",\"USDT\",\"USD\",\"EUR\"]', '{\"public_key\":\"public_key\",\"private_key\":\"private_key\",\"ipn_secret\":\"ipn_secret\",\"currency2\":\"BTC\"}', NULL, 1, 1, NULL, NULL),
(19, 'general/static/gateway/instamojo.png', 'Instamojo', 'instamojo', '[\"INR\"]', '{\"api_key\":\"api_key\",\"auth_token\":\"auth_token\",\"phone\":\"9999999999\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:42:30'),
(20, 'general/static/gateway/mtn.png', 'MTN Mobile Money', 'mtn', '[\"UGX\",\"GHS\",\"ZAR\",\"XAF\",\"EUR\"]', '{\"subscription_key\":\"subscription_key\",\"user_id\":\"user_id\",\"api_key\":\"api_key\",\"test_msisdn\":\"256774290781\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:42:36'),
(21, 'general/static/gateway/nowpayments.png', 'NOWPayments', 'nowpayments', '[\"BTC\",\"ETH\",\"USDT\",\"LTC\",\"BCH\",\"USD\",\"EUR\"]', '{\"api_key\":\"api_key\",\"ipn_secret\":\"ipn_secret\",\"pay_currency\":\"BTC\",\"sandbox\":\"1\"}', NULL, 1, 1, NULL, '2025-07-29 07:41:40'),
(22, 'general/static/gateway/razorpay.png', 'Razorpay', 'razorpay', '[\"INR\",\"USD\",\"EUR\",\"GBP\"]', '{\"key_id\":\"key_id\",\"key_secret\":\"key_secret\"}', NULL, 1, 1, NULL, NULL),
(23, 'general/static/gateway/voguepay.png', 'Voguepay', 'voguepay', '[\"NGN\",\"USD\",\"GBP\",\"EUR\"]', '{\"merchant_id\":\"merchant_id\"}', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `category`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard-stats', 'admin', NULL, NULL),
(2, 'dashboard', 'transactions-chart', 'admin', NULL, NULL),
(3, 'dashboard', 'wallet-balance', 'admin', NULL, NULL),
(4, 'dashboard', 'earning-chart', 'admin', NULL, NULL),
(5, 'dashboard', 'wallet-growth', 'admin', NULL, NULL),
(6, 'dashboard', 'wallet-latest-transactions', 'admin', NULL, NULL),
(7, 'dashboard', 'wallet-latest-users', 'admin', NULL, NULL),
(8, 'user', 'user-list', 'admin', NULL, NULL),
(9, 'user', 'user-create', 'admin', NULL, NULL),
(10, 'user', 'user-manage', 'admin', NULL, NULL),
(11, 'user', 'user-delete', 'admin', NULL, NULL),
(12, 'user', 'user-activity-log', 'admin', NULL, NULL),
(13, 'user', 'user-login-as', 'admin', NULL, NULL),
(14, 'user', 'user-balance-manage', 'admin', NULL, NULL),
(15, 'user', 'user-features-manage', 'admin', NULL, NULL),
(16, 'role', 'role-list', 'admin', NULL, NULL),
(17, 'role', 'role-create', 'admin', NULL, NULL),
(18, 'role', 'role-edit', 'admin', NULL, NULL),
(19, 'role', 'role-delete', 'admin', NULL, NULL),
(20, 'staff', 'staff-list', 'admin', NULL, NULL),
(21, 'staff', 'staff-create', 'admin', NULL, NULL),
(22, 'staff', 'staff-edit', 'admin', NULL, NULL),
(23, 'merchant', 'merchant-list', 'admin', NULL, NULL),
(24, 'merchant', 'merchant-manage', 'admin', NULL, NULL),
(25, 'merchant', 'merchant-request-notification', 'admin', NULL, NULL),
(26, 'kyc', 'kyc-list', 'admin', NULL, NULL),
(27, 'kyc', 'kyc-action', 'admin', NULL, NULL),
(28, 'kyc', 'kyc-notification', 'admin', NULL, NULL),
(29, 'kyc', 'kyc-template-list', 'admin', NULL, NULL),
(30, 'kyc', 'kyc-template-manage', 'admin', NULL, NULL),
(31, 'virtual-card', 'virtual-card-list', 'admin', NULL, NULL),
(32, 'virtual-card', 'virtual-card-action', 'admin', NULL, NULL),
(33, 'virtual-card', 'virtual-card-notification', 'admin', NULL, NULL),
(34, 'virtual-card', 'virtual-card-provider-manage', 'admin', NULL, NULL),
(35, 'deposit', 'deposit-list', 'admin', NULL, NULL),
(36, 'deposit', 'deposit-action', 'admin', NULL, NULL),
(37, 'deposit', 'deposit-method-list', 'admin', NULL, NULL),
(38, 'deposit', 'deposit-method-manage', 'admin', NULL, NULL),
(39, 'deposit', 'deposit-notification', 'admin', NULL, NULL),
(40, 'withdraw', 'withdraw-list', 'admin', NULL, NULL),
(41, 'withdraw', 'withdraw-action', 'admin', NULL, NULL),
(42, 'withdraw', 'withdraw-method-list', 'admin', NULL, NULL),
(43, 'withdraw', 'withdraw-method-manage', 'admin', NULL, NULL),
(44, 'withdraw', 'withdraw-schedule', 'admin', NULL, NULL),
(45, 'withdraw', 'withdraw-notification', 'admin', NULL, NULL),
(46, 'payment', 'payment-gateway-list', 'admin', NULL, NULL),
(47, 'payment', 'payment-gateway-configure', 'admin', NULL, NULL),
(48, 'site-settings', 'site-setting-view', 'admin', NULL, NULL),
(49, 'site-settings', 'site-setting-update', 'admin', NULL, NULL),
(50, 'language', 'language-list', 'admin', NULL, NULL),
(51, 'language', 'language-create', 'admin', NULL, NULL),
(52, 'language', 'language-manage', 'admin', NULL, NULL),
(53, 'navigation', 'navigation-manage', 'admin', NULL, NULL),
(54, 'page', 'page-list', 'admin', NULL, NULL),
(55, 'page', 'page-create', 'admin', NULL, NULL),
(56, 'page', 'page-edit', 'admin', NULL, NULL),
(57, 'page', 'page-delete', 'admin', NULL, NULL),
(58, 'page', 'page-footer-manage', 'admin', NULL, NULL),
(59, 'component', 'component-list', 'admin', NULL, NULL),
(60, 'component', 'component-manage', 'admin', NULL, NULL),
(61, 'blog', 'blog-list', 'admin', NULL, NULL),
(62, 'blog', 'blog-create', 'admin', NULL, NULL),
(63, 'blog', 'blog-edit', 'admin', NULL, NULL),
(64, 'blog', 'blog-delete', 'admin', NULL, NULL),
(65, 'blog', 'blog-category-list', 'admin', NULL, NULL),
(66, 'blog', 'blog-category-manage', 'admin', NULL, NULL),
(67, 'subscriber', 'subscriber-list', 'admin', NULL, NULL),
(68, 'subscriber', 'subscriber-manage', 'admin', NULL, NULL),
(69, 'social', 'social-list', 'admin', NULL, NULL),
(70, 'social', 'social-manage', 'admin', NULL, NULL),
(71, 'transaction', 'transaction-list', 'admin', NULL, NULL),
(72, 'ranking', 'ranking-manage', 'admin', NULL, NULL),
(73, 'referral', 'referral-manage', 'admin', NULL, NULL),
(74, 'user', 'custom-notify-users', 'admin', NULL, NULL),
(75, 'notification', 'notification-list', 'admin', NULL, NULL),
(76, 'notification', 'notification-plugin-list', 'admin', NULL, NULL),
(77, 'notification', 'notification-template-list', 'admin', NULL, NULL),
(78, 'notification', 'notification-template-manage', 'admin', NULL, NULL),
(79, 'support', 'support-ticket-list', 'admin', NULL, NULL),
(80, 'support', 'support-ticket-category-manage', 'admin', NULL, NULL),
(81, 'support', 'support-ticket-manage', 'admin', NULL, NULL),
(82, 'support', 'support-ticket-notification', 'admin', NULL, NULL),
(83, 'seo', 'seo-manage', 'admin', NULL, NULL),
(84, 'currency', 'currency-manage', 'admin', NULL, NULL),
(85, 'plugins', 'plugins-manage', 'admin', NULL, NULL),
(86, 'app', 'app-info', 'admin', NULL, NULL),
(87, 'app', 'style-manager', 'admin', NULL, NULL),
(88, 'app', 'app-clear-cache', 'admin', NULL, NULL),
(89, 'app', 'app-optimize', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields_blade` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `type`, `name`, `code`, `fields_blade`, `credentials`, `logo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'general', 'Google reCAPTCHA v3', 'google-recaptcha', NULL, '{\"recaptcha_key\":\"6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI\",\"recaptcha_secret\":\"6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe\"}', 'general/static/plugins/google-recaptcha.svg', 'reCAPTCHA v3 helps you detect abusive traffic on your website without user interaction\r\n', 0, NULL, '2025-06-09 03:27:29'),
(2, 'general', 'Facebook Messenger', 'fb', NULL, '{\"page_id\":\"990335491009901\"}', 'general/static/plugins/fb.png', 'Messenger is a proprietary instant messaging app and platform developed by Meta\r\n\r\n', 0, NULL, '2024-08-25 11:07:39'),
(3, 'general', 'Google Analytics 4', 'google-analytics', NULL, '{\"ga_measurement_id\":\"G-XXXXXXXXXX\"}', 'general/static/plugins/google-analytics.png', 'Google Analytics 4 is an analytics service that lets you to measure traffic and engagement across your websites and apps\n\n', 0, NULL, '2024-05-20 11:06:55'),
(4, 'general', 'Tawk Chat', 'tawk', NULL, '{\"property_id\":\"65e857468d261e1b5f6953aa\",\"widget_id\":\"1ho9p9rq8\"}', 'general/static/plugins/tawk.png', 'Free Instant Messaging system\r\n', 0, NULL, '2024-05-20 11:06:58'),
(5, 'general', 'IPinfo.io', 'ipinfo', NULL, '{\"access_token\":\"deb49413e0bc6a\"}', 'general/static/plugins/ipinfo.svg', 'The Trusted Source For IP Address Data\r\n', 1, NULL, '2025-03-17 18:28:23'),
(11, 'exchange_rate', 'Currencylayer', 'currencylayer', '_exchange_rate', '{\"api_key\":\"0778ef789e953fcde0be156459277bc5\",\"fields\":{\"auto_update_time\":\"2\",\"auto_update_time_unit\":\"1\",\"auto_update_status\":\"1\"}}', 'general/static/plugins/currencylayer.jpg', 'With over 15 exchange rate data sources, the Exchangerates API is delivering exchanging rates data for more than 170 world currencies.', 1, NULL, '2025-08-09 11:44:46'),
(12, 'exchange_rate', 'Coinmarketcap', 'coinmarketcap', '_exchange_rate', '{\"api_key\":\"8cea3244-8c3a-45d8-8061-63957aa6087b\",\"fields\":{\"auto_update_time\":\"1\",\"auto_update_time_unit\":\"1\",\"auto_update_status\":\"1\"}}', 'general/static/plugins/coinmarketcap.png', 'The world\'s cryptocurrency data authority has a professional API', 1, NULL, '2025-08-09 11:44:52'),
(13, 'notification', 'Pusher', 'pusher', NULL, '{\"pusher_app_id\":\"1881381\",\"pusher_app_key\":\"36755f88b2d2f13a9463\",\"pusher_app_secret\":\"f939de8a1ff3f564cb4d\",\"pusher_app_cluster\":\"ap2\"}', 'general/static/plugins/pusher.png', 'Leader In Realtime Technologies.Simple, scalable and reliable.Hosted realtime APIs loved by developers', 0, NULL, '2025-05-20 03:44:41'),
(14, 'notification', 'Twilto', 'twilio', NULL, '{\"account_sid\":\"ACbfdc5b6e20afc5a0290c78af2a349f1b\",\"auth_token\":\"40ebfde743d9311eb81fbd8bfd2207dc\",\"from\":\"+15413954764\"}', 'general/static/plugins/twilto.png', 'Twilio is a cloud service that allows sending and receiving SMS through simple, powerful APIs', 0, NULL, '2025-05-03 14:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `referred_user_id` bigint UNSIGNED DEFAULT NULL,
  `parent_referral_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_contents`
--

CREATE TABLE `referral_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `positive_guidelines` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `negative_guidelines` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `referral_contents`
--

INSERT INTO `referral_contents` (`id`, `heading`, `positive_guidelines`, `negative_guidelines`, `image_path`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Share your unique referral link and earn for every successful signup.\",\"es\":\"Comparte tu enlace de referencia \\u00fanico y gana por cada registro exitoso.\"}', '{\"en\": [\"Easily share the link on social media platforms.\", \"Promote your link through any marketing channel.\", \"Share with friends and family members.\"], \"es\": [\"Comparte fácilmente el enlace en plataformas de redes sociales.\", \"Promociona tu enlace a través de cualquier canal de marketing.\", \"Comparte con amigos y familiares.\"]}', '{\"en\": [\"Multiple accounts from the same device are not allowed.\", \"Automated signups using bots are prohibited.\", \"Fake or misleading information is strictly forbidden.\"], \"es\": [\"No se permiten múltiples cuentas desde el mismo dispositivo.\", \"Los registros automatizados usando bots están prohibidos.\", \"La información falsa o engañosa está estrictamente prohibida.\"]}', 'images/2025/07/21/20250721_144406_gift_PRM5.svg', 1, '2025-07-21 08:32:15', '2025-07-21 08:44:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `type`, `level`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'deposit', 1, 10.00, '2025-01-07 18:42:40', '2025-01-07 18:42:40'),
(4, 'payment', 1, 10.00, '2025-01-07 18:42:40', '2025-01-07 18:42:40'),
(9, 'payment', 2, 2.00, '2025-01-18 08:36:30', '2025-01-18 08:36:38'),
(10, 'payment', 3, 1.00, '2025-01-18 08:36:44', '2025-01-18 08:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Full control over the entire platform including users, roles, system settings, financial configs, and logs.\n', 'admin', '2024-07-08 23:07:24', '2024-07-08 23:07:24'),
(3, 'Finance Manager', 'Handles all financial operations including deposits, withdrawals, and payment gateway configuration.', 'admin', '2024-07-09 12:18:07', '2025-04-15 05:30:59'),
(4, 'Support Executive', 'Provides user support, handles tickets, and verifies user issues with limited dashboard access.', 'admin', '2025-04-15 05:31:17', '2025-04-15 05:31:17'),
(5, 'KYC Officer', 'Reviews and approves/rejects user KYC submissions to ensure identity compliance and fraud prevention.', 'admin', '2025-04-15 05:31:31', '2025-04-15 05:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `val`, `type`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'E-Gatepay', 'string', '2024-07-08 23:08:37', '2025-08-05 17:29:36'),
(2, 'admin_prefix', 'admin', 'string', '2024-07-08 23:08:37', '2024-07-08 23:08:37'),
(3, 'copyright_text', 'Copyright © 2024 E-Gatepay  | All rights reserved', 'string', '2024-07-08 23:08:37', '2025-08-05 11:34:54'),
(4, 'logo', 'images/2025/08/06/20250806_150255_untitled_design_removebg_preview_aoXu.png', 'string', '2024-07-08 23:09:57', '2025-08-06 10:02:55'),
(5, 'light_logo', 'images/2025/08/06/20250806_150255_untitled_design_removebg_preview_qR6M.png', 'string', '2024-07-08 23:09:57', '2025-08-06 10:02:55'),
(6, 'small_logo', 'images/2025/08/06/20250806_150255_untitled_design_removebg_preview_IrAb.png', 'string', '2024-07-08 23:09:57', '2025-08-06 10:02:55'),
(7, 'site_favicon', 'images/2025/08/06/20250806_150042_circle_monogram_logo_removebg_preview_ByzP.png', 'string', '2024-07-08 23:09:57', '2025-08-06 10:00:42'),
(8, 'login_banner', 'images/2025/05/18/20250518_123831_2025_03_07_16_08_50_mobile_payment_illustration_min_cduq_gFjz.jpg', 'string', '2024-07-08 23:10:31', '2025-05-18 06:38:31'),
(9, 'screen_lock', '0', 'bool', '2024-07-14 04:32:48', '2025-03-13 05:17:08'),
(10, 'screen_lock_time', '10', 'integer', '2024-07-14 04:32:48', '2025-03-13 05:17:08'),
(11, 'site_currency_type', 'fiat', 'string', '2024-08-13 01:26:29', '2024-09-01 19:14:17'),
(12, 'site_currency', 'AED', 'string', '2024-08-13 01:27:46', '2024-09-01 19:14:17'),
(13, 'currency_symbol', 'Ξ', 'string', '2024-08-13 01:27:46', '2024-08-22 04:20:25'),
(14, 'force_https', '0', 'bool', '2024-12-02 07:18:54', '2025-03-17 19:43:22'),
(15, 'submission_lock_duration', '1', 'integer', '2024-12-02 07:18:54', '2025-05-06 06:00:11'),
(16, 'support_email', 'coevs.dev@gmail.com', 'string', '2024-12-11 11:49:44', '2025-04-13 18:44:51'),
(17, 'deposit_rewards', '1', 'bool', '2025-01-17 23:59:54', '2025-03-17 00:28:38'),
(18, 'payment_rewards', '1', 'bool', '2025-01-18 00:01:46', '2025-01-18 02:26:03'),
(19, 'secret_key', 'secret', 'string', '2025-02-15 03:41:30', '2025-02-15 03:41:30'),
(20, 'maintenance_title', 'Site is not under maintenance', 'string', '2025-02-15 03:41:30', '2025-02-15 03:41:30'),
(21, 'maintenance_text', 'Sorry for interrupt! Site will live soon.', 'string', '2025-02-15 03:41:30', '2025-02-15 03:41:30'),
(22, 'site_environment', 'local', 'string', '2025-02-15 03:41:30', '2025-06-11 09:28:31'),
(23, 'development_mode', '1', 'bool', '2025-02-15 03:41:30', '2025-06-11 09:28:31'),
(24, 'maintenance_mode', '0', 'bool', '2025-02-15 03:41:30', '2025-02-15 03:41:30'),
(25, 'email_from_name', 'E-gatepay', 'string', '2025-02-24 22:19:37', '2025-08-07 11:00:41'),
(26, 'email_from_address', 'mainaccount@e-gatepay.net', 'string', '2025-02-24 22:19:37', '2025-08-07 11:00:41'),
(27, 'mail_username', '_mainaccount@e-gatepay.net', 'string', '2025-02-24 22:19:37', '2025-08-07 11:01:01'),
(28, 'mail_password', '2[Ys~gNaocM_~TCT', 'string', '2025-02-24 22:19:37', '2025-08-07 11:00:41'),
(29, 'mail_host', 'mail.e-gatepay.net', 'string', '2025-02-24 22:19:37', '2025-08-07 11:00:41'),
(30, 'mail_port', '465', 'integer', '2025-02-24 22:19:37', '2025-02-24 22:19:37'),
(31, 'mail_secure', 'ssl', 'string', '2025-02-24 22:19:37', '2025-08-07 11:00:41'),
(32, 'max_upload_size', '5', 'integer', '2025-04-05 12:37:49', '2025-04-05 12:37:49'),
(33, 'support_phone', '+1234567890', 'string', '2025-04-07 18:29:13', '2025-04-07 18:29:13'),
(34, 'default_breadcrumb_image', 'images/2025/04/09/20250409_095426_breadcrumb_jT3b.jpg', 'string', '2025-04-09 03:54:26', '2025-04-09 03:54:26'),
(35, 'site_timezone', 'Asia/Karachi', 'string', '2025-04-22 23:45:54', '2025-08-05 17:31:38'),
(36, 'home_redirect', '/', 'string', '2025-04-22 23:45:54', '2025-07-20 05:15:33'),
(37, 'cookie_title', 'Cookies Consent', 'string', '2025-05-26 01:59:32', '2025-05-26 01:59:32'),
(38, 'cookie_summary', 'This website use cookies to help you have a superior and more relevant browsing experience on the website.', 'string', '2025-05-26 01:59:32', '2025-05-26 01:59:32'),
(39, 'cookie_url', '/', 'string', '2025-05-26 01:59:32', '2025-05-26 01:59:32'),
(40, 'cookie_status', '0', 'bool', '2025-05-26 01:59:32', '2025-05-26 03:52:34'),
(41, 'site_preloader', '1', 'bool', '2025-07-13 21:25:38', '2025-07-13 21:41:35'),
(42, 'preloaded_text', 's,dfgg,hf', 'string', '2025-07-13 21:25:38', '2025-07-13 21:41:10'),
(43, 'preloader_text', 'E-,G,A,T,E,P,A,Y', 'string', '2025-07-13 21:42:43', '2025-08-05 17:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `settlements`
--

CREATE TABLE `settlements` (
  `id` bigint UNSIGNED NOT NULL,
  `settlement_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unique identifier for the settlement',
  `settlement_date` timestamp NOT NULL COMMENT 'Date of the settlement',
  `settlement_type` enum('manual','automatic') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `settlement_method` enum('bank_transfer','cheque','cash','wallet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bank_transfer',
  `base_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `settlement_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT '1.000000',
  `converted_amount` decimal(15,2) DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `merchant_id` bigint UNSIGNED NOT NULL,
  `merchant_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` timestamp NULL DEFAULT NULL,
  `gross_amount` decimal(15,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `vat_percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `vat_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `gateway_fee_percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `gateway_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `platform_commission` decimal(15,2) NOT NULL DEFAULT '0.00',
  `other_charges` decimal(15,2) NOT NULL DEFAULT '0.00',
  `adjustments` decimal(15,2) NOT NULL DEFAULT '0.00',
  `net_amount` decimal(15,2) NOT NULL,
  `payment_receipts` json DEFAULT NULL,
  `status` enum('pending','processing','approved','rejected','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `processing_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `rejection_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settlements`
--

INSERT INTO `settlements` (`id`, `settlement_id`, `settlement_date`, `settlement_type`, `settlement_method`, `base_currency`, `settlement_currency`, `exchange_rate`, `converted_amount`, `user_id`, `merchant_id`, `merchant_name`, `merchant_email`, `requested_by`, `requested_at`, `gross_amount`, `tax_percentage`, `tax_amount`, `vat_percentage`, `vat_amount`, `gateway_fee_percentage`, `gateway_fee`, `platform_commission`, `other_charges`, `adjustments`, `net_amount`, `payment_receipts`, `status`, `approved_by`, `processing_at`, `approved_at`, `paid_at`, `failed_at`, `transaction_id`, `payment_reference`, `remarks`, `rejection_reason`, `created_at`, `updated_at`) VALUES
(1, 'b8b42333-22fd-4211-bdf9-6ef1a0962773', '2025-08-20 09:12:58', 'manual', 'bank_transfer', 'USD', 'USD', 1.000000, 153.00, 22, 7, NULL, NULL, '1', '2025-08-20 09:12:58', 200.00, 10.00, 20.00, 5.00, 10.00, 2.00, 4.00, 15.00, 10.00, 12.00, 153.00, '\"[\\\"settlements\\\\/receipts\\\\/fp11OXnI19X1yS8BcM2nPSXZXIim4uXMHddlT8pz.jpg\\\"]\"', 'rejected', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new remarks', NULL, '2025-08-20 09:12:58', '2025-08-20 09:12:58'),
(3, '0ea0c5cb-8efb-4f45-adf9-45cf462c2e05', '2025-08-20 09:54:34', 'manual', 'bank_transfer', 'USD', 'USD', 1.000000, 124.50, 22, 7, NULL, NULL, '1', '2025-08-20 09:54:34', 150.00, 10.00, 15.00, 5.00, 7.50, 2.00, 3.00, 0.00, 0.00, 0.00, 124.50, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-20 09:54:34', '2025-08-20 09:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `site_seos`
--

CREATE TABLE `site_seos` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `meta_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `canonical_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'index,follow',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `site_seos`
--

INSERT INTO `site_seos` (`id`, `page_id`, `meta_title`, `meta_description`, `meta_keywords`, `canonical_url`, `robots`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, '{\"en\":\"EGatpay- Secure & Fast Digital Wallet for Easy Payments\",\"es\":\"Digikash - Monedero Digital Seguro y R\\u00e1pido para Pagos F\\u00e1ciles\"}', '{\"en\":\"EGatpay is your trusted digital wallet solution offering instant money transfers, secure online payments, and seamless transactions worldwide.\",\"es\":\"Digikash es tu soluci\\u00f3n confiable de monedero digital que ofrece transferencias de dinero instant\\u00e1neas, pagos en l\\u00ednea seguros y transacciones sin complicaciones en todo el mundo.\"}', '\"digital wallet,send money,receive money,online payment,fast transfer,secure wallet,wallet app,egatepay\"', 'https://test2.brandsvalley.net/', 'index,follow', 'images/2025/04/07/20250407_115616_2025_02_27_15_19_28_logo_t9b0_D4ap.png', '2025-04-06 21:52:10', '2025-08-05 11:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `icon_class`, `target`, `url`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Facebook', 'fab fa-facebook-f', '_blank', 'https://www.facebook.com/yourpage', 1, '2025-04-07 20:31:11', '2025-04-09 10:30:02'),
(5, 'Twitter', 'fab fa-twitter', '_blank', 'https://www.twitter.com/yourprofile', 1, '2025-04-07 20:35:55', '2025-04-07 20:49:39'),
(6, 'LinkedIn', 'fab fa-linkedin-in', '_self', 'https://www.linkedin.com/in/yourprofile', 1, '2025-04-07 20:36:20', '2025-04-07 20:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `subscribed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_categories`
--

INSERT INTO `support_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Genaral', 1, '2025-01-21 00:56:13', '2025-01-21 01:18:15');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `trx_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `trx_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `amount_flow` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` decimal(15,2) DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `net_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payable_amount` decimal(15,2) DEFAULT NULL,
  `payable_currency` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','completed','canceled','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `trx_id`, `trx_token`, `expires_at`, `trx_type`, `description`, `provider`, `processing_type`, `amount`, `amount_flow`, `fee`, `currency`, `net_amount`, `payable_amount`, `payable_currency`, `wallet_reference`, `trx_reference`, `trx_data`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(68, 22, 'TXNRPPFHER6JY2Q', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Twocheckout Usd from Merchant Account (Auto-completed)', 'card', 'auto', 20.00, 'plus', 0.00, 'USD', 20.00, 20.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 1\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User One\",\"customer_email\":\"user@one.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":20,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-19 12:05:36', '2025-08-19 12:05:46'),
(69, 22, 'TXNOQ2IIKJIHQOK', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Mollie Usd from Merchant Account (Auto-completed)', 'mobile', 'auto', 47.50, 'plus', 2.50, 'USD', 47.50, 50.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 1\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User Two\",\"customer_email\":\"user@two.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":50,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'failed', '2025-08-19 12:07:17', '2025-08-19 12:07:29'),
(70, 22, 'TXNNNLYTZ798C2F', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Stripe Usd from Merchant Account (Auto-completed)', 'google_pay', 'auto', 114.00, 'plus', 6.00, 'USD', 114.00, 120.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 1\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User Three\",\"customer_email\":\"user@three.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":120,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'pending', '2025-08-19 12:08:41', '2025-08-19 12:08:51'),
(71, 22, 'TXNBLODBJQMHD5G', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Flutterwave Usd from Merchant Account (Auto-completed)', 'apple_pay', 'auto', 237.50, 'plus', 12.50, 'USD', 237.50, 250.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 1\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User Four\",\"customer_email\":\"user@four.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":250,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-19 12:10:12', '2025-08-19 12:10:25'),
(72, 22, 'TXNJUR8JQXAAEYZ', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Mollie Usd from Merchant Account (Auto-completed)', 'mobile', 'auto', 237.50, 'plus', 12.50, 'USD', 237.50, 250.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 1\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User Five\",\"customer_email\":\"user@five.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":250,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-19 12:11:20', '2025-08-19 12:11:29'),
(73, 22, 'TXNCNSVLDU2BNNY', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Twocheckout Usd from Merchant Account (Auto-completed)', NULL, 'auto', 475.00, 'plus', 25.00, 'USD', 475.00, 500.00, 'USD', '397487489', NULL, '{\"ref_trx\":\"TXNWL0O73DEP\",\"description\":\"Test Payment 2\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/\",\"customer_name\":\"User Six\",\"customer_email\":\"user@six.com\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":500,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-19 12:43:06', '2025-08-19 12:43:22'),
(74, 22, 'TXNX9RKPG0UTV3O', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Twocheckout Usd from Merchant Account (Auto-completed)', NULL, 'auto', 242.25, 'plus', 12.75, 'USD', 242.25, 255.00, 'USD', '578537240', NULL, '{\"ref_trx\":\"TXNRW1SWTJGM\",\"description\":\"Payment Des\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"customer_name\":\"Usama\",\"customer_email\":\"usama@cus\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":255,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-20 06:25:47', '2025-08-20 06:26:30'),
(75, 22, 'TXNQR64VN20FX9K', NULL, NULL, 'receive_payment', 'SANDBOX: Payment via Stripe Usd from Merchant Account (Auto-completed)', NULL, 'auto', 242.25, 'plus', 12.75, 'USD', 242.25, 255.00, 'USD', '578537240', NULL, '{\"ref_trx\":\"TXNRW1SWTJGM\",\"description\":\"Payment Des\",\"ipn_url\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"cancel_redirect\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"success_redirect\":\"http:\\/\\/127.0.0.1:8000\\/api-docs\",\"customer_name\":\"Usama\",\"customer_email\":\"usama@cus\",\"merchant_id\":7,\"merchant_name\":\"Merchant Account\",\"amount\":255,\"currency_code\":\"USD\",\"environment\":\"sandbox\",\"is_sandbox\":true}', 'SANDBOX_TRANSACTION', 'completed', '2025-08-20 06:30:51', '2025-08-20 06:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `payable_amount` decimal(12,2) NOT NULL,
  `referral_code` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank_id` bigint DEFAULT NULL,
  `old_ranks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google2fa_secret` varchar(196) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `payable_amount`, `referral_code`, `rank_id`, `old_ranks`, `avatar`, `first_name`, `last_name`, `business_name`, `business_address`, `username`, `gender`, `birthday`, `phone`, `state`, `city`, `postal_code`, `country`, `address`, `email`, `role`, `email_verified_at`, `google2fa_secret`, `two_factor_enabled`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(22, 4875.50, 'jA5MFWgq', 1, '[]', NULL, 'Merchant', 'Account', NULL, NULL, 'merchant_account', NULL, NULL, '+1838478347', NULL, NULL, NULL, 'US', NULL, 'merchant@account.com', 'merchant', '2025-08-19 10:38:56', 'WRDKM24XUEVUCVTM', 0, 1, '$2y$12$xd9.iWFDQYw66ZU6oMITr.qTGHTisy6Ar.Uce.Hh1J9ckWj29zDie', NULL, '2025-08-19 10:14:25', '2025-08-20 09:54:34'),
(23, 0.00, 'xAOWL63k', 1, '[]', NULL, 'RGB', 'Color', NULL, NULL, 'rgb_color', NULL, NULL, '+154354353', NULL, NULL, NULL, 'US', NULL, 'contactwithusama142@gmail.com', 'merchant', '2025-08-19 11:53:18', NULL, 0, 1, '$2y$12$vgf36aG5U/HkhnILCJL3juLrcIkeDu7GjYqnSj2SRLQX8ax3XmKoe', NULL, '2025-08-19 11:53:19', '2025-08-19 11:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_features`
--

CREATE TABLE `user_features` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `feature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_features`
--

INSERT INTO `user_features` (`id`, `user_id`, `feature`, `description`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(97, 18, 'account_status', 'Controls user login access.', 1, 0, '2025-08-05 18:03:08', '2025-08-06 10:23:45'),
(98, 18, 'email_verification', 'Requires email verification to activate the account.', 1, 1, '2025-08-05 18:03:08', '2025-08-06 10:23:47'),
(99, 18, 'kyc_verification', 'Requires KYC verification before transactions.', 0, 2, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(100, 18, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(101, 18, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(102, 18, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(103, 18, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(104, 18, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-05 18:03:08', '2025-08-05 18:03:08'),
(137, 19, 'account_status', 'Controls user login access.', 0, 0, '2025-08-19 09:54:58', '2025-08-19 10:07:27'),
(138, 19, 'email_verification', 'Requires email verification to activate the account.', 0, 1, '2025-08-19 09:54:58', '2025-08-19 09:54:58'),
(139, 19, 'kyc_verification', 'Requires KYC verification before transactions.', 0, 2, '2025-08-19 09:54:58', '2025-08-19 09:54:58'),
(140, 19, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-19 09:54:58', '2025-08-19 09:54:58'),
(141, 19, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-19 09:54:58', '2025-08-19 09:54:58'),
(142, 19, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-19 09:54:59', '2025-08-19 09:54:59'),
(143, 19, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-19 09:54:59', '2025-08-19 09:54:59'),
(144, 19, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-19 09:54:59', '2025-08-19 09:54:59'),
(145, 20, 'account_status', 'Controls user login access.', 1, 0, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(146, 20, 'email_verification', 'Requires email verification to activate the account.', 0, 1, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(147, 20, 'kyc_verification', 'Requires KYC verification before transactions.', 0, 2, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(148, 20, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(149, 20, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(150, 20, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(151, 20, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(152, 20, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-19 10:11:39', '2025-08-19 10:11:39'),
(153, 21, 'account_status', 'Controls user login access.', 0, 0, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(154, 21, 'email_verification', 'Requires email verification to activate the account.', 0, 1, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(155, 21, 'kyc_verification', 'Requires KYC verification before transactions.', 0, 2, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(156, 21, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(157, 21, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(158, 21, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-19 10:12:39', '2025-08-19 10:12:39'),
(159, 21, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-19 10:12:40', '2025-08-19 10:12:40'),
(160, 21, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-19 10:12:40', '2025-08-19 10:12:40'),
(161, 22, 'account_status', 'Controls user login access.', 1, 0, '2025-08-19 10:14:25', '2025-08-19 11:41:17'),
(162, 22, 'email_verification', 'Requires email verification to activate the account.', 1, 1, '2025-08-19 10:14:25', '2025-08-19 10:38:56'),
(163, 22, 'kyc_verification', 'Requires KYC verification before transactions.', 1, 2, '2025-08-19 10:14:25', '2025-08-19 10:38:57'),
(164, 22, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-19 10:14:25', '2025-08-19 10:14:25'),
(165, 22, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-19 10:14:25', '2025-08-19 10:14:25'),
(166, 22, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-19 10:14:25', '2025-08-19 10:14:25'),
(167, 22, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-19 10:14:26', '2025-08-19 10:14:26'),
(168, 22, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-19 10:14:26', '2025-08-19 10:14:26'),
(169, 23, 'account_status', 'Controls user login access.', 1, 0, '2025-08-19 11:53:19', '2025-08-19 11:56:11'),
(170, 23, 'email_verification', 'Requires email verification to activate the account.', 1, 1, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(171, 23, 'kyc_verification', 'Requires KYC verification before transactions.', 0, 2, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(172, 23, 'deposit', 'Allows users to add funds to their wallet.', 1, 3, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(173, 23, 'exchange_money', 'Allows currency conversion within the wallet.', 1, 4, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(174, 23, 'send_money', 'Allows sending money to other users.', 1, 5, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(175, 23, 'request_money', 'Allows users to request money from others.', 1, 6, '2025-08-19 11:53:19', '2025-08-19 11:53:19'),
(176, 23, 'withdraw', 'Allows withdrawal to linked bank accounts.', 1, 7, '2025-08-19 11:53:19', '2025-08-19 11:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_ranks`
--

CREATE TABLE `user_ranks` (
  `id` bigint UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_amount` int UNSIGNED NOT NULL,
  `transaction_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reward` double NOT NULL DEFAULT '0',
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_ranks`
--

INSERT INTO `user_ranks` (`id`, `is_default`, `icon`, `name`, `transaction_amount`, `transaction_types`, `description`, `reward`, `features`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/2025-01-27_15-07-46_ranking_badge_lQaU.png', 'Starter', 0, '[\"deposit\", \"referral_reward\"]', 'Begin your journey with free access and basic features!', 0, '{\"wallet_create\": \"2\", \"referral_level\": \"2\"}', 1, '2025-01-27 05:39:34', '2025-07-20 11:45:48'),
(2, 0, 'images/2025-01-26_07-22-05_bronze_badge_myon.png', 'Bronze', 200, '[\"deposit\", \"send_money\", \"referral_reward\"]', 'Gain referral levels and earn rewards by completing transactions of $200', 2, '{\"wallet_create\": \"2\", \"referral_level\": \"3\"}', 1, '2025-01-26 01:22:05', '2025-03-12 17:39:18'),
(3, 0, 'images/2025-01-26_07-26-56_silver_medal_aaP2.png', 'Silver', 500, '[\"deposit\", \"send_money\", \"referral_reward\"]', 'Unlock higher referral levels and earn greater rewards by completing transactions of $500 or more!', 10, '{\"wallet_create\": \"5\", \"referral_level\": \"4\"}', 1, '2025-01-26 01:26:56', '2025-01-27 08:13:02'),
(4, 0, 'images/2025-01-26_07-28-08_gold_medal_xRTm.png', 'Gold', 1300, '[\"deposit\", \"pay_money\", \"referral_reward\"]', 'Maximize your earnings with advanced referral levels and exclusive rewards by completing transactions of $1,300 or more!', 50, '{\"wallet_create\": \"10\", \"referral_level\": \"5\"}', 1, '2025-01-26 01:28:08', '2025-01-27 08:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `virtual_cards`
--

CREATE TABLE `virtual_cards` (
  `id` bigint UNSIGNED NOT NULL,
  `virtual_card_request_id` bigint UNSIGNED NOT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `provider_card_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `network` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last4` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_month` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_card_fee_settings`
--

CREATE TABLE `virtual_card_fee_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `operation` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_amount` decimal(12,2) NOT NULL,
  `min_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `max_amount` decimal(12,2) DEFAULT NULL,
  `daily_txn_limit` int DEFAULT NULL,
  `daily_amount_limit` decimal(16,2) DEFAULT NULL,
  `approval_threshold` decimal(12,2) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `virtual_card_fee_settings`
--

INSERT INTO `virtual_card_fee_settings` (`id`, `provider_id`, `currency_id`, `operation`, `fee_type`, `fee_amount`, `min_amount`, `max_amount`, `daily_txn_limit`, `daily_amount_limit`, `approval_threshold`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'topup', 'percent', 2.00, 10.00, 1000.00, NULL, NULL, 200.00, 1, '2025-07-04 10:36:31', '2025-07-04 19:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `virtual_card_providers`
--

CREATE TABLE `virtual_card_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_gateway_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_networks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `supported_currencies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `issue_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `min_balance` decimal(12,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `virtual_card_providers`
--

INSERT INTO `virtual_card_providers` (`id`, `payment_gateway_id`, `name`, `code`, `logo`, `brand`, `description`, `supported_networks`, `supported_currencies`, `issue_fee`, `min_balance`, `status`, `config`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Stripe Issuing', 'stripe', 'general/static/gateway/stripe.png', 'Multi', NULL, '[\"mastercard\", \"visa\"]', '[\"USD\", \"EUR\", \"GBP\"]', 2.00, 10.00, 1, NULL, 1, '2025-06-30 22:20:14', '2025-06-30 22:20:14'),
(2, NULL, 'StroWallet Provider', 'strowallet', 'general/static/gateway/strowallet.png', 'Multi', NULL, '[\"mastercard\", \"visa\"]', '[\"USD\", \"NGN\"]', 1.50, 5.00, 1, NULL, 2, '2025-07-02 23:44:48', '2025-07-02 23:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `virtual_card_requests`
--

CREATE TABLE `virtual_card_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `cardholder_id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `network` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_reviewed_at` timestamp NULL DEFAULT NULL,
  `provider_issued_at` timestamp NULL DEFAULT NULL,
  `provider_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `redeemed_by` bigint UNSIGNED DEFAULT NULL,
  `redeemed_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `redeemed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `currency_id`, `user_id`, `uuid`, `balance`, `status`, `created_at`, `updated_at`) VALUES
(49, 1, 22, '578537240', 0, 1, '2025-08-20 05:32:38', '2025-08-20 05:32:38'),
(50, 5, 22, '534976252', 0, 1, '2025-08-20 05:32:38', '2025-08-20 05:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_accounts`
--

CREATE TABLE `withdraw_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdraw_method_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_gateway_id` int DEFAULT NULL COMMENT 'Payment gateway id',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Icon for the withdraw method',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the withdraw method',
  `type` enum('auto','manual') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'auto = automatic, manual = manual',
  `method_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Unique code for the withdraw method',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Currency of the withdrawal',
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Currency symbol',
  `min_withdraw` double NOT NULL COMMENT 'Minimum withdrawal limit',
  `max_withdraw` double NOT NULL COMMENT 'Maximum withdrawal limit',
  `conversion_rate_live` tinyint(1) DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL COMMENT 'Exchange rate',
  `charge_type` enum('fixed','percent') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'fixed = fixed charge, percent = percent charge',
  `charge` double NOT NULL COMMENT 'Fee charged for withdrawals',
  `user_charge` double DEFAULT NULL COMMENT 'Charge amount for regular users',
  `user_charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent' COMMENT 'Charge type for regular users: fixed or percent (cast to FixPctType enum)',
  `merchant_charge` double DEFAULT NULL COMMENT 'Charge amount for merchant users',
  `merchant_charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent' COMMENT 'Charge type for merchant users: fixed or percent (cast to FixPctType enum)',
  `process_time_value` int DEFAULT '0' COMMENT 'Processing time value',
  `process_time_unit` enum('minute','hour','day') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'minute' COMMENT 'Processing time unit',
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Additional fields required for the withdrawal method',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `payment_gateway_id`, `logo`, `name`, `type`, `method_code`, `currency`, `currency_symbol`, `min_withdraw`, `max_withdraw`, `conversion_rate_live`, `conversion_rate`, `charge_type`, `charge`, `user_charge`, `user_charge_type`, `merchant_charge`, `merchant_charge_type`, `process_time_value`, `process_time_unit`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/2025-03-07_23-20-28_paypal_YLzE.png', 'paypal', 'auto', 'paypal-usd', 'USD', '$', 10, 1000, 0, 1, 'percent', 10, 10, 'percent', 5, 'fixed', NULL, NULL, '[{\"name\":\"email\",\"type\":\"text\",\"validation\":\"required\"}]', 1, '2024-12-29 06:28:15', '2025-07-19 23:32:14'),
(2, NULL, 'images/2025/05/19/20250519_080818_bank_transfer_7K9J.png', 'Bank Transfer', 'manual', 'swift-usd', 'USD', '$', 100, 50000, NULL, 1, 'fixed', 25, NULL, 'percent', NULL, 'percent', 5, 'day', '{\"3\":{\"name\":\"Account Holder Name\",\"type\":\"text\",\"validation\":\"required\"},\"4\":{\"name\":\"Bank Name\",\"type\":\"text\",\"validation\":\"required\"},\"5\":{\"name\":\"SWIFT\\/BIC Code\",\"type\":\"text\",\"validation\":\"required\"},\"6\":{\"name\":\"IBAN\",\"type\":\"text\",\"validation\":\"nullable\"}}', 1, '2025-05-19 02:08:18', '2025-05-19 02:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_schedules`
--

CREATE TABLE `withdraw_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `day` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_schedules`
--

INSERT INTO `withdraw_schedules` (`id`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sunday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(2, 'Monday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(3, 'Tuesday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(4, 'Wednesday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(5, 'Thursday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(6, 'Friday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20'),
(7, 'Saturday', 1, '2024-12-27 22:30:20', '2024-12-27 22:30:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_category_id_foreign` (`category_id`),
  ADD KEY `blogs_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businesses_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cardholders`
--
ALTER TABLE `cardholders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cardholders_user_id_foreign` (`user_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_roles`
--
ALTER TABLE `currency_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_roles_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `custom_codes`
--
ALTER TABLE `custom_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_landings`
--
ALTER TABLE `custom_landings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_landings_folder_unique` (`folder`);

--
-- Indexes for table `deposit_methods`
--
ALTER TABLE `deposit_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_methods_user_charge_index` (`user_charge`),
  ADD KEY `deposit_methods_merchant_charge_index` (`merchant_charge`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footer_items`
--
ALTER TABLE `footer_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_items_footer_section_id_foreign` (`footer_section_id`);

--
-- Indexes for table `footer_sections`
--
ALTER TABLE `footer_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_blocks_ip_address_unique` (`ip_address`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_submissions`
--
ALTER TABLE `kyc_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kyc_submissions_kyc_template_id_foreign` (`kyc_template_id`),
  ADD KEY `kyc_submissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `kyc_templates`
--
ALTER TABLE `kyc_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kyc_templates_title_unique` (`title`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_activities`
--
ALTER TABLE `login_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchants_merchant_key_unique` (`merchant_key`),
  ADD UNIQUE KEY `merchants_site_url_unique` (`site_url`),
  ADD KEY `merchants_user_id_foreign` (`user_id`),
  ADD KEY `merchants_currency_id_foreign` (`currency_id`),
  ADD KEY `merchants_business_name_index` (`business_name`),
  ADD KEY `merchants_status_index` (`status`),
  ADD KEY `merchants_test_api_key_index` (`test_api_key`),
  ADD KEY `merchants_test_merchant_key_index` (`test_merchant_key`),
  ADD KEY `merchants_sandbox_enabled_index` (`sandbox_enabled`),
  ADD KEY `merchants_webhook_url_index` (`webhook_url`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_admin_id_foreign` (`admin_id`),
  ADD KEY `messages_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navigations_slug_unique` (`slug`),
  ADD KEY `navigations_page_id_foreign` (`page_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_templates_identifier_unique` (`identifier`);

--
-- Indexes for table `notification_template_channels`
--
ALTER TABLE `notification_template_channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_template_channels_template_id_foreign` (`template_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_components`
--
ALTER TABLE `page_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_component_repeated_contents`
--
ALTER TABLE `page_component_repeated_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_component_contents_component_id_foreign` (`component_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_foreign` (`user_id`),
  ADD KEY `referrals_referred_user_id_foreign` (`referred_user_id`),
  ADD KEY `referrals_parent_referral_id_foreign` (`parent_referral_id`);

--
-- Indexes for table `referral_contents`
--
ALTER TABLE `referral_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `settlements`
--
ALTER TABLE `settlements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settlements_settlement_id_unique` (`settlement_id`),
  ADD KEY `settlements_user_id_foreign` (`user_id`),
  ADD KEY `settlements_merchant_id_foreign` (`merchant_id`),
  ADD KEY `settlements_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `site_seos`
--
ALTER TABLE `site_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_uuid_unique` (`uuid`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_trx_token_unique` (`trx_token`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_pk` (`referral_code`);

--
-- Indexes for table `user_features`
--
ALTER TABLE `user_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_features_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_ranks`
--
ALTER TABLE `user_ranks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_ranks_name_unique` (`name`);

--
-- Indexes for table `virtual_cards`
--
ALTER TABLE `virtual_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtual_cards_provider_card_id_unique` (`provider_card_id`),
  ADD KEY `virtual_cards_virtual_card_request_id_foreign` (`virtual_card_request_id`),
  ADD KEY `virtual_cards_wallet_id_foreign` (`wallet_id`),
  ADD KEY `virtual_cards_user_id_foreign` (`user_id`),
  ADD KEY `virtual_cards_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `virtual_card_fee_settings`
--
ALTER TABLE `virtual_card_fee_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fee_setting` (`provider_id`,`currency_id`,`operation`),
  ADD KEY `virtual_card_fee_settings_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `virtual_card_providers`
--
ALTER TABLE `virtual_card_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtual_card_providers_code_unique` (`code`),
  ADD KEY `virtual_card_providers_payment_gateway_id_index` (`payment_gateway_id`);

--
-- Indexes for table `virtual_card_requests`
--
ALTER TABLE `virtual_card_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtual_card_requests_uuid_unique` (`uuid`),
  ADD KEY `virtual_card_requests_wallet_id_foreign` (`wallet_id`),
  ADD KEY `virtual_card_requests_user_id_foreign` (`user_id`),
  ADD KEY `id` (`provider_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`),
  ADD KEY `vouchers_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_wallet_id_unique` (`uuid`),
  ADD KEY `wallets_currency_id_foreign` (`currency_id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdraw_accounts`
--
ALTER TABLE `withdraw_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_accounts_user_id_foreign` (`user_id`),
  ADD KEY `withdraw_accounts_withdraw_method_id_foreign` (`withdraw_method_id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_merchant_charges` (`user_charge`,`merchant_charge`);

--
-- Indexes for table `withdraw_schedules`
--
ALTER TABLE `withdraw_schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardholders`
--
ALTER TABLE `cardholders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currency_roles`
--
ALTER TABLE `currency_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `custom_codes`
--
ALTER TABLE `custom_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_landings`
--
ALTER TABLE `custom_landings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposit_methods`
--
ALTER TABLE `deposit_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer_items`
--
ALTER TABLE `footer_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `footer_sections`
--
ALTER TABLE `footer_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3696;

--
-- AUTO_INCREMENT for table `kyc_submissions`
--
ALTER TABLE `kyc_submissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyc_templates`
--
ALTER TABLE `kyc_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login_activities`
--
ALTER TABLE `login_activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification_template_channels`
--
ALTER TABLE `notification_template_channels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_components`
--
ALTER TABLE `page_components`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `page_component_repeated_contents`
--
ALTER TABLE `page_component_repeated_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `referral_contents`
--
ALTER TABLE `referral_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `settlements`
--
ALTER TABLE `settlements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_seos`
--
ALTER TABLE `site_seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_features`
--
ALTER TABLE `user_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `user_ranks`
--
ALTER TABLE `user_ranks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `virtual_cards`
--
ALTER TABLE `virtual_cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtual_card_fee_settings`
--
ALTER TABLE `virtual_card_fee_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `virtual_card_providers`
--
ALTER TABLE `virtual_card_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `virtual_card_requests`
--
ALTER TABLE `virtual_card_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `withdraw_accounts`
--
ALTER TABLE `withdraw_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdraw_schedules`
--
ALTER TABLE `withdraw_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `businesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cardholders`
--
ALTER TABLE `cardholders`
  ADD CONSTRAINT `cardholders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_roles`
--
ALTER TABLE `currency_roles`
  ADD CONSTRAINT `currency_roles_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `footer_items`
--
ALTER TABLE `footer_items`
  ADD CONSTRAINT `footer_items_footer_section_id_foreign` FOREIGN KEY (`footer_section_id`) REFERENCES `footer_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kyc_submissions`
--
ALTER TABLE `kyc_submissions`
  ADD CONSTRAINT `kyc_submissions_kyc_template_id_foreign` FOREIGN KEY (`kyc_template_id`) REFERENCES `kyc_templates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kyc_submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `messages_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notification_template_channels`
--
ALTER TABLE `notification_template_channels`
  ADD CONSTRAINT `notification_template_channels_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `notification_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_component_repeated_contents`
--
ALTER TABLE `page_component_repeated_contents`
  ADD CONSTRAINT `page_component_contents_component_id_foreign` FOREIGN KEY (`component_id`) REFERENCES `page_components` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_parent_referral_id_foreign` FOREIGN KEY (`parent_referral_id`) REFERENCES `referrals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_referred_user_id_foreign` FOREIGN KEY (`referred_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settlements`
--
ALTER TABLE `settlements`
  ADD CONSTRAINT `settlements_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `settlements_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `settlements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_features`
--
ALTER TABLE `user_features`
  ADD CONSTRAINT `user_features_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `virtual_cards`
--
ALTER TABLE `virtual_cards`
  ADD CONSTRAINT `virtual_cards_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `virtual_card_providers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_cards_virtual_card_request_id_foreign` FOREIGN KEY (`virtual_card_request_id`) REFERENCES `virtual_card_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_cards_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `virtual_card_fee_settings`
--
ALTER TABLE `virtual_card_fee_settings`
  ADD CONSTRAINT `virtual_card_fee_settings_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_card_fee_settings_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `virtual_card_providers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `virtual_card_requests`
--
ALTER TABLE `virtual_card_requests`
  ADD CONSTRAINT `virtual_card_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_card_requests_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `withdraw_accounts`
--
ALTER TABLE `withdraw_accounts`
  ADD CONSTRAINT `withdraw_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdraw_accounts_withdraw_method_id_foreign` FOREIGN KEY (`withdraw_method_id`) REFERENCES `withdraw_methods` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
