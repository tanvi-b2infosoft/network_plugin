library network_plugin;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_plugin/data_fetcher.dart';

class NetworkPlugin extends StatefulWidget {
  const NetworkPlugin({super.key});
  @override
  State<NetworkPlugin> createState() => _NetworkPluginState();
}

class _NetworkPluginState extends State<NetworkPlugin> {
  @override
  void initState() {
    super.initState();
    _initializeData();
  }
  List<Map<String, dynamic>> topics = [];
  var toggleStyle;

  Future<void> _initializeData() async {
    try {
      final data = await fetchData();
      setState(() {
        topics = data['topics'];
        toggleStyle = data['toggleStyle'];
      });
    } catch (error) {
      print('Error initializing data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withNoTextScaling(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              const Center(
                child: Text("Consent Topics", style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 35, fontFamily: "Verdana"),),
              ),
              const SizedBox(height: 40,),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1, // Optional: Set thickness of the divider
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  final topic = topics[index];
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              topic['topicName'],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Verdana"),
                            ),
                          ),
                          Row(
                            children: [
                              Transform.scale(
                                scale: 0.9,
                                child: CupertinoSwitch(
                                  activeColor: toggleStyle['toggleOnColor'],
                                  trackColor: toggleStyle['toggleOffColor'],
                                  value: topic['toggledOn'],
                                  onChanged: (val) {
                                    setState(() {
                                      topics[index]['toggledOn'] = val;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                (topic['toggledOn']) ? toggleStyle['toggleOnText'] : toggleStyle['toggleOffText'],
                                style: TextStyle(
                                    color: topic['toggledOn']
                                        ? toggleStyle['toggleOnTextColor']
                                        : toggleStyle['toggleOffTextColor'],
                                    fontSize: toggleStyle['fontSize'],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: toggleStyle['fontName']),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(topic['topicDescription']),
                      Divider(color: Colors.grey.shade400),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

