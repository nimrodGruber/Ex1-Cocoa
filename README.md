# ReactiveCocoa Course - Exercise 1
## Overview

In this exercise you will start working with signals for the first time. Being the first exercise and for many of you the first time interacting with the framework it will be rather simple.
Additionally, there are quite a few ways to solve this task. We will present a solution after the deadline for your reference.

Your goal is to build a reactive registration page, that reacts to changes in its fields via signals.

### Getting started

* Clone this repository.
* Open the exercise project located in /Exercises/Ex1.

---

## Part one - Hello, World!

Open the `LRCRootViewController.m` file, you will see that all the imports required in this exercise are already there, including the ReactiveCocoa framework.

Run the project and understand the way the main view controller looks.

### Get a signal

We'll now start writing code. In this exercise all of the code will be in the `LRCRootViewController` under the `viewDidLoad` method.

Get a signal by using the `rac_textSignal` method on the `usernameField` `UITextField` object of the supplied `LRCRegistrationView`.
We will learn about methods like these in the future, for now know that it sends the current string typed into the field every time the user types in it.

It should look something like this:

```objc
RACSignal *mySignal = self.registrationView.usernameField.rac_textSignal;
```

### Log result

Subscribe to the signal using `subscribeNext:` and print the value sent. Run the project and observe the output.

---

## Part two - Get Reactive

You can now begin the main part of the exercise.

### Password

Produce a signal from the password field signal mapped to `NSString` in the following manner:
* If the length of the string is 0 - return `@""`.
* If the length of the string is less than 3 - return `@"Weak"`.
* If the length of the string is less than 6 - return `@"Fair"`.
* If the length of the string is equal to or longer than 6 - return `@"Strong"`.

Produce a signal from the password field signal mapped to `UIColor` in the following manner:
* If the length of the string is less than 3 - return `[UIColor lrc_weakPasswordRed]`.
* If the length of the string is less than 6 - return `[UIColor lrc_fairPasswordOrange]`.
* If the length of the string is equal to or longer than 6 - return `[UIColor lrc_strongPasswordGreen]`.

_You will find the `UIColor+LRC` category already imported by the `LRCRootViewController`._

Use these signals to set to `textColor` and `text` properties of the supplied `LRCRegistrationView`'s `passwordMessage` `UILabel`.

Run the project and observe the `passwordMessage` change as the password is being typed.

##### Tip:

Instead of subscribing to the signals, you can use the `RAC` macro. We will learn about this macro in the future, but in general it allows you to bind a property to a signal that sends values of the same type:

```objc
// Set self.foo.bar.baz to the latest value sent by mySignal.
RAC(self.foo.bar, baz) = mySignal;
```

---

## Part Three - Wrapping up
### Username

Produce a signal returning `BOOL` values (wrapped in `NSNumber`) indicating the validity of the `usernameField` field.
**The validity of this field is defined by being at least 6 characters long.**

### Password

Produce a signal returning `BOOL` values (wrapped in `NSNumber`) indicating the validity of the `passwordField` field.
**The validity of this field is defined by being at least 1 characters long (At least a weak password).**

### Password Validation

Produce a signal returning `BOOL` values (wrapped in `NSNumber`) indicating the validity of the `passwordConfirmationField` field.
**The validity of this field is defined by being equal to the password field.**

_Note that you will need more than mapping here, go over the slides if you need to remember what operators might be helpful here._

### Using the signals

Use the password validation signal to set the `text` of the supplied `LRCRegistrationView`'s `passwordConfirmationMessage` `UILabel` by mapping it to an `NSString` in the following manner:
* If the passwords match - return `@""`.
* If the password do not match - return `@"Password Mismatch"`.

Use the username, password and password confirmation validation signals to set the `enabled` property of the `registerButton` `UIButton` of the supplied `LRCRegistrationView` by enabling the button if all three are `@YES`.

Produce a signal that logs the message `@"Registering!"` whenever the enabled button is pressed. For this you can use the `-[UIControl rac_signalForControlEvents:]` ReactiveCocoa extension.

Run the project and observe the button's state changing, verify that pressing on the enabled button logs correctly.

##### Tip:

Signals of boolean values have quite a few unique operators, such as `and`. The `and` operator that expects a `RACTuple` of `NSNumber` objects representing boolean values and returns the result of applying the logic `and` operator on them.

_There are also `or` and `not`, you can check them all out at `RACSignal+Operations`_.

---

## Part Four - Almost there

You may have noticed that the button does a _beautiful_ hand tailored animation whenever it's enabled state changes.

Fix this by making sure it only displays the animation when it's enabled state has indeed altered.

---

## Hints

* Note that signals send `id` objects, thus boolean values are wrapped by `NSNumber`. It is very common to forget that.
* Remember that without a subscriber (either by `subscribeNext:` or the `RAC` macro) no values will be sent over the signal and the operators will not execute.
* Debugging RactiveCocoa code can be difficult, make sure that if you're using the `RAC` macro, the signals you're using are sending the correct types.
