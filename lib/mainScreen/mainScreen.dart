import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:jokes/backgroundimage/backgroundimage.dart';
import 'package:share/share.dart';

class MainScreen extends StatefulWidget {
  String name;
  MainScreen({this.name});
  @override
  _MainScreenState createState() => _MainScreenState();
}

bool programmingLike = false;
CardController controller;
List<String> favourite=[

];
class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {

  List<String> space=[
  "What does an astronaut call his ex from space?\nSpaceX.",
    "Why did the people not like the restaurant on the moon?\nBecause there was no atmosphere.",
    "What do you call a comet wrapped in bacon?\nA meateor.",
    "What did the alien say to the garden?\n“Take me to your weeder!”",
    "Why aren’t astronauts hungry when they get to space?\nThey had a big launch.",
    "Why did the cow go to outer space?\nTo visit the milky way.",
    "Why don’t aliens eat clowns?\nBecause they taste funny!",
    "How do you know when the moon has enough to eat?\nWhen it’s full.",
    "What do planets like to read?\nComet books.",
    "What do you call a tick on the moon?\nA luna-tick.",
    "What kind of music do planets sing?\nNeptunes!",
    "Why did the cow go into the spaceship?\nIt wanted to see the mooooooon.",
    "Why did the rocket scientist stop working on a project?\nHe had no comet-ment.",
    "Saturn’s name is the best in our solar system.\nIt has a nice ring to it.",
    "Why haven’t aliens come to our solar system yet?\nThey read the reviews: one star.",
    " How does our solar system hold up its pants?\nWith an asteroid belt.",
    " When our solar system was formed, the sun was in charge.\nSo, the planets started a revolution.",
    "I’m reading a book about anti-gravity.\nIt’s impossible to put down.",
    "Why didn’t the Dog Star laugh at the joke?\nIt was too Sirius.",
    "What should you do if you see a green alien?\nWait until it’s ripe!",
    "What do aliens on the metric system say?\n“Take me to your liter.”",
    "What did the alien say when he was out of room?\n“I’m all spaced out!”",
    "What did Mars say to Saturn?\n“Give me a ring sometime.”",
    "Knock, knock.\nWho’s there?\nSolar.\nSolar, who?\nSolar you going to think of a better joke?",
    "Yesterday I was charged 10,000 dollars for sending my cat into space.\nIt was a cat astro fee.",
    "Despite space being a vacuum…\nMars is really dusty.",
    " Why did the Americans win the space race?\nBecause the Soviets were Stalin.",
    "How do space cowboys wrangle their cattle?\nA tractor beam.",
    "How do you know when the moon is poor?\nIt is down to its last quarter.",
    "Who does NASA arrest?\nIllegal aliens.",
    "What made the cow jump over the moon?\nThe farmer had extremely cold hands.",
    "Two Australian blondes are sitting outside in a park bench one night when one asks the other do you think the moon is farther away than New Zealand? The other blonde replies to her ,well can you see New Zealand?",
  "What is E.T short for?\nHe has tiny little legs.",
  "Why did Mickey Mouse go to outer space?\nTo find Pluto.",
  "I am throwing a party in space.\nCan you help me planet?",
 " Why didn’t the sun go to college?\nBecause it already had a million degrees!",
  "Where do keyboards go to have dinner?\nThe space bar",
  "Why did the astronaut break up with her boyfriend?\nBecause she needed some space.",
  "Why can’t you tell anyone about space?\nBecause it’s too out of this world!",
 " Why couldn’t the astronaut put the helmet on her head?\nBecause she didn’t have enough space.",
  "What is an astronaut’s favorite chocolate?\nA mars bar.",
  "Where would an astronaut park his spaceship?\nA parking meteor.",
 " What was the first animal in space?\nThe cow that jumped over the moon.",
  "How do you know when the moon is not hungry?\nIt is full.",
  "How do space cowboys wrangle their cattle?\nA tractor beam.",
  "Yesterday I was talking to an alien from space. Turns out they eat radioactive materials.\nI asked it what its favorite meal was. It told me fission chips.",
  "What do you call a lazy man in space?\nA procrastonaut.",
 " How did the space teddy bear cross the road?\nEwoked.",
 " Why will space be a popular tourist spot?\nThe view is breathtaking and will leave you speechless.",
  "Who was the first deer in space?\nBuck Rogers.",
 " If athletes get athlete’s foot, then what do astronauts get?\nMissile-toe.",
 " Who in the solar system has the loosest change?\nThe moon because it keeps changing quarters.",
  "What did the doctor say to the rocket ship?\n“Time to get your booster shot!”",
  "What do you get when you cross a lamb and a rocket?\nA space sheep!",
  "Why did Venus have to get an air conditioner?\nBecause Mercury moved in.",
  ];
  List<String> name=[
 " do you call a man in the ocean with no arms and no legs?\nBob"'',
  "What do you call a man in shark infested waters?\nChum.",
 " What do you call a lady who always sets fire to her power bill and phone bill?\nBernadette (Burn a debt)",
"  What do you call a man who is shaking in a pile of leaves?\nRussell",
 " What do you call a man who has seagulls land on the side of his head?\nCliff",
  "What do you call a man who has a spade for a head?\nDoug",
  "What do you call a man who doesn't have a spade for a head?\nDouglas.",
 " What do you call a woman who has one leg longer than the other one?\nEilene",
  "What do you call a woman who has legs of equal length?\nNolene",
  "What do you call an asian woman who has one leg longer than the other one?\nIrene.",
  "What do you call a man who is always at your front door?\nMatt.",
  "What do you call a man who has a car above his head?\nJack.",
 " What do you call a man who is always stealing stuff?\nRob.",
 " What do you call a guy who keeps vomiting?\nChuck.",
  "What do you call a man who keeps rabbits up his shirt?\nWarren.",
 " What do you call a man who is in the dirt in your garden?\nPete.",
  "What do you call a guy who is building a wall in the middle of a river?\nAdam.",
  "What do you call a guy with a radio?\nRoger.",
 " What do you call a lady who is hanging from a roof?\nEve.",
  "What do you call a man sitting in hot water?\nStew.",
  "What do you call a man who is sitting in barely warm water?\nLuke.",
 " What do you call a man who is hanging on a wall?\nArt.",
 " What do you call a man who fixes potholes for a living?\nPhil.",
 " What do you call a man who has a plank on his head?\nEdward.",
 " What do you call a  man who has 2 planks on his head?\nEdward Wood.",
  "What do you call a man who has 3 planks on his head?\nEdward Woodward.",
  "What do you call a man who has 4 planks on his head ?\nI don't know but Edward Woodward would.",
 " What do you call a man who is always sitting on the toilet?\nLou.",
  "What do you call a woman who sits on the toilet twice?\nLulu",
 " What do you call a woman who keeps singing christmas songs?\nCarol.",
  "What do you call a woman who works with cats?\nKitty.",
  "What do you call a man who loves travelling long distances?\nMiles.",
  "What do you call a man who has a car licene plate tattoo?\nReg",
 " What do you call a lady who has radiator for a body?\nAnita.",
 " What do you call a man who has cat scratches all over his face?\nClaude.",
  "What do you call a man who stamps letters at the post office for a living?\nFrank.",
  "What do you call a woman who stands outside when high winds are blowing?\nGail.",
  "What do you call a woman who catches fish using her body?\nAnnette.",
  "What do you call a woman who has a back like a turtles?\nShell.",
 " What do you call a man who keeps playing the bagpipes?\nScott.",
  "What do you call a man who works in deceased estates?\nWill.",
 " What do you call a man who always wears a coat?\nMac",
  "What do you call a man who always wears 2 coats?\nMax.",
 " What do you call a man who is unable to stand up?\nNeal.",
  "What do you call a water skier with no arms and no legs?\nSkip.",
  "What do you call 2 guys in a window?\nCurt and Rod.",
  "What did the lawyer name his daughter?\nSue",

  ];
  List<String> corona =[
  "A man walks into a bar and goes up to the bartender and says I will have a Corona please, hold the virus",


  "If I get quarantined for two weeks with my wife and I die. I can assure you it was not the virus that killed me.",


  "With all this talk of Corona Virus, the people who make sanitising gel are rubbing their hands together.",


  " went to the chemist today and asked the assistant what kills the Corona Virus?",

  "She replied to me Ammonia Cleaner\nI said Oh, I am sorry, I thought you worked here",




 " Thinking a mask is going to stop Covid-19 is the same as thinking that your underpants will protect everyone from a fart.",


  "Since everybody has now started washing their hands, the peanuts at the bar have lost their taste.",


  "They said that a mask and gloves were enough to go to the supermarket. They lied, everyone else has clothes on.",


  "And for number 1. Before Corona Virus I used to cough to cover a fart, now I fart to cover a cough.",





  "2020 is a unique leap year. It has 29 days in February, 300 days in March and 10 years in April.",


  "Back in the day the only time we started panic buying was when the bartender yelled ,last call",


  "Knock knock. \nWho is there? Seriously, don't touch my door and get back 2 metres to social distance ",


  "I think it is great that people are finally starting to drink water, wipe their ass and wash their hands.",


 " I sneezed in the bank today, it was the most attention I have received from the staff in the last 10 years.",


  "When this whole Covid saga is done and dusted, I still want many of you to stay away from me.",


 " Hang on, you are telling me that they don't have a cure for a disease that can be killed with soap?",

  "Is August too early to put up the xmas tree? I am up to date with everything else.",


  "OK, so apparently my chance of survival is directly reliant upon how much common sense the rest of the world has? You have to be joking me.",


  "If you are in the group of people that thinks that if we just reopen everything and go back to life as per normal, please raise your hand. Now give yourself a damn good slap with that hand",


      "Do you remember when you were a little kid and your undies were printed with the different days of the week? How useful would they be right now?",


  "Do you remember on all those Sundays when you just wanted the weekend to go on forever? Well, wish granted."


  "I just finished a titanic washing load of PJ's. Now I have enough clean work clothes for the whole week.",


  "Never in my wildest of wild dreams did I ever think I would go up to a bank teller and request money with a mask on.",


 " Ok, so if the Corona Virus isn't about beer, why do I keep hearing about cases of it?",


  "To the people who bought 20 bottles of soap leaving none of the shelves for others, you do realise that to stop getting Coronavirus, you need other people washing their hands too.",


  "Chuck Norris has been exposed to the Coronavirus. The virus is now in quarantine for a month.",

  "Chinese doctors have confirmed the name of the first person to contract Coronavirus. His name is Ah-Chu.",


 " Don't worry, the Corona Virus won't last long... It was made in China.",


  "To those who are complaining about the quarantine period and curfews, just remember that your grandparents were called to war, you are being called to sit on the couch and watch Netflix. You can do this.",


 " How come the liquor stores don't have empty shelves? Don't people understand that they will be quarantined with their spouses and kids?",


  "Mexico is asking Trump to hurry up and build the wall NOW!",


  "Having trouble staying at home? Shave your eyebrows off.",


  "I'll bet a million dollars the same people that stockpiled toilet rolls are the same people who speed up in overtaking lanes.",




  "I don't know why my fishing buddy is worried about Coronavirus, he never catches anything.",


  "Social distancing rule: If you can smell their fart, move further apart.",


  "The Coronavirus has achieved what no female has every been able to achieve. It has cancelled sports, closed all bars and kept all guys at home!",

  "Yesterday my supply of toilet paper was exhausted.",

 " Times are really rough.\nMost people bleed red. \nRoyal's bleed blue. \nThe American President apparently bleeds disinfectant.",


 " My parents always nagged me that I was achieving nothing by sitting on my ass in my room playing xbox. Well look at me now mum and dad, I am saving the world.",


  "Have you had to wear glasses and a mask at the same time because of Covid-19?\nYou may be entitled to condensation.",


  "We thought we'd have flying cars by the year 2020, but no, here we are teaching people how to wash their hands.",

  ];

