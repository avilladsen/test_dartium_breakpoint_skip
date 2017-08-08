# Dartium Breakpoint Skipping in Tests

Demonstration of Dartium skipping tests after hitting a breakpoint.

See https://github.com/dart-lang/sdk/issues/30136

## Demo

Tested on Mac OS 10.12.5 with Dart 1.24.2 and Dartium 50.
Chrome 61 beta does not have this issue.

With `pub serve test` running and no breakpoints:

```
comp:test_dartium_breakpoint_skip avilladsen$ pub run test --pause-after-load 

Observatory URL: http://127.0.0.1:52818/
The test runner is paused. Open the dev console in Dartium or the Observatory and set breakpoints.
Once you're finished, return to this terminal and press Enter.
00:00 +0: test/my_math_test.dart: add
00:00 +1: test/my_math_test.dart: multiply
00:00 +2: test/my_math_test.dart: subtract
00:00 +3: All tests passed!
```

Setting a breakpoint in either the multiply test or the multiply function:

```
comp:test_dartium_breakpoint_skip avilladsen$ pub run test --pause-after-load

Observatory URL: http://127.0.0.1:52198/
The test runner is paused. Open the dev console in Dartium or the Observatory and set breakpoints.
Once you're finished, return to this terminal and press Enter.
00:00 +0: test/my_math_test.dart: add
00:00 +1: test/my_math_test.dart: multiply
00:00 +1: All tests passed!
```

The test containing the breakpoint never completes, and the following test is skipped entirely.