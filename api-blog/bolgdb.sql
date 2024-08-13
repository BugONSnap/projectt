-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2024 at 04:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolgdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `profile_image_url` varchar(255) NOT NULL,
  `author_unique_id` varchar(8) NOT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `summary`, `profile_image_url`, `author_unique_id`, `image_id`) VALUES
(118, 'Who is Iron Mouse???', 'Ironmouse is a female American VTuber from Puerto Rico.[4] A veteran of the industry, she debuted in August 2017. She is one of the most successful VTubers to date, earning numerous awards and reaching 2 million Twitch followers in 2024.\\r\\n\\r\\nA trained opera singer, she is known for her singing talent, as well as her crazy personality, sassy attitude and high-pitched voice. She also serves as an inspiration to fellow sufferers of chronic illness. Originally in independent streamer, she became a founding member of agency\\r\\n\\r\\nProfile\\r\\nA demon queen who goes by several names… but has also been rumored to be Satan herself. She is a friendly, fun loving demon who ran from her duties and escaped the confines of Hell/the underworld in order to make new friends, learn new things and live life to the fullest. She has an obsession with the internet, music, lewd stuff, nerd shit, and all things cute. She wears special magical bells on her body to contain and control her power in order to better blend into the human world. If her bells ever get removed, pure chaos would ensue. It has been said that once the bells are off, her true demon queen form will be revealed. All she wants to do is to have fun and see what the human world is all about and… make as many souls friends as she can.[5]\\r\\n\\r\\nPersonality\\r\\nIronmouse\\\'s behavior is so lighthearted and funny that there isn\\\'t a stream where she doesn\\\'t make her chat or streaming partners laugh.\\r\\n\\r\\nIn early 2020, she was very shy and only showed confidence when streaming alone or with close friends. She was very nervous around others, but over the next two years she developed more and more confidence.\\r\\n\\r\\nHer chaotic nature was more pronounced in her early streaming years, as she tended to ask odd questions out of the blue or talk about the strangest topics, often leaving her conversation partners speechless because she had no filter. Over time, she learned to control herself better, but she doesn\\\'t always succeed, especially when she\\\'s around like-minded friends.\\r\\n\\r\\nIn her early streaming days, she used a lot of suggestive language, but as she developed more confidence, this behavior decreased. If not completely gone, at least she no longer deletes VODs for fear of possible ToS bans.\\r\\n\\r\\nShe cares a lot about her friends and gets sad when she hears someone being mean to them, even more so than when they are being mean to herself.\\r\\n\\r\\nHer abundant charisma is easily recognized by the way she makes people smile, feel comfortable, or get emotional. She is generally very friendly to everyone except when she roasts people who are mean in chat or when she occasionally behaves in a \\\"tsundere\\\"-type fashion. Tsundere is a Japanese term for a character who is caring but has difficulty expressing positive feelings for someone and instead acts temperamental and hot-headed. There were also rare instances when she acted in a \\\"Yandere\\\"-type fashion, laughing maniacally and saying things like \\\"I love you so much that you have to die\\\", these flashes of yandere appearing in games where she had to kill off her collaboration partners.\\r\\n\\r\\nShe is very hardworking, as she puts in effort every day to stream and provide content for her viewers despite her circumstances. Even the name \\\"precious family\\\" that she chose for her community shows how much she loves what she does and how grateful she is for the love that the community gives her. She gets very emotional when she talks about how far she has come against all adversity.\\r\\n\\r\\nShe is known to be easily scared and likes to stall before and while playing horror games, but at the same time she loves the feeling of being scared, which is why she likes playing scary games.\\r\\n\\r\\nAppearance\\r\\nShe has fluffy pink medium length hair with a heart shaped ahoge and dark purple streaks and light purple eyes. She has sparkly black heart shaped hairpins and white horns.', 'http://localhost/api-blog/uploads/Foeyy2HWAAEu4ua.png', 'BJozVR4D', NULL),
(119, 'Who is filian?', 'Filian is an independent kemonomimi VTuber based in North America, with English being her main broadcasting language. Self-branded as \"VTuber alpha\" or \"VTuber in training,\" Filian has not yet made an official debut, though she has been streaming on Twitch since 18 April 2021. Filian also has an alter ego named Gilian, who is similar to Filian but wears different outfits and has long bluish-purplish hair.\n\nBio\nHiya!\n\nSo basically I do flips for fruit snacks, function as a top tier TTS bot, emit gremlin noises, and have heart attacks--then I call it a stream!\n\nI stream VRChat, variety games, and my inevitable descent into insanity! Height is approximately from 4.9ft to 4.10ft.\n\nPersonality\nFilian is a very energetic streamer with a cheerful and confident personality. While a fully functioning adult,[5] she is not above immature humor, likes playing pranks, and doesn\'t like taking things too seriously. She is also very clumsy, often running into walls/objects or falling over.\n\nFilian maintains a \"family-friendly\" image and doesn\'t swear or engage in lewd behavior. She is very daring, going through with ridiculous \"punishments,\" which often involve embarrassing herself in public worlds in VRChat, ingesting undesirable combinations of food items, tweeting out self-damaging statements, and more.\n\nAppearance\nBeing a VRChat streamer, Filian switches between different 3D models fairly often, but the two most used by her are Mint (also known as Lil\' Fil) and Rindo (both customized to have a consistent color scheme). Filian is a cat girl with white hair of varying length depending on the model, and violet eyes. She is small in stature and has a slim body build, evident by the fact that during her first PO Box stream she was able to put on kids\' size clothes.\n\nHer current main model, Rindo, has quite a few outfits. She switches between these outfits often, sometimes going through multiple costumes in one stream. These include:', 'http://localhost/api-blog/uploads/28c9ac60-3c15-11ef-b977-0c4de43b1664.jpg', 'BJozVR4D', NULL),
(127, 'Ninomae Ina\'nis', 'Ninomae Ina\'nis (一伊那尓栖/にのまえいなにす) is a female English-speaking Virtual YouTuber associated with hololive, debuting in 2020 as part of hololive English first generation \"-Myth-\" alongside Takanashi Kiara, Watson Amelia, Mori Calliope and Gawr Gura.\n\n\nDespite her looks, Ina\'nis is actually a priestess of the Ancient Ones. One day, she picked up a strange book and then started to gain the power of controlling tentacles. To her, tentacles are just a part in her ordinary life; it has never been a big deal for her. However, her girly mind does want to get them dressed up and stay pretty.\nAfter gaining power, she started hearing Ancient Whispers and Revelations. Hence, she began her VTuber activities to deliver random sanity checks on humanity, as an ordinary girl.[9]\n\nPersonality\nIna is a gentle, peaceful, soft-spoken and down-to-earth girl with an easy-going temperament, so much so that she reverses stress and insanity in her viewers rather than encouraging it, despite her Lovecraftian role as \"the maiden who speaks for the old gods.\" She is very loving and aware towards her fellow members, capable of talking extensively about each one and their respective quirks.\n\nShe is considerate and kind; Takanashi Kiara relates that when she is down, Ina is always the first to message her. In complete contrast to the salty gremlin Amelia, Ina has near-infinite patience and is widely considered the most well-behaved member of her generation.\n\nIna is very engaged in popular culture with massively diverse tastes, enjoying a large variety of genres in an equally large pool of mediums, whether it be mecha anime, pop rock, fps, only to name a few. A notable feature of Ina is her significant artistic talent, illustrating multiple promotional content for HoloEN as well as the majority of assets she uses for her VTuber activities.\n\nIna is infamous for her use of puns and dry delivery of \"dad jokes.\"\n\nAppearance\nIna\'nis has long purple hair falling below her knees, she has purple flaps on top of her head, her side locks are similar to tentacles, are squishy and gradating to yellow on the tips, she uses a golden tiara. She has bluish purple eyes and pointy ears. She uses a black and white choker. Ina wears a two layered, sleeveless purple and yellow dress. The upper section is purple with a plaid pattern, while the skirt is yellow and has planks.\n\nAround her waist Ina has two feathery, white wings. On her left side she wears a white detached sleeve and a high sock, both decorated with purple and white button knots. Ina wears black and purple sandals. She can also optionally display a golden halo, that she can hide for streaming and multiple large purple tentacles, some with sparks, orange spots, hearts and other patterns that float behind her as they are not a part of her body, and the book \"AO-chan\" that floats near her.', 'http://localhost/api-blog/uploads/images.jpg', 'BJozVR4D', NULL),
(129, 'Who is Gawr Gura?', 'Gawr Gura (がうる・ぐら) is a female English-speaking Virtual YouTuber associated with hololive, debuting in 2020 as part of hololive English first generation \"-Myth-\" alongside Ninomae Ina\'nis, Takanashi Kiara, Watson Amelia and Mori Calliope.\n\nGura is currently the most subscribed VTuber worldwide with over 4 million YouTube subscribers, taking the #1 spot from industry pioneer Kizuna AI in 2021.\n\nPersonality\nGura is friendly and readily likeable, and often amuses her viewers with foolish antics. She has no sense of direction, often misspells and mispronounces words, has trouble remembering her own age, and consistently fails to solve basic math problems, leading viewers to affectionately call her a \"dum shark\". Memorably, one viewer declared that \"Gura has a heart of gold and a head of bone.\"\n\nShe can also be lazy at times. She often forgets about perishable items until they start to rot, and eats baby food \"because you don\'t have to cook it... [or] chew on it.\"\n\nHowever, despite her poor math and spelling skills, Gura is quick-witted, clever, and has vast knowledge of Shark Facts. When questioned on why she was not \"boing boing,\" she excused it by claiming that she was \"hydrodynamic.\" Her skill with fast-paced rhythm games is exceptional, and she is highly ambitious. She also occasionally makes lewd jokes, and is familiar with modern meme culture, which she references often.\n\nAppearance\nGawr Gura is very short, reaching around 141 cm (4\'7\"). She has a slim body type. She has white, light silver-like hair with baby blue and cobalt blue strands, along with short pigtails on either side of her head, tied with diamond-shaped, shark-faced hair ties. She has cyan pupils, and sharp, shark-like teeth. She can wear a dark cerulean-blue hood in the shape of a shark\'s head.\n\nShe wears an oversized, dark cerulean-blue hoodie that fades into white on her arm sleeves and hem, two yellow strings in the shape of an \"x\" that connect the front part of her white hoodie hood, a shark mouth designed on her hoodie waist with a zipper, gray hoodie drawstrings with two black circles on each of them, and two pockets on the left and right sides of her hoodie waist with white fish bone designs on them.\n\nShe also wears a gray shirt under her hoodie. She wears dark blue socks, white shoes with pale baby blue shoe tongues, black shoelaces, gray velcro patches on the vamps, and thick, black soles. She wields a sapphire-blue trident and has a cyan shark tail. The upper lobe of Gura\'s caudal fin, the top part of her tail, is sewn up with gray stitches because of a rock that fell on it while she was in a deep sea trench. The lower lobe of Gura\'s caudal fin, the bottom part of her tail, has three bite marks, which she forgot the cause of.\n', 'http://localhost/api-blog/uploads/hq720.jpg', 'BJozVR4D', NULL),
(130, 'Who is Mori Calliope?', 'Mori Calliope (森 カリオペ) is a female English-speaking Virtual YouTuber associated with hololive, debuting in 2020 as part of hololive English first generation \"-Myth-\" alongside Ninomae Ina\'nis, Takanashi Kiara, Watson Amelia and Gawr Gura.\n\nPersonality\n\nThe Grim Reaper\'s apprentice has displayed throughout her streams, guest appearances, and music to a have cool, yet serious personality, with a timid side being seen when interacting with others for the first time, such as her senpais. Calli\'s cool attitude can be clearly observed in most of her streams, as she tries her best to impress her fans with her musical talent and occasional gaming skills.\n\nHowever, she is not afraid to get serious about topics that may be on her mind, and engages in thoughtful discussions with viewers. This combination of a relaxed yet serious personality has earned her the admiration of not only her fans, but also the other hololive talents as well.\n\nHowever, Calli\'s playful side comes out more evidently during collaborations with her genmates, displaying a side of Calli which viewers don\'t regularly experience. Calli still remains above all an avid hard worker who is regularly working on projects behind the scenes, often not sleeping for long periods of time. Despite the challenges that she may face while working on these projects, each one is very much rewarded and appreciated by her fans each time a new original song or cover is released.\n\nCalliope is equally excited by both rapping and \"reaping.\" Her favorite weapons include her scythe (nicknamed \"Ricky\") and the flail, a medieval weapon made from a spiked metal ball on a chain.\n\nCalliope is noted for having one of the most lowest pitched voices in hololive, even more so than likes of Nekomata Okayu, Tokoyami Towa and A-chan. Although fluent in English, Calliope often fails to understand current modes of speech, such as the use of contractions or modern slang. She is easily flustered by romance, leading some to call her the \"tsundereaper.\"\n\nWhen not on camera, however, she is described as air-headed and hopelessly forgetful. Kiara has mentioned that she frequently misplaces things despite leaving them in an obvious place, like leaving her cellphone in her jacket. She also works exceptionally hard, perhaps too much so.\n\nAppearance\n\nShe has long, straight pink hair with a small black crown with a transparent veil and pink eyes. She has a black cape with sharp white teeth.', 'http://localhost/api-blog/uploads/ab676161000051743e435fe15ebb32b0bbf0c855.jpg', 'BJozVR4D', NULL),
(131, 'Who is Takanashi Kiara?', 'Takanashi Kiara (小鳥遊キアラ) is a female English-speaking Virtual YouTuber associated with hololive, debuting in 2020 as part of hololive English first generation \"-Myth-\" alongside Ninomae Ina\'nis, Watson Amelia, Mori Calliope and Gawr Gura.\n\nPersonality\n\nKiara is enthusiastic, energetic, passionate, and friendly, and is open with her feelings. She cares strongly for her friends and family, and misses them a great deal while she is abroad. She has seemingly no trouble holding a conversation with other talents, both within and outside of hololive. Kiara has no problem taking the lead in collaborations, and performing as host whenever the situation calls for it. Her energetic personality is also prevalent in her original songs, most notably SPARKS and HINOTORI, as they both have fast-paced beats and lyrics that feature an encouraging and positive message.\n\nAlthough energetic and sometimes chaotic in nature, and eager to collab with other members, she is secretly quite shy. She is sometimes bird-brained, being forgetful or having a short attention span. She prefers video games with fixed goals, such as RPGs, rather than open-world games like Minecraft.\n\nKiara is very fond of her genmates, and regularly mentions and commends them for their hard work, both on-stream and on social media. While her relationship with Mori Calliope may be described as flirtatious in nature, their interactions continue to reinforce the trust and comradely spirit between the two. Her fanbase is no different, as the KFP have regularly been subjects of her gratitude for their support, while also playfully experiencing her frustration by getting sent to \"The Usual Room\".\n\nOn a graph ranking members in purity and intelligence, Kiara was rated \"bottom left\"—maximum lewd and foolish, much to her bemusement. However, she often surprises viewers with moments of gentleness, compassion, and insightful wisdom.\n\nWatson Amelia, in her debut stream, described Kiara as having a \"positive attitude and lovely voice.\" Mori Calliope described her as a hard worker and an incredible singer with a great personality, and praised her fluency with Japanese.[12]\n\nAppearance\n\nShe has medium-length coral hair that fades into a teal green with similarly colored shiny feathery earrings and magenta eyes. She has a greenish bow ribbon around her neck and wears a mostly orange uniform. She has a small white chef\'s hat and a red beret that has a black bow with white stars on it.', 'http://localhost/api-blog/uploads/maxresdefault.jpg', 'BJozVR4D', NULL),
(132, 'Who is Watson Amelia?', 'Watson Amelia (ワトソン・アメリア) is a female English-speaking Virtual YouTuber associated with hololive, debuting in 2020 as part of hololive English first generation \"-Myth-\" alongside Ninomae Ina\'nis, Takanashi Kiara, Mori Calliope and Gawr Gura.\n\nPersonality\n\nAmelia is a highly eccentric girl who is often seen mingling or teasing her fellow holoMyth members. She is usually kind, supportive, and sweet as shown when she frequently watches her fellow members\' streams and often willingly helps Gura in Minecraft. She was said to have helped troubleshoot some of the technical problems her genmates were having before and during debut which led to the birth to the meme Amelia Tech Tips which is a parody of the popular YouTube channel Linus Tech Tips. Amelia is also highly supportive towards hololive members and frequently comments in any ongoing streams whenever she gets the time to do so.\n\nHowever, Amelia can also be quite mischievous and playfully naughty by pulling pranks on her fellow genmates or making statements and jokes that have inconspicuously lewd undertones, such as naming one of her mines in Minecraft \"Gura\'s Backdoor\" with an added lenny emoticon \" ( ͡° ͜ʖ ͡°) \" that is often used mischievously online.\n\nShe also harbors another side of her personality that comically emerges that is often dubbed \"Gremlin Mode\" by her viewers. She can be greedy, prideful, and unsportsmanlike in competitive online games such as, Apex Legends, and Valorant. For these reasons, fans often refer to her as a \"True Gamer.\" Such kinds of behavior has led fans to also calling her a \"True Gamer\" in the sense that gamers are often considered to be toxic online. Though it is important to note that this doesn\'t detract from her positive traits but rather makes her streams quite unpredictable and very interesting to watch.\n\nAmelia has a special voice that she uses when she is in Gremlin Mode, which sounds like a cross between a high-pitched wheeze, reptilian screech, and the final breath of a dying squeaky toy. She is not above trolling and calling out her chat if the opportunity arises, such as when she trolled her viewers in one of her Minecraft streams by adjusting her shader\'s brightness very darkly and innocently claiming that she fixed the shaders for them. Despite these circumstances, she tries her best to moderate her gremlin-like behavior, to varying degrees of success.\n\nPossibly her best-known joke is \"ground pounding your mom,\" which she said once during a Super Mario Odyssey playthrough in a slightly lower-pitched and \"gremlin-like\" voice and has since become almost synonymous with her character. She frequently makes similar lewd remarks seemingly out of nowhere. It might seem that Amelia has no filter, but that isn\'t entirely accurate. She does have a filter, but most of the outrageous things that are caught in her filter end up being said out loud regardless.\n\nOverall, her balanced chemistry of sweetness and saltiness makes her very lovable as noted by her fans.\n\nAppearance\n\nAmelia has light-blonde hair falling below her shoulders. Her eyes are blue. She has a beauty mark on her left breast that can be seen when she wears clothes with cleavage such as her third 2D costume or in her 3D swimsuit.\n\nShe uses a light brown deerstalker (commonly known as \"detective hat\") with a checked pattern on the sides, and golden hairpin representing a magnifying glass decorated with some gears. Amelia wears a white blouse complemented with a red tie. She uses a light brown skirt with a checked pattern where she carries a golden pocket watch that allows her to time travel. On her left leg she carries various syringes filled with Amelia\'s concoction. Her high socks are black and her shoes are dark brown. Amelia also uses a light brown detective coat with a stethoscope.', 'http://localhost/api-blog/uploads/htYfFpt0_400x400.jpg', 'BJozVR4D', NULL),
(133, 'Who is Zentreya?', 'Zentreya is a female English-language VTuber who debuted in 2017. Initially an independent streamer mostly known for VRChat roleplaying, Zen joined VTuber group VShojo in November 2020 alongside Nyatasha Nyanners, Ironmouse, Projekt Melody, Froot, Hime Hajime, and Silvervale.\n\nShe is noted for the use of a speech-to-text-to-speech system to produce a synthesized voice. She alternates between multiple forms, primarily her cyborg and dragon models.\n\nPersonality\nDragon\n\nCompared to other members of VShojo such as Projekt Melody and Nyanners, it is atypical for her to display risqué tendencies while streaming, even in coincidence with her sullen image, acting somewhat more virtuous and open to her community. During streams, she occasionally intervenes with something risqué but brief, usually under the awareness that there are people in her community who will indulge in it, avoiding being upfront on a constant. This is a stark contrast to how she acts while not streaming in that she is more willing to regularly apply these tendencies.\n\nCommander\n\nShe was often called the Red Devil, who commands the most powerful military power and often seeks war, whether that\'s by disputes or because of Lewdest territory. She is considered violent yet conniving, but beneath the cold and manipulative exterior is something warm-hearted.\n\nShe is sassy with her community and enjoys a consistent back and forth banter with them. Both chat and Zentreya are known for trolling one another, often throughout an entire stream with the use of voice clip redeems and comebacks. Zentreya has been known to brag about her gaming skills only for the results to go horribly wrong on stream.\n\nAppearance\n\nZentreya tends to go through a varied looks and styles. Her first form is a cyborg in a red skin-tight catsuit with black and mint green armor around her neck and hips. She has a black jacket with her name embezzled on the sleeves, spine pattern on the back and helmet.\n\nUnderneath the helmet is her normal face with yellow eyes that can change color and short white-grey hair. Zentreya\'s helmet is a call back to her dragon form and shows that she is a cybernetic-dragon with interchangeable parts. Her helmet to resembles a dragon with the mouth and the antennas resemble horns of the dragon. She also is said to have interchangeable legs with either anti-gravity boots as well as heels.\n\nHer secondary form is that of a red dragon in humanoid form, with long red hair and yellow eyes. She wears her hair in a ponytail or has a short pixie cut, and has horns with piercing in them, large wings with spikes on them, pointed ears, and a very thick tail. She wears a black leather jacket, studded belts, chains and a black skirt with black spiked heels to complete the outfit.\n\nHer old dragon looks consisted of a black leather jacket, jean shorts and canvas shoes to complete the outfit. Her 2D model appears to trade out the jean shorts for a black leather skirt with black high heels.\n\nIn her previous human form, she wore her hair down, often with a black hat, a black overcoat/cape with a white fur trim, a black suit, and a red tie. She had red hair and yellow eyes in this form.', 'http://localhost/api-blog/uploads/Fl-AqaQWYAA798g.jpg', 'BJozVR4D', NULL),
(134, 'Who is Matara Kan?', 'Matara Kan is an English speaking VTuber affiliated with VShojo. She debuted on Twitch on 15 October 2023.\nPersonality\nMatara is known as \"mom\" by her fans due to her doting, supportive behavior. Other VTubers generally regard her as a trustworthy person who will lend an ear to their troubles. Her streams have a reputation among viewers for a comfy, healing atmosphere.\n\nFrom time to time, Matara presents herself as a \"boomer,\" (or more accurately, Generation X), who is not very well-versed with the Internet, such as claiming to still use Internet Explorer as her main browser or prefixing the names of social media websites with \"the\" (e.g. \"the Facebooks\", \"the TikToks\", etc.)\n\nDespite her nurturing personality, Matara also has a cunning, borderline sadistic side to her.\n\nAppearance\nShe possesses multiple insect-like claws and antennae. She has long pink hair with blunt bangs and other shades of pink streaks with orangey eyes with long lashes and markings underneath one of her eyes. She wears a pink dress that shows her cleavage in the middle and a golden brooch pin with dark pink jewels in the shape of a cockroach. She has skeletal insect legs without shoes.\n\nProfile\nThe World\'s Most Resilient VTuber.\n\nBug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug. Bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug. Bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug. Bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug bug.', 'http://localhost/api-blog/uploads/matara.jpg', 'BJozVR4D', NULL),
(135, 'Who is Michi Mochievee?', 'Profile\\r\\nI\\\'M MICHI MOCHIEVEE I STREAM AND HAVE BANGER MERCH. IT\\\'S SUPER COOL, BOTH ARE SUPER COOL. I WON\\\'T REMEMBER WRITING THIS AT ALL BUT TRUST ME IT\\\'S SO COOL!!! BUY MY MERCH NOW & SUBSCRIBE TO MY CHANNELS CAUSE I\\\'M SO COOLLLLL!!!\\r\\n\\r\\nPersonality\\r\\nMichi is often an energetic and extrovert person with a lot of chaotic energy in her livestreams and collabs. While she is mostly like this, Michi also has her chill moments, mainly in her solo livestreams in chat. Michi is a very caring person who is always teasing others, while showing how much she cares for her friends at the same time when the situation urges.\\r\\n\\r\\nAppearance\\r\\nMichi has long purple hair with white streaks and her mascot on her head. She has 2 braids in her hair, one in her bangs and one over her shoulder. She wears a choker, a ripped black eye-patterned shirt with red and white stitches over her chest, as well as an oversized jacket. She has a stitch over her face, \\\"unreasonably flat teeth\\\" contrasted by a small flesh-tooth fang[2], and cat-like mouth. Her eyes are white with purple undertones, with a red ring around her red pupils. She has quite a few colored gems and beads throughout her hair and 5 piercings on her ear. And to quote her lore video, massive tits.', 'http://localhost/api-blog/uploads/hq720 (1).jpg', 'BJozVR4D', NULL),
(136, 'Who is Kuro Kurenai?', 'Kuro Kurenai, also known as K9 Kuro, is an English language VTuber affiliated with VShojo. He debuted on 30 September 2023. He is the fourteenth VTuber to debut with VShojo, and the first male member.\n\nPersonality\n\n loud and outspoken way of speaking, humorous and bizarre personality, and proneness to swearing. He also has a sense of maturity, being able to straightforwardly discuss serious topics and address them when needed.\n\nWhile he presents himself as talkative and bombastic on-stream, Kuro has stated that he is actually fairly shy when he isn\'t streaming.\n\nAppearance\n\nKuro has red undertones in his short, dark hair, red eyes, and a black mouth mask that covers half of his face. His right brow has been pierced. He also wears a black cross earring. His clothes are a black t-shirt with a tear in the front and stitches that fall over his left shoulder to reveal a white pattern on the front of the shirt. His lower torso is bandaged on the left leg and garter belt on the right thigh. He\'s wearing short black shorts. His white bandages around his neck had dried blood stains. He\'s clad in a red and black jacket with puffy sleeves and a black hoodie with red ears. He\'s wearing black boots with silver spikes that reach his ankles.\n\nProfile\n\nUndead god regaining powers, searching for his other half.\n\n\"Hi! I\'m KURO the God of Undead Miracles!\n\nI\'m here to vibe and hangout with my chat, playing games and having fun!\"', 'http://localhost/api-blog/uploads/F8EPXd1bkAA6kIt.jpg', 'BJozVR4D', NULL),
(137, 'Who is Tsukumo Sana', 'Tsukumo Sana (九十九 佐命) was a female English speaking Virtual YouTuber associated with hololive. She debuted in 2021 as part of hololive English -Council-, the second generation of members of hololive English, alongside Ceres Fauna, Ouro Kronii, Nanashi Mumei and Hakos Baelz.\n\nProfile\n\nA member of the Council and the Speaker of \"Space,\" the very first concept created by the Gods.\n\nAfter being materialized in the mortal realm, she began researching astrology in earnest for one particular reason. However, she soon stumbled unknowingly upon the Forbidden Truth, and was turned into an apostle for the Ancient Ones.\n\n\"Space\" refers not only to this universe we live in, but all dimensions and matter to exist. It is a concept unbridled by definition, and one that continues to grow in scope limitlessly. As it is yet to be fully explored by man, her seemingly strange behavior and speech can be explained away with a simple, \"Humanity simply isn\'t yet ready to understand.\"\n\nAs a side note, despite how she may look, she is quite chi... young.\n\nPersonality\n\nTsukumo Sana was enthusiastic and generally easy-going, with a curiosity that led her to seek secrets in games, and a stubbornness that made her never give up until she achieved what she set off to do. She had a light-hearted and sometimes childish attitude, and was always overflowing with bubbly enthusiasm no matter what she was doing.\n\nShe had an interest in both astronomy and astrology, and often made references to space. Her sense of humor was, in a word, odd. She made puns and jokes that were just a little dirty, and yet were enough to throw other people off during collaborations even fellow pun enthusiast Ninomae Ina\'nis had been thrown off by Sana\'s jokes and non-sequiturs.\n\nShe was fond of her fellow hololive -Council- members, and constantly doted on them whenever she got the chance. Sana enjoyed sharing fun facts, particularly those with large numbers. She may also have had a tendency to exaggerate, as the age and unrestricted height she wrote in her debut were off by an order of magnitude.\n\nShe could be careless and had destroyed the planet Earth multiple times as a result.\n\nAt debut, Hakos Baelz described Sana as the ultimate \"ドM\" (masochist), having insane art skills and a heart as big as space. This was especially evident in her interactions with her genmates and fellow hololive members, where she always greeted them with overwhelming joy and kindness.\n\nSana was also, despite being the physical embodiment of space and the universe, grounded and down to earth. She recognized that not everything would go according to plan, and was transparent with her challenges to her Sanallites. While announcing a temporary hiatus due to the loss of her family pet, she reminded viewers that rushing to have fun would ultimately not be beneficial to anybody, once again demonstrating the mature and grounded aspect of her personality.\n\nAppearance\n\nShe has long blonde hair in twintails with large, multicolored balls as hair accessories. She has golden eyes and tanned skin with a pink swirly shaped antennae sticking out of her head.', 'http://localhost/api-blog/uploads/FYlxEUkUsAY66hg.jpg', 'gLhHWRtK', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_path`, `upload_date`) VALUES
(112, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 04:39:33'),
(113, 'uploads/MV5BNjYwODMwMTMtOTY2OC00M2M0LWEyOWYtZjhmNGYwY2UyN2ZmXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', '2024-08-09 04:40:45'),
(114, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 04:48:43'),
(115, 'uploads/MV5BNjYwODMwMTMtOTY2OC00M2M0LWEyOWYtZjhmNGYwY2UyN2ZmXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', '2024-08-09 04:51:58'),
(116, 'uploads/HZBN_S1_FG_1_00040219_Still095_3000.jpg', '2024-08-09 04:52:03'),
(117, 'uploads/MV5BNjYwODMwMTMtOTY2OC00M2M0LWEyOWYtZjhmNGYwY2UyN2ZmXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', '2024-08-09 04:54:07'),
(118, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 04:54:50'),
(119, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 05:17:16'),
(120, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 05:33:42'),
(121, 'uploads/Screenshot (1).png', '2024-08-09 05:38:56'),
(122, 'uploads/Screenshot (1).png', '2024-08-09 05:46:46'),
(123, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 05:47:00'),
(124, 'uploads/HZBN_S1_FG_1_00040219_Still095_3000.jpg', '2024-08-09 05:52:37'),
(125, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 05:52:44'),
(126, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 05:57:30'),
(127, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 06:03:01'),
(128, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 06:03:29'),
(129, 'uploads/Fl-AqaQWYAA798g.jpg', '2024-08-09 06:06:50'),
(130, 'uploads/artworks-M5j2dLS4XSrU7GwX-sG3YLg-t1080x1080.jpg', '2024-08-09 06:45:41'),
(131, 'uploads/Foeyy2HWAAEu4ua.png', '2024-08-09 07:10:30'),
(132, 'uploads/28c9ac60-3c15-11ef-b977-0c4de43b1664.jpg', '2024-08-09 07:29:07'),
(133, 'uploads/hq720.jpg', '2024-08-09 07:55:18'),
(134, 'uploads/MV5BNjYwODMwMTMtOTY2OC00M2M0LWEyOWYtZjhmNGYwY2UyN2ZmXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', '2024-08-09 08:15:17'),
(135, 'uploads/hq720.jpg', '2024-08-09 08:47:32'),
(136, 'uploads/htYfFpt0_400x400.jpg', '2024-08-09 09:32:43'),
(137, 'uploads/ab676161000051743e435fe15ebb32b0bbf0c855.jpg', '2024-08-09 10:32:45'),
(138, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 10:45:07'),
(139, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 10:46:53'),
(140, 'uploads/maxresdefault.jpg', '2024-08-09 11:13:22'),
(141, 'uploads/images.jpg', '2024-08-09 16:08:46'),
(142, 'uploads/453209573_947373520492639_5378917914999554981_n.jpg', '2024-08-09 16:11:06'),
(143, 'uploads/hq720.jpg', '2024-08-09 16:12:38'),
(144, 'uploads/ab676161000051743e435fe15ebb32b0bbf0c855.jpg', '2024-08-09 16:13:31'),
(145, 'uploads/maxresdefault.jpg', '2024-08-09 16:14:02'),
(146, 'uploads/htYfFpt0_400x400.jpg', '2024-08-09 16:15:04'),
(147, 'uploads/Fl-AqaQWYAA798g.jpg', '2024-08-09 16:16:44'),
(148, 'uploads/matara.jpg', '2024-08-09 17:23:33'),
(149, 'uploads/hq720 (1).jpg', '2024-08-09 17:25:11'),
(150, 'uploads/hq720 (1).jpg', '2024-08-09 17:25:36'),
(151, 'uploads/F8EPXd1bkAA6kIt.jpg', '2024-08-09 17:27:13'),
(152, 'uploads/FYlxEUkUsAY66hg.jpg', '2024-08-10 01:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(111) NOT NULL,
  `unique_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `unique_id`) VALUES
(20, 'lee', '$2y$10$22EfzRvmcSmrYhwR0ova3.FInzkCLpVlQS3T22bGGaHQG6g02SJLW', 'lee@gmail.com', 'BJozVR4D'),
(21, 'xai', '$2y$10$oyGSCo1g27MDvVpH1yP8ruOPHYUAD4yFSQbnS5ZmbAckOXw1F6qGq', 'xaixai@gmail.com', 'gLhHWRtK'),
(22, 'chris', '$2y$10$CRBkKL0bnRq3jLocEqJObOiv0Iel0Gd3LzKNGuuYam84hhYXHTCQC', 'chirs@gmail.com', 'WYgXfp8O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
