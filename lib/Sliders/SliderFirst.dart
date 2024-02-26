// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:web_app_new/services/firebase_services.dart';
// import 'package:web_app_new/controller/imageController.dart';
// import 'package:web_app_new/utilis/constants.dart';

// class SliderFirst extends StatefulWidget {
//   const SliderFirst({
//     super.key,
//     required this.isClient,
//   });
//   final bool isClient;

//   @override
//   State<SliderFirst> createState() => _SliderFirstState();
// }

// class _SliderFirstState extends State<SliderFirst> {
//   var controller = Get.put(ProfileController());

//   var currentPage = 0;
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   controller
//   //       .fetchImages(); // Make sure to fetch images when the widget is initialized
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.transparent,
//         body: FutureBuilder(
//             future: ImageServices.getFirstImage(),
//             builder: (BuildContext context, AsyncSnapshot snapshot) {
//               if (!snapshot.hasData) {
//                 return const CircularProgressIndicator();
//               } else if (snapshot.hasError) {
//                 return Text('Error: ${snapshot.error}');
//               } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                 return const Text('No images available');
//               } else {
//                 final docs = snapshot.data!.docs;
//                 return Obx(
//                   () => Column(
//                     children: [
//                       Expanded(
//                         child: CarouselSlider(
//                           options: CarouselOptions(
//                             scrollPhysics: const BouncingScrollPhysics(),
//                             autoPlay: true,
//                             aspectRatio: 8 / 4,
//                             //  5 / 2.6,
//                             viewportFraction: 1,
//                           ),
//                           items: docs.map<Widget>((doc) {
//                             final imgLink = doc['url'] as String?;
//                             final documentId = doc.id;

//                             return Card(
//                               color: Colors.transparent,
//                               child: SizedBox(
//                                 child: Stack(
//                                   children: [
//                                     if (imgLink != null)
//                                       Image.network(
//                                         imgLink,
//                                         fit: BoxFit.cover,
//                                         width: double.infinity,
//                                       )
//                                     else
//                                       const Text('Image link not found'),
//                                     Visibility(
//                                       visible: widget.isClient,
//                                       child: Positioned(
//                                         top: 10,
//                                         right: 10,
//                                         child: controller.isloading.value
//                                             ? const CircularProgressIndicator(
//                                                 strokeWidth: 1,
//                                               )
//                                             : IconButton(
//                                                 onPressed: () async {
//                                                   controller.isloading(true);
//                                                   await controller.deleteImage(
//                                                       documentId,
//                                                       "firstslider");
//                                                   await controller
//                                                       .deletImageFromStorage(
//                                                           imgLink);
//                                                   controller.isloading(false);
//                                                   // await controller.fetchImages();
//                                                   setState(() {});
//                                                 },
//                                                 icon: const Icon(
//                                                   Icons.delete,
//                                                   color: Colors.red,
//                                                 ),
//                                               ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       bottom: 10,
//                                       left: w! / 2.2,
//                                       right: 0,
//                                       child: Row(
//                                         children: List.generate(
//                                           docs.length,
//                                           (index) => Container(
//                                             width: 8,
//                                             height: 8,
//                                             margin: const EdgeInsets.symmetric(
//                                                 vertical: 10, horizontal: 2),
//                                             decoration: BoxDecoration(
//                                                 shape: BoxShape.circle,
//                                                 color: currentPage == index
//                                                     ? Colors.blue
//                                                     : Colors.grey),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       ),
//                       Visibility(
//                         visible: widget.isClient,
//                         child: Column(
//                           children: [
//                             controller.isloading.value
//                                 ? const CircularProgressIndicator(
//                                     strokeWidth: 1,
//                                   )
//                                 : ElevatedButton.icon(
//                                     onPressed: () async {
//                                       controller.isloading(true);
//                                       await controller.pickImage(context);
//                                       await controller.uploadImage("images");
//                                       controller.isloading(false);
//                                       // await controller.fetchImages();
//                                       setState(() {});
//                                     },
//                                     icon: const Icon(Icons.add_a_photo),
//                                     label: const Text("Upload image"),
//                                   ),
//                             const SizedBox(
//                               height: 60,
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }
//             }));
//   }
// }
