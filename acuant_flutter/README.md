# acuant_flutter

Acuant document camera and selfie camera for flutter

### For IOS

#### In Podfile

replace

```rb
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
  end
end
```

with

```rb
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if %w[
         AcuantiOSSDKV11
         Socket.IO-Client-Swift
         Starscream
       ].include? target.name
      target.build_configurations.each do |config|
        config.build_settings["BUILD_LIBRARY_FOR_DISTRIBUTION"] = "YES"
        config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      end
    else
      flutter_additional_ios_build_settings(target)
    end
  end
end
```

#### Use localize strings

In XCode, create a Localizable.strings file and put

```string
/*
  Localizable.strings
  Runner

  Created by Edward Yuan on 2022-12-12.

*/

/* SampleApp */
"Back Side?" = "Back Side?";
"Scan the back side of the medical insurance card" = "Scan the back side of the medical insurance card";
"Scan the back side of the ID document" = "Scan the back side of the ID document";
"Capture Barcode" = "Capture Barcode";
"Barcode Expected" = "A barcode was expected but was not captured. Please try capturing the barcode";


/* AcuantCamera */
"acuant_camera_align" = "ALIGN";
"acuant_camera_manual_capture" = "ALIGN & TAP";
"acuant_camera_move_closer" = "MOVE CLOSER";
"acuant_camera_hold_steady" = "HOLD STEADY";
"acuant_camera_capturing" = "CAPTURING";
"acuant_camera_outside_view" = "TOO CLOSE!";
"acuant_camera_paused" = "CAMERA PAUSED";
"acuant_camera_capture_barcode" = "CAPTURE BARCODE";

/* AcuantFaceCapture/AcuantPassiveLiveness */
"acuant_face_camera_initial" = "Align face to start capture";
"acuant_face_camera_face_too_close" = "Too Close! Move Away";
"acuant_face_camera_face_too_far" = "Move Closer";
"acuant_face_camera_face_has_angle" =  "Face has Angle. Do not tilt";
"acuant_face_camera_face_not_in_frame" =  "Move in Frame";
"acuant_face_camera_face_moved" = "Hold Steady";
"acuant_face_camera_capturing_2" = "Capturing\n2...";
"acuant_face_camera_capturing_1" = "Capturing\n1...";
"acuant_face_camera_rotate_portrait" = "Face can only be captured in portrait";
"acuant_face_camera_paused" = "Camera paused";

/* AcuantHGLiveness */
"hg_too_close" = "Too Close! Move Away";
"hg_too_far_away" = "Move Closer";
"hg_move_in_frame" = "Move in Frame";
"hg_blink" = "Blink!";
"hg_hold_steady" = "Hold Steady";
"hg_align_face_and_blink" = "Align face to begin";

/* AcuantIPLiveness */
"IProov_LanguageFile" = "en-US";
"IProov_PromptTapToBegin" = "Tap the screen to begin";
"IProov_PromptTooFar" = "Move closer";
"IProov_PromptTooBright" = "Go somewhere shadier";
"IProov_PromptLivenessScanCompleted" = "Scan completed";
"IProov_PromptGenuinePresenceAlignFace" = "Put your face in the oval";
"IProov_PromptLivenessAlignFace" = "Fill the oval with your face";
"IProov_PromptLivenessNoTarget" = "Put your face in the frame";
"IProov_ProgressStreaming" = "Streaming…";
"IProov_ProgressStreamingSlow" = "Streaming, network is slow…";
"IProov_PromptScanning" = "Scanning…";
"IProov_ProgressIdentifyingFace" = "Identifying face…";
"IProov_ProgressConfirmingIdentity" = "Confirming identity…";
"IProov_ProgressAssessingGenuinePresence" = "Assessing genuine presence…";
"IProov_ProgressAssessingLiveness" = "Assessing liveness…";
"IProov_ProgressLoading" = "Loading…";
"IProov_ProgressCreatingIdentity" = "Creating identity…";
"IProov_ProgressFindingFace" = "Finding face…";
"IProov_Authenticate" = "Authenticate";
"IProov_Enrol" = "Enrol";
"IProov_MessageFormat" = "%@ to %@";
"IProov_PromptTooClose" = "Too close";
"IProov_FailureMotionTooMuchMovement" = "Please do not move while iProoving";
"IProov_FailureLightingFlashReflectionTooLow" = "Ambient light too strong or screen brightness too low";
"IProov_FailureLightingBacklit" = "Strong light source detected behind you";
"IProov_FailureLightingTooDark" = "Your environment appears too dark";
"IProov_FailureLightingFaceTooBright" = "Too much light detected on your face";
"IProov_FailureMotionTooMuchMouthMovement" = "Please do not talk while iProoving";
"IProov_MessageFormatWithUsername" = "%@ as %@ to %@";
"IProov_PromptRollTooHigh" = "Avoid tilting your head";
"IProov_PromptRollTooLow" = "Avoid tilting your head";
"IProov_PromptYawTooLow" = "Turn slightly to your right";
"IProov_PromptYawTooHigh" = "Turn slightly to your left";
"IProov_PromptPitchTooHigh" = "Hold the device at eye level";
"IProov_PromptPitchTooLow" = "Hold the device at eye level";
"IProov_ErrorNetwork" = "Network error";
"IProov_ErrorCameraPermissionDenied" = "Camera permission denied";
"IProov_ErrorCameraPermissionDeniedMessageIos" = "Please allow camera access for this app in iOS Settings";
"IProov_ErrorServer" = "Server error";
"IProov_ErrorUnexpected" = "Unexpected error";
"IProov_ErrorCaptureAlreadyActive" = "An existing capture is already in progress";
"IProov_PromptGetReady" = "Get ready…";
"IProov_PromptGrantPermission" = "Grant Camera Access";
"IProov_PromptGrantPermissionMessage" = "Camera access must be granted to use iProov";
"IProov_FailureAmbiguousOutcome" = "Ambiguous outcome";

```
