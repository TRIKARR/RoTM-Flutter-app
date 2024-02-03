import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/views/RotmInteractServices/AI_Services/chatbot/feature_box.dart';
import 'package:rotm/views/RotmInteractServices/AI_Services/chatbot/pallete.dart';

class ReportAnalysisAIService extends StatefulWidget {
  const ReportAnalysisAIService({super.key});

  @override
  State<ReportAnalysisAIService> createState() =>
      _ReportAnalysisAIServiceState();
}

class _ReportAnalysisAIServiceState extends State<ReportAnalysisAIService> {
  String? generatedContent;
  String? generatedImageUrl;
  int start = 200;
  int delay = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      appBar: AppBar(
        title: BounceInDown(
          child: Text(
            'REPORT ANALYSIS',
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 4),
                ),
                height: 240,
                width: MediaQuery.of(context).size.width - 60,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black, width: 4),
                            ),
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "lib/assets/animated/upload-2.gif",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black, width: 4),
                            ),
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "lib/assets/animated/database-table.gif",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black, width: 4),
                            ),
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "lib/assets/animated/question.gif",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Image.asset(
                            "lib/assets/animated/right-arrow.gif",
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black, width: 4),
                          ),
                          height: 110,
                          width: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "lib/assets/animated/upload.gif",
                            ),
                          ),
                        ),
                        Container(
                            height: 80,
                            width: 80,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Image.asset(
                              "lib/assets/animated/left-arrow.gif",
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // chat bubble
            if (generatedImageUrl != null)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(generatedImageUrl!),
                ),
              ),

            // features list
            const SizedBox(
              height: 20,
            ),
            Visibility(
              visible: generatedContent == null && generatedImageUrl == null,
              child: Column(
                children: [
                  SlideInLeft(
                      delay: Duration(milliseconds: start),
                      child: const FeatureBox(
                        color: Pallete.firstSuggestionBoxColor,
                        headerText: 'UPLOAD REPORT',
                        descriptionText:
                            'Upload your Medical Report to get it Analyzed',
                      )),
                  SlideInLeft(
                    delay: Duration(milliseconds: start + delay),
                    child: const FeatureBox(
                      color: Pallete.secondSuggestionBoxColor,
                      headerText: 'DATA EXTRACTION',
                      descriptionText:
                          'Save time and resources by letting our AI automatically identify and extract relevant data points',
                    ),
                  ),
                  SlideInLeft(
                    delay: Duration(milliseconds: start + 2 * delay),
                    child: const FeatureBox(
                      color: Pallete.thirdSuggestionBoxColor,
                      headerText: 'INTEROGATE',
                      descriptionText:
                          'Ask Questions to get meaningful insights and implications. Make informed decisions backed by comprehensive and contextual analysis.',
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
