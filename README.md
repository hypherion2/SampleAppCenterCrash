# SampleAppCenterCrash
Simple app to send a crash report to AppCenter

# Instructions
1. Create app in AppCenter, specify Mac OS X/Objective C.
2. Replace YOUR_APP_SECRET in AppDelegate.m with the app secret from AppCenter
3. Build app, then run outside of Xcode debugger.
4. Click button to force a crash.
5. Restart app to send the crash report.

# Notes
Log file is created in the user's Documents folder.
