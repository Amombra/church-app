// import 'package:church/videos/popup.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_api/youtube_api.dart';
// import 'mixin.dart';
// import "apikey.dart";
// import 'popup.dart';


// class VideoAppyout extends StatefulWidget {
//   @override
//   _VideoAppyoutState createState() => _VideoAppyoutState();
// }

// class _VideoAppyoutState extends State<VideoAppyout> {
//     with ListPopupTap<VideoAppyout>, PortraitMode<VideoAppyout> {
//   TextEditingController textController;
//   YoutubeAPI _youtubeAPI;
//   List<YT_API> _ytResults;
//   List<VideoItem> videoItem;
//   String videoId;

//     @override
//   void initState() {
//     super.initState();
//     textController = TextEditingController();
//     _youtubeAPI = YoutubeAPI(apikey, type: "video", maxResults: 30);
//     _ytResults = [];
//     videoItem = [];

//     var callAPI = callAPI("flutter");
//   }

//   // Future<Null> callAPI(String query) async {
//   //   if(_ytResults.isNotEmpty){
//   //     videoItem.clear();
//   //   }

//   //   _ytResults = await _youtubeAPI.search(query);
//   //   setState(() {
//   //     for (YT_API result in _ytResults){
//   //       VideoItem item = VideoItem(api: result,);
//   //       videoItem.add(item);
//   //     }
//   //   });
//   // }

//   Future<Null> callAPI(String query, {bool nextPage}) async {
//     if (_ytResults.isNotEmpty) {
//       videoItem.clear();
//     }

//     if (nextPage == null) {
//       _ytResults = await _youtubeAPI.search(query);
//     }
//     if (nextPage == true)
//       _ytResults = await _youtubeAPI.nextPage();
//     else
//       _ytResults = await _youtubeAPI.prevPage();

//     for (YT_API result in _ytResults) {
//       VideoItem item = VideoItem(
//         api: result,
//        // listPopupTap: this.,
//       );
//       videoItem.add(item);
//     }
//     setState(() {});
//   }


//   @override
//   Widget build(BuildContext context) {
//     //super.build(context);
//     return Scaffold(
//        appBar: AppBar(
//         title: Text("YouTube Example"),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: ButtonBar(
//           alignment: MainAxisAlignment.center,
//           children: <Widget>[
//             IconButton(
//                 color: Colors.red,
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () async {
//                   await callAPI("", nextPage: false);
//                 }),
//             IconButton(
//               color: Colors.blueGrey,
//               icon: Icon(
//                 Icons.arrow_forward,
//               ),
//               onPressed: () async {
//                 await callAPI("", nextPage: true);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   controller: textController,
//                   onFieldSubmitted: (String q) async {
//                     await callAPI(q);

//                     textController.clear();
//                   },
//                 ),
//                 Flexible(
//                   child: ListView.builder(
//                     padding: EdgeInsets.all(8.0),
//                     itemCount: videoItem.length,
//                     itemBuilder: (_, int index) => videoItem[index],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   void onTap(YT_API apiItem, BuildContext context) {
//     setState(() {
//       videoId = apiItem.id;
//     });

//     Navigator.of(context).push(PopupVideoPlayerRoute(
//       child: PopupVideoPlayer(
//         videoId: videoId,
//       ),
//     ));
//   }
// }

// }



// class VideoItem extends StatelessWidget {
//   final YT_API api;
//   final ListPopupTap listPopupTap;

//   const VideoItem({Key key, this.api, this.listPopupTap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         child: ListTile(
//           leading: Image.network(api.thumbnail["high"]["url"]),
//           title: Text(api.title),
//           subtitle: Text(api.channelTitle),
//           onTap: () {
//             listPopupTap.onTap(api, context);
//           },
//         ),
//       ),
//     );
//   }
// }