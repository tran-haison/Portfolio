'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "173b0fa875f374c24fb186d95c470177",
"/": "173b0fa875f374c24fb186d95c470177",
"main.dart.js": "d22f19927781a5e09f0c3bbcc2ba0ab7",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "8fa28ef696fe73948f17360075690b3d",
"assets/AssetManifest.json": "2fe0f27aee13bd0301f0e02436a3a6a6",
"assets/NOTICES": "a0dc66ffb2cf6c1f245b2a0358e6f789",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "0a98a9be56db61b9caddd62c30a2d7e0",
"assets/fonts/MaterialIcons-Regular.otf": "be3334c2bf8cb068bacd1d02641642a4",
"assets/assets/images/img_aws.png": "3ce2003081266ad3b8ba35de505b7bd1",
"assets/assets/images/img_postgresql.png": "d36ac0964ae20c199b9a4df9b999577d",
"assets/assets/images/img_django.png": "927898329bf4f765710ce3bee67b9d87",
"assets/assets/images/img_java.png": "de6b97f9cdec6635264cc67bcee4a8f9",
"assets/assets/images/img_android.png": "549d0830da4a9dc0e04608256eedb6f9",
"assets/assets/images/img_ubuntu.png": "87b600dbdf9eef8cb8d649cb9f37c79f",
"assets/assets/images/img_kotlin.png": "0be305228407e6c7986147838acb4f8b",
"assets/assets/images/img_flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/images/img_git.png": "f150476b880137dc9105a0a3738473c5",
"assets/assets/images/img_firebase.png": "6dd1317e00d3a9e4268daafdd5e905f9",
"assets/assets/images/img_mysql.png": "391e2955c59212561d4cd485a4536106",
"assets/assets/images/img_dart.png": "6dfecd3d853795cde41dfd8990a22983",
"assets/assets/images/img_python.png": "b20363590fb2d676d09aee02ec348eb6",
"assets/assets/images/img_windows.png": "a4810e069f641a86a370f19e3fa27e83",
"assets/assets/images/img_avatar.jpeg": "a6d77df1de3cfc5c92e0e99764def1c8",
"assets/assets/images/img_swift.png": "33cfc76cdba9f32960b9b72a7e407458",
"assets/assets/images/img_macos.png": "bb9227b88b3c281aedd5da8ef1a39ddf",
"assets/assets/images/img_auth0.png": "9dfe7ed24ff74a8916df9c4614a9d824",
"assets/assets/images/img_ios.png": "052a41ddb71c2703e033e4830d8fdaa5",
"assets/assets/images/img_smile.png": "2e9b990f099e1c0dd27612bd4fe7a42c",
"assets/assets/images/img_fastlane.png": "3dc8802d27d5bfc0fe083c310cc2d5d8",
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
"assets/assets/icons/ic_soccer.png": "e8f40c789a8b65e03928917cc49d11b2",
"assets/assets/icons/ic_gmail.png": "9ff1d8cb6c99e94bdb9dad2df4975f13",
"assets/assets/icons/ic_sneakers.png": "9b02bb484abfc76fffaee424763374bf",
"assets/assets/icons/ic_desk_setup.png": "1952c128da7ac413030b0536aac918a6",
"assets/assets/icons/ic_fashion.png": "d3782bb40332adf4eeafb10c07779510",
"assets/assets/icons/ic_badminton.png": "79405fb93469ac4e5a7568eb9b40b496",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
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
