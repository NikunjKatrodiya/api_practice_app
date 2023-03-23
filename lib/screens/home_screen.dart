import 'dart:convert';

import 'package:api_practice_app/model/charactor_model_map.dart';
import 'package:api_practice_app/screens/data_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CharacterModel? characterModel;
  @override
  void initState() {
    // TODO: implement initState
    getPostAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: characterModel == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              separatorBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DataInfoScreen(
                              info: characterModel!.info,
                              results: characterModel!.results![index],
                            ),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        color: Colors.grey,
                        child: Column(
                          children: [
                            Text("Name : ${characterModel!.results![index].name}"),
                            Text("id : ${characterModel!.results![index].id}"),
                            Text("Name : ${characterModel!.results![index].location!.name}"),
                            Text("Name : ${characterModel!.results![index].origin!.name}"),
                            Image.network(
                              characterModel!.results![index].image!,
                              height: 100,
                              width: 100,
                            ),
                            Text("data : ${characterModel!.info!.pages}"),
                            Text("data : ${characterModel!.info!.count}"),
                          ],
                        ),
                      ),
                    ),
                  ),
              itemCount: characterModel!.results!.length),
    );
  }

  getPostAPI() async {
    var client = http.Client();
    try {
      Response response = await client.get(
        Uri.parse('https://rickandmortyapi.com/api/character'),
      );
      if (response.statusCode == 200) {
        characterModel = CharacterModel.fromJson(jsonDecode(response.body));
        setState(() {});
        //postsList = (jsonDecode(response.body) as List?)!.map((dynamic e) => PostModel.fromJson(e)).toList();
      } else {
        debugPrint("Statuscode......................${response.statusCode}");
      }
    } finally {
      client.close();
    }
  }
}
