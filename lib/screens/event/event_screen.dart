import 'package:flutter/material.dart';
import './event_schema.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key, required this.data});
  final Event data;

  @override
  State<EventScreen> createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    var value = "";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          title: const Text("Event Details"),
          shadowColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.data.bannerImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: SizedBox(
        width: 200,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Center(
                  child: Text(
                "Book Now",
                style: TextStyle(fontSize: 20),
              )),
              Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.data.title, style: const TextStyle(fontSize: 40)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Image.network(
                      widget.data.organiserIcon,
                      width: 50,
                      height: 50,
                    ),
                    const VerticalDivider(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.data.organiserName,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("Organizer",
                            style: TextStyle(fontSize: 11, color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Image.network(
                      widget.data.organiserIcon,
                      width: 50,
                      height: 50,
                    ),
                    const VerticalDivider(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.data.organiserName,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("Organizer",
                            style: TextStyle(fontSize: 11, color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Row(
                  children: [
                    Image.network(
                      widget.data.organiserIcon,
                      width: 50,
                      height: 50,
                    ),
                    const VerticalDivider(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.data.organiserName,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black)),
                        const Text("Organizer",
                            style: TextStyle(fontSize: 11, color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              const Text("About Event",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black)),
              const Padding(padding: EdgeInsets.all(10)),
              Text(widget.data.description)
            ],
          ),
        ),
      ),
    );
  }
}
