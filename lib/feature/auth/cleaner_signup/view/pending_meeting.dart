import 'package:epicboymoses/core/const/app_colors.dart';
import 'package:epicboymoses/core/global_widegts/custom_button.dart';
import 'package:epicboymoses/core/style/global_text_style.dart';
import 'package:epicboymoses/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PendingMeeting extends StatelessWidget {
  final String date;
  final String time;
  final String? meetingLink;
  const PendingMeeting({
    super.key,
    required this.date,
    required this.time,
    this.meetingLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          top: 60.0,
          bottom: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(12),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Text(
                  "Pending Meeting",
                  style: globalTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.date_range_outlined,
                        color: AppColors.primaryColor,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "$date, $time",
                        style: globalTextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Wait For Your Meeting Date & Time",
                    style: globalTextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Image.asset("assets/images/pending_meeting.png"),
                  const SizedBox(height: 20),
                  Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1E1E24).withValues(alpha: 0.04),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              meetingLink ?? "Not Assigned Yet",
                              style: globalTextStyle(
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              if (meetingLink != null) {
                                Clipboard.setData(
                                  ClipboardData(text: meetingLink ?? ""),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Meeting link copied!"),
                                  ),
                                );
                              }
                            },
                            child: Icon(
                              Icons.copy_outlined,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            CustomButton(
              title: "Join Meeting",
              onPressed: () async {
                if (meetingLink != null && meetingLink!.isNotEmpty) {
                  final Uri url = Uri.parse(meetingLink!);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                    Get.toNamed(AppRoute.accountApprovedScreen);
                  } else {
                    // ignore: use_build_context_synchronously
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Could not launch the meeting link."),
                      ),
                    );
                    Get.toNamed(AppRoute.accountApprovedScreen);
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Meeting link is not available yet."),
                    ),
                  );
                }
              },

              backgroundColor: meetingLink != null
                  ? AppColors.primaryColor
                  : Color(0xffECEBF0),
              textStyle: meetingLink != null
                  ? globalTextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )
                  : globalTextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                      fontWeight: FontWeight.w600,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
