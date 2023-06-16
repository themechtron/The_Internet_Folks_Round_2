import 'package:events/screens/event/event_screen.dart';
import 'package:events/utils/util_functions.dart';
import 'package:flutter/material.dart';
import '../event/event_list.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});
  String value = '';
  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  @override
  void initState() {
    widget.value = '';
  }

  @override
  Widget build(BuildContext context) {
    final iconSize = heightContext(context) * 0.02;
    var eventScreen = EventList(url: getApiURL(widget.value));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        title: const Text("Search"),
        shadowColor: Colors.transparent,
        leading: const BackButton(
          color: Colors.black,
        ),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(widthContext(context) * 0.01, 0,
                      widthContext(context) * 0.01, 0),
                  child: Icon(Icons.search)),
              Container(
                padding: EdgeInsets.all(widthContext(context) * 0.01),
                width: widthContext(context) * 0.8,
                height: heightContext(context) * 0.1,
                child: TextField(
                  onChanged: (text) => {
                    setState(() {
                      widget.value = text;
                      eventScreen = EventList(url: getApiURL(widget.value));
                    })
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height: heightContext(context) * 0.75,
              child: Expanded(flex: 1, child: eventScreen)),
        ],
      ),
    );
  }
}
