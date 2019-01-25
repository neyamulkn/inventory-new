-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2019 at 09:41 AM
-- Server version: 10.1.37-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(11, 'sequins', 1, '2019-01-10 16:28:38', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('088d769358cf35007ffe62987f52d6f847ce8513', '103.87.246.240', 1547476749, 0x644164786e43316e333346675754574d635a6a7130683164416d48346952344b585f386c42385837344e6d4a487155754867486750467a734b657a6943466d38495f6c6b554a4c33692d72754969306b41736946496573563253396548586f46536d6664767a374749776e4e594b5f434747435755726131456c6f5f494f7473704e475a574d4253686661747331504b37307a5f74566c56356e634163525469676c63657055385a446a354161546c69425734473966394c4a6c424d43622d634f65785a6e444e54576d5749365075687059416c56772e2e),
('8bcd88b2afa89e4e27f2533a172e00edf560f9c4', '103.87.246.240', 1547476723, 0x6f4175536c664f4e70616a385036687953334430636d76586948777950577742594d35633736593871706c34493355766b563976346b6d4863306e776e5867694b5958776259594c343737326d69395035597a365945635a4c745672523866672d6f6c7466465653355574633848385a4b4875305f55427750443535357668486e4e3262487776486e734f70396e6631694c75767571755856306546305164556f554a537035795944754f453467507549364c6a4c497351667473587561434636777936704c4e6a516146394f6a697a7834497454772e2e),
('1ab0490f843457fae3c93838621aeb8158c8040c', '176.193.120.199', 1547458920, 0x534a6d5a7231386650347546374d673154327a4573594a3473453445625f736d4a624b35424a795978556261535530452d30494d4351795079436f562d6f4d5a753565786e786845674b515f764a674d6159397850672e2e),
('9fb4213fe70a8f0b34f818521efd5404f821b440', '176.193.120.199', 1547458921, 0x55424b6b686c4c423338584245703736525a46636e36586a6139586e582d786875444a484644447a73655641526c6e6d573378324d353269545871782d6d346b586845693469334754334f333044534d6a34336731672e2e),
('f1c004825ed68617ba8b62b0152c25f3eab9bb30', '54.165.59.7', 1547428138, 0x49414536394d69704c41676f6d49395564704e6b6663567a7334367530776e667230395852587265366859785a41776d75774f4f6234774c66786746754d32593670536a7655793765626b4f537434346376393866672e2e),
('a235a7468eede8e0f5a3f57eb4c2edcf6d0e0d9d', '128.69.199.118', 1547367037, 0x32524e50752d6d4b42516d4769344e455f744645366d32596568397537445a645f53585762445656785a313874422d646e33795042366e77596b633066705a623271487a6b4b4d3065766f3454302d306a727a6f75672e2e),
('0aec0e96984e1b53f2c1e9505d7e6ef386ab219c', '128.69.199.118', 1547367038, 0x4b77736f4d5a772d704a5f7653656a476f65327662737837352d4b6178347a7052634f4749476b7244636578313958443378786c304135796357476b796c785270306447306d50624d5448514a55514865674c7549772e2e),
('e9a994b521d326fa3140d80c348d6f9813cc2b05', '173.252.95.16', 1547352332, 0x56514e6f4a7a4d486d43775848516a68396a5a714a48425655554a39575766663366594161646f364c61727974376d43556a502d495053524c4e584d584b3231475f415a414e487a4364424b716376422d5f725851512e2e),
('d131efb6afa5bfbe902b22f7e1e111c46c6e584a', '144.2.2.50', 1547359012, 0x784c6150426b386439725333786e36672d4838757859466c765f6d75487365317136393843624f794b7130756b754a4e4a457a304d6972587075367663545f7a543279575233386c78464c314f484f4579556f6539772e2e),
('ec20b70da63e2e38f65c210a96f95836576ae587', '54.165.59.7', 1547329812, 0x614f7035365350665f634b565257594438786a35715f79797336654e6959754b347243564670315958426b6b7259647239524d4b414d417a7773736d30736935796b78537864594241467a4569612d7543374c7876672e2e),
('395ec307842f9c47be20846d07f2b1d88719bc84', '54.165.59.7', 1547288906, 0x58615a4b4e6369345951514b5254426b322d726970587069385954634e4a476f50734f624c7671464b7561377067633454784b574e2d776930626b6c34322d657a5f314f645264764f79385032596a4158724c4169772e2e),
('b63c46d515ecd1585c88bf589a7fef4c28321fde', '54.165.59.7', 1547323226, 0x793064757332356958646c647a795678744b4232644e4848457736506a2d653157674857305936366c773265737877544b4a75386d6a4233544f706d686b6c6c71664646754270516b484473324b4c766854526938772e2e),
('1b5cda93dade23dbdac859dbe755912e6288f229', '173.252.87.2', 1547195574, 0x596b39375a4755447a514f71624b527273694e4f4a7970593675393432427a66344a56577036455970736f765f6e6345344b374f4f6a625f6751344447783156786942524d33565f34645849562d4a4e6a74484754412e2e),
('8a007025511267264ccee4102e05787b6d91aea7', '54.165.59.7', 1547287751, 0x514c334852396442554452387a5759694538786346395978736b68666254774234464a59635a425776647555553375716744585f457230544a59616a34744b2d687241674a74397041656e3061742d326c32316e74672e2e),
('9010fb5f0e9a4ac696865fc71530818c6fcc17ff', '49.148.165.95', 1547135766, 0x494b6c5675477a625f436c414b5f343430466b3769534255636958755f346b75715a4a5f635651414a686650455f3335675156385f335f54496b48697750613278444934745f51445f5f5671473531627a30786235594d46514d5a42624572594d50546a6a4676494141336b397a484472694564326b6e2d5f774d61394a49556c6a5330326b524f556a6e7a536b44485f6c524a57694f6b326c6b53366c585a495166336f41435f72633356634e646f6e396c687939365231545130584e6f696f6236463450476e6f39425f50386f304e4f454b42774e35684e51736e6556586c55674c4c6d6b7864764c52526f55745f3677416971346677624d4832457963505175315a6a5f54706930394c78536d39794c6249772e2e),
('fcf65a065bb1219a3cffb412545d85e064a95fc8', '66.102.6.154', 1547122951, 0x35476436525a5f3662716532333459772d5156366f2d746e3163495561355852343071386c694a7138756866756937496b7a334168324c49384c7937436c48716f5534327241707155704e583368742d5848774565672e2e),
('d2c535743a574da49299ad43e293984ccaccc49e', '103.115.119.238', 1547131472, 0x78386837567a6731575a706d7843354a677a653275712d7a52394370346e616b43692d316559413354304c6752526f4d556770752d7a774b516248794c6551384344545361414e5171634a7865704d4f5f7a547478672e2e),
('834559c696d355cdca6ffde88c85a6c37a21b55e', '66.102.6.156', 1547122951, 0x704c6937697363566a4238776950627253524467385941714d3474504e6c336f4e4b694736594d7978677138486c3769506350746d546b54784b4d61487a2d54784a7442784d6c6a6b4e6d676d725342744b435857412e2e),
('8743fed015685b91e321dfc039300cde7262c25b', '103.115.119.238', 1547114413, 0x33547445614f787056786a55524a7663716c35715636517145384b3854553539325049684a335432783076583661512d46716b66466435477153636664424a392d57523675796352696a576e4e48347971537463315f3569426b6479502d4d4e646e62616f717054446a62357933715a526178762d6143773935785a7445374f76664b762d656268725938667a6a71625671656e33526a5f336343774c3337646d417433325368746470504b6278363043334d2d314368465a66376d694a5a64427a736d72444734326c64705636502d3578525a65672e2e),
('d2742305d3a50a3d298eec00ce37be8b2ed1ce3c', '103.115.119.238', 1547115400, 0x6f55673449346d6578594e532d454d594435767274565f5351746e5373692d69397a4934506d3757473946465f7677634a4247494f394a784439684c6b467079504f6a3553617974704663736847476839717354383730716d3766477569684f33556535746c3654793263486d686b416f4f494b41787630616d626c484a74533962682d434164716744787a376b636e77696f3174437241474e4b643156544b73463365642d596b594776316631585262614d4d437431506c635454326f554c6651654d2d72576a376e43424c337232596b7a4e72772e2e),
('2bc13f49e6b2ffbed3a967c65a93831196dbcd1e', '103.115.119.238', 1547112199, 0x7843613573743162714d566f6f6d426b693235505a5a57327451504e5f633853354c6b33416d565a4771734b4935302d68344c3536735a6e2d71596f497267736c6f6f7878755f524b3849697339304f6e50615f456c586e6e624631684f46766e6f72436650523066434753664e316277394f5f50555f7a4e7332305834515839594d726f706e746a57656e735375744f76496151456b72734f647257564d4172694f5551436d6a7a514d6e4464436f363453376b67324934714f6c636746447a37354e416e4d7142783058556e56635047377364672e2e),
('a22d2e32b5e3965e5518f729e81ab77ecb68a029', '103.115.119.238', 1547111106, 0x325461413564576e625351356330587861566d6c72566569516332556b6938786d6c44374349447677712d484f5144716f41544d6a33766e6d4849736f456d4d4a4632646c53427679724e6d70724e6f31735a6d5f3067475665764b525263664e636f694161653046646548536675544a424e613332724c4d6a3963654d58365734723742307364466c427671664b374f5143476e61467342516d4e62556631382d74763233357834486a7777314569454a6a6673574a2d5374636e624e544d435379794d6c6b6f4e6a7378316f706131475f5f72512e2e),
('9ade3206ec5dcdbb8d2887e5bd66d36cd6de64c5', '103.115.119.238', 1547110798, 0x5661685368556c4b44644762724350506f68513846674c6f634655776251627568325750417a477375573556586f5157754555684b396d42667a57555457576a757044444e6c357537696b4b544d41447233395545333644414e484b2d37616a467059394e695032484f6d454f42387633535054416a3954356977325366414d6143705a5656436f6f314457736f74797378337343456835782d5a497870757a565a72345a54626472656b49463449634f315054717666677979734a4f447a517558313852455f75574137676e707672414d556e783867585a644732584e4e696331772d514d574c565754504c6b433772327a626c316c665762747a34755a6c4b573956316f576c69374b4a496d32373171423659454b45464472786c534c42476c6361316931337a443733534e655f3463685a6b4f61535f5251457332646861305237484d654b375a794f554269616d2d4d6d65697850456f76353376314b62505f48724455355a76525173754449386f7433644955386b7733416577754a),
('8c3e14274879ff823ba5da6d872bf33071e1dde1', '103.115.119.238', 1547110469, 0x63334d5a5f374b505837634831684a59767a7a47374e4769724b756a68584d313172597165456c3346487967786e633979496841624868376a7a5738754e5937365a74545a7762597239336b4369536a4d347a6167664d61653437783246374c437a32394e33422d6b446f64474469332d4e46664e4a48574f6d556175745a6b7541306d6b584a4148686943437748444f44786c5174575747593179797831592d6b7742686967493565657039637631325a346a596f5f466a6d78466c7a4f34425064706b315f6e5074584b5f4d6b596b4259343276454c494d4e534e336a4d395a3968485a5575504e654b65304f4f792d717a4a6f4c4477734d555457755758634b744c376b694951624f46685644796c596d6c543639566a612d64383759306553544c6d53414969787846677058634655676863654c7242794a6d417a68306270557545333776394a30614535624a742d7a564f7442746c497733674d434b6f673535586c51374e76304a4c6552644f31374c6c55455a6534477871397a6b55546a634f44334a635a31666446633875636845484f4a65475f4347394830414b5a386d5f6d33635f772e),
('6616d152d91affde6566e605e82e263d0e7c8fcf', '103.115.119.238', 1547110057, 0x4c7555674b596968746163614f7a4c596f666b536b532d657266304e627265686b7565657543394155387449666f5456637274655932476a7342797a716b595239446a696650756c5647694e4333747833414f483649687342766d33334f423662767a5958344e394e4a4732376869544637354d38483355573439676531734934674f6d51322d6843414d42546b754945514a31617a5466547661494f70744e72396d595631593168675179336d7166555f313264484c6e6a5a31425851664478733650366e622d7a50316a744641765234746f31672e2e),
('faa0c335034aed65e563e2c5c52cbcaf01eac878', '103.115.119.238', 1547109829, 0x46374f75674531464b574c3951456a5744705a63466e5f3143364346735549346a7258444c4f4666764d65396c6b75684a334b5344344b72564832524a6a495277727730544f683276456c4747556333776374576665447a2d7855384334436d4e5f42737431425175533631547851616e386f72714435414f347a314b656d66474f69445436434f7337625234524d36554330744655345a547750716c764a75536d6959617477623268544c41746865696c726d4c6c4334396c78516e4574304e504e6837634a434e6c764d412d72675474337866772e2e),
('b40f977a5db9ceaadc52719a4481ff00dffc93eb', '103.115.119.238', 1547109492, 0x7871636f63534a415a4f754e77716f6b5139614374776271766438794b3278686a41486f446f537a62692d4b4d5f6a4c52353353654f686d4b4c4d377865326e4f32593466756c38667945613972776945667833323844746656357a54617a376b515072716a786e5a5f7370796754797455672d353571746b7a7455334c69387758446e58386f58443165747a447778535630467775483935635747675a41717953524f4968496e4e773067686e364a2d413777776f57347339696c4f727871655875793768787853644c2d745a3747566f376567412e2e),
('dad0e187a401745e94d1079f80fa3f400c912c18', '103.115.119.238', 1547108059, 0x74446b373534516c5f6d3052304759465f6f5f6f5a5869626a33774c4b704a4e3454347038427058764c30387a516d41646264376a6c64516456497a656d737032443448476b386a73494c544c386c4e344e6c78696f7048634a7472694575695f78724349374d7a695857485437583455614a42514a30392d457567344e45626d66447a4267434f754138467943514d354449626552316b6d7955615162333876796534695058697453456f774f50656435614569664b7641504d736e72495034584461466772704b4362446948355a637a676473512e2e),
('efa2743541a9fca49b473b876e86f5f69526b9b4', '103.115.119.238', 1547108337, 0x4f34614c387a705a55727a437577343765417954384f6e476b682d56534350433734313155337243794a7a6958517862626a614e422d68336b4a44514a446b696b7768663041426f37673950686c5a674b74634b346c5f644274717435514952623262765659447a376a534c6b724c53346d314551696458544a72516a2d7153763235684f79306b42335247335832514d7649594f6c4655484f7246566268725844495632324231707853784e63757a325374685443746b475053713376327362746f7a787146784c794a7874655f4c5a5f464357412e2e),
('4495f389a5f93aa6dc7cafab290e20802bed8e4b', '103.115.119.238', 1547108458, 0x6f544553385f4679764a715348505372393835577734687351767374616e6c4b5970425437377970494c5a3553775373547437794a4f556547683747763349436d3035375067324b693748505452756e455f6b653973737731546d534b6a43376c75584e4b6937695f5f693036733863746176584d31565335526c786c6d592d7863424f7251634f33364e52346c656573375738475a4d3857326d524375555073466e636932494f714375706c51745a6143395f694253467a7577505237543669667934495650636f396e56416848634f4e5a7649412e2e),
('0116cf7903e280e86991ecca9118bd67f7733ba7', '103.115.119.238', 1547109195, 0x584e7459534444773632692d464d774b63444e4c584c30444f4e4b4157494c4977683545596c3670513776535650384c693162345f577467664e5a4953423368303251456d4f58664e5634676a4954794f6c35586d6d306a58347852335835675f4f44504d7757464d544b7568773357416939353166396c774470686d626734466f79664349343552354257385359547051345176526a75544f7730797a566e317a327269634e7a754e574d49645a626d76506e5a515a54483461722d574f467a34774946654f533744766d41544d67336145754f716d4847707768415f696b4f386e7236786f43796c525f6d347a5749614f5f58777a456f6c3474536a616d30334d7a313268795f6e7764674f544453447458515157356e466637462d386d6a374d6a64324f6c6e45494354327131623548305775647a796f50473566345a30503961664278396e4476483530787441496c566f4666716937725f66577058374832683630617669617679636b6e3236445748396339336a766d5f2d4b787638324875764570376a4f6a42414f6971304c4661786871376a494b4d4433435f6c65616f674a777535466b2e);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `iso` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`iso`, `name`) VALUES
('KRW', '(South) Korean Won'),
('AFA', 'Afghanistan Afghani'),
('ALL', 'Albanian Lek'),
('DZD', 'Algerian Dinar'),
('ADP', 'Andorran Peseta'),
('AOK', 'Angolan Kwanza'),
('ARS', 'Argentine Peso'),
('AMD', 'Armenian Dram'),
('AWG', 'Aruban Florin'),
('AUD', 'Australian Dollar'),
('BSD', 'Bahamian Dollar'),
('BHD', 'Bahraini Dinar'),
('BDT', 'Bangladeshi Taka'),
('BBD', 'Barbados Dollar'),
('BZD', 'Belize Dollar'),
('BMD', 'Bermudian Dollar'),
('BTN', 'Bhutan Ngultrum'),
('BOB', 'Bolivian Boliviano'),
('BWP', 'Botswanian Pula'),
('BRL', 'Brazilian Real'),
('GBP', 'British Pound'),
('BND', 'Brunei Dollar'),
('BGN', 'Bulgarian Lev'),
('BUK', 'Burma Kyat'),
('BIF', 'Burundi Franc'),
('CAD', 'Canadian Dollar'),
('CVE', 'Cape Verde Escudo'),
('KYD', 'Cayman Islands Dollar'),
('CLP', 'Chilean Peso'),
('CLF', 'Chilean Unidades de Fomento'),
('COP', 'Colombian Peso'),
('XOF', 'Communauté Financière Africaine BCEAO - Francs'),
('XAF', 'Communauté Financière Africaine BEAC, Francs'),
('KMF', 'Comoros Franc'),
('XPF', 'Comptoirs Français du Pacifique Francs'),
('CRC', 'Costa Rican Colon'),
('CUP', 'Cuban Peso'),
('CYP', 'Cyprus Pound'),
('CZK', 'Czech Republic Koruna'),
('DKK', 'Danish Krone'),
('YDD', 'Democratic Yemeni Dinar'),
('DOP', 'Dominican Peso'),
('XCD', 'East Caribbean Dollar'),
('TPE', 'East Timor Escudo'),
('ECS', 'Ecuador Sucre'),
('EGP', 'Egyptian Pound'),
('SVC', 'El Salvador Colon'),
('EEK', 'Estonian Kroon (EEK)'),
('ETB', 'Ethiopian Birr'),
('EUR', 'Euro'),
('FKP', 'Falkland Islands Pound'),
('FJD', 'Fiji Dollar'),
('GMD', 'Gambian Dalasi'),
('GHC', 'Ghanaian Cedi'),
('GIP', 'Gibraltar Pound'),
('XAU', 'Gold, Ounces'),
('GTQ', 'Guatemalan Quetzal'),
('GNF', 'Guinea Franc'),
('GWP', 'Guinea-Bissau Peso'),
('GYD', 'Guyanan Dollar'),
('HTG', 'Haitian Gourde'),
('HNL', 'Honduran Lempira'),
('HKD', 'Hong Kong Dollar'),
('HUF', 'Hungarian Forint'),
('INR', 'Indian Rupee'),
('IDR', 'Indonesian Rupiah'),
('XDR', 'International Monetary Fund (IMF) Special Drawing Rights'),
('IRR', 'Iranian Rial'),
('IQD', 'Iraqi Dinar'),
('IEP', 'Irish Punt'),
('ILS', 'Israeli Shekel'),
('JMD', 'Jamaican Dollar'),
('JPY', 'Japanese Yen'),
('JOD', 'Jordanian Dinar'),
('KHR', 'Kampuchean (Cambodian) Riel'),
('KES', 'Kenyan Schilling'),
('KWD', 'Kuwaiti Dinar'),
('LAK', 'Lao Kip'),
('LBP', 'Lebanese Pound'),
('LSL', 'Lesotho Loti'),
('LRD', 'Liberian Dollar'),
('LYD', 'Libyan Dinar'),
('MOP', 'Macau Pataca'),
('MGF', 'Malagasy Franc'),
('MWK', 'Malawi Kwacha'),
('MYR', 'Malaysian Ringgit'),
('MVR', 'Maldive Rufiyaa'),
('MTL', 'Maltese Lira'),
('MRO', 'Mauritanian Ouguiya'),
('MUR', 'Mauritius Rupee'),
('MXP', 'Mexican Peso'),
('MNT', 'Mongolian Tugrik'),
('MAD', 'Moroccan Dirham'),
('MZM', 'Mozambique Metical'),
('NAD', 'Namibian Dollar'),
('NPR', 'Nepalese Rupee'),
('ANG', 'Netherlands Antillian Guilder'),
('YUD', 'New Yugoslavia Dinar'),
('NZD', 'New Zealand Dollar'),
('NIO', 'Nicaraguan Cordoba'),
('NGN', 'Nigerian Naira'),
('KPW', 'North Korean Won'),
('NOK', 'Norwegian Kroner'),
('OMR', 'Omani Rial'),
('PKR', 'Pakistan Rupee'),
('XPD', 'Palladium Ounces'),
('PAB', 'Panamanian Balboa'),
('PGK', 'Papua New Guinea Kina'),
('PYG', 'Paraguay Guarani'),
('PEN', 'Peruvian Nuevo Sol'),
('PHP', 'Philippine Peso'),
('XPT', 'Platinum, Ounces'),
('PLN', 'Polish Zloty'),
('QAR', 'Qatari Rial'),
('RON', 'Romanian Leu'),
('RUB', 'Russian Ruble'),
('RWF', 'Rwanda Franc'),
('WST', 'Samoan Tala'),
('STD', 'Sao Tome and Principe Dobra'),
('SAR', 'Saudi Arabian Riyal'),
('SCR', 'Seychelles Rupee'),
('SLL', 'Sierra Leone Leone'),
('XAG', 'Silver, Ounces'),
('SGD', 'Singapore Dollar'),
('SKK', 'Slovak Koruna'),
('SBD', 'Solomon Islands Dollar'),
('SOS', 'Somali Schilling'),
('ZAR', 'South African Rand'),
('LKR', 'Sri Lanka Rupee'),
('SHP', 'St. Helena Pound'),
('SDP', 'Sudanese Pound'),
('SRG', 'Suriname Guilder'),
('SZL', 'Swaziland Lilangeni'),
('SEK', 'Swedish Krona'),
('CHF', 'Swiss Franc'),
('SYP', 'Syrian Potmd'),
('TWD', 'Taiwan Dollar'),
('TZS', 'Tanzanian Schilling'),
('THB', 'Thai Baht'),
('TOP', 'Tongan Paanga'),
('TTD', 'Trinidad and Tobago Dollar'),
('TND', 'Tunisian Dinar'),
('TRY', 'Turkish Lira'),
('UGX', 'Uganda Shilling'),
('AED', 'United Arab Emirates Dirham'),
('UYU', 'Uruguayan Peso'),
('USD', 'US Dollar'),
('VUV', 'Vanuatu Vatu'),
('VEF', 'Venezualan Bolivar'),
('VND', 'Vietnamese Dong'),
('YER', 'Yemeni Rial'),
('CNY', 'Yuan (Chinese) Renminbi'),
('ZRZ', 'Zaire Zaire'),
('ZMK', 'Zambian Kwacha'),
('ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `mobile`, `address`, `created_user_id`, `created_datetime`) VALUES
(1, 'Walk In Customer', '', '', '', 1, '2016-10-18 00:00:00'),
(2, 'Neyamul kobir', 'neyamulkn@gmail.com', '+8801723826340', '66/1 East Rajabazar, Dhaka, Bangladesh', 1, '2018-11-20 00:14:49'),
(7, 'habib', 'habib@gmail.com', '01729394455', 'dhamondi, dhaka', 1, '2019-01-05 11:27:05'),
(9, 'Then rajan ', 'thenraju24@gmail.com', '0182334235', '', 1, '2019-01-05 23:51:51'),
(12, 'Masco', 'no', '123', 'uttara', 1, '2019-01-10 16:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `debit_cradit`
--

CREATE TABLE `debit_cradit` (
  `id` int(6) NOT NULL,
  `cust_id` int(6) NOT NULL,
  `outlet_id` int(6) NOT NULL,
  `debit_amt` double(11,2) DEFAULT NULL,
  `cradit_amt` double(11,2) DEFAULT NULL,
  `pay_method` varchar(15) NOT NULL,
  `card_number` varchar(25) DEFAULT NULL,
  `cheque_number` varchar(25) DEFAULT NULL,
  `pay_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debit_cradit`
--

INSERT INTO `debit_cradit` (`id`, `cust_id`, `outlet_id`, `debit_amt`, `cradit_amt`, `pay_method`, `card_number`, `cheque_number`, `pay_date`, `status`, `created_user_id`) VALUES
(56, 3, 3, NULL, 10000.00, 'Previous Due', NULL, NULL, '2018-12-13 05:15:59', 1, 1),
(57, 3, 3, 1000.00, NULL, 'Cash', '', '', '2018-12-13 05:16:19', 1, 1),
(59, 2, 2, 4.00, 7.49, 'Cash', NULL, NULL, '2018-12-24 16:41:38', 1, 1),
(75, 1, 3, 200.00, 20.00, 'Cash', NULL, NULL, '2019-01-04 17:30:45', 1, 1),
(73, 2, 3, 50.00, 55.00, 'Cash', NULL, NULL, '2019-01-04 12:47:06', 1, 1),
(74, 2, 3, 50.00, 55.00, 'Cash', NULL, NULL, '2019-01-04 12:50:15', 1, 1),
(64, 3, 1, 50.00, NULL, 'Cash', '', '', '2018-12-24 16:56:24', 1, 1),
(65, 3, 2, NULL, 50.00, 'Previous Due', NULL, NULL, '2018-12-24 16:56:50', 1, 1),
(66, 3, 2, 56.00, 196.88, 'Cash', NULL, NULL, '2018-12-24 17:01:24', 1, 1),
(67, 3, 2, 56.00, 196.88, 'Cash', NULL, NULL, '2018-12-24 17:02:12', 1, 1),
(78, 7, 3, 0.00, 70.50, 'VISA', NULL, NULL, '2019-01-05 05:20:37', 1, 1),
(79, 6, 3, 20.00, 29.50, 'Cash', NULL, NULL, '2019-01-05 13:40:16', 1, 1),
(80, 9, 3, 500.00, 15.80, 'Cash', NULL, NULL, '2019-01-05 18:31:10', 1, 1),
(81, 9, 3, 0.00, 22.70, 'Master Card', NULL, NULL, '2019-01-09 06:04:48', 1, 1),
(82, 9, 3, 10.00, 3.50, 'Cash', NULL, NULL, '2019-01-09 14:56:27', 1, 1),
(83, 9, 3, 3.00, 3.50, 'Cash', NULL, NULL, '2019-01-09 15:29:24', 1, 1),
(84, 9, 3, 4.00, 4.50, 'Cash', NULL, NULL, '2019-01-09 15:31:17', 1, 1),
(85, 1, 3, 150.00, 150.00, 'Cash', NULL, NULL, '2019-01-10 08:35:44', 1, 1),
(86, 12, 3, 0.00, 8000.00, 'Debit', NULL, NULL, '2019-01-10 08:42:35', 1, 1),
(87, 12, 3, 0.00, 11000.00, 'Debit', NULL, NULL, '2019-01-10 08:51:13', 1, 1),
(88, 12, 3, 15000.00, NULL, 'Cheque', '', '', '2019-01-10 08:59:32', 1, 1),
(89, 12, 3, NULL, 500000.00, 'Previous Due', NULL, NULL, '2019-01-10 09:00:26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expenses_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expense_category` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `outlet_name` varchar(4999) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `amount` double(11,2) NOT NULL,
  `reason` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenses_number`, `expense_category`, `outlet_id`, `outlet_name`, `date`, `amount`, `reason`, `file_name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, '1', 1, 3, '', '2019-01-10', 850000.00, 'Rent', '', 1, '2019-01-10 17:23:13', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0: Inactive, 1: Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'House rent', 1, '2019-01-10 17:04:18', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gift_card`
--

CREATE TABLE `gift_card` (
  `id` int(11) NOT NULL,
  `card_number` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `value` double(11,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL COMMENT '0: haven''t use, 1: used'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_code`, `outlet_id`, `qty`) VALUES
(1, 'UC0002', 3, 0),
(2, 'UC0002', 2, 5),
(3, 'UC0002', 1, 8),
(4, 'UD0001', 3, 94),
(5, 'UD0001', 2, 4),
(6, 'UD0001', 1, 5),
(7, 'UC0001', 3, 186),
(8, 'UC0001', 2, 3),
(9, 'UC0001', 1, 8),
(10, 'UD0005', 3, 96),
(11, 'UD0002', 3, 97),
(12, 'UD0003', 3, 98),
(13, 'UD0004', 3, 98),
(14, '101', 3, 99),
(15, '102', 3, 900),
(16, '103', 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `inventorykg`
--

CREATE TABLE `inventorykg` (
  `id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventorykg`
--

INSERT INTO `inventorykg` (`id`, `product_code`, `outlet_id`, `qty`) VALUES
(7, '34353', 3, 26),
(8, '53', 3, 21),
(9, '53', 1, 1),
(10, '53', 2, 1),
(11, '34353', 2, 1),
(12, '34353', 1, 3),
(13, '7667', 3, 80),
(14, '7667', 2, 4),
(15, '34345', 3, 15),
(16, '34345', 1, 3),
(17, '6205', 3, 80);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordered_datetime` datetime NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `outlet_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `outlet_contact` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_receipt_footer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gift_card` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `discount_total` double(11,2) NOT NULL,
  `discount_percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax` double(11,2) NOT NULL,
  `grandtotal` double(11,2) NOT NULL,
  `total_items` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_method_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cheque_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amt` double(11,2) NOT NULL,
  `return_change` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `vt_status` int(11) NOT NULL COMMENT '0: Debit Payment, 1: Completed',
  `status` int(11) NOT NULL COMMENT '1: Sales, 2: Return',
  `refund_status` int(11) NOT NULL COMMENT '1: Full Refund, 2: Partial Refund',
  `remark` longtext COLLATE utf8_unicode_ci NOT NULL,
  `card_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `ordered_datetime`, `outlet_id`, `outlet_name`, `outlet_address`, `outlet_contact`, `outlet_receipt_footer`, `gift_card`, `subtotal`, `discount_total`, `discount_percentage`, `tax`, `grandtotal`, `total_items`, `payment_method`, `payment_method_name`, `cheque_number`, `paid_amt`, `return_change`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `vt_status`, `status`, `refund_status`, `remark`, `card_number`) VALUES
(26, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2018-11-27 02:08:51', 3, 'Uniqlo - Bugis Outlet', '#02-10, B2, Bugis Shopping Mall', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 21.00, 0.00, '', 0.00, 21.00, 1, 0, 'Cash', '', 0.00, 0.00, 1, '2018-11-27 02:08:51', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(38, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2018-12-25 00:44:57', 2, 'Uniqlo - Changi Outlet', '#02, B2, Changi Airport', '92828394', '<p>Thank you for coming!</p>', '', 7.00, 0.00, '', 0.49, 7.49, 1, 0, 'Cash', '', 4.00, -3.49, 1, '2018-12-25 00:44:57', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(39, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2018-12-25 00:46:53', 2, 'Uniqlo - Changi Outlet', '#02, B2, Changi Airport', '92828394', '<p>Thank you for coming!</p>', '', 7.00, 0.00, '', 0.49, 7.49, 1, 0, 'Cash', '', 4.00, -3.49, 1, '2018-12-25 00:46:53', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(40, 3, 'habib', 'habib@gmail.com', '123', 'no', '2018-12-25 01:01:24', 2, 'Uniqlo - Changi Outlet', '#02, B2, Changi Airport', '92828394', '<p>Thank you for coming!</p>', '', 184.00, 0.00, '', 12.88, 196.88, 6, 0, 'Cash', '', 56.00, -140.88, 1, '2018-12-25 01:01:24', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(41, 3, 'habib', 'habib@gmail.com', '123', 'no', '2018-12-25 01:02:12', 2, 'Uniqlo - Changi Outlet', '#02, B2, Changi Airport', '92828394', '<p>Thank you for coming!</p>', '', 184.00, 0.00, '', 12.88, 196.88, 6, 0, 'Cash', '', 56.00, -140.88, 1, '2018-12-25 01:02:12', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(42, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2018-12-25 01:20:56', 1, 'Uniqlo - NEX Outlet', '#02-11, B2, Nex Shopping Mall, Serangoon Central', '88837492', '<p>Thank you for coming!</p>', '', 5.00, 0.00, '', 0.35, 5.35, 1, 0, 'Cash', '', 0.00, 0.00, 1, '2018-12-25 01:20:56', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(43, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2019-01-03 20:07:26', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 13.50, 0.00, '', 0.00, 13.50, 2, 0, 'Cash', '', 10.00, -3.50, 1, '2019-01-03 20:07:26', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(44, 2, 'Neyamul', 'neyamulkn@gmail.com', '2534930', 'dhaka, bangladesh', '2019-01-04 20:47:06', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 55.00, 0.00, '', 0.00, 55.00, 2, 1, 'Cash', '', 55.00, -5.00, 1, '2019-01-04 20:47:06', 1, '2019-01-05 13:06:20', 1, 1, 0, '', ''),
(45, 2, 'Neyamul kobir', 'neyamulkn@gmail.com', '+8801723826340', '66/1 East Rajabazar, Dhaka, Bangladesh', '2019-01-04 20:50:15', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 55.00, 0.00, '', 0.00, 55.00, 2, 3, 'VISA', '', 55.00, -5.00, 1, '2019-01-04 20:50:15', 1, '2019-01-05 01:26:14', 1, 1, 0, '', '65465'),
(46, 1, 'Walk In Customer', '', '', '', '2019-01-05 01:30:45', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 20.00, 1.00, '', 0.00, 20.00, 6, 1, 'Cash', '', 200.00, 180.00, 1, '2019-01-05 01:30:45', 0, '0000-00-00 00:00:00', 1, 1, 0, '', ''),
(47, 1, 'Walk In Customer', '', '', NULL, '2019-01-05 01:33:41', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', -100.00, 0.00, '', 0.00, -100.00, 100, 1, 'Cash', '', -100.00, 0.00, 1, '2019-01-05 01:33:41', 0, '0000-00-00 00:00:00', 1, 2, 1, '', ''),
(48, 6, 'marj', 'mar@gmail.com', '7888888', 'hhh', '2019-01-05 11:12:40', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 40.00, 0.00, '', 0.00, 40.00, 9, 1, 'Cash', '', 200.00, 160.00, 1, '2019-01-05 11:12:40', 0, '0000-00-00 00:00:00', 1, 1, 0, '', ''),
(49, 7, 'z', 'dzx', 'dz', 'z', '2019-01-05 13:20:37', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 70.50, 0.00, '', 0.00, 70.50, 15, 3, 'VISA', '', 0.00, 0.00, 1, '2019-01-05 13:20:37', 0, '0000-00-00 00:00:00', 0, 1, 0, '', '3532523523523523'),
(50, 6, 'marj', 'mar@gmail.com', '7888888', 'hhh', '2019-01-05 21:40:16', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 29.50, 0.00, '', 0.00, 29.50, 8, 0, 'Cash', '', 20.00, -9.50, 1, '2019-01-05 21:40:16', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(51, 9, 'Then rajan ', 'thenraju24@gmail.com', 'Ggfff', '', '2019-01-06 02:31:10', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 15.80, 0.00, '', 0.00, 15.80, 5, 1, 'Cash', '', 500.00, 484.20, 1, '2019-01-06 02:31:10', 0, '0000-00-00 00:00:00', 1, 1, 0, '', ''),
(52, 9, 'Then rajan ', 'thenraju24@gmail.com', 'Ggfff', '', '2019-01-09 14:04:48', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 22.70, 0.00, '', 0.00, 22.70, 6, 4, 'Master Card', '', 0.00, 0.00, 1, '2019-01-09 14:04:48', 0, '0000-00-00 00:00:00', 0, 1, 0, '', '45456465466'),
(53, 9, 'Then rajan ', 'thenraju24@gmail.com', 'Ggfff', '', '2019-01-09 22:56:27', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 3.50, 0.00, '', 0.00, 3.50, 1, 1, 'Cash', '', 10.00, 6.50, 1, '2019-01-09 22:56:27', 0, '0000-00-00 00:00:00', 1, 1, 0, '', ''),
(54, 9, 'Then rajan ', 'thenraju24@gmail.com', 'Ggfff', '', '2019-01-09 23:29:24', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 3.50, 0.00, '', 0.00, 3.50, 1, 0, 'Cash', '', 3.00, -0.50, 1, '2019-01-09 23:29:24', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(55, 9, 'Then rajan ', 'thenraju24@gmail.com', 'Ggfff', '', '2019-01-09 23:31:17', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 4.50, 0.00, '', 0.00, 4.50, 1, 1, 'Cash', '', 4.00, -0.50, 1, '2019-01-09 23:31:17', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(56, 1, 'Walk In Customer', '', '', '', '2019-01-10 16:35:44', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 150.00, 0.00, '', 0.00, 150.00, 1, 1, 'Cash', '', 150.00, 0.00, 1, '2019-01-10 16:35:44', 0, '0000-00-00 00:00:00', 1, 1, 0, '', ''),
(57, 12, 'Masco', 'no', '123', 'uttara', '2019-01-10 16:42:35', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 8000.00, 0.00, '', 0.00, 8000.00, 100, 6, 'Debit', '', 0.00, 0.00, 1, '2019-01-10 16:42:35', 0, '0000-00-00 00:00:00', 0, 1, 0, '', ''),
(58, 12, 'Masco', 'no', '123', 'uttara', '2019-01-10 16:51:13', 3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '<p>Thank you for Shopping with Us!</p>', '', 11000.00, 0.00, '', 0.00, 11000.00, 110, 6, 'Debit', '', 0.00, 0.00, 1, '2019-01-10 16:51:13', 0, '0000-00-00 00:00:00', 0, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `product_category` int(11) NOT NULL,
  `serial` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double(11,2) NOT NULL,
  `price` double(11,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_code`, `product_name`, `product_category`, `serial`, `cost`, `price`, `qty`) VALUES
(1, 1, 'UC0002', 'Chocolate Cake', 5, NULL, 2.00, 5.00, 1),
(2, 39, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(3, 40, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 2),
(4, 40, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 2),
(5, 40, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 2),
(6, 41, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 2),
(7, 41, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 2),
(8, 41, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 2),
(9, 42, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(10, 43, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(11, 43, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 1),
(12, 44, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 1),
(13, 44, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(14, 45, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(15, 45, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 1),
(16, 46, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 4),
(17, 46, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 2),
(18, 48, 'UC0002', 'Chocolate Cake', 5, '22', 2.00, 5.00, 5),
(19, 48, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 3),
(20, 48, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 1),
(21, 49, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 9),
(22, 49, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 6),
(23, 50, 'UC0002', 'Chocolate Cake', 5, '', 2.00, 5.00, 1),
(24, 50, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 2),
(25, 50, 'UD0003', '7UP', 1, '', 1.10, 3.50, 1),
(26, 50, 'UD0002', 'Pepsi', 1, '', 1.20, 2.70, 1),
(27, 50, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 1),
(28, 50, 'UD0004', 'Fanta', 1, '', 1.00, 3.40, 1),
(29, 50, 'UD0005', 'Sprite', 1, '', 1.50, 3.40, 1),
(30, 51, 'UD0001', 'Coke', 1, '1', 2.10, 3.50, 2),
(31, 51, 'UD0002', 'Pepsi', 1, '2', 1.20, 2.70, 2),
(32, 51, 'UD0004', 'Fanta', 1, '', 1.00, 3.40, 1),
(33, 52, 'UD0003', '7UP', 1, '', 1.10, 3.50, 1),
(34, 52, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 2),
(35, 52, 'UD0005', 'Sprite', 1, '', 1.50, 3.40, 3),
(36, 53, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 1),
(37, 54, 'UD0001', 'Coke', 1, '', 2.10, 3.50, 1),
(38, 55, 'UC0001', 'Strawberry Cake', 2, '', 1.20, 4.50, 1),
(39, 56, '101', 'sequins ', 11, '', 60.00, 100.00, 1),
(40, 57, '102', 'AR', 11, '', 60.00, 80.00, 100),
(41, 58, '103', 'AR 5mm SH', 11, '', 70.00, 100.00, 110);

-- --------------------------------------------------------

--
-- Table structure for table `outlets`
--

CREATE TABLE `outlets` (
  `id` int(11) NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `receipt_header` longtext COLLATE utf8_unicode_ci NOT NULL,
  `receipt_footer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '1: Active, 0: Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `outlets`
--

INSERT INTO `outlets` (`id`, `name`, `address`, `contact_number`, `receipt_header`, `receipt_footer`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(3, 'AR INTERNATIONAL', '#02-10, B2,Uttara Jasim Uddin', '292948484', '', '<p>Thank you for Shopping with Us!</p>', 1, '2016-09-11 19:25:52', 1, '2019-01-03 12:32:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Cash', 1, '2016-09-25 01:43:41', 0, '0000-00-00 00:00:00', 1),
(2, 'Nett', 1, '2016-09-25 01:43:45', 0, '0000-00-00 00:00:00', 1),
(3, 'VISA', 1, '2016-09-25 01:43:50', 0, '0000-00-00 00:00:00', 1),
(4, 'Master Card', 1, '2016-09-25 01:43:58', 0, '0000-00-00 00:00:00', 1),
(5, 'Cheque', 1, '2016-09-25 01:44:02', 0, '0000-00-00 00:00:00', 1),
(6, 'Debit', 1, '2016-09-25 01:44:05', 0, '0000-00-00 00:00:00', 1),
(7, 'Gift Card', 1, '2016-10-16 01:23:05', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productkg`
--

CREATE TABLE `productkg` (
  `id` int(11) NOT NULL,
  `code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `purchase_price` double(11,2) NOT NULL,
  `stock_kg` double(11,2) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productkg`
--

INSERT INTO `productkg` (`id`, `code`, `name`, `category`, `purchase_price`, `stock_kg`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(15, '53', 'fsfsd', 3, 353.00, 45.00, 1, '2018-11-28 22:32:22', 0, '0000-00-00 00:00:00', 1),
(16, '34353', 'sumsung', 8, 50.00, 34.00, 1, '2018-11-28 23:58:11', 1, '2018-11-29 23:51:19', 1),
(18, '34345', 'cotton', 3, 3454.00, 0.00, 1, '2018-12-25 00:59:01', 1, '2019-01-05 11:16:38', 1),
(20, '6205', 'Sequins', 11, 500.00, 0.00, 1, '2019-01-10 16:54:59', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `purchase_price` double(11,2) NOT NULL,
  `retail_price` double(11,2) NOT NULL,
  `thumbnail` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `purchase_price`, `retail_price`, `thumbnail`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(14, '101', 'sequins ', 11, 60.00, 100.00, 'no_image.jpg', 1, '2019-01-10 16:33:53', 0, '0000-00-00 00:00:00', 1),
(15, '102', 'AR', 11, 60.00, 80.00, 'no_image.jpg', 1, '2019-01-10 16:39:03', 0, '0000-00-00 00:00:00', 1),
(16, '103', 'AR 5mm SH', 11, 70.00, 100.00, 'no_image.jpg', 1, '2019-01-10 16:49:36', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(11) NOT NULL,
  `po_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `discount_amount` double(11,2) NOT NULL,
  `discount_percentage` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subTotal` double(11,2) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `grandTotal` double(11,2) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `supplier_tax` double(11,2) NOT NULL,
  `supplier_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `supplier_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `outlet_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `outlet_contact` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `po_date` date NOT NULL,
  `attachment_file` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `received_user_id` int(11) NOT NULL,
  `received_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  `cost` double(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_status`
--

CREATE TABLE `purchase_order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_order_status`
--

INSERT INTO `purchase_order_status` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Created', 1, '2016-09-10 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'Sent To Supplier', 1, '2016-09-10 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'Received From Supplier', 1, '2016-09-10 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `return_items`
--

CREATE TABLE `return_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `item_condition` int(11) NOT NULL COMMENT '1: Good, 2: Not Good'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `return_items`
--

INSERT INTO `return_items` (`id`, `order_id`, `product_code`, `price`, `qty`, `item_condition`) VALUES
(1, 47, 'UC0001', 4.50, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `site_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `pagination` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `datetime_format` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `display_product` int(11) NOT NULL,
  `display_keyboard` int(11) NOT NULL,
  `default_customer_id` int(11) NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `site_name`, `site_logo`, `timezone`, `pagination`, `tax`, `currency`, `datetime_format`, `display_product`, `display_keyboard`, `default_customer_id`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'POS - Multi Outlets', 'logo.jpg', 'Asia/Singapore', 10, 0.00, 'BDT', 'm/d/Y', 3, 1, 1, 1, '2019-01-09 18:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(4999) COLLATE utf8_unicode_ci NOT NULL,
  `tax` double(11,2) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `tax`, `email`, `address`, `tel`, `fax`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Drink Co., Ltd', 2.00, 'drink@gmail.com', 'Macpherson Industrial Zone, Aljunied, Singapore', '82938484', '82938483', 1, '2016-09-11 19:29:24', 1, '2016-11-19 17:39:55', 1),
(3, 'KK Food Supplier', 0.00, '', 'saf sdaf\r\n', '92929292', '', 1, '2016-11-19 17:42:18', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suspend`
--

CREATE TABLE `suspend` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_number` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `discount_total` double(11,2) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `grandtotal` double(11,2) NOT NULL,
  `total_items` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suspend`
--

INSERT INTO `suspend` (`id`, `customer_id`, `fullname`, `email`, `mobile`, `ref_number`, `outlet_id`, `subtotal`, `discount_total`, `tax`, `grandtotal`, `total_items`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 6, 'marj', 'mar@gmail.com', '7888888', '56476', 3, 29.50, 0.00, 0.00, 29.50, 8, 1, '2019-01-05 21:42:04', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suspend_items`
--

CREATE TABLE `suspend_items` (
  `id` int(11) NOT NULL,
  `suspend_id` int(11) NOT NULL,
  `product_code` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_cost` double(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_price` varchar(499) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(499) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `code`, `timezone`) VALUES
(1, 'AD', 'Europe/Andorra'),
(2, 'AE', 'Asia/Dubai'),
(3, 'AF', 'Asia/Kabul'),
(4, 'AG', 'America/Antigua'),
(5, 'AI', 'America/Anguilla'),
(6, 'AL', 'Europe/Tirane'),
(7, 'AM', 'Asia/Yerevan'),
(8, 'AO', 'Africa/Luanda'),
(9, 'AQ', 'Antarctica/McMurdo'),
(10, 'AQ', 'Antarctica/Casey'),
(11, 'AQ', 'Antarctica/Davis'),
(12, 'AQ', 'Antarctica/DumontDUrville'),
(13, 'AQ', 'Antarctica/Mawson'),
(14, 'AQ', 'Antarctica/Palmer'),
(15, 'AQ', 'Antarctica/Rothera'),
(16, 'AQ', 'Antarctica/Syowa'),
(17, 'AQ', 'Antarctica/Troll'),
(18, 'AQ', 'Antarctica/Vostok'),
(19, 'AR', 'America/Argentina/Buenos_Aires'),
(20, 'AR', 'America/Argentina/Cordoba'),
(21, 'AR', 'America/Argentina/Salta'),
(22, 'AR', 'America/Argentina/Jujuy'),
(23, 'AR', 'America/Argentina/Tucuman'),
(24, 'AR', 'America/Argentina/Catamarca'),
(25, 'AR', 'America/Argentina/La_Rioja'),
(26, 'AR', 'America/Argentina/San_Juan'),
(27, 'AR', 'America/Argentina/Mendoza'),
(28, 'AR', 'America/Argentina/San_Luis'),
(29, 'AR', 'America/Argentina/Rio_Gallegos'),
(30, 'AR', 'America/Argentina/Ushuaia'),
(31, 'AS', 'Pacific/Pago_Pago'),
(32, 'AT', 'Europe/Vienna'),
(33, 'AU', 'Australia/Lord_Howe'),
(34, 'AU', 'Antarctica/Macquarie'),
(35, 'AU', 'Australia/Hobart'),
(36, 'AU', 'Australia/Currie'),
(37, 'AU', 'Australia/Melbourne'),
(38, 'AU', 'Australia/Sydney'),
(39, 'AU', 'Australia/Broken_Hill'),
(40, 'AU', 'Australia/Brisbane'),
(41, 'AU', 'Australia/Lindeman'),
(42, 'AU', 'Australia/Adelaide'),
(43, 'AU', 'Australia/Darwin'),
(44, 'AU', 'Australia/Perth'),
(45, 'AU', 'Australia/Eucla'),
(46, 'AW', 'America/Aruba'),
(47, 'AX', 'Europe/Mariehamn'),
(48, 'AZ', 'Asia/Baku'),
(49, 'BA', 'Europe/Sarajevo'),
(50, 'BB', 'America/Barbados'),
(51, 'BD', 'Asia/Dhaka'),
(52, 'BE', 'Europe/Brussels'),
(53, 'BF', 'Africa/Ouagadougou'),
(54, 'BG', 'Europe/Sofia'),
(55, 'BH', 'Asia/Bahrain'),
(56, 'BI', 'Africa/Bujumbura'),
(57, 'BJ', 'Africa/Porto-Novo'),
(58, 'BL', 'America/St_Barthelemy'),
(59, 'BM', 'Atlantic/Bermuda'),
(60, 'BN', 'Asia/Brunei'),
(61, 'BO', 'America/La_Paz'),
(62, 'BQ', 'America/Kralendijk'),
(63, 'BR', 'America/Noronha'),
(64, 'BR', 'America/Belem'),
(65, 'BR', 'America/Fortaleza'),
(66, 'BR', 'America/Recife'),
(67, 'BR', 'America/Araguaina'),
(68, 'BR', 'America/Maceio'),
(69, 'BR', 'America/Bahia'),
(70, 'BR', 'America/Sao_Paulo'),
(71, 'BR', 'America/Campo_Grande'),
(72, 'BR', 'America/Cuiaba'),
(73, 'BR', 'America/Santarem'),
(74, 'BR', 'America/Porto_Velho'),
(75, 'BR', 'America/Boa_Vista'),
(76, 'BR', 'America/Manaus'),
(77, 'BR', 'America/Eirunepe'),
(78, 'BR', 'America/Rio_Branco'),
(79, 'BS', 'America/Nassau'),
(80, 'BT', 'Asia/Thimphu'),
(81, 'BW', 'Africa/Gaborone'),
(82, 'BY', 'Europe/Minsk'),
(83, 'BZ', 'America/Belize'),
(84, 'CA', 'America/St_Johns'),
(85, 'CA', 'America/Halifax'),
(86, 'CA', 'America/Glace_Bay'),
(87, 'CA', 'America/Moncton'),
(88, 'CA', 'America/Goose_Bay'),
(89, 'CA', 'America/Blanc-Sablon'),
(90, 'CA', 'America/Toronto'),
(91, 'CA', 'America/Nipigon'),
(92, 'CA', 'America/Thunder_Bay'),
(93, 'CA', 'America/Iqaluit'),
(94, 'CA', 'America/Pangnirtung'),
(95, 'CA', 'America/Atikokan'),
(96, 'CA', 'America/Winnipeg'),
(97, 'CA', 'America/Rainy_River'),
(98, 'CA', 'America/Resolute'),
(99, 'CA', 'America/Rankin_Inlet'),
(100, 'CA', 'America/Regina'),
(101, 'CA', 'America/Swift_Current'),
(102, 'CA', 'America/Edmonton'),
(103, 'CA', 'America/Cambridge_Bay'),
(104, 'CA', 'America/Yellowknife'),
(105, 'CA', 'America/Inuvik'),
(106, 'CA', 'America/Creston'),
(107, 'CA', 'America/Dawson_Creek'),
(108, 'CA', 'America/Fort_Nelson'),
(109, 'CA', 'America/Vancouver'),
(110, 'CA', 'America/Whitehorse'),
(111, 'CA', 'America/Dawson'),
(112, 'CC', 'Indian/Cocos'),
(113, 'CD', 'Africa/Kinshasa'),
(114, 'CD', 'Africa/Lubumbashi'),
(115, 'CF', 'Africa/Bangui'),
(116, 'CG', 'Africa/Brazzaville'),
(117, 'CH', 'Europe/Zurich'),
(118, 'CI', 'Africa/Abidjan'),
(119, 'CK', 'Pacific/Rarotonga'),
(120, 'CL', 'America/Santiago'),
(121, 'CL', 'Pacific/Easter'),
(122, 'CM', 'Africa/Douala'),
(123, 'CN', 'Asia/Shanghai'),
(124, 'CN', 'Asia/Urumqi'),
(125, 'CO', 'America/Bogota'),
(126, 'CR', 'America/Costa_Rica'),
(127, 'CU', 'America/Havana'),
(128, 'CV', 'Atlantic/Cape_Verde'),
(129, 'CW', 'America/Curacao'),
(130, 'CX', 'Indian/Christmas'),
(131, 'CY', 'Asia/Nicosia'),
(132, 'CZ', 'Europe/Prague'),
(133, 'DE', 'Europe/Berlin'),
(134, 'DE', 'Europe/Busingen'),
(135, 'DJ', 'Africa/Djibouti'),
(136, 'DK', 'Europe/Copenhagen'),
(137, 'DM', 'America/Dominica'),
(138, 'DO', 'America/Santo_Domingo'),
(139, 'DZ', 'Africa/Algiers'),
(140, 'EC', 'America/Guayaquil'),
(141, 'EC', 'Pacific/Galapagos'),
(142, 'EE', 'Europe/Tallinn'),
(143, 'EG', 'Africa/Cairo'),
(144, 'EH', 'Africa/El_Aaiun'),
(145, 'ER', 'Africa/Asmara'),
(146, 'ES', 'Europe/Madrid'),
(147, 'ES', 'Africa/Ceuta'),
(148, 'ES', 'Atlantic/Canary'),
(149, 'ET', 'Africa/Addis_Ababa'),
(150, 'FI', 'Europe/Helsinki'),
(151, 'FJ', 'Pacific/Fiji'),
(152, 'FK', 'Atlantic/Stanley'),
(153, 'FM', 'Pacific/Chuuk'),
(154, 'FM', 'Pacific/Pohnpei'),
(155, 'FM', 'Pacific/Kosrae'),
(156, 'FO', 'Atlantic/Faroe'),
(157, 'FR', 'Europe/Paris'),
(158, 'GA', 'Africa/Libreville'),
(159, 'GB', 'Europe/London'),
(160, 'GD', 'America/Grenada'),
(161, 'GE', 'Asia/Tbilisi'),
(162, 'GF', 'America/Cayenne'),
(163, 'GG', 'Europe/Guernsey'),
(164, 'GH', 'Africa/Accra'),
(165, 'GI', 'Europe/Gibraltar'),
(166, 'GL', 'America/Godthab'),
(167, 'GL', 'America/Danmarkshavn'),
(168, 'GL', 'America/Scoresbysund'),
(169, 'GL', 'America/Thule'),
(170, 'GM', 'Africa/Banjul'),
(171, 'GN', 'Africa/Conakry'),
(172, 'GP', 'America/Guadeloupe'),
(173, 'GQ', 'Africa/Malabo'),
(174, 'GR', 'Europe/Athens'),
(175, 'GS', 'Atlantic/South_Georgia'),
(176, 'GT', 'America/Guatemala'),
(177, 'GU', 'Pacific/Guam'),
(178, 'GW', 'Africa/Bissau'),
(179, 'GY', 'America/Guyana'),
(180, 'HK', 'Asia/Hong_Kong'),
(181, 'HN', 'America/Tegucigalpa'),
(182, 'HR', 'Europe/Zagreb'),
(183, 'HT', 'America/Port-au-Prince'),
(184, 'HU', 'Europe/Budapest'),
(185, 'ID', 'Asia/Jakarta'),
(186, 'ID', 'Asia/Pontianak'),
(187, 'ID', 'Asia/Makassar'),
(188, 'ID', 'Asia/Jayapura'),
(189, 'IE', 'Europe/Dublin'),
(190, 'IL', 'Asia/Jerusalem'),
(191, 'IM', 'Europe/Isle_of_Man'),
(192, 'IN', 'Asia/Kolkata'),
(193, 'IO', 'Indian/Chagos'),
(194, 'IQ', 'Asia/Baghdad'),
(195, 'IR', 'Asia/Tehran'),
(196, 'IS', 'Atlantic/Reykjavik'),
(197, 'IT', 'Europe/Rome'),
(198, 'JE', 'Europe/Jersey'),
(199, 'JM', 'America/Jamaica'),
(200, 'JO', 'Asia/Amman'),
(201, 'JP', 'Asia/Tokyo'),
(202, 'KE', 'Africa/Nairobi'),
(203, 'KG', 'Asia/Bishkek'),
(204, 'KH', 'Asia/Phnom_Penh'),
(205, 'KI', 'Pacific/Tarawa'),
(206, 'KI', 'Pacific/Enderbury'),
(207, 'KI', 'Pacific/Kiritimati'),
(208, 'KM', 'Indian/Comoro'),
(209, 'KN', 'America/St_Kitts'),
(210, 'KP', 'Asia/Pyongyang'),
(211, 'KR', 'Asia/Seoul'),
(212, 'KW', 'Asia/Kuwait'),
(213, 'KY', 'America/Cayman'),
(214, 'KZ', 'Asia/Almaty'),
(215, 'KZ', 'Asia/Qyzylorda'),
(216, 'KZ', 'Asia/Aqtobe'),
(217, 'KZ', 'Asia/Aqtau'),
(218, 'KZ', 'Asia/Oral'),
(219, 'LA', 'Asia/Vientiane'),
(220, 'LB', 'Asia/Beirut'),
(221, 'LC', 'America/St_Lucia'),
(222, 'LI', 'Europe/Vaduz'),
(223, 'LK', 'Asia/Colombo'),
(224, 'LR', 'Africa/Monrovia'),
(225, 'LS', 'Africa/Maseru'),
(226, 'LT', 'Europe/Vilnius'),
(227, 'LU', 'Europe/Luxembourg'),
(228, 'LV', 'Europe/Riga'),
(229, 'LY', 'Africa/Tripoli'),
(230, 'MA', 'Africa/Casablanca'),
(231, 'MC', 'Europe/Monaco'),
(232, 'MD', 'Europe/Chisinau'),
(233, 'ME', 'Europe/Podgorica'),
(234, 'MF', 'America/Marigot'),
(235, 'MG', 'Indian/Antananarivo'),
(236, 'MH', 'Pacific/Majuro'),
(237, 'MH', 'Pacific/Kwajalein'),
(238, 'MK', 'Europe/Skopje'),
(239, 'ML', 'Africa/Bamako'),
(240, 'MM', 'Asia/Rangoon'),
(241, 'MN', 'Asia/Ulaanbaatar'),
(242, 'MN', 'Asia/Hovd'),
(243, 'MN', 'Asia/Choibalsan'),
(244, 'MO', 'Asia/Macau'),
(245, 'MP', 'Pacific/Saipan'),
(246, 'MQ', 'America/Martinique'),
(247, 'MR', 'Africa/Nouakchott'),
(248, 'MS', 'America/Montserrat'),
(249, 'MT', 'Europe/Malta'),
(250, 'MU', 'Indian/Mauritius'),
(251, 'MV', 'Indian/Maldives'),
(252, 'MW', 'Africa/Blantyre'),
(253, 'MX', 'America/Mexico_City'),
(254, 'MX', 'America/Cancun'),
(255, 'MX', 'America/Merida'),
(256, 'MX', 'America/Monterrey'),
(257, 'MX', 'America/Matamoros'),
(258, 'MX', 'America/Mazatlan'),
(259, 'MX', 'America/Chihuahua'),
(260, 'MX', 'America/Ojinaga'),
(261, 'MX', 'America/Hermosillo'),
(262, 'MX', 'America/Tijuana'),
(263, 'MX', 'America/Bahia_Banderas'),
(264, 'MY', 'Asia/Kuala_Lumpur'),
(265, 'MY', 'Asia/Kuching'),
(266, 'MZ', 'Africa/Maputo'),
(267, 'NA', 'Africa/Windhoek'),
(268, 'NC', 'Pacific/Noumea'),
(269, 'NE', 'Africa/Niamey'),
(270, 'NF', 'Pacific/Norfolk'),
(271, 'NG', 'Africa/Lagos'),
(272, 'NI', 'America/Managua'),
(273, 'NL', 'Europe/Amsterdam'),
(274, 'NO', 'Europe/Oslo'),
(275, 'NP', 'Asia/Kathmandu'),
(276, 'NR', 'Pacific/Nauru'),
(277, 'NU', 'Pacific/Niue'),
(278, 'NZ', 'Pacific/Auckland'),
(279, 'NZ', 'Pacific/Chatham'),
(280, 'OM', 'Asia/Muscat'),
(281, 'PA', 'America/Panama'),
(282, 'PE', 'America/Lima'),
(283, 'PF', 'Pacific/Tahiti'),
(284, 'PF', 'Pacific/Marquesas'),
(285, 'PF', 'Pacific/Gambier'),
(286, 'PG', 'Pacific/Port_Moresby'),
(287, 'PG', 'Pacific/Bougainville'),
(288, 'PH', 'Asia/Manila'),
(289, 'PK', 'Asia/Karachi'),
(290, 'PL', 'Europe/Warsaw'),
(291, 'PM', 'America/Miquelon'),
(292, 'PN', 'Pacific/Pitcairn'),
(293, 'PR', 'America/Puerto_Rico'),
(294, 'PS', 'Asia/Gaza'),
(295, 'PS', 'Asia/Hebron'),
(296, 'PT', 'Europe/Lisbon'),
(297, 'PT', 'Atlantic/Madeira'),
(298, 'PT', 'Atlantic/Azores'),
(299, 'PW', 'Pacific/Palau'),
(300, 'PY', 'America/Asuncion'),
(301, 'QA', 'Asia/Qatar'),
(302, 'RE', 'Indian/Reunion'),
(303, 'RO', 'Europe/Bucharest'),
(304, 'RS', 'Europe/Belgrade'),
(305, 'RU', 'Europe/Kaliningrad'),
(306, 'RU', 'Europe/Moscow'),
(307, 'RU', 'Europe/Simferopol'),
(308, 'RU', 'Europe/Volgograd'),
(309, 'RU', 'Europe/Kirov'),
(310, 'RU', 'Europe/Astrakhan'),
(311, 'RU', 'Europe/Samara'),
(312, 'RU', 'Europe/Ulyanovsk'),
(313, 'RU', 'Asia/Yekaterinburg'),
(314, 'RU', 'Asia/Omsk'),
(315, 'RU', 'Asia/Novosibirsk'),
(316, 'RU', 'Asia/Barnaul'),
(317, 'RU', 'Asia/Tomsk'),
(318, 'RU', 'Asia/Novokuznetsk'),
(319, 'RU', 'Asia/Krasnoyarsk'),
(320, 'RU', 'Asia/Irkutsk'),
(321, 'RU', 'Asia/Chita'),
(322, 'RU', 'Asia/Yakutsk'),
(323, 'RU', 'Asia/Khandyga'),
(324, 'RU', 'Asia/Vladivostok'),
(325, 'RU', 'Asia/Ust-Nera'),
(326, 'RU', 'Asia/Magadan'),
(327, 'RU', 'Asia/Sakhalin'),
(328, 'RU', 'Asia/Srednekolymsk'),
(329, 'RU', 'Asia/Kamchatka'),
(330, 'RU', 'Asia/Anadyr'),
(331, 'RW', 'Africa/Kigali'),
(332, 'SA', 'Asia/Riyadh'),
(333, 'SB', 'Pacific/Guadalcanal'),
(334, 'SC', 'Indian/Mahe'),
(335, 'SD', 'Africa/Khartoum'),
(336, 'SE', 'Europe/Stockholm'),
(337, 'SG', 'Asia/Singapore'),
(338, 'SH', 'Atlantic/St_Helena'),
(339, 'SI', 'Europe/Ljubljana'),
(340, 'SJ', 'Arctic/Longyearbyen'),
(341, 'SK', 'Europe/Bratislava'),
(342, 'SL', 'Africa/Freetown'),
(343, 'SM', 'Europe/San_Marino'),
(344, 'SN', 'Africa/Dakar'),
(345, 'SO', 'Africa/Mogadishu'),
(346, 'SR', 'America/Paramaribo'),
(347, 'SS', 'Africa/Juba'),
(348, 'ST', 'Africa/Sao_Tome'),
(349, 'SV', 'America/El_Salvador'),
(350, 'SX', 'America/Lower_Princes'),
(351, 'SY', 'Asia/Damascus'),
(352, 'SZ', 'Africa/Mbabane'),
(353, 'TC', 'America/Grand_Turk'),
(354, 'TD', 'Africa/Ndjamena'),
(355, 'TF', 'Indian/Kerguelen'),
(356, 'TG', 'Africa/Lome'),
(357, 'TH', 'Asia/Bangkok'),
(358, 'TJ', 'Asia/Dushanbe'),
(359, 'TK', 'Pacific/Fakaofo'),
(360, 'TL', 'Asia/Dili'),
(361, 'TM', 'Asia/Ashgabat'),
(362, 'TN', 'Africa/Tunis'),
(363, 'TO', 'Pacific/Tongatapu'),
(364, 'TR', 'Europe/Istanbul'),
(365, 'TT', 'America/Port_of_Spain'),
(366, 'TV', 'Pacific/Funafuti'),
(367, 'TW', 'Asia/Taipei'),
(368, 'TZ', 'Africa/Dar_es_Salaam'),
(369, 'UA', 'Europe/Kiev'),
(370, 'UA', 'Europe/Uzhgorod'),
(371, 'UA', 'Europe/Zaporozhye'),
(372, 'UG', 'Africa/Kampala'),
(373, 'UM', 'Pacific/Johnston'),
(374, 'UM', 'Pacific/Midway'),
(375, 'UM', 'Pacific/Wake'),
(376, 'US', 'America/New_York'),
(377, 'US', 'America/Detroit'),
(378, 'US', 'America/Kentucky/Louisville'),
(379, 'US', 'America/Kentucky/Monticello'),
(380, 'US', 'America/Indiana/Indianapolis'),
(381, 'US', 'America/Indiana/Vincennes'),
(382, 'US', 'America/Indiana/Winamac'),
(383, 'US', 'America/Indiana/Marengo'),
(384, 'US', 'America/Indiana/Petersburg'),
(385, 'US', 'America/Indiana/Vevay'),
(386, 'US', 'America/Chicago'),
(387, 'US', 'America/Indiana/Tell_City'),
(388, 'US', 'America/Indiana/Knox'),
(389, 'US', 'America/Menominee'),
(390, 'US', 'America/North_Dakota/Center'),
(391, 'US', 'America/North_Dakota/New_Salem'),
(392, 'US', 'America/North_Dakota/Beulah'),
(393, 'US', 'America/Denver'),
(394, 'US', 'America/Boise'),
(395, 'US', 'America/Phoenix'),
(396, 'US', 'America/Los_Angeles'),
(397, 'US', 'America/Anchorage'),
(398, 'US', 'America/Juneau'),
(399, 'US', 'America/Sitka'),
(400, 'US', 'America/Metlakatla'),
(401, 'US', 'America/Yakutat'),
(402, 'US', 'America/Nome'),
(403, 'US', 'America/Adak'),
(404, 'US', 'Pacific/Honolulu'),
(405, 'UY', 'America/Montevideo'),
(406, 'UZ', 'Asia/Samarkand'),
(407, 'UZ', 'Asia/Tashkent'),
(408, 'VA', 'Europe/Vatican'),
(409, 'VC', 'America/St_Vincent'),
(410, 'VE', 'America/Caracas'),
(411, 'VG', 'America/Tortola'),
(412, 'VI', 'America/St_Thomas'),
(413, 'VN', 'Asia/Ho_Chi_Minh'),
(414, 'VU', 'Pacific/Efate'),
(415, 'WF', 'Pacific/Wallis'),
(416, 'WS', 'Pacific/Apia'),
(417, 'YE', 'Asia/Aden'),
(418, 'YT', 'Indian/Mayotte'),
(419, 'ZA', 'Africa/Johannesburg'),
(420, 'ZM', 'Africa/Lusaka'),
(421, 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(499) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `role_id`, `outlet_id`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`, `status`) VALUES
(1, 'Owner', 'owner@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 0, 1, '2016-08-27 00:00:00', 1, '2019-01-09 18:17:20', 1),
(2, 'Bugis Manager', 'bugismanager@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 3, 1, '2016-08-27 12:30:07', 1, '2016-09-05 21:08:25', 1),
(3, 'Bugis Sales Staff', 'bugissales@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 3, 2, '2016-08-27 12:32:17', 1, '2016-09-05 21:08:43', 1),
(4, 'Changi Manager', 'changimanager@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 2, 1, '2016-08-27 12:35:03', 1, '2016-09-05 21:09:18', 1),
(5, 'Changi Sales', 'changisales@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 2, 1, '2016-08-27 12:35:32', 1, '2016-09-05 21:08:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_user_id` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_user_id` int(11) NOT NULL,
  `updated_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `created_user_id`, `created_datetime`, `updated_user_id`, `updated_datetime`) VALUES
(1, 'Administrator', 1, '2016-08-16 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Manager', 1, '2016-08-16 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Sales Person', 1, '2016-08-16 00:00:00', 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`iso`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debit_cradit`
--
ALTER TABLE `debit_cradit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card`
--
ALTER TABLE `gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventorykg`
--
ALTER TABLE `inventorykg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productkg`
--
ALTER TABLE `productkg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_status`
--
ALTER TABLE `purchase_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_items`
--
ALTER TABLE `return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspend`
--
ALTER TABLE `suspend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suspend_items`
--
ALTER TABLE `suspend_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `debit_cradit`
--
ALTER TABLE `debit_cradit`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_card`
--
ALTER TABLE `gift_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inventorykg`
--
ALTER TABLE `inventorykg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productkg`
--
ALTER TABLE `productkg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_status`
--
ALTER TABLE `purchase_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suspend`
--
ALTER TABLE `suspend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suspend_items`
--
ALTER TABLE `suspend_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
