# dart_issue_polymer_angular2_cordova

An issue when using Dart with Polymer & Angular2 at the same time under a UIWebView (Cordova), you get a white blank webview, however it works in mobile safari.

And in mobile safari you have the infamous ~300ms tap delay issue, So I've tried to add FastClick.js but it just disables the clicks (myFunc not called in mobile safari).
