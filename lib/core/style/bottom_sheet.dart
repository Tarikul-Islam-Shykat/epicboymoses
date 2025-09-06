// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AddServiceBottomSheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () => _showAddServiceBottomSheet(context),
//       child: Text('Add New Service'),
//     );
//   }

//   void _showAddServiceBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20.r),
//       ),
//       backgroundColor: Colors.white,
//       builder: (context) {
//         return Container(
//           padding: EdgeInsets.all(20.r),
//           height: 500.h, // Adjust based on content
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Add New Service',
//                     style: TextStyle(
//                       fontSize: 18.sp,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                     ),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.close, size: 24.sp),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                 ],
//               ),

//               SizedBox(height: 20.h),

//               // Service Name
//               Text('Service Name', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
//               SizedBox(height: 8.h),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Deep Cleaning',
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
//                 ),
//               ),

//               SizedBox(height: 20.h),

//               // Service Rate
//               Text('Service Rate', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
//               SizedBox(height: 8.h),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: '£23.90',
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
//                 ),
//               ),

//               SizedBox(height: 20.h),

//               // Service Subtitle
//               Text('Service Subtitle', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
//               SizedBox(height: 8.h),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Includes inside cupboards, appliances, and more.',
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
//                 ),
//               ),

//               SizedBox(height: 20.h),

//               // Service Details
//               Text('Service Details', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
//               SizedBox(height: 8.h),
//               TextField(
//                 maxLines: 4,
//                 decoration: InputDecoration(
//                   hintText: 'Enter details here...',
//                   filled: true,
//                   fillColor: Colors.grey[100],
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                     borderSide: BorderSide.none,
//                   ),
//                   contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
//                 ),
//               ),

//               SizedBox(height: 30.h),

//               // Save Button
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color(0xFF4ECDC4), // Teal green
//                   foregroundColor: Colors.white,
//                   padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                   minimumSize: Size(double.infinity, 50.h),
//                 ),
//                 onPressed: () {
//                   // Handle save logic
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Service saved!')),
//                   );
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   'Save',
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddServiceBottomSheet {
  void build(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 16.h,
            bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Row(
                children: [
                  Text(
                    "Add New Service",
                    style: globalTextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.bgColor,
                      child: Icon(Icons.close, size: 18.r, color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),

              // Service Name
              _buildLabel("Service Name"),
              _buildInput("Deep Cleaning"),

              // Service Rate
              _buildLabel("Service Rate"),
              _buildInput("£23.90"),

              // Service Subtitle
              _buildLabel("Service Subtitle"),
              _buildInput("Includes inside cupboards, appliances, and more."),

              // Service Details
              _buildLabel("Service Details"),
              _buildInput("Enter details here...", maxLines: 3),

              SizedBox(height: 20.h),

              // Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                  ),
                  child: Text(
                    "Save",
                    style: globalTextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper: Form label
  Widget _buildLabel(String label) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 6.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: globalTextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }

  // Helper: Input field
  Widget _buildInput(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: AppColors.bgColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
