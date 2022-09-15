<h1> Chargebee </h1>

  <strong>
    Generated with ❤️ from Dhiwise
  </strong><br>
  <strong>
  Chargebee application which is built with Flutter.
It uses <a href=="https://www.chargebee.com/"/>Chargebee</a>'s API</strong>




### Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Setup](#setup)
- [Version of Technologies](#version-of-technologies)
- [Folder Structure](#folder-structure)
- [MIT License](#mit-license)
- [Community](#Community)


## Features
<ul>
<li>Subscription List</li>
<li>Create New Subscription List</li>
<li>Delete Subscription List</li>
</ul>

## Screenshots  


![image](https://user-images.githubusercontent.com/112176734/190069220-4d4b24d2-d743-4b88-b640-a595ebedbf24.png)

## Setup

#### 1. [Chargebee's API](https://apidocs.chargebee.com/docs/api?prod_cat_ver=2)
#### 2. [Setup Flutter](https://flutter.io/setup/)
#### 3. [Setup FlutterFire](https://firebase.flutter.dev/docs/cli/)
#### 4. Clone the repo
```sh
$ git clone https://github.com/DhiWise/chargebee
$ cd chargebee/
```
#### 5. Setup in code
   1. In api_client.dart add your base URL , customer_id & authorization token
   2. Change customer_id 

#### 6. ```flutter pub get ```

#### 7. ``` flutter run ```


## Version of Technologies
Dart SDK Version 2.17.0 or greater. 
Flutter SDK Version 3.0.0 or greater.




## Folder Structure

```
├── android - contains files and folders required for running the application on an Android operating system.
├── assets - contains all images and fonts of your application.
├── ios - contains files required by the application to run the dart code on iOS platforms.
├── lib - Most important folder in the project, used to write most of the dart code.
├── main.dart - starting point of the application
├── core
│ ├── app_export.dart - contains commonly used file imports
│ ├── constants - contains all constants classes
│ ├── errors - contains error handling classes
│ ├── network - contains network related classes
│ └── utils - contains common files and utilities of project
├── data
│ ├── apiClient - contains api calling methods
│ ├── models - contains request/response models
│ └── repository - network repository
├── localization - contains localization classes
├── presentation - contains all screens and screen controllers
│ └── screens - contains all screens
├── routes - contains all the routes of application
└── theme - contains app theme and decoration classes

```

## MIT License

Copyright (c) 2022 DhiWise

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

 ## Community
 
 <a href="https://twitter.com/dhiwise"><img src="https://user-images.githubusercontent.com/35039342/55471524-8e24cb00-5627-11e9-9389-58f3d4419153.png" width="60" alt="DhiWise Twitter"></a>
<a href="https://www.youtube.com/c/DhiWise"><img src="https://cdn.vox-cdn.com/thumbor/0kpe316UpZWk53iw3bOLoJfF6hI=/0x0:1680x1050/1400x1400/filters:focal(706x391:974x659):format(gif)/cdn.vox-cdn.com/uploads/chorus_image/image/56414325/YTLogo_old_new_animation.0.gif" width="60" alt="DhiWise YouTube"></a>
<a href="https://discord.com/invite/rFMnCG5MZ7"><img src="https://user-images.githubusercontent.com/47489894/183043664-b01aac56-0372-458a-bde9-3f2a6bded21b.png" width="60" alt="DhiWise Discord"></a>
<a href="https://docs.dhiwise.com/"><img src="https://global-uploads.webflow.com/618e36726d3c0f19c9284e56/62383865d5477f2e4f6b6e2e_main-monogram-p-500.png" width="60" alt="DhiWise Documentation"></a>