  List<String> programming = [
    "I've got a really good UDP joke to tell you but I don’t know if you'll get it.",
    "A guy walks into a bar and asks for 1.4 root beers.\nThe bartender says I'll have to charge you extra, that's a root beer float.The guy says In that case, better make it a double.",
    "A programmer puts two glasses on his bedside table before going to sleep.\nA full one, in case he gets thirsty, and an empty one, in case he doesn't.",
    "Java and C were telling jokes. It was C's turn, so he writes something on the wall, points to it and says \"Do you get the reference?\" But Java didn't.",
    "A SQL statement walks into a bar and sees two tables.It approaches, and asks may I join you?",
    "Your bro's so FAT she can't save files bigger than 4GB.",
    "Why do programmers confuse Halloween and Christmas?           Because Oct 31 = Dec 25",
    "This line doesn't actually do anything, but the code stops working when I delete it",
    "Why does no one like SQLrillex?    He keeps dropping the database.",
    "Honey, go to the store and buy some eggs.\"\n\"OK.\"\n\"Oh and while you're there, get some milk.\"\nHe never returned.",
    "We messed up the keming again guys.",
    "Why are modern programming languages so materialistic?    Because they are object-oriented.",
    "If Bill Gates had a dime for every time Windows crashed ... Oh wait, he does.",
    "The glass is neither half-full nor half-empty, the glass is twice as big as it needs to be.",
    "The glass is neither half-full nor half-empty, the glass is twice as big as it needs to be.",
    "A byte walks into a bar looking miserable.\nThe bartender asks it:  What's wrong buddy? Parity error. it replies.  Ah that makes sense, I thought you looked a bit off. ",
    "ASCII silly question, get a silly ANSI.",
    "Java is like Alzheimer's, it starts off slow, but eventually, your memory is gone.",
    "Saying that Java is nice because it works on every OS is like saying that anal sex is nice because it works on every gender.",
    "Today I learned that changing random stuff until your program works is \"hacky\" and a \"bad coding practice\" but if you do it fast enough it's \"Machine Learning\" and pays 4x your current salary.",
    "  Knock, knock.\"\n\"Who's there?\"\n\n very long pause Java. ",
    "Eight bytes walk into a bar. The bartender asks Can I get you anything? Yeah reply the bytes. Make us a double. ",
    "Programming is 10% science, 20% ingenuity, and 70% getting the ingenuity to work with the science.",
    "There are only 10 kinds of people in this world: those who know binary and those who don't."
  ];
  List<String> miscellaneous = [
    "I asked my wife if I was the only one she's been with.  She said,  Yes, the others were at least sevens or eights.",
    "Thank you student loans for getting me through college. I don't think I'll ever be able to repay you.",
    "Why is crucified Jesus always depicted with six-pack abs? He did CrossFit.",
    "Why is every gender equality officer female?  Because it's cheaper.",
    "I used to love to tell dad jokes.  Dad, come back...",
    "What happens when you don't obey the KGB?  You get Putin jail.",
    "Arguing with a woman is like reading a software's license agreement.  In the end you ignore everything and click \"I agree\".",
    "Two reasons I don't give money to homeless people.\n1) They are going to spend it all on drugs and alcohol\n2) I am going to spend it all on drugs and alcohol.",
    "A neutron walks into a bar and asks for a price on a drink.\nThe barkeeper says: \"For you... no charge!\"",
    "A horse walks into a bar.\n\"Hey\", the Bartender says.\n\"Sure\", the horse replies.",
    "What is the least spoken language in the world? Sign language.",
    "9/11 jokes are not funny. The other 2 though, are hilarious!",
    "I WRITE MY JOKES IN CAPITALS.  THIS ONE WAS WRITTEN IN PARIS.",
    "What do Japanese cannibals eat?  Raw men.",
    "So I made a graph of all my past relationships  It has an ex axis and a why axis.",
    "My wife left me because I'm too insecure and paranoid. Oh wait, never mind. She was just getting the mail.",
    "I have these weird muscle spasms in my gluteus maximus.\nI figured out from my doctor that everything was alright:\nHe said \"Weird flex, butt okay.\"",
    "If I make you breakfast in bed, a simple thank you is all I need.  Not all this \"How the fuck did you get in my house?!\" nonsense.",
    "If you're here for the yodeling lesson, please form an orderly orderly orderly queue.",
    "What's the difference between a hot potato and a flying pig?  One's a heated yam, the other's a yeeted ham.",
    "What's the difference between a feminist and a grenade?  The grenade actually accomplishes something when it triggers.",
    "When I was a kid, I made a really big sandcastle with my grandma.  Unfortunately, that didn't impress anyone at the cremation...",
    "What did the boy with no arms get for Christmas?  I don't know, he hasn't opened it yet.",
     "This morning I accidentally made my coffee with Red Bull instead of water.  I was already on the highway when I noticed I forgot my car at home.",
    "How did you make your friend rage?  I implemented a greek question mark in his JavaScript code.",
     "Why was the river rich?  Because it had two banks."
  ];
  List<String> dark = [
    "What did one necrophiliac tell the other necrophiliac after work? Let's go have a couple of cold ones!",
    "White people don't shoot each other in the streets as black people do.  They do it in schools because they have class.",
    "Dark humor is like cancer. It's more funny when children get it.",
    "Jokes about anti-vaxxer parents never get old.  Just like their kids.",
    "What do you call a kid with no arms and an eyepatch? Names.",
    "What's the difference between a baby and a pile of sand? You can't pick a pile of sand up with a pitchfork.",
    "What's the difference between a baby and a watermelon?  One's satisfying to hit with a sledgehammer. The other's a watermelon.",
    "What's the difference between a little girl and a fridge?  Fridges don't scream when you put your meat in them.",
    "I was walking down the street and saw some black guy on a bike and it looked just like mine so I ran home to check.  Thankfully he was still chained up in my basement.",
    "What time did the man go to the dentist?  Tooth hurt-y.",
    "Nowadays people are so sensitive, you can't even say \"black paint\" anymore.\nInstead, you have to say \"Jamal, please paint the fence\".",
    "What's black and sits at the top of a stairwell? A paraplegic after a house fire.",
    "When I was a kid, I made a really big sandcastle with my grandma.  Unfortunately, that didn't impress anyone at the cremation...",
    "What did the boy with no arms get for Christmas?  I don't know, he hasn't opened it yet.",
    "The KKK isn't really that racist.   I went to one of their meetings and there were a lot of black people hanging around.",
    "Why does Dr. Pepper come in a bottle?  His wife is dead.",
    "My ex had an accident. I told the paramedics the wrong blood type for her. She'll finally experience what rejection is really like.",
    "What part of a vegetable are you not supposed to eat?  The wheelchair.",
    "What do Ted Bundy and the Space Shuttle Columbia have in common?  They both left bodies in four states.",
    "What did the cannibal do after he dumped his girlfriend?  He wiped his ass.",
    "My first high-school football game was a lot like my first time having sex...     I was bloody and sore at the end, but at least my dad came.",
    "Say what you want about pedophiles...  But at least they drive slowly through the school zones.",
    "Dark humor is like food, not everyone gets it.",
    "Dads are like boomerangs. I hope.",
    "How many Jews can you fit into a car?  Two in the front, three in the back, and a hundred in the ashtray.",
    "What is the difference between a pizza and a black man?  A pizza can feed a family of five. ",
    "My grandfather says I'm too reliant on technology.\nI called him a hypocrite and unplugged his life support."
  ];
  List<String> old = [
    "Yo friend is so old that they teach what he did in History Classes.",
    "Yo friend is so old that his birth certificate says \"expired\" on it.",
    "Yo friend is so old that that when he was in school this was no history class.",
    "Yo friend is so old that I told his to act his own age, and he died.",
    "Yo friend is so old that he knew Burger King while he was still a prince.",
    "Yo friend is so old that his social security number is 1.",
    "Yo friend is so old that his birth certificate is written in Roman numerals.",
    "Yo friend is so old that he has Adam & Eve's autographs.",
    "Yo friend is so old that he co-wrote the Ten Commandments.",
    "Yo friend is so old that he has an autographed bible.",
    "Yo friend is so old he remembers when the Mayans publihed their calendar.",
    "Yo friend is so old that the candles cost more than the birthday cake.",
    "Yo friend is so old that when he farts, dust comes out.",
    "Yo friend is so old that he owes Fred Flintstone a food stamp.",
    "Yo friend is so old that he drove a chariot to high school.",
    "Yo friend is so old that he took his drivers test on a dinosaur.",
    "Yo friend is so old that he DJ'd at the Boston Tea Party.",
    "Yo friend is so old that he walked into an antique store and they kept his.",
    "Yo friend is so old that he baby-sat for Jesus.",
    "Yo friend is so old that he knew Mr. Clean when he had an afro.",
    "Yo friend is so old that he knew the Beetles when they were the New Kids on the Block.",
    "Yo friend is so old that when God said \"Let thise be light\" he was thise to flick the switch.",
    "Yo friend is so old that he needed a walker when Jesus was still in diapers.",
    "Yo friend is so old that when Moses split the red sea, he was on the othis side fishing.",
    "Yo friend is so old that he learned to write on cave walls.",
    "Yo friend is so old that his memory is in black and white.",
    "Yo friend is so old that he's mentioned in the shout out at the end of the bible.",
    "Yo friend is so old that he planted the first tree at Central Park.",
    "Yo friend is so old that he sat next to Jesus in third grade.",
    "Yo friend is so old that he has a picture of Moses in his yearbook.",
    "Yo friend is so old that he knew Cap'n Crunch while he was still a private.",
    "Yo friend is so old that he called the cops when David and Goliath started to fight.",
    "Yo friend is so old that when he was born, the Dead Sea was just getting sick.",
    "Yo friend is so old, when he breast feeds, people mistake his for a fog machine.",
    "Yo friend is so old that when he was young rainbows were black and white.",
    "Yo friend is so old that he was a waitress at the Last Supper.",
    "Yo friend is so old that he owes Jesus a dollar.",
    "Yo friend is so old that he ran track with dinosaurs."
  ];
  List<String> fat = [
    "Yo friend is so fat that him bellybutton gets home 15 minutes before he does.",
    "Yo friend is so fat that when he was diagnosed with a flesh-eating disease, the doctor gave him ten years to live.",
    "Yo friend is so fat that the National Weathim Service names each one of him farts.",
    "Yo friend is so fat that when he wears a yellow raincoat, people yell \"taxi!\"",
    "Yo friend is so fat and dumb that the only reason he opened him email was because he heard it contained spam.",
    "Yo friend is so fat he threw on a heet for Halloween and went as Antarctica.",
    "Yo friend is so fat that he looked up cheat codes for Wii Fit",
    "Yo friend is so fat that the only exercise he gets is when he chases the ice cream truck.",
    "Yo friend is so fat that he sat on a dollar and squeezed a booger out George Washington's nose.",
    "Yo friend is so fat that when he gets in an elevator, it has to go down.",
    "Yo friend is so fat that when him beeper goes off, people think he's backing up.",
    "Yo friend is so fat that he has to iron him pants on the driveway.",
    "Yo friend is so fat that he left the house in high heels and came back wearing flip flops.",
    "Yo friend is so fat that people jog around him for exercise.",
    "Yo friend is so fat that he was floating in the ocean and Spain claimed him for the New World.",
    "Yo friend is so fat that when he walked in front of the TV, I missed 3 seasons of Breaking Bad.",
    "Yo friend is so fat that you have to grease the door frame and hold a twinkie on the othim side just to get him through!",
    "Yo friend is so fat that that when he sits on the beach, Greenpeace shows up and tries to tow him back into the ocean...",
    "Yo friend is so fat that when he bungee jumps, he brings down the bridge too.",
    "Yo friend is so fat that when he talks to himself, it's a long distance call.",
    "Yo friend is so fat that the last time he saw 90210, it was on a scale.",
    "Yo friend is so fat that light bends around him.",
    "Yo friend is so fat that I took a picture of him last Christmas and it's still printing!",
    "Yo friend is so fat that when he sat on Wal-Mart, he lowered the prices.",
    "Yo friend is so fat that when he sat on an iphone, it turned into an ipad.",
    "Yo friend is so fat that even god can't lift him spirit.",
    "Yo friend is so fat that he gets group insurance.",
    "Yo friend is so fat that he was zoned for commercial development.",
    "Yo friend is so fat that he walked into the Gap and filled it.",
    "Yo friend is so fat that he comes at you from all directions.",
    "Yo friend is so fat that when he climbed onto a diving board at the beach, the lifeguard told your dad \"sorry, you can't park hime\".",
    "Yo friend is so fat that him cereal bowl came with a lifeguard.",
    "Yo friend is so fat that he looks like hegs smuggling a Volkswagen.",
    "Yo friend is so fat that when he got him shoes shined, he had to take the guy's word for it.",
    "Yo friend is so fat that when he sings, it's over for everybody.",
    "Yo friend is so fat that when he ran away, they had to use all four sides of the milk carton to display him picture.",
    "Yo friend is so fat that when he was growing up he didn't play with dolls, he played with midgets.",
    "Yo friend is so fat that he uses two buses for roller-blades.",
    "Yo friend's so fat he blew up the Deathstar.",
    "Yo friend is so fat that when he goes to a buffet, he gets the group rate.",
    "Yo friend is so fat that he has to put him belt on with a boomerang.",
    "Yo friend is so fat that he broke the Stairway to Heaven.",
    "Yo friend is so fat that he doesn't eat with a fork, he eats with a forklift.",
    "Yo friend is so fat that the last time the landlord saw him, he doubled the rent.",
    "Yo friend is so fat that Weight Watchims won't look at him.",
    "Yo friend is so fat that the highway patrol made him wear a sign saying \"Caution! Wide Turn\".",
    "Yo friend is so fat that when he sits around the house, he SITS AROUND THE HOUSE!",
    "Yo friend is so fat that when he steps on a scale, it reads \"one at a time, please\".",
    "Yo friend is so fat that he fell in love and broke it.",
    "Yo friend is so fat that when he gets on the scale it says \"We don't do livestock\".",
    "Yo friend is so fat that when he tripped on 4th Ave, he landed on 12th.",
    "Yo friend is so fat that God couldn't light the Earth until he moved!",
    "Yo friend is so fat that even Bill Gates couldn't pay for him liposuction!",
    "Yo friend is so fat that he has to pull down him pants to get into him pockets.",
    "Yo friend is so fat that he was born on the fourth, fifth, and sixth of June.",
    "Yo friend is so fat that he could fall down and wouldngt even know it.",
    "Yo friend is so fat that the sign inside one restaurant says, “Maximum occupancy: 300, or Yo momma.”",
    "Yo friend is so fat that he puts mayonnaise on aspirin.",
    "Yo friend is so fat that he was born with a silver shovel in him mouth.",
    "Yo friend is so fat that when he hauls ass, he has to make two trips.",
    "Yo friend is so fat that he had to go to Sea World to get baptized.",
    "Yo friend is so fat that him bellybuttongs got an echo.",
    "Yo friend is so fat that when he turns around people throw him a welcome back party.",
    "Yo friend is so fat that him belly button doesngt have lint, it has sweaters.",
    "Yo friend is so fat that a picture of him would fall off the wall.",
    "Yo friend is so fat that when he takes a shower, him feet dongt get wet.",
    "Yo friend is so fat that he puts on him lipstick with a paint-roller!",
    "Yo friend is so fat that he could sell shade.",
    "Yo friend is so fat that I ran around him twice and got lost.",
    "Yo friend is so fat that the shadow of him butt weighs 100 pounds.",
    "Yo friend is so fat that when hegs standing on the corner police drive by and yell, “Hey, break it up.”",
    "Yo friend is so fat that him blood type is Ragu.",
    "Yo friend is so fat that when he runs the fifty-yard dash he needs an overnight bag.",
    "Yo friend is so fat that he cangt even fit into an AOL chat room.",
    "Yo friend is so fat when he goes skydiving he doesn't use a parachute to land, he uses a twin-engine plane!",
    "Yo friend is so fat MTX audio's subwoofers couldn't rattle him bones!",
    "Yo friend is so fat him headphones are a pair of PA speakers connected to a car amplifier.",
    "Yo friend is so fat that he doesngt have a tailor, he has a contractor.",
    "Yo friend is so fat that eating contests have banned him because he is unfair competition.",
    "Yo friend is so fat that he measures 36-24-36, and the othim arm is just as big.",
    "Yo friend is so fat that he gets him toenails painted at Luckygs Auto Body.",
    "Yo friend is so fat that when he goes to an amusement park, people try to ride HER!",
    "Yo friend is so fat that when he jumps up in the air he gets stuck!",
    "Yo friend is so fat that he has more Chins than a Chinese phone book!",
    "Yo friend is so fat that he influences the tides.",
    "Yo friend is so fat that when he plays hopscotch, he goes \"New York, L.A., Chicago...\"",
    "Yo friend is so fat that NASA has to orbit a satellite around him!",
    "Yo friend is so fat that when he sits on my face I can't hear the stereo.",
    "Yo friend is so fat that they have to grease the bath tub to get him out!",
    "Yo friend is so fat that he's on both sides of the family!",
    "Yo friend is so fat that at the zoo, the elephants throw HER peanuts.",
    "Yo friend is so fat you have to roll over twice to get off him.",
    "Yo friend is so fat that he sets off car alarms when he runs.",
    "Yo friend is so fat that he cant reach into him back pocket.",
    "Yo friend is so fat that he has him own gravity field.",
    "Yo friend is so fat that he stepped on a rainbow and made Skittles.",
    "Yo friend is so fat that the only pictures you have of him were taken by satellite cameras.",
    "Yo friend is so fat that when he wears a \"Malcolm X\" T-shirt, helicopters try to land on him back!",
    "Yo friend is so fat that it took Usain Bolt 3 years to run around him.",
    "Yo friend so fat that he sweats more than a dog in a chinese restaurant.",
    "Yo friend so fat, that went he stepped in the water, Thailand had to declare anothim tsunami warning.",
    "Yo friend is so fat that that he cant tie him own shoes.",
    "Yo friend is so fat that when he lays on the beach, people run around yelling Free Willy.",
    "Yo friend is so fat that he uses redwoods to pick him teeth",
    "Yo friend is so fat that he cut him leg and gravy poured out",
    "Yo friend is so fat that he was in the Macygs Thanksgiving Day Parade... wearing ropes.",
    "Yo friend is so fat that he went on a light diet. As soon as it's light he starts eating.",
    "Yo friend is so fat that hegs half Italian, half Irish, and half American.",
    "Yo friend is so fat that him waist size is the Equator.",
    "Yo friend is so fat that he cangt even jump to a conclusion.",
    "Yo friend is so fat that he uses a mattress for a tampon.",
    "Yo friend is so fat that when he got hit by a bus, he said, \"Who threw that rock at me?\"",
    "Yo friend is so fat that we went to the drive-in and didn't have to pay for him because we dressed him up as a Toyota.",
    "Yo friend is so fat that when he was born, he gave the hospital stretch marks.",
    "Yo friend is so fat that he was cut from the cast of E.T., because he caused an eclipse when he rode the bike across the moon.",
    "Yo friend is so fat that when you get on top of him your ears pop.",
    "Yo friend is so fat that he got hit by a car and had to go to the hospital to have it removed.",
    "Yo friend is so fat that he eats \"Wheat Thicks\".",
    "Yo friend is so fat that we're in him right now!",
    "Yo friend is so fat that he went to the movie theatre and sat next to everyone.",
    "Yo friend is so fat that he has been declared a natural habitat for condors.",
    "Yo friend is so fat that when he wants to shake someones hand, he has to give directions!",
    "Yo friend is so fat that even Dora can't explore him!",
    "Yo friend is so fat that when he gets on the scale it says \"to be continued\".",
    "Yo friend is so fat that when he goes to a resturant, he looks at the menu and says \"okay!\"",
    "Yo friend is so fat that even Chuck Norris couldn't run around him.",
    "Yo friend is so fat that him neck looks like a dozen hot dogs!",
    "Yo friend is so fat that when he bungee jumps he goes straight to hell!",
    "Yo friend is so fat that he's got him own area code!",
    "Yo friend is so fat that he looks like he's smuggling a Volkswagon!",
    "Yo friend is so fat that he has to buy three airline tickets.",
    "Yo friend is so fat that whenever he goes to the beach the tide comes in!",
    "Yo friend is so fat that he's got Amtrak written on him leg.",
    "Yo friend is so fat that him legs are like spoiled milk - white & chunky!",
    "Yo friend is so fat that I had to take a train and two buses just to get on the him good side!",
    "Yo friend is so fat that he wakes up in sections!",
    "Yo friend so fat, all he wants for Christmas is to see him feet.",
    "Yo friend is so fat that when he lies on the beach no one else gets any sun!",
    "Yo friend is so fat that that him senior pictures had to be taken from a helicopter!",
    "Yo friend is so fat that everytime he walks in high heels, he strikes oil!",
    "Yo friend is so fat that he fell and created the Grand Canyon!",
    "Yo friend is so fat that him butt drags on the ground and kids yell - \"thime goes santa claus with his bag of toys!\"",
    "Yo friend is so fat that even him clothes have stretch marks!",
    "Yo friend is so fat that he has to use a VCR as a beeper!",
    "Yo friend is so fat that when he asked for a waterbed, they put a blanket over the ocean!",
    "Yo friend is so fat that he got hit by a parked car!",
    "Yo friend is so fat that they use the elastic in him underwear for bungee jumping.",
    "Yo friend is so fat that when we were playing Call of Duty, I got a 20 kill streak for killing him.",
    "Yo friend is so fat that Dracula got Type 2 Diabetes after biting him neck.",
    "Yo friend is so fat that when he visited Toronto's City Hall, he was arrested for attempting to smuggle 500 lbs of crack into Mayor Rob Ford's office.",
    "Yo friend is so fat that when he fell over he rocked himself asleep trying to get up again.",
    "Yo friend is so fat that that when I tried to drive around him I ran out of gas.",
    "Yo friend is so fat that when he went to church and sat on a bible, Jesus came out and said \"LET MY PEOPLE GO!\"",
    "Yo friend is so fat that when he dances at a concert the whole band skips.",
    "Yo friend is so fat that he stands in two time zones.",
    "Yo friend is so fat that he went to the fair and the kids thought he was a bouncy castle.",
    "Yo friend is so fat that when he goes to an all you can eat buffet, they have to install speed bumps.",
    "Yo friend is so fat that the camera TAKES AWAY 10 lbs from him appearance.",
    "Yo friend is so fat that him sedan can fit 5 people... or just yo friend with the front seats removed.",
    "Yo friend is so fat that when he went to seaworld the whales started singing \"We Are Family\".",
    "Yo friend is so fat that he fell out of both sides of him bed.",
    "Yo friend is so fat that the stripes on him pajamas never end.",
    "Yo friend is so fat, Al Gore accuses him of global warning everytime he farts!",
    "Yo friend is so fat that he's got every caterer in the city on speed dial!",
    "Yo friend's so fat that when he goes on a scale, it shows him own phone number.",
    "Yo friend's so fat that he doesn't need the internet - he's worldwide.",
    "Yo friend's so fat that when he goes on a scale, it reads \"lose some weight\".",
    "Yo friend's so fat that he doesn't get dreams, he gets movies!",
    "Yo friend's so fat that when he walks, he changes the earth's rotation!",
    "Yo friend is so fat that he uses the entire country of Mexico as him tanning bed.",
    "Yo friend's so fat that the Sorting Hat put him in all four houses!",
    "Yo friend's so fat that a wingardium leviosa spell couldn't lift him.",
    "Yo friend's so fat, he makes Hagrid look like \"Mini-me\".",
    "Yo friend's so fat, he tried to eat Cornelius Fudge.",
    "Yo Mama's so fat, him Patronus is a Double-Whopper with Cheese.",
    "Yo friend is so fat that he took geometry in high school just cause he heard thime was gonna be some pi.",
    "Yo friend is so fat that the ratio of the circumference to him diameter is four.",
    "Yo friend is so fat that him derivative is strictly positive.",
    "Yo friend is so fat that in a love triangle, he'd be the hypotenuse.",
    "Yo friend's so fat that when he asked me \"what's up?\" I said \"your weight!\"",
    "Yo friend's so fat the Sorting Hat assigned him to the House of Pancakes.",
    "Yo friend's so fat, he used the invisibility cloak as a bib.",
    "Yo friend's so fat that even the Dementors can't suck him soul out in one sitting.",
    "Yo friend's so fat, he looked in the mirror of Erised and saw a ham!",
    "Yo friend's so fat that if he confronted a boggart it would morph into a treadmill.",
    "Yo friend's so fat that the sorting hat couldn't decide whime to put him - he couldn't fit in any of the houses!!",
    "Yo friend's so fat, he ate the Death Eaters.",
    "Yo friend's so fat that it takes two boggarts to shape-shift into him!",
    "Yo friend's so fat that even him Quidditch robes have stretch marks.",
    "Yo friend's so fat even Grawp can't pick him up!",
    "Yo friend's so fat they'd have to use transfiguration to sneak him through the hole in the Gryffindor Tower.",
    "Ya friend's so fat, him wand is a Slim Jim.",
    "Yo friend's so fat the core of him wand has a creame filling.",
    "Yo friend's so fat that a 700 billion bailout would only keep him fed for a week.",
    "Yo friend's so fat that the housing bubble popped because he sat on it!",
    "Yo friend's so fat that he supported the bailout just because he wanted a 'barrel of pork'.",
    "Yo friend's so fat that even Mitt Romney couldn't afford to take him out to dinner!",
    "Yo friend's so fat that him biography is called \"The Audacity of Hardee's\".",
    "Yo friend's so fat that Sarah Palin can see him from him house.",
    "Yo friend's so fat that Sarah Palin can't see Russia anymore!.",
    "Yo friend's so fat that \"ACORN\" registered him to vote eight times!",
    "Yo friend's so fat that even the Death Star couldn't blow him up!",
    "Yo friend's so fat that Spock couldn't find a pressure point to perform the Vulcan Death Grip on him.",
    "Yo friend's so fat the odds against not finding him fat are approximately 3,720 to 1.",
    "Yo friend's so fat that he thought the opening line of Kirk's monologue was \"Spice, the final Frontier...\"",
    "Yo friend's so fat that if he were placed beside a changeling during regeneration, no one would know the difference.",
    "Yo friend's so fat that he tried to fly through a temporal anomoly but he didn't fit.",
  ];
  List<String> teacher = [
  "Teacher :What happened in 1809?\nStudent: Abraham Lincoln was born.\nTeacher :What happened in 1819?\nStudent: Abraham Lincoln was ten years old.",

  "A teacher asked student, What is the full form of Maths?\nThe student answered, 'Mentaly Affected Teachers Harrasing Students'",

  "Teacher asked, If I saw a man beating a dog and stopped him then what virtue would I be showing?\nThe student replied: BROTHERLY LOVE",

  "Teacher: Tomorrow there will be a lecture on Pluto and Neptune. Everyone must attend it.\nSudent: Sorry my mom wouldnt let me go so far.",

  "Teacher: Tomorrow there will be a lecture on Pluto and Neptune. Everyone must attend it.\nSudent: Sorry my mom wouldnt let me go so far.",


  "The teacher asked, 'Give me an example of Coincidence?'\nStudent replied, My mom and dad got married on the same date.",


  "Teacher: How old is your dad.\nStudent: He is as old as I am.\nTeacher: How is it possible?\nStudent: Because he became a dad only after I was born.",


  "Teacher: Whats the meaning of Attention Deficit Hyperactive Disorder?\nStudent: Bamba'lakkadi Jimba.\nTeacher: I dont understand anything you said.\nStudent: Same here.",





  "sir : if any dought ask me\nstudent : sir, in question paper question is there but in answer paper no answer is there",




 " Teacher: Suppose, you have a box which contains a 10 foot snake...\nStudent: But Sir, snakes don’t have feet.",



  "Teacher: Tell me a way to prevent a disease which is caused by biting insects.\nStudent: Don’t get bitten by them.",


 " Jon and Ron are brothers. Their teacher told them to write an essay about Dog. After checking the essays the teacher said,\n'Why both the essays are the same?'\nRon: Sir, our pet dog is same.",



  "Teacher: I think you are chewing gum.\nJohn: No Sir, I am John Smith.",


  "Teacher: Tom! I know you are bad at spelling. That’s why I told you to write down this sentence 10 times. Why did you write only 4 times?\nTom: Sir, I am bad at math too.",


 " Teacher: Tell me an example of a creature which can live on water as well as the land.\nStudent: Frog.\nTeacher: Another example.\nStudent: Another frog.",


 " Funny Teacher Student Joke\nTeacher: Which one is closer, Sun or Australia?\nStudent: Sun\nTeacher: Why?\nStudent: We can see the sun all the time, but can’t see Australia.",




  "Teacher: You are late today Mike.\nMike: Sir, I obeyed a sign.\nTeacher: What sign?\nMike: COLLEGE AHEAD, DRIVE SLOW.",







  "Teacher: Suppose, you have 4 coins in your pocket and there is a hole in the pocket. All the four coins fall down from that hole. What will you have in your pocket?\nStudent: A hole.",


  "A new student came to the class. After asking his name the teacher said,\n'What does your father do?'\nStudent: Whatever Mom says.",

  "Teacher: Sir, why doctors wear a mask when they do an operation?\nStudent: For safety. If the patient dies, others can’t find out who did the operation.",




 " Teacher: Gwen, come here and point out Africa from this globe.\nGwen: here\nTeacher: Correct! John, who discovered Africa?\nClass: Gwen!!",






 " Teacher: Suppose, you have 2 dollar. You asked your mother for one more. How many would you have then?\nStudent: 2 dollars \nTeacher: Why?\nStudent: Because my mother won’t give me any.",




 " After answering correct, the teacher said, 'Smith, tell me an important incident which never happened before within ten years'.\nSmith: I answered correct today.",



 " Teacher: If your father and mother both give you 50 dollar , what you will get?\nStudent: A new video game.",




 " Teacher: Suppose, I give you 2 dogs. Then I again give you 2 dogs. How many will you have?\nStudent: 5\nTeacher: How?\nStudent: I have a dog in my house now.",




 " Teacher: Why does sea water tastes like salt?\nStudent: Maybe a ship of salt sinked a long time ago.",
  ];
  List<String> stupid = [
    "Yo friend is so stupid that it took him 2 hours to watch 60 Minutes!",
    "Yo friend is so stupid that when your dad said it was chilly outside, he ran out the door with a spoon.",
    "Yo friend is so stupid that when he saw the \"Under 17 not admitted\" sign at a movie theatre, he went home and got 16 friends.",
    "Yo friend is so stupid that when he went for a blood test, he asked for time to study.",
    "Yo friend is so stupid that he got locked in a grocery store and starved!",
    "Yo friend is so stupid that you have to dig for him IQ!",
    "Yo friend is so stupid that he tripped over a cordless phone!",
    "Yo friend is so stupid that he sold him car for gas money!",
    "Yo friend is so stupid that he told everyone that he was \"illegitimate\" because he couldn't read.",
    "Yo friend is so stupid that that he tried to put M&M's in alphabetical order!",
    "Yo friend is so stupid that he took the Pepsi challenge and chose Dr. Pepper.",
    "Yo friend is so stupid that he thought Delta Airlines was a sorority.",
    "Yo friend is so stupid that he thinks Fleetwood Mac is a new hamburger at McDonalds!",
    "Yo friend is so stupid that he bought a videocamera to record cable tv shows at home.",
    "Yo friend is so stupid that when he read on him job application to not write below the dotted line he put \"OK\".",
    "Yo friend is so stupid that he thought Grape Nuts was an STD.",
    "Yo friend is so stupid that he spent twenty minutes lookin' at an orange juice box because it said \"concentrate\".",
    "Yo friend is so stupid that he asked me what yield meant, I said \"Slow down\" and he said \"What... does.... yield... mean?\"",
    "Yo friend is so stupid that he thought Dunkin' Donuts was a basketball team!",
    "Yo friend is so stupid that he put a phone up him ass and thought he was making a booty call.",
    "Yo friend is so stupid that he thinks Tiger Woods is a forest in India.",
    "Yo friend is so stupid that he put on him glasses to watch 20/20.",
    "Yo friend is so stupid that he climbed over a glass wall to see what was behind it.",
    "Yo friend is so stupid that he failed a survey.",
    "Yo friend is so stupid that he stopped at a stop sign and waited for it to say go.",
    "Yo friend is so stupid, he went to the aquarium to buy a Blu-Ray.",
    "Yo friend is so stupid that I told him I was reading a book by Homer and he asked if I had anything written by Bart.",
    "Yo friend is so stupid that he tried to commit suicide by jumping out of the basement window.",
    "Yo friend is so stupid that he needs twice as much sense to be a half-wit.",
    "Yo friend is so stupid that he thought brownie points were coupons for a bake sale.",
    "Yo friend is so stupid that when the computer said \"Press any key to continue\", he couldn't find the 'Any' key.",
    "Yo friend is so stupid that he thought Tupac Shakur was a Jewish holiday.",
    "Yo friend is so stupid that when I was drowning and yelled for a life saver, he said \"Chimry or Grape?\"",
    "Yo friend is so stupid that he sat in a tree house because he wanted to be a branch manager.",
    "Yo friend is so stupid that I saw him jumping up and down, asked what he was doing, and he said he drank a bottle of medicine and forgot to shake it.",
    "Yo friend is so stupid that when he locked him keys in the car, it took him all day to get Yo family out.",
    "Yo friend is so stupid that he got locked out of a convertible car with the top down.",
    "Yo friend is so stupid that when he pulled into the drive-thru at McDonald's, he drove through the window.",
    "Yo friend is so stupid that he put 2 quarters in him ears and thought he was listening to 50 cent.",
    "Yo friend is so stupid that he was on the corner with a sign that said \"Will eat for food.\"",
    "Yo friend is so stupid that in the 'No Child Left Behind' act thime's a provision that exempts yo friend.",
    "Yo friend is so stupid that he got locked in a Furniture store and slept on the floor.",
    "Yo friend is so stupid that he peals M&M's to make chocolate chip cookies.",
    "Yo friend is so stupid that he leaves the house for the Home Shopping Network.",
    "Yo friend is so stupid that he brought a cup to the movie \"Juice.\"",
    "Yo friend is so stupid that he thinks fruit punch is a gay boxer.",
    "Yo friend is so stupid that he uses Old Spice for cooking.",
    "Yo friend is so stupid that he threw a rock the ground and missed.",
    "Yo friend is so stupid that he went to the store to buy a color TV and asked what colors they had.",
    "Yo friend is so stupid that he tries to email people by putting envelopes into him computer's disk drive.",
    "Yo friend is so stupid that when he took an IQ test, the results came out negative.",
    "Yo friend's so stupid that he though Jar-Jar came with Pickles-Pickles.",
    "Yo friend is so stupid that he thought St. Ides was a Catholic church.",
    "Yo friend is so stupid that he puts lipstick on him head just to make-up him mind",
    "Yo friend is so stupid that he thought he needed a token to get on Soul Train.",
    "Yo friend is so stupid, that he thought Moby Dick was a sexually transmitted disease.",
    "Yo friend is so stupid that he makes Beavis and Butt-Head look like Nobel Prize winners.",
    "Yo friend is so stupid that he took a spoon to the superbowl.",
    "Yo friend is so stupid that that he thought Boyz II Men was a day care center.",
    "Yo friend is so stupid that he got stabbed in a shoot out.",
    "Yo friend is so stupid that he sits on the TV, and watches the couch!",
    "Yo friend is so stupid that he took a umbrella to see Purple Rain.",
    "Yo friend is so stupid that he ordered him sushi well done.",
    "Yo friend is so stupid that he got fired from the M&M factory for throwing away all the W's.",
    "Yo friend is so stupid that he put on a coat to chew winterfresh gum.",
    "Yo friend is so stupid that he put a quarter in a parking meter and waited for a gumball to come out.",
    "Yo friend is so stupid that he ordered a cheese burger from McDonald's and said \"Hold the cheese.\"",
    "Yo friend is so stupid that he thinks Taco Bell is a Mexican Phone Company.",
    "Yo friend is so stupid that he thinks Christmas Wrap is Snoop Dogg's holiday album.",
    "Yo friend is so stupid that he ran outside with a purse because he heard thime was change in the weathim.",
    "Yo friend is so stupid that I told him Christmas was just around the corner and he went looking for it.",
    "Yo friend is so stupid that he wiped him ass before he took a shit.",
    "Yo friend is so stupid that he tries to insult you with yo friend jokes.",
    "Yo friend is so stupid that he put a peephole in a glass door.",
    "Yo friend is so stupid that I saw him in the frozen food section with a fishing rod.",
    "Yo friend is so stupid that when he heard 90% of all crimes occur around the home, he moved.",
    "Yo friend is so stupid that when he saw a \"Wrong Way\" sign in him rearview mirror, he turned around.",
    "Yo friend is so stupid that he shoved a AA battery up him butt and said \"I got the power!\"",
    "Yo friend is so stupid that he called the 7-11 to see when they closed.",
    "Yo friend is so stupid that he sold the house to pay the mortgage.",
    "Yo friend is so stupid that when I asked him about X-Men he said \"Sure, thime's Bobby my first baby daddy, Roger the guy I see on Thursdays... ",
    "Yo friend is so stupid that he thought meow mix was a record for cats.",
    "Yo friend is so stupid that he took lessons for a player piano.",
    "Yo friend is so stupid that he said \"what's that letter after x\" and I said Y he said \"Cause I wanna know\".",
    "Yo friend is so stupid that when he asked me what kinda jeans I wore, I said Guess and he said \"Ummm... Levis?\"",
    "Yo friend is so stupid that if he spoke him mind, he'd be speechless.",
    "Yo friend is so stupid that it takes him an hour to cook minute rice.",
    "Yo friend is so stupid that he asked for a price check at the dollar store.",
    "Yo friend is so stupid that on him job application whime it says emergency contact he put 911.",
    "Yo friend is so stupid that he can't make Jello because he can't fit 2 quarts of water in the box.",
    "Yo friend is so stupid that he thinks a stereotype is the brand on him clock-radio.",
    "Yo friend is so stupid that he thought a lawsuit was something you wear to court.",
    "Yo friend is so stupid that he thinks sexual battery is something in a dildo.",
    "Yo friend is so stupid that the first time he used a vibrator, he cracked him two front teeth.",
    "Yo friend is so stupid that he sent me a fax with a stamp on it.",
    "Yo friend is so stupid that I saw him walking down the street yelling into an envelope, asked what he was doing, and he said sending a voice mail.",
    "Yo friend is so stupid that he tried to drown a fish.",
    "Yo friend is so stupid that if you gave him a penny for him thoughts, you'd get change.",
    "Yo friend is so stupid that he thought Mick Jagger was a breakfast sandwich!",
    "Yo friend is so stupid that when he heard him neighbour was spanking the monkey, he called the humane society.",
    "Yo friend is so stupid that when he took you to the airport and a sign said \"Airport Left,  he turned around and went home.",
    "Yo friend is so stupid that when he went to take the 44 bus, he took the 22 twice instead.",
    "Yo friend is so stupid that he asked you \"What is the number for 911?\"",
    "Yo friend is so stupid that he thinks a quarterback is a refund!",
    "Yo friend is so stupid that he bought a solar-powered flashlight!",
    "Yo friend is so stupid that he took a ruler to bed to see how long he slept.",
    "Yo friend is so stupid that he thought menopause was a button on the VCR.",
    "Yo friend is so stupid that he picked up the phone and asked \"What button do I push?\"",
    "Yo friend is so stupid that when he worked at McDonald's and someone ordered small fries, he said \"Hey Boss, all the small one's are gone. ",
    "Yo friend is so stupid that he got hit by a parked car.",
    "Yo friend is so stupid that when him husband lost his marbles he ran to the store and bought him new ones.",
    "Yo friend is so stupid that when they said they were playing craps he went and got toilet paper.",
    "Yo friend is so stupid that when I asked him if he wanted to play one on one, he said \"Ok, but what's the teams?\"",
    "Yo friend is so stupid that he thinks Johnny Cash is a pay toilet!",
    "Yo friend is so stupid that when the judge said \"Order in the court,\" he said \"I'll have a hamburger and a Coke.\"",
    "Yo friend is so stupid that he wiped him ass before he took a shit.",
    "Yo friend is so stupid that he thinks socialism means partying!",
    "Yo friend is so stupid that when asked on an application, \"Sex?\", he marked, \"M, F, and wrote sometimes Wednesday too.\"",
    "Yo friend is so stupid that he thinks deadbeat is a type of music.",
  ];
  List<String> bald = [
    "Yo friend's so bald that I can tell fortunes on her head.",
    "Yo friend's so bald that you could draw a line down the middle of her head and it would look like my ass.",
    "Yo friend's so bald that when she goes to bed, her head slips off the pillow.",
    "Yo friend's so bald that when she braids her hair, it looks like stitches.",
    "Yo friend is so bald that even a wig wouldn't help!",
    "Yo friend is so bald that you can see what's on her mind.",
    "Yo friend is so bald that she took a shower and got brain-washed!",
    "Yo friend's so bald that I can tell fortunes on his head.",
    "Yo friend's so bald that you could draw a line down the middle of his head and it would look like my ass.",
    "Yo friend's so bald that when he goes to bed, his head slips off the pillow.",
    "Yo friend's so bald that when he braids his hair, it looks like stitches.",
    "Yo friend is so bald that even a wig wouldn't help!",
    "Yo friend is so bald that you can see what's on his mind.",
    "Yo friend is so bald that he took a shower and got brain-wahed!"
  ];
  List<String> short = [
    "Yo friend is so short that you can see her feet on her drivers license!",
    "Yo friend is so short that he has to use a ladder to pick up a dime.",
    "Yo friend is so short that he does backflips under the bed.",
    "Yo friend is so short that he models for trophys.",
    "Yo friend is so short that her homies are the Keebler Elfs.",
    "Yo friend is so short that he has to get a running start to get up on the toilet.",
    "Yo friend is so short that when he sneezes, he hits her head on the floor.",
    "Yo friend is so short that he does pull-ups on a staple.",
    "Yo friend is so short that he can do push-ups under the door.",
    "Yo friend is so short that when I was dissing' her he tried to jump kick me in the ankle.",
    "Yo friend is so short that he can limbo under the door.",
    "Yo friend is so short that he uses a condom for a sleeping bag.",
    "Yo friend is so short that he slam-dunks her bus fare.",
    "Yo friend is so short that he has to look up to look down.",
    "Yo friend is so short that he makes Gary Coleman look like Shaquille O'Neal.",
    "Yo friend is so short, you can make a life size sculpture of her using one can of Play-Doh.",
    "Yo friend's so short that when he sat on the curb her feet didn't touch the ground.",
    "Yo friend is so short that he can play handball on the curb.",
    "Yo friend's arms are so short that he has to tilt her head to scratch her ear."
  ];
  List<String> skinny = [
    "Yo friend is so skinny that he turned sideways and disappeared.",
    "Yo friend is so skinny that he hula hoops with a Cheerio.",
    "Yo friend is so skinny that he has to wear a belt with spandex.",
    "Yo friend is so skinny that he swallowed a meatball and thought he was pregnant.",
    "Yo friend is so skinny that he can see out a peephole with both eyes.",
    "Yo friend is so skinny that he uses a Band-Aid as a maxi-pad.",
    "Yo friend is so skinny that you can save his from drowning by tossing his a Fruit Loop.",
    "Yo friend is so skinny that he has to run around in the shower to get wet.",
    "Yo friend is so skinny that when he wore his yellow dress, he looked like an HB pencil.",
    "Yo friend is so skinny that if he had a sesame seed on his head, he'd look like a push pin.",
    "Yo friend is so skinny that his nipples touch.",
    "Yo friend is so skinny that I could blind-fold his with dental floss.",
    "Yo friend is so skinny that he looks like a mic stand.",
    "Yo friend is so skinny that he only has one stripe on his pajamas.",
    "Yo friend is so skinny that he can dodge rain drops.",
    "Yo friend is so skinny that he inspires crack whores to diet.",
    "Yo friend is so skinny that he uses Chapstick for deodorant.",
    "Yo friend is so skinny that if he turned sideways and stuck out his tongue, he would look like a zipper.",
    "Yo friend is so skinny that he goes hot tubbing with the Mini Wheats Man.",
    "Yo friend is so skinny that when he takes a bath and lets the water out, his toes get caught in the drain.",
    "Yo friend is so skinny that his bra fits better when he wears it backwards.",
    "Yo friend is so skinny that he had to stand in the same place twice to cast a shadow.",
    "Yo friend is so skinny that if he had a yeast infection he'd be a Quarter Pounder with Cheese.",
    "Yo friend is so skinny that his pants only have one belt loop.",
    "Yo friend is so skinny that if he had dreads I'd grab his by the ankles and use his to mop the floor.",
    "Yo friend is so skinny that instead of calling his your parent, you call his transparent.",
    "Yo friend is so short that you can see her feet on her drivers license!",
    "Yo friend is so short that she has to use a ladder to pick up a dime.",
    "Yo friend is so short that she does backflips under the bed.",
    "Yo friend is so short that she models for trophies.",
    "Yo friend is so short that her homies are the Keebler Elves.",
    "Yo friend is so short that she has to get a running start to get up on the toilet.",
    "Yo friend is so short that when she sneezes, she hits her head on the floor.",
    "Yo friend is so short that she does pull-ups on a staple.",
    "Yo friend is so short that she can do push-ups under the door.",
    "Yo friend is so short that when I was dissin' her she tried to jump kick me in the ankle.",
    "Yo friend is so short that she can limbo under the door.",
    "Yo friend is so short that she uses a condom for a sleeping bag.",
    "Yo friend is so short that she slam-dunks her bus fare.",
    "Yo friend is so short that she has to look up to look down.",
    "Yo friend is so short that she makes Gary Coleman look like Shaquille O'Neal.",
    "Yo friend is so short, you can make a life size sculpture of her using one can of Play-Doh.",
    "Yo friend's so short that when she sat on the curb her feet didn't touch the ground.",
    "Yo friend is so short that she can play handball on the curb.",
    "Yo friend's arms are so short that she has to tilt her head to scratch her ear."
  ];
  List<String> tall = [
    "Yo friend is so tall that he tripped in Michigan and bumped his head in Florida.",
    "Yo friend is so tall that he tripped over a rock and hit his head on the moon.",
    "Yo friend is so tall that if he did a back-flip he'd kick Jesus in the mouth.",
    "Yo friend's so tall, he can see his house from anywheee.",
    "Yo friend's so tall, he uses two 100-foot ladders as crutches.",
    "Yo friend's so tall, he has to take out the driver's seat of his car and sit in the back to operate the vehicle.",
    "Yo friend's so tall, he makes Shaquille O'Neal look like Gary Coleman.",
    "Yo friend's so tall, he did a push-up and burned his back on the sun.",
    "Yo friend is so tall that she tripped in Michigan and bumped her head in Florida.",
    "Yo friend is so tall that she tripped over a rock and hit her head on the moon.",
    "Yo friend is so tall that if she did a back-flip she'd kick Jesus in the mouth.",
    "Yo friend's so tall, she can see her house from anywhere.",
    "Yo friend's so tall, she uses two 100-foot ladders as crutches.",
    "Yo friend's so tall, she has to take out the driver's seat of her car and sit in the back to operate the vehicle.",
    "Yo friend's so tall, she makes Shaquille O'Neal look like Gary Coleman.",
    "Yo friend's so tall, she did a push-up and burned her back on the sun."
  ];

