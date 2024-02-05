// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:rotm/views/user/pdf.dart';
import 'package:rotm/views/user/pdf_data.dart';
import 'package:rotm/views/user/randomwid.dart';


class PdfPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _PdfPageState createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonWidget(
                  text: 'Simple PDF',
                  onClicked: () async {
                    final pdfFile =
                        await PdfApi.generateCenteredText('Sample Text');

                    PdfApi.openFile(pdfFile);
                  },
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Paragraphs PDF',
                  onClicked: () async {
                    final pdfFile = await PdfParagraphApi.generate();

                    PdfApi.openFile(pdfFile);
                  },
                ),
              ],
            ),
          ),
        ),
      );
}