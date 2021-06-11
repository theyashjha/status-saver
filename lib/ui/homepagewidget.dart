// import 'package:flutter/material.dart';
// import 'package:waappagain/utils/video_thumbnail.dart';
// import 'package:open_file/open_file.dart';
// import 'package:flutter_icons/flutter_icons.dart';
//
//
// class CardWidget extends StatefulWidget {
//   @override
//   _CardWidgetState createState() => _CardWidgetState();
// }
//
// class _CardWidgetState extends State<CardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(16.0),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     onPressed: () => saveMedia(),
//                     icon: Icon(
//                       Feather.download,
//                       color: Colors.white,
//                       size: 16.0,
//                     ),
//                   ),
//                   mimeType.split("/")[0] == "video"
//                       ? Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Text(
//                         "${FileUtils.formatBytes(file.lengthSync(), 1)}",
//                         style: TextStyle(
//                             fontSize: 12.0, color: Colors.white),
//                       ),
//                       SizedBox(width: 5.0),
//                       Icon(
//                         Icons.play_circle_filled,
//                         color: Colors.black,
//                         size: 16.0,
//                       ),
//                     ],
//                   )
//                       : Text(
//                     "${FileUtils.formatBytes(file.lengthSync(), 1)}",
//                     style: TextStyle(
//                       fontSize: 12.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MainCardWidget extends StatefulWidget {
//   const MainCardWidget({Key key}) : super(key: key);
//
//   @override
//   _MainCardWidgetState createState() => _MainCardWidgetState();
// }
//
// class _MainCardWidgetState extends State<MainCardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => OpenFile.open(file.path),
//       child: GridTile(
//         header: Container(
//           height: 50.0,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.black54, Colors.transparent],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   IconButton(
//                     onPressed: () => saveMedia(),
//                     icon: Icon(
//                       Feather.download,
//                       color: Colors.white,
//                       size: 16.0,
//                     ),
//                   ),
//                   mimeType.split("/")[0] == "video"
//                       ? Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       Text(
//                         "${FileUtils.formatBytes(file.lengthSync(), 1)}",
//                         style: TextStyle(
//                             fontSize: 12.0, color: Colors.white),
//                       ),
//                       SizedBox(width: 5.0),
//                       Icon(
//                         Icons.play_circle_filled,
//                         color: Colors.white,
//                         size: 16.0,
//                       ),
//                     ],
//                   )
//                       : Text(
//                     "${FileUtils.formatBytes(file.lengthSync(), 1)}",
//                     style: TextStyle(
//                       fontSize: 12.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         child: mimeType.split("/")[0] == "video"
//             ? VideoThumbnail(path: path)
//             : Image(
//           fit: BoxFit.cover,
//           errorBuilder: (b, o, c) {
//             return Icon(Icons.image);
//           },
//           image: ResizeImage(
//             FileImage(File(file.path)),
//             width: 150,
//             height: 150,
//           ),
//         ),
//       ),
//     );
//   }
// }
