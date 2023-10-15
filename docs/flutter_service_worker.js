'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "a6efb20fc6d525fcda911a7b065e1cf2",
"/": "a6efb20fc6d525fcda911a7b065e1cf2",
"main.dart.js": "3a5224424ea3c38e93d2d332846b90d3",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "a70766b8637f825a0ed80146ecedf245",
"icons/Icon-192.png": "3676e0d7d87630c3bcc1bc8277c7c13a",
"icons/Icon-maskable-192.png": "3676e0d7d87630c3bcc1bc8277c7c13a",
"icons/Icon-maskable-512.png": "f5d21082446f0c8e4acdff611599b29b",
"icons/Icon-512.png": "f5d21082446f0c8e4acdff611599b29b",
"manifest.json": "8fa28ef696fe73948f17360075690b3d",
"assets/AssetManifest.json": "6e2b5733bfc049aca6a5c69938078afe",
"assets/NOTICES": "854715610581064ad3b10d1d26fd7485",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "6d4c900f1d41003cff04d854234c48e2",
"assets/fonts/MaterialIcons-Regular.otf": "33694100c7055dcf351c288fa705d584",
"assets/assets/images/img_aws.png": "3ce2003081266ad3b8ba35de505b7bd1",
"assets/assets/images/img_postgresql.png": "d36ac0964ae20c199b9a4df9b999577d",
"assets/assets/images/img_sport_gym.jpeg": "e9a9011c98048587a315d925d9ce055c",
"assets/assets/images/img_travel_quangbinh.jpeg": "75e60cf26c74affcaa0c280d2609b0b9",
"assets/assets/images/img_playstore.png": "b7248dab19275108c7bf0dfeea0b92cc",
"assets/assets/images/img_travel_hochiminh.jpeg": "1c99e4957915605e4672a99baac4113a",
"assets/assets/images/img_desk_setup_2.jpeg": "365fc3fb427aa68d8dba681fa31edc30",
"assets/assets/images/img_desk_setup_3.jpeg": "06eb75400a1720029fb34093775d9a3b",
"assets/assets/images/img_travel_phuquoc.jpeg": "c34988ceb49e70495dae5a7f64979a42",
"assets/assets/images/img_django.png": "927898329bf4f765710ce3bee67b9d87",
"assets/assets/images/img_java.png": "de6b97f9cdec6635264cc67bcee4a8f9",
"assets/assets/images/img_android.png": "549d0830da4a9dc0e04608256eedb6f9",
"assets/assets/images/img_ubuntu.png": "87b600dbdf9eef8cb8d649cb9f37c79f",
"assets/assets/images/img_desk_setup_4.jpeg": "5d8866b839ceba97040444b608f14246",
"assets/assets/images/img_travel_hoian.jpeg": "54c5198ffb395d08cfd410bdecc3be25",
"assets/assets/images/img_kotlin.png": "0be305228407e6c7986147838acb4f8b",
"assets/assets/images/img_flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/images/img_travel_nhatrang.jpeg": "72f247c105dff88dd750ccff218d5ac8",
"assets/assets/images/img_git.png": "f150476b880137dc9105a0a3738473c5",
"assets/assets/images/img_firebase.png": "6dd1317e00d3a9e4268daafdd5e905f9",
"assets/assets/images/img_travel_sapa.jpeg": "c6c642ca0e671408dae5991011a8bc7d",
"assets/assets/images/img_mysql.png": "391e2955c59212561d4cd485a4536106",
"assets/assets/images/img_project_hrs_1.png": "96ac2ead5c602265bdfe7b191969b1c2",
"assets/assets/images/img_travel_hanoi.jpeg": "84e7eafcd0c2b1b33816c2a886cb9bbe",
"assets/assets/images/img_dart.png": "6dfecd3d853795cde41dfd8990a22983",
"assets/assets/images/img_python.png": "b20363590fb2d676d09aee02ec348eb6",
"assets/assets/images/img_project_mathema_4.png": "98b1f1f48701ede3d22856d841817c91",
"assets/assets/images/img_windows.png": "a4810e069f641a86a370f19e3fa27e83",
"assets/assets/images/img_project_hrs_3.png": "35d3aba394dd576e37fa583c2f766a5b",
"assets/assets/images/img_project_hrs_2.png": "a7755e622a497d006a38a2264eaf6659",
"assets/assets/images/img_travel_quynhon.jpeg": "ca2eeb61521d46da591f1e9b29f5b5ad",
"assets/assets/images/img_avatar.jpeg": "a6d77df1de3cfc5c92e0e99764def1c8",
"assets/assets/images/img_project_mathema_1.png": "d95a31581b1a22ac65bc38de93bd2a7a",
"assets/assets/images/img_travel_danang.jpeg": "a1e6e24ed49402cbb85b94079830bced",
"assets/assets/images/img_travel_halong.jpeg": "39838e3fc3e31f22fbb400a54e843357",
"assets/assets/images/img_project_mathema_2.png": "421ca0cae8b57e43f50bb41e35879405",
"assets/assets/images/img_swift.png": "33cfc76cdba9f32960b9b72a7e407458",
"assets/assets/images/img_project_hrs_4.png": "abeb9ce7724fb3a0ceea200b13aced96",
"assets/assets/images/img_macos.png": "bb9227b88b3c281aedd5da8ef1a39ddf",
"assets/assets/images/img_project_mathema_3.png": "1d7d33ee0ebd970d2cddab61e365b624",
"assets/assets/images/img_travel_hue.jpeg": "de7d7af50c80c80ad50d55ee9abfa7e8",
"assets/assets/images/img_sport_running.jpeg": "b4e1eeacde24f56a8c1f396281b58a34",
"assets/assets/images/img_sport_soccer.jpeg": "36cba178dd9a753d18681f1eeef04f08",
"assets/assets/images/img_auth0.png": "9dfe7ed24ff74a8916df9c4614a9d824",
"assets/assets/images/img_ios.png": "052a41ddb71c2703e033e4830d8fdaa5",
"assets/assets/images/img_travel_muine.jpeg": "587f533488b756b3ca88bcb5a91ed602",
"assets/assets/images/img_desk_setup_1.jpeg": "d46ef321fe7d62e130036f36ba456bf3",
"assets/assets/images/img_smile.png": "2e9b990f099e1c0dd27612bd4fe7a42c",
"assets/assets/images/img_fastlane.png": "3dc8802d27d5bfc0fe083c310cc2d5d8",
"assets/assets/images/img_sport_badminton.jpeg": "e7716613ca5dc6b3081388e0ea81964f",
"assets/assets/images/img_c_plus.png": "434c96bc1d0a4442a3c2d1093ea42a99",
"assets/assets/images/img_logo.png": "68a2b52852aa6eba66af19046b427570",
"assets/assets/icons/ic_running.png": "ecec06ae040a827a691dc95e58365ce9",
"assets/assets/icons/ic_linkedin.png": "29ef3c36c3eb3dd368598921388ebbe1",
"assets/assets/icons/ic_gym.png": "954245e706f596ddd60f9a4abf91df3e",
"assets/assets/icons/ic_home.png": "c340d230f3775b0046d12780c374820a",
"assets/assets/icons/ic_facebook.png": "44df93f8ed87433ffd0e769cd9e245ce",
"assets/assets/icons/ic_travelling.png": "1df3fd2e5d4f5187ba7019a0d3bb5503",
"assets/assets/icons/ic_games.png": "642dd6cf921f1ee7ece8d44c140ddff0",
"assets/assets/icons/ic_instagram.png": "37cc911321edc9d96570d8a913b4bcae",
"assets/assets/icons/ic_github.png": "69b7e397e348747e802b90e5eb0bfbd4",
"assets/assets/icons/ic_music.png": "95644b4a0c00745a47902bf5de1a06a1",
"assets/assets/icons/ic_external_link.png": "a185ba5553045f79303fcc945b52faec",
"assets/assets/icons/ic_soccer.png": "e8f40c789a8b65e03928917cc49d11b2",
"assets/assets/icons/ic_gmail.png": "9ff1d8cb6c99e94bdb9dad2df4975f13",
"assets/assets/icons/ic_sneakers.png": "9b02bb484abfc76fffaee424763374bf",
"assets/assets/icons/ic_desk_setup.png": "1952c128da7ac413030b0536aac918a6",
"assets/assets/icons/ic_fashion.png": "d3782bb40332adf4eeafb10c07779510",
"assets/assets/icons/ic_badminton.png": "79405fb93469ac4e5a7568eb9b40b496",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
