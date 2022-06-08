import 'package:flutter/material.dart';

import '../models/trending_events_model.dart';
import '../utils/theme.dart';

class DetailEventScreen extends StatefulWidget {
  const DetailEventScreen({Key? key, required this.event}) : super(key: key);

  final TrendingEvent event;

  @override
  State<DetailEventScreen> createState() => _DetailEventScreenState();
}

class _DetailEventScreenState extends State<DetailEventScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(widget.event.gambarEvent),
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
                      widget.event.nama,
                      style: const TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.event.deskripsiEvent,
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
                        Text(widget.event.tanggalEvent)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(widget.event.hargaTiket)
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
                          child: Text(widget.event.lokasiEvent),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    const Icon(Icons.share),
                    const SizedBox(width: 20.0),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: redColor,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: Text(
                                'Anda telah mendaftar Program ${widget.event.nama}!'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                        ),
                        child: const Text(
                          "Get your ticket Now",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
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
