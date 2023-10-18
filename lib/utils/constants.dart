import 'package:portfolio/res/assets.dart';

class Constants {
  const Constants._();

  static final text = _Text();
  static final common = _Common();
  static final url = _Url();
}

class _Common {
  int get maxWidthMobile => 450;

  int get maxWidthTablet => 800;

  double get screenRatioFullHdPortrait => 1080 / 1920;

  double get screenRatio16_9 => 16 / 9;

  double get screenRatio9_16 => 9 / 16;

  double get screenRatio4_3 => 4 / 3;

  List<String> get imagesProjectHrs => [
        Assets.imgProjectHrs1,
        Assets.imgProjectHrs2,
        Assets.imgProjectHrs3,
        Assets.imgProjectHrs4,
      ];

  List<String> get imagesProjectMathema => [
        Assets.imgProjectMathema1,
        Assets.imgProjectMathema2,
        Assets.imgProjectMathema3,
        Assets.imgProjectMathema4,
      ];

  List<String> get imagesProjectTvCast => [
        Assets.imgProjectTvCast1,
        Assets.imgProjectTvCast2,
        Assets.imgProjectTvCast3,
        Assets.imgProjectTvCast4,
      ];

  List<String> get imagesTravelPlaces => [
        Assets.imgTravelDaNang,
        Assets.imgTravelHaLong,
        Assets.imgTravelHanoi,
        Assets.imgTravelHoChiMinh,
        Assets.imgTravelHoiAn,
        Assets.imgTravelHue,
        Assets.imgTravelMuiNe,
        Assets.imgTravelNhaTrang,
        Assets.imgTravelPhuQuoc,
        Assets.imgTravelQuangBinh,
        Assets.imgTravelQuyNhon,
        Assets.imgTravelSapa,
      ];

  List<String> get textsTravelPlaces => [
        'Da Nang',
        'Ha Long',
        'Hanoi',
        'Ho Chi Minh',
        'Hoi An',
        'Hue',
        'Mui Ne',
        'Nha Trang',
        'Phu Quoc',
        'Quang Binh',
        'Quy Nhon',
        'Sa Pa',
      ];
}

class _Url {
  String get linkedin => 'https://www.linkedin.com/in/tranhaison/';

  String get github => 'https://github.com/tran-haison';

  String get gmail => 'mailto:haison250199@gmail.com';

  String get facebook => 'https://www.facebook.com/tran.haison.2501/';

  String get instagram => 'https://www.instagram.com/tran_haison/';

  String get tdaCompany => 'https://tda.company/';

  String get longevityBiotechCompany => 'https://longevityintime.org/';

  String get bkitCompany => 'https://bkitsoftware.com/';

  String get viettelCompany => 'https://viettelmedia.vn/';

  String get hrsPlayStore =>
      'https://play.google.com/store/apps/details?id=jp.co.hr_s.hisol.worker';

  String get hrsAppStore =>
      'https://apps.apple.com/jp/app/%E3%83%8F%E3%82%A4%E3%82%BD%E3%83%AB%E3%82%B7%E3%83%95%E3%83%88-%E5%BE%93%E6%A5%AD%E5%93%A1%E5%90%91%E3%81%91%E3%82%B7%E3%83%95%E3%83%88%E6%94%AF%E6%8F%B4%E3%82%A2%E3%83%97%E3%83%AA/id1615145781';

  String get mathemaPlayStore =>
      'https://play.google.com/store/apps/details?id=com.mathema.bookreader';

  String get mathemaAppStore =>
      'https://apps.apple.com/jp/app/mathema-ebook-reader/id6463588021';

  String get tvCastPlayStore =>
      'https://play.google.com/store/apps/details?id=com.tvcastapp.screenmirroring';
}

class _Text {
  String get appTitle => 'Hai Son Tran ~ Portfolio';

  String get home => 'Home';

  String get about => 'About';

  String get experience => 'Experience';

  String get projects => 'Projects';

  String get contact => 'Contact';

  String get life => 'Life';

  String get hi => 'Hi!';

  String get haiSonTran1 => 'I\'m Hai Son Tran.';

  String get haiSonTran2 => 'Hai Son Tran';

  String get positionTitle => 'Mobile Engineer / Android / iOS / Flutter';

  String get getToKnowMe => 'Get to know me';

