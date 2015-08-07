import 'package:angular2/bootstrap.dart';
import 'package:polymer/polymer.dart';
import 'dart:html';

void main() {
  bootstrap(AppComponent);

  document.body.append(document.createElement('my-app'));
}


@Component(
    selector: 'my-app'
)
@View(
    template: '''
      <paper-button (click)="myFunc()">Test</paper-button>
    '''
)
class AppComponent {
  String name = 'Alice';

  myFunc() {
    window.alert('test');
  }
}
