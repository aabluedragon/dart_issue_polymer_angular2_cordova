# dart_issue_polymer_angular2_cordova

An issue when using Dart with Polymer & Angular2 at the same time under a UIWebView (Cordova), you get a white blank webview, however it works in mobile safari.

And in mobile safari you have the infamous ~300ms tap delay issue, So I've tried to add FastClick.js but it just disables the clicks (myFunc not called in mobile safari).

See related StackOverflow question: http://stackoverflow.com/questions/31839256/dart-polymerangular2-fastclick

Reproduce:<br/>
1. Clone this repo to your drive.<br/>
2. Run `pub serve`.<br/>
3. in cdv folder, do `cordova run ios`, ios simulator will open.<br/>
4. Wait for the compilation to javascript to complete, even then, you'll get the blank webview.<br/>
5. In the iOS Simulator, open mobile safari, go to your local server (localhost:8080), the element will show, however myFunc() will not be called, only the ripple effect is shown, because FastClick.js screws up with Polymer's or Angular2's click event, you can disable FastClick.js but then there's the tap delay.
