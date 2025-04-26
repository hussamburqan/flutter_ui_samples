import 'package:flutter/material.dart';

class HomePageeFilter extends StatelessWidget {
  const HomePageeFilter({super.key});
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF322e59),
      body: 
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Filter', style: Theme.of(context).textTheme.titleLarge),
                    Icon(Icons.cancel_sharp),
                  ],
                ),
                Spacer(flex: 1,),

                Text('SEARCH BY KEYBOARD', style: Theme.of(context).textTheme.titleSmall),
                TextField(
                  style: Theme.of(context).textTheme.titleSmall,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.search, color: Color(0xFFbab9ce), size: 30 ,),
                    hintText: "Search jobs",
                    hintStyle: Theme.of(context).textTheme.titleSmall,
                    fillColor: Color.fromARGB(255, 32, 28, 69), 
                    filled: true, 
                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    
                  ),
                ),
                Spacer(flex: 1,),
                Text('VIEW', style: Theme.of(context).textTheme.titleSmall),
                RadioJob(),
                Spacer(flex: 1,),
                Text("INCLUDE", style: Theme.of(context).textTheme.titleSmall),
                Row(
                  children: [
                  Transform.scale(
                    scale: 1.8,
                    child: CostumCheckBox()
                    ),
                  Text("jobs shared with me", style: Theme.of(context).textTheme.titleSmall),
                  
                  ],
                ),
                Spacer(flex: 2,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(Colors.amber),
                    ),
                    child: Text('Save Changes', style: Theme.of(context).textTheme.titleMedium),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
    );
  }
}

class CostumCheckBox extends StatefulWidget {
  const CostumCheckBox({super.key});

  @override
  State<CostumCheckBox> createState() => _CostumCheckBoxState();
}

class _CostumCheckBoxState extends State<CostumCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.white60,
      checkColor: Color.fromARGB(255, 32, 28, 69),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

enum Choices { choice1, choice2, choice3 }

class RadioJob extends StatefulWidget {
  const RadioJob({super.key});

  @override
  State<RadioJob> createState() => _RadioJobeState();
}

class _RadioJobeState extends State<RadioJob> {
  Choices? _choice = Choices.choice1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Colors.white60,
                value: Choices.choice1,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text('All job posts', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Colors.white60,
                value: Choices.choice2,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text('Active job posts', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
        Row(
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<Choices>(
                activeColor: Colors.white60,
                value: Choices.choice3,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            Text('Archived job posts', style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ],
    );
  }
}