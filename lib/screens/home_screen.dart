import 'package:flutter/material.dart';
import 'package:movie_app/assets/movie_model.dart';
import 'package:movie_app/assets/category_icon.dart';
import 'package:movie_app/screens/detail_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {

  // 🎬 FIRST LIST
  final List<Movie> movies = [
    Movie(
      title: "Wonder Woman 1984",
      image: "https://image.tmdb.org/t/p/w500/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
      genre: "Action",
      duration: "2h 28m",
      rating: "8.7",
      description: "Set in the vibrant and electrifying 1980s, Wonder Woman 1984 follows Diana Prince as she faces new challenges in a rapidly changing world. Living quietly among humans, Diana soon finds herself entangled in a dangerous plot involving a mysterious artifact that grants wishes—but at a hidden cost.",
    ),
    Movie(
      title: "The Shawshank Redemption",
      image: "https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
      genre: "Drama",
      duration: "2h 2m",
      rating: "8.4",
      description: "Wrongfully convicted of murder, banker Andy Dufresne is sentenced to life in Shawshank State Penitentiary, where he forms an unlikely friendship with fellow inmate Red. Over the years, Andy quietly transforms life inside the prison through acts of hope, resilience, and ingenuity, all while holding onto a deeply personal plan for freedom. A powerful story of perseverance and redemption, the film explores the enduring strength of hope even in the darkest circumstances.",
    ),
    Movie(
      title: "The Shawshank Redemption",
      image: "https://image.tmdb.org/t/p/w500/5KCVkau1HEl7ZzfPsKAPM0sMiKc.jpg",
      genre: "Sci-Fi",
      duration: "2h 49m",
      rating: "8.6",
      description: "Wrongfully convicted of murder, banker Andy Dufresne is sentenced to life in Shawshank State Penitentiary, where he forms an unlikely friendship with fellow inmate Red. Over the years, Andy quietly transforms life inside the prison through acts of hope, resilience, and ingenuity, all while holding onto a deeply personal plan for freedom. A powerful story of perseverance and redemption, the film explores the enduring strength of hope even in the darkest circumstances.",
    ),
    Movie(
      title: "Doctor Strange In The Multiverse Of Madness",
      image: "https://image.tmdb.org/t/p/w500/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
      genre: "Action",
      duration: "2h 23m",
      rating: "8.0",
      description: "When the boundaries of reality begin to collapse, Doctor Stephen Strange ventures into the dangerous and unpredictable multiverse to protect a young girl with the power to travel between dimensions. Along the way, he encounters alternate versions of himself and faces the terrifying Scarlet Witch, whose grief-fueled quest threatens to unravel everything. As chaos spreads across realities, Strange must confront the consequences of his own actions and redefine what it truly means to be a hero.",
    ),
    Movie(
      title: "Sonic 2",
      image: "https://image.tmdb.org/t/p/w500/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
      genre: "Action",
      duration: "2h 15m",
      rating: "8.2",
      description: "After settling into life on Earth, Sonic is eager to prove he has what it takes to be a true hero, but his plans are put to the test when the brilliant and vengeful Dr. Robotnik returns—this time with a powerful new ally, Knuckles. Joined by his loyal friend Tails, Sonic embarks on a globe-trotting adventure to find a mystical emerald before it falls into the wrong hands. Packed with action, humor, and heart, the film highlights friendship, courage, and what it truly means to be a hero.",
    ),
  ];

  // 🎬 SECOND LIST
  final List<Movie> movies2 = [
    Movie(
      title: "Avengers: Infinity War",
      image: "https://image.tmdb.org/t/p/w500/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",
      genre: "Action",
      duration: "2h 29m",
      rating: "8.5",
      description: "As the powerful warlord Thanos sets out to collect all six Infinity Stones, the Avengers and their allies must unite across the universe to stop him from achieving ultimate control over reality. Facing overwhelming odds, heroes from Earth and beyond engage in a desperate battle that tests their strength, loyalty, and sacrifice. With the fate of the universe hanging in the balance, the film delivers an intense and emotional journey where not everyone may survive.",
    ),
    Movie(
      title: "Spiderman No Way Home",
      image: "https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
      genre: "Sci-Fi",
      duration: "2h 42m",
      rating: "7.8",
      description: "After his identity is revealed to the world, Peter Parker turns to Doctor Strange for help, but a failed spell fractures reality and opens the multiverse, bringing dangerous villains from other dimensions into his life. As chaos unfolds, Peter must face powerful enemies and make difficult choices that test his courage and responsibility. In a journey filled with action, emotion, and unexpected alliances, he learns what it truly means to be Spider-Man.",
    ),
    Movie(
      title: "Dilwale Dulhania Le Jayenge",
      image: "https://image.tmdb.org/t/p/w500/2CAL2433ZeIihfX1Hb2139CX0pW.jpg",
      genre: "Fantasy",
      duration: "2h 30m",
      rating: "8.1",
      description: "Raj and Simran meet during a trip across Europe and share a carefree romance, but their lives take a turn when they return to India, where Simran is bound by her family's traditional values and an arranged marriage. Determined to win her heart the right way, Raj sets out to earn the approval of her strict father without forcing her to go against her family. A timeless love story filled with charm, emotions, and unforgettable moments, the film celebrates love, respect, and the courage to follow one’s heart.",
    ),
    Movie(
      title: "The Godfather",
      image: "https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
      genre: "Action",
      duration: "2h 32m",
      rating: "9.0",
      description: "Set in the world of organized crime, The Godfather follows the powerful Corleone family under the leadership of Don Vito Corleone, whose influence and authority shape the criminal underworld. When his youngest son, Michael, initially reluctant to be involved, is drawn into the family business, he undergoes a transformation that changes his life forever. As loyalty, power, and betrayal intertwine, the film delivers a gripping story about family, honor, and the true cost of power.",
    ),
    Movie(
      title: "Alienoid",
      image: "https://image.tmdb.org/t/p/w500/8QVDXDiOGHRcAD4oM6MXjE0osSj.jpg",
      genre: "Sci-Fi",
      duration: "2h 28m",
      rating: "8.8",
      description: "Blending science fiction with historical fantasy, Alienoid follows a hidden war between alien prisoners trapped inside human bodies and the guardians who manage them on Earth. When a powerful weapon is sought across timelines, the story shifts between modern-day Seoul and the ancient Goryeo dynasty, where sorcerers and warriors become entangled in the conflict. As past and present collide, unexpected alliances form in a thrilling adventure filled with action, mystery, and time-bending twists.",
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),

      body: SafeArea(
        child: SingleChildScrollView( // ✅ prevents overflow
          child: Column(
            children: [

              // HEADER
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome 👋", style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 5),
                        Text(
                          "Let's relax and watch a movie!",
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const CircleAvatar(child: Icon(Icons.person)),
                  ],
                ),
              ),

              // SEARCH
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.white54),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white54),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // CATEGORY
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category", style: TextStyle(color: Colors.white)),
                    Text("See All", style: TextStyle(color: Colors.yellow)),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryIcon(icon: "😍", label: "Romance"),
                    CategoryIcon(icon: "😊", label: "Comedy"),
                    CategoryIcon(icon: "😱", label: "Horror"),
                    CategoryIcon(icon: "😎", label: "Drama"),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Showing this month",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              // 🎬 FIRST LIST (CLICKABLE)
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              movie: movies[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(movies[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // 🎬 SECOND LIST (CLICKABLE)
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies2.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              movie: movies2[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(movies2[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}