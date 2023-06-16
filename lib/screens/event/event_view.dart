import 'package:events/screens/event/event_screen.dart';
import 'package:events/utils/util_functions.dart';
import 'package:flutter/material.dart';
import 'event_schema.dart';

class EventView extends StatefulWidget {
  const EventView({super.key, required this.data});
  final Event data;

  @override
  State<EventView> createState() => _EventView();
}

class _EventView extends State<EventView> {
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery for context
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EventScreen(data: widget.data)));
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(widthContext(context) * 0.04,
            widthContext(context) * 0.025, widthContext(context) * 0.04, 0),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius:
                  BorderRadius.circular(widthContext(context) * 0.02)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widthContext(context) * 0.02),
            child: customListItem(
                context: context,
                children: [
                  customTextD(
                      content:
                          '${widget.data.dateTime['dayShort']}, ${widget.data.dateTime['monthShort']} ${widget.data.dateTime['hour']}:${widget.data.dateTime['minute']}',
                      size: heightContext(context) * 0.016),
                  customTextC(
                      content: widget.data.title,
                      size: heightContext(context) * 0.022),
                  customTextA(
                      content: widget.data.venueCity,
                      size: heightContext(context) * 0.016)
                ],
                url: widget.data.bannerImage,
                factor: 0.132),
          ),
        ),
      ),
    );
  }
}