  @override
  Widget build(BuildContext context) {
    if (widget.name == "programming") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                widget.name.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Lobster"),
              )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: programming.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            programming[index] ,
                            style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Courgette"),
                          )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                    print("swipe");
                                    String a=programming[index];
                                    favourite.add(a);
                                    print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(programming[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                            Icons.share,
                                            color: Colors.white,
                                          )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }/////////////////////////////////programming///////////////////////////////////////////////
    else if (widget.name == "miscellaneous") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                widget.name.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Lobster"),
              )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: miscellaneous.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            miscellaneous[index],
                            style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Courgette"),
                          )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=miscellaneous[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(miscellaneous[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
    else if (widget.name == "name") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),//TODO name picture
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                    widget.name.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Lobster"),
                  )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: name.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                name[index],
                                style: TextStyle(
                                    color: Colors.deepPurple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Courgette"),
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=name[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(miscellaneous[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
    else if (widget.name == "corona") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),//TODO corona picture
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                    widget.name.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Lobster"),
                  )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: name.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                corona[index],
                                style: TextStyle(
                                    color: Colors.deepPurple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Courgette"),
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=corona[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(corona[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
    else if (widget.name == "teacher") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),//TODO teacher picture
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                    widget.name.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Lobster"),
                  )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: name.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                teacher[index],
                                style: TextStyle(
                                    color: Colors.deepPurple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Courgette"),
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=teacher[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(teacher[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }/////////////////////////////////////miscellaneous////////////////////////////////
    else if (widget.name == "dark") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                widget.name.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Lobster"),
              )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: dark.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            dark[index],
                            style: TextStyle(
                                color: Colors.deepPurple[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Courgette"),
                          )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=dark[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(dark[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } //////////////////////////////////dark////////////////////////////////////////////////
    else if (widget.name == "old") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: old.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          old[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=old[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(old[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    }//////////////////////////////////////////old///////////////////////////////////////
    else if (widget.name == "fat") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: fat.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          fat[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=fat[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(fat[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    } /////////////////////////////////////////////////////////////fat/////////////////////////////////
    else if (widget.name == "skinny") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: skinny.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          skinny[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=skinny[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(skinny[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    } /////////////////////////////////skinny/////////////////////////////////////////////////////
    else if (widget.name == "bald") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: bald.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          bald[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=bald[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(bald[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    } //////////////////////////////////////bald///////////////////////////////////////////////////
    else if (widget.name.toLowerCase() == "stupid") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: stupid.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          stupid[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=stupid[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(stupid[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    } ///////////////////stupid//////////////////////////////////
    else if (widget.name == "tall") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              color: Colors.transparent,
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: tall.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          tall[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=tall[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(tall[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    } ///////////////////////////////////////////////tall//////////////////////////////////
    else if (widget.name == "short") {
      return Stack(children: [
        BackgroundImage(widget.name.toLowerCase() + ".jpg"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
            title: Center(
                child: Text(
              widget.name.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Lobster"),
            )),
            elevation: 50,
            shadowColor: Colors.grey[700],
            actions: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.transparent,
                size: 50,
              )
            ],
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: TinderSwapCard(
                orientation: AmassOrientation.TOP,
                totalNum: short.length,
                stackNum: 3,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                  } else if (align.x > 0) {}
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
                cardBuilder: (context, index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          short[index],
                          style: TextStyle(
                              color: Colors.deepPurple[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Courgette"),
                        )),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                controller.triggerRight();
                                print("swipe");
                                String a=short[index];
                                favourite.add(a);
                                print(a);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: OutlinedButton(
                              onPressed: (){
                                Share.share(short[index]);
                              },
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  elevation: 10,
                ),
              ),
            ),
          ),
        ),
      ]);
    }//////////////////////////short////////////////////////////////////////////
    else if (widget.name == "space") {
      return Stack(
        children: [
          BackgroundImage(widget.name.toLowerCase() + ".jpg"),//TODO: Add space pic
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(225, 237, 235, 0.22),
              title: Center(
                  child: Text(
                    widget.name.toUpperCase(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Lobster"),
                  )),
              elevation: 50,
              shadowColor: Colors.grey[700],
              actions: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.transparent,
                  size: 50,
                )
              ],
            ),
            body: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: TinderSwapCard(
                  orientation: AmassOrientation.TOP,
                  totalNum: space.length,
                  stackNum: 3,
                  maxHeight: MediaQuery.of(context).size.width * 0.9,
                  maxWidth: MediaQuery.of(context).size.width * 0.9,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  minHeight: MediaQuery.of(context).size.width * 0.8,
                  cardController: controller = CardController(),
                  swipeUpdateCallback:
                      (DragUpdateDetails details, Alignment align) {
                    /// Get swiping card's alignment
                    if (align.x < 0) {
                    } else if (align.x > 0) {}
                  },
                  swipeCompleteCallback:
                      (CardSwipeOrientation orientation, int index) {
                    /// Get orientation & index of swiped card!
                  },
                  cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                space[index],
                                style: TextStyle(
                                    color: Colors.deepPurple[900],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Courgette"),
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  controller.triggerRight();
                                  print("swipe");
                                  String a=space[index];
                                  favourite.add(a);
                                  print(a);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Like",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: OutlinedButton(
                                onPressed: (){
                                  Share.share(miscellaneous[index]);
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Share",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    elevation: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  final listKey=GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Favourites",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Lobster"),)),
          backgroundColor: Colors.black,
        actions: [
          Icon(Icons.arrow_drop_down,color: Colors.black,size: 50,)
        ],
      ),
      body: favourite.isEmpty?Container(
        child: Center(
          child: Text("No Jokes liked yet....",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold, fontFamily: "Courgette"),
          ),
        ),): Container(
        margin: EdgeInsets.only(left: 10,right: 10,top: 10),
        child: AnimatedList(
          key: listKey,
          initialItemCount: favourite.length,
          itemBuilder: (context,index,animation)=>ListItemWidget(
            item:favourite[index],
            animation:animation,
            onClicked:(){removeItem(index);},
          ),
        ),
      ),
    );
  }
  void removeItem(int index)
  {
    final removedItem=favourite[index];
    favourite.removeAt(index);
    listKey.currentState.removeItem(index, (context, animation) =>ListItemWidget(
      item: removedItem,
      animation: animation,
      onClicked: (){},
    ));
  }
}
class ListItemWidget extends StatelessWidget {
  final String item;
  final Animation<double> animation;
  final VoidCallback onClicked;
  ListItemWidget({this.item,this.animation,this.onClicked});
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position:Tween<Offset>(
          begin: Offset(-1,0),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeIn)),
        child: BuildItem());
  }
  Widget BuildItem()=>Container(
    margin: EdgeInsets.only(left: 15,right: 15,bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white
    ),
    child: ListTile(
      contentPadding: EdgeInsets.all(16),
      title: Text(item,style: TextStyle(color:Colors.deepPurple[900],fontSize: 15,fontWeight: FontWeight.bold, fontFamily: "Courgette"),),
      trailing: IconButton(
        icon: Icon(Icons.delete,color: Colors.red,size: 25,),
        onPressed: onClicked ,
      ),
    ),
  );
}



