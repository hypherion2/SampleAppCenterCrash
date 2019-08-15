# SampleAppCenterCrash
Simple app to send a crash report to AppCenter

# Instructions
1. Create app in AppCenter, specify Mac OS X/Objective C.
2. Replace YOUR_APP_SECRET in AppDelegate.m with the app secret from AppCenter
3. Build app, then run outside of Xcode debugger.
4. Click button to force a crash.
5. Restart app to send the crash report.
6. Create .zip archive with the contents of the dSym file in the output directory and upload to AppCenter for symbolication.

# Notes
- NSLog output is sent to a log file Log.txt in the user's Documents folder
- Uses AppCenter SDK 2.2.0
- Tested with XCode 10.3
