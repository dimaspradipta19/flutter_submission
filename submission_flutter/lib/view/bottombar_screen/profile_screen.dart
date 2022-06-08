import 'package:flutter/material.dart';

import '../../utils/theme.dart';
import '../register/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: const BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 40,
                        ),
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: whiteColor,
                          child: Icon(
                            Icons.person,
                            size: 60.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Username 1",
                          style: TextStyle(
                              fontSize: 26.0,
                              color: whiteColor2,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Edit your profile",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: whiteColor2,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "User Name",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "username 1",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "dimas@gmail.com",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Reset Passsword",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next)),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Notification",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: blackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (switched) {
                            setState(
                              () {
                                isSwitched = switched;
                                final snackBar = SnackBar(
                                  content: (isSwitched = switched)
                                      ? const Text('Notification is ON')
                                      : const Text('Notification is OFF'),
                                  action: SnackBarAction(
                                    label: 'Dismiss',
                                    onPressed: () {
                                      // Some code to undo the change.
                                    },
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ), (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                        ),
                        child: const Text(
                          "Log Out",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
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
