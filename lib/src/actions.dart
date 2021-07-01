import 'event.dart';

class CallKeepDidReceiveStartCallAction extends EventType {
  CallKeepDidReceiveStartCallAction();
  CallKeepDidReceiveStartCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        handle = arguments['handle'] as String,
        name = arguments['name'] as String;
  String? callUUID;
  String? handle;
  String? name;
}

class CallKeepPerformAnswerCallAction extends EventType {
  CallKeepPerformAnswerCallAction();
  CallKeepPerformAnswerCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String;
  String? callUUID;
}

class CallKeepPerformEndCallAction extends EventType {
  CallKeepPerformEndCallAction();
  CallKeepPerformEndCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String;
  String? callUUID;
}

class CallKeepDidActivateAudioSession extends EventType {
  CallKeepDidActivateAudioSession();
}

class CallKeepDidDeactivateAudioSession extends EventType {
  CallKeepDidDeactivateAudioSession();
}

class CallKeepDidDisplayIncomingCall extends EventType {
  CallKeepDidDisplayIncomingCall();
  CallKeepDidDisplayIncomingCall.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        handle = arguments['handle'] as String,
        localizedCallerName = arguments['localizedCallerName'] as String,
        hasVideo = arguments['hasVideo'] as bool,
        callId = (arguments['payload'] as Map)['callId'] as String,
        serial = (arguments['payload'] as Map)['serial'] as int,
        callStatus = (arguments['payload'] as Map)['callStatus'] as String,
        uuid = (arguments['payload'] as Map)['uuid'] as String,
        fromPushKit = arguments['fromPushKit'] as bool;
  String? callUUID;
  String? handle;
  String? localizedCallerName;
  bool? hasVideo;
  String? callId;
  int? serial;
  String? callStatus;
  String? uuid;
  bool? fromPushKit;
}

class CallKeepDidPerformSetMutedCallAction extends EventType {
  CallKeepDidPerformSetMutedCallAction();
  CallKeepDidPerformSetMutedCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        muted = arguments['muted'] as bool;
  String? callUUID;
  bool? muted;
}

class CallKeepDidToggleHoldAction extends EventType {
  CallKeepDidToggleHoldAction();
  CallKeepDidToggleHoldAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        hold = arguments['hold'] as bool;
  String? callUUID;
  bool? hold;
}

class CallKeepDidPerformDTMFAction extends EventType {
  CallKeepDidPerformDTMFAction();
  CallKeepDidPerformDTMFAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        digits = arguments['digits'] as String;
  String? callUUID;
  String? digits;
}

class CallKeepProviderReset extends EventType {
  CallKeepProviderReset();
}

class CallKeepCheckReachability extends EventType {
  CallKeepCheckReachability();
}

class CallKeepDidLoadWithEvents extends EventType {
  CallKeepDidLoadWithEvents();
}

class CallKeepPushKitToken extends EventType {
  CallKeepPushKitToken();
  CallKeepPushKitToken.fromMap(Map<dynamic, dynamic> arguments)
      : token = arguments['token'] as String;
  String? token;
}

class CallKeepPushKitReceivedNotification extends EventType {
  CallKeepPushKitReceivedNotification();
  CallKeepPushKitReceivedNotification.fromMap(Map<dynamic, dynamic> arguments)
      : callId = arguments['callId'] as String,
        serial = arguments['serial'] as int,
        uuid = arguments['uuid'] as String,
        callStatus = arguments['callStatus'] as String;
  String? callId;
  int? serial;
  String? callStatus;
  String? uuid;
}