  String get howToReachMe => 'How to reach me';

  String get name => 'Name';

  String get email => 'Email';

  String get subject => 'Subject';

  String get message => 'Message';

  String get send => 'Send';

  String get aLittleBitAboutMe => 'A little bit about me';

  String get copyRight => 'Copyright © 2023 ~ Hai Son Tran';

  String get numberOfExperience => '3.5+';

  String get yearsOfExperience => 'Years of Experience';

  String get numberOfProjects => '10+';

  String get projectsDone => 'Projects Done';

  String get numberOfPlatforms => '2';

  String get platformsUsed => 'Platforms Used';

  String get whatIDo => 'I build mobile applications for Android and iOS.';

  String get whatIUse => 'What I use.';

  String get number01 => '01.';

  String get number02 => '02.';

  String get number03 => '03.';

  String get number04 => '04.';

  String get operatingSystems => 'Operating Systems';

  String get operatingSystemsDescription =>
      'Proficient in multiple OS enabling me to work seamlessly across multiple platforms';

  String get programmingLanguages => 'Programming Languages';

  String get programmingLanguagesDescription =>
      'My proficiency spans multiple programming languages, enhancing my versatility in mobile development';

  String get frameworks => 'Frameworks';

  String get frameworksDescription =>
      'I excel in leveraging various frameworks to streamline and expedite the mobile development process';

  String get tools => 'Tools';

  String get toolsDescription =>
      'I have a strong command of essential mobile development tools, empowering me to create robust and innovative applications';

  String get myInterests => 'My interests.';

  String get badminton => 'Badminton';

  String get soccer => 'Soccer';

  String get gym => 'Gym';

  String get games => 'Games';

  String get running => 'Running';

  String get menFashion => 'Men fashion';

  String get sneakers => 'Sneakers';

  String get deskSetup => 'Desk setup';

  String get music => 'Music';

  String get traveling => 'Traveling';

  String get letConnect => 'Let\'s connect.';

  String get pageDoesNotExist => 'Sorry! The page you accessed does not exist';

  String get pageNotFound => '404 ~ Page not found';

  String get returnHome => 'Return home';

  String get longDescription =>
      '• I\'m a Mobile Engineer with years of hands-on experience in designing, developing, and optimizing mobile applications.\n'
      '• Over the years, I\'ve honed my skills in both iOS and Android app development, leveraging languages such as Java, Kotlin, and Dart. I have a proven track record of collaborating with cross-functional teams to deliver innovative and robust mobile experiences that meet user needs and business objectives.\n'
      '• Let\'s connect and explore how I can contribute to your mobile development endeavors.';

  String get tdaDuration => '03/2022 - Present';

  String get tdaJobTitle => 'Mobile Engineer';

  String get tdaCompany => 'TDA Vietnam';

  String get tdaWorks =>
      '• Constructed multi-flavor codebase using MVVM & Clean Architecture.\n'
      '• Integrated CI/CD flow for pull-request build check and automated app upload on Firebase, TestFlight, Appstore and Play Store using Github Action and Fastlane.\n'
      '• Proposed analysis workflow using AWS services including Amplify, Pinpoint, Kinesis, S3, and Athena.\n'
      '• Monitored app status, performance, stats, analytics, and crashlytics on Firebase.\n'
      '• Utilized Auth0 as an authorization and authentication service to authenticate users.\n'
      '• Led a small mobile team in small projects, directed and suggested technical solutions, assisted team members and reviewed code.';

  String get longevityBiotechDuration => '09/2021 - 12/2021';

  String get longevityBiotechJobTitle => 'Android Engineer';

  String get longevityBiotechCompany => 'Longevity Intime Biotech';

  String get longevityBiotechWorks =>
      '• Followed Agile/Scrum in project management and development.\n'
      '• Implemented custom UIs and animations based on design.\n'
      '• Researched and integrated ML REST APIs for health analysis and disease prediction such as stroke, diabetes, CVD, etc.\n'
      '• Prepared and supported release phase of the main product - BMI Disease Tracker - which had over 5,000+ installs on Google Play Store in 2 months with a total average of 4.7 stars rating.';

  String get bkitDuration => '08/2020 - 09/2021';

  String get bkitJobTitle => 'Android Engineer';

  String get bkitCompany => 'BKIT Software';

