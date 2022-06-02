import 'package:flutter/material.dart';
import 'package:flutter_submission/models/trending_events_model.dart';
import 'package:flutter_submission/theme.dart';

class DetailEventScreen extends StatelessWidget {
  const DetailEventScreen({Key? key, required this.event}) : super(key: key);

  final TrendingEvent event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(event.gambarEvent),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: blackColor,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.nama,
                      style: const TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      event.deskripsiEvent,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month_outlined),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(event.tanggalEvent)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(event.hargaTiket)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Text(event.lokasiEvent),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
