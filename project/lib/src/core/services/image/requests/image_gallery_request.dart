// todo : Remove the comment marks once to enable this file 


// import 'package:image_picker/image_picker.dart';

// import '../../../constants/lang_const.dart';
// import '../configs/image_instance.dart';

// class ImageGalleryRequest {
//  ImageGalleryRequest._();

//   static Future<Map<String, dynamic>> galleryImage() async {
//     return await imagePicker
//         .pickImage(source: ImageSource.gallery)
//         .then<Map<String, dynamic>>(
//       (media) {
//         if (media != null) {
//           return {
//             "status": true,
//             "data": media.path,
//           };
//         } else {
//           return {
//             "status": false,
//             "message": Lang.noImageTaketext,
//           };
//         }
//       },
//     ).catchError((err) => {
//               "status": false,
//               "message": Lang.deviceError,
//             });
//   }
// }
