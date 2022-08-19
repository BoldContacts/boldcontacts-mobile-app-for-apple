#  BoldContacts

BoldContacts is an app is a greatly-simpler way to browse contacts and connect to them.

BoldContacts is especially good for people who may be experiencing vision disabiltiies, cognitive disabiltiies, or motor disabiltiies. The app displays each contact by using bold text, a large photo, large buttons, and one way to connect.
 
BoldContacts started as a project to help my family's parents, who are experiencing Alzheimer's disease and Parkison's disease, and who were losing the ability to work with the typical contacts app. We created the app to be much simpler, and to be open source so other developers can work with the code to help people.

* [Scope](doc/scope.md)

* [Human interface guidelines](doc/human-interface-guideliines.md) documentation

* [Xcode project overview](doc/xcode-project-overview.md)

## Screenshot

<img src="screenshot.png">

The app shows each contact as a card with:

* The contact's photo.

* The contact's full name.

* Buttons to connect via video and voice.

* Buttons to navigate backward and foward among contacts.


    
## Help Wanted

If you have Parkinson's disease, or are caring for a person who has Parkinson's disease, and you are open to talking, then we would greatly appreaciate talking with you.

If you are an Apple iOS Swift developer, we are seeking volunteer developer help.
  

## Goals

Good usability for people who experience motor difficulties.

  * Such as arthritis, or nerve damage, or reflex tremor, etc. 

Good usability for people who experience vision difficulties.

  * Such as partially sighted vision, or double vision, or blurred vision, or hazy vision, etc. 

Good usability for people who experience cognitive difficulties.

  * Such as technical inexperience, or memory loss, or confusion.


## Technical questions

We have technical questions and welcome advice from experienced developers: 

  * How can iOS Swift detect if a CNContact has FaceTime capabilties? 

  * How can the app ensure that open("facetime://…") succeeds, then after the call the person is returned to the app?
  