  String get bkitWorks =>
      '• Designed app flows, screens and UI components on Figma.\n'
      '• Self-planned and developed core features and functionalities.\n'
      '• Encrypted table records and handled app performance to read/write data from/to excessive databases (SQLite).\n'
      '• Delivered apps to Play Store, with one having more than 1M+ installs.';

  String get viettelDuration => '02/2020 - 07/2020';

  String get viettelJobTitle => 'Android Intern';

  String get viettelCompany => 'Viettel Media';

  String get viettelWorks =>
      '• Studied basic concepts and fundamentals in Android development: Activity, Fragment, Service, Broadcast Receiver, Navigation, API handling, Local Storage, etc.\n'
      '• Cloned a to-do app and developed additional features such as bookmarking items, cloud data syncing and user authentication (Firebase).';

  String get projectSelfDescription =>
      'With a wealth of experience across numerous projects, I bring a proven track record of delivering successful and diverse applications.';

  String get features => 'Features';

  String get getItOn => 'GET IT ON';

  String get googlePlay => 'Google Play';

  String get availableOnThe => 'AVAILABLE ON THE';

  String get appStore => 'App Store';

  String get hrsName => 'HRS Hisol Worker';

  String get hrsCategory => 'HR Management';

  String get hrsDescription =>
      '• Manage and organize desired shifts, shift list and calendar of employees and staffs in companies and stores.';

  String get hrsFeatures => '• Register/login with SNS and email.\n'
      '• Check and submit shifts.\n'
      '• Display shift list and shift calendar.\n'
      '• Chat with admin and other staffs.\n'
      '• Receive notification for shift request submissions and messages from stores, etc.';

  String get mathemaName => 'Mathema Ebook Reader';

  String get mathemaCategory => 'Book/Education';

  String get mathemaDescription =>
      '• Mathematics and Physics books for high school and college students.';

  String get mathemaFeatures => '• Register/login with email.\n'
      '• Online/offline learning with different book types: E-Book, P-Book and L-Book.\n'
      '• Download and learn from E-Book with handy features.\n'
      '• Learn from L-Book with videos and detailed explanations.';

  String get tvCastName => 'Screen Mirroring ~ Cast to TV';

  String get tvCastCategory => 'Tools/Utilities';

  String get tvCastDescription =>
      '• Cast for Chromecast & TV Cast helps you connect your phone to TV fastly and simply. One tap to cast everything to your TV.';

  String get tvCastFeatures =>
      '• Support multiple devices: phones, tablets and TVs.\n'
      '• Support all casting technology: Screen Mirroring, Miracast, Chromecast, DLNA, etc.\n'
      '• Mirror screen with high quality. Allow play video, music, photo, game, online learning, etc.';

  String get lifeDescription =>
      'Beyond coding, I have a diverse range of hobbies and interests that fuel my creativity and keep me well-rounded.';

  String get techStuffs => 'Tech stuffs';

  String get techStuffsDescription =>
      '• I built my own desk setup in my little corner.\n'
      '• I used to play PC games a lot but now switch to console games.\n'
      '• I love collecting headphones, speakers, and sound related items.\n'
      '• I usually buy nonsense things and take pictures of them.';

  String get sportTitle => 'I am a big fan of sports';

  String get sportDescription =>
      '• I can play multiple sports and it is not so bad.\n'
      '• I play soccer twice a week, and watch Premier League every weekends.\n'
      '• I go to the gym 3-4 times per week.\n'
      '• Sometimes I run, and long time no play badminton.';

  String get travel => 'Travel';

  String get travelDescription =>
      '• Traveling is one of my greatest passions, allowing me to explore new cultures, gain fresh perspectives, and create unforgettable memories.\n'
      '• Exploring different parts of the world not only broadens my horizons but also inspires me with a sense of adventure and wonder.';

  String get menFashionDescription =>
      '• I have a genuine passion for men\'s fashion. I take great pleasure in staying updated with the latest trends and styles.\n'
      '• I watch Youtube and social medias to follow and copy-paste others style.';

  String get education => 'Education';

  String get hust => '• Hanoi University of Science and Technology (HUST)\n'
      '\t\t~ Bachelor of Engineering in Information Technology';

  String get certificates => 'Certificates';

  String get certificateAgileExplorer => '• Agile Explorer by IBM';

  String get certificateIelts => '• IELTS 7.0';
}
