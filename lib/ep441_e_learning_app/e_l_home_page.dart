import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ELearningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              right: 0,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 3),
                    child: Text(
                      "Select a",
                      style: GoogleFonts.montserrat(fontSize: 22),
                    ),
                  ),
                  Text(
                    "Plan To Learn",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                        ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Positioned(
              right: -24,
              top: 0,
              child: Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://assets-ouch.icons8.com/thumb/208/447d3cc2-398c-4b4f-ba74-952639825135.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              top: 240,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                right: 8,
                                bottom: 4,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.purple[400],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(160),
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 16,
                                bottom: 8,
                                right: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Image.network(
                                          "https://assets-ouch.icons8.com/thumb/742/18be8202-4db4-4fd8-bcf2-8db2deb63c63.png"),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Conversation".toUpperCase(),
                                          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                right: 8,
                                bottom: 4,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red[400],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(160),
                                        bottomRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(24),
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 16,
                                bottom: 8,
                                right: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Image.network(
                                          "https://assets-ouch.icons8.com/thumb/631/32d26368-cc36-4f6f-bc6c-1309f8727bec.png"),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "special topics".toUpperCase(),
                                          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                right: 8,
                                bottom: 0,
                                top: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.teal[400],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                        bottomLeft: Radius.circular(160),
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 16,
                                bottom: 8,
                                right: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Listening".toUpperCase(),
                                          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Image.network(
                                          "https://assets-ouch.icons8.com/thumb/276/af616f49-a851-4014-ad85-9ae9f25ae1bd.png"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                right: 8,
                                bottom: 0,
                                top: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                        bottomRight: Radius.circular(160),
                                        bottomLeft: Radius.circular(24),
                                      )),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 16,
                                bottom: 8,
                                right: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "IELTS".toUpperCase(),
                                          style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Image.network(
                                          "https://assets-ouch.icons8.com/thumb/853/0f654408-ed3c-4fea-812f-35185d116b98.png"),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
