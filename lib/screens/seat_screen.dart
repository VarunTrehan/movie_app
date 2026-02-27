import 'package:flutter/material.dart';

class SeatScreen extends StatefulWidget {
  const SeatScreen({super.key});

  @override
  State<SeatScreen> createState() => _SeatScreenState();
}

class _SeatScreenState extends State<SeatScreen> {
  List<int> selectedSeats = [];
  List<int> reservedSeats = [2, 5, 10];

  int selectedDateIndex = 2;
  int selectedTimeIndex = 2;

  double seatPrice = 200.0;

  double get totalPrice => selectedSeats.length * seatPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Select Seats"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // 🎬 SCREEN CURVE (NEW)
            Column(
              children: [
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      colors: [Colors.orange, Colors.yellow],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "SCREEN",
                  style: TextStyle(color: Colors.white54),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🎬 Seat Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 40,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                bool isSelected = selectedSeats.contains(index);
                bool isReserved = reservedSeats.contains(index);

                Color color;

                if (isReserved) {
                  color = Colors.white;
                } else if (isSelected) {
                  color = Colors.orange;
                } else {
                  color = Colors.grey.shade800;
                }

                return GestureDetector(
                  onTap: isReserved
                      ? null
                      : () {
                          setState(() {
                            if (isSelected) {
                              selectedSeats.remove(index);
                            } else {
                              selectedSeats.add(index);
                            }
                          });
                        },
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // 📅 Date Selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDateIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: selectedDateIndex == index
                          ? Colors.orange
                          : Colors.white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Mar ${10 + index}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            // ⏰ Time Selection
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ["11:00", "12:30", "14:30", "15:30"]
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                String time = entry.value;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTimeIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedTimeIndex == index
                            ? Colors.orange
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      time,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
            ),

            const Spacer(),

            // 🎟️ BOTTOM BOOKING SECTION (NEW)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // 💰 Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Price",
                        style: TextStyle(color: Colors.white54),
                      ),
                      Text(
                        "₹${totalPrice.toStringAsFixed(0)}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // 🎟️ Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("🎉 Tickets Booked Successfully!"),
                        ),
                      );
                    },
                    child: const Text("Book Ticket"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}