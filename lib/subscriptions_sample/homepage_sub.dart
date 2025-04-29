import 'package:flutter/material.dart';

class HomePageSub extends StatefulWidget {
  const HomePageSub({super.key});

  @override
  State<HomePageSub> createState() => _HomePageSubState();
}

class _HomePageSubState extends State<HomePageSub> {
  int selectedIndex = 0;

  void selectCard(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 5,),
                Text(
                  "Try FREE for 4 weeks",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Spacer(flex: 1,),
                Text(
                  "We uncover the facts around the\nclock, all over the globe.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Spacer(flex: 2,),
                SubCard(
                  index: 0,
                  isSelected: selectedIndex == 0,
                  title: "4 weeks for free",
                  subTitle: "Then \$3 every month for the first year",
                  label: "MONTHLY",
                  onSelect: selectCard,
                ),
                Spacer(flex: 1,),
                SubCard(
                  index: 1,
                  isSelected: selectedIndex == 1,
                  title: "4 weeks for free",
                  subTitle: "Then \$30 for the first year",
                  label: "YEARLY",
                  badge: "Best value",
                  onSelect: selectCard,
                ),
                Spacer(flex: 2,),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF0C1033),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                  child: SizedBox(
                    width: 200,
                      child: Center(child: Text("Continue", style: Theme.of(context).textTheme.labelMedium),)
                  ),
                ),
                Spacer(flex: 1,),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    shape: RoundedRectangleBorder(side: BorderSide( width: 10),
                        borderRadius: BorderRadius.circular(32)),
                  ),
                  child: SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Continue with", style: Theme.of(context).textTheme.titleSmall),
                        SizedBox(width: 10),
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/PayPal.svg/800px-PayPal.svg.png",
                          height: 20,
                        ),
                     ],
                    ),
                  ),
                ),
                Spacer(flex: 2,),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View more offers",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                Spacer(flex: 5,),

              ],
            ),
      ),
    );
  }
}

class SubCard extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final String subTitle;
  final String label;
  final String? badge;
  final Function(int) onSelect;

  const SubCard({
    super.key,
    required this.index,
    required this.isSelected,
    required this.title,
    required this.subTitle,
    required this.label,
    this.badge,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(index),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Color(0xFF3D49A2) : Colors.grey.shade300,
            width: isSelected ? 2 : 5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isSelected ? Color(0xFF0D0D33) : Colors.black,
              size: 30,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  if (badge != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFF3142ED),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        badge!,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleSmall
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
