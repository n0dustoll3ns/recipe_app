'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "23bc63b54ff104a943ca79edc22e4c85",
"index.html": "13f4bdd1635d90eed7c834dc8a0eff17",
"/": "13f4bdd1635d90eed7c834dc8a0eff17",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"manifest.json": "7fb160bf6a9b68895345df7bb809fc01",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"assets/AssetManifest.json": "0608d9a574421a8e012fd03dfc86ba40",
"assets/shaders/ink_sparkle.frag": "237ceacd6c04871e538aaa934b1327a3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/images/user_photos/Isabella%2520Ethan.png": "49b37c4e4b80451d6796adef1f0d602b",
"assets/assets/images/user_photos/Lucas%2520Moura.png": "8d55b7d82523453681419846ee071a1c",
"assets/assets/images/user_photos/Miquel%2520Ferran.png": "6596c069775e12205c7c2bdd2c638f58",
"assets/assets/images/user_photos/James%2520Milner.png": "4259688dc9d57bc99875fd6e35f9435d",
"assets/assets/images/user_photos/Laura%2520wilson.png": "55ec504d65c6c713f86ebdbb4211beef",
"assets/assets/images/avatar.png": "8bf53b96d5210de830d63b749271d866",
"assets/assets/images/meals/5.png": "62e049c093874adbab83061d0df9e811",
"assets/assets/images/meals/4.png": "ebcca652e41b950a921d22aedee04629",
"assets/assets/images/meals/2.png": "b50258788a1e8510fde05621d3ac8f7c",
"assets/assets/images/meals/1.png": "a065c61fc609215822947aeef7693312",
"assets/assets/images/meals/3.png": "aa3554ffb947b2a4357c6af015c70b9f",
"assets/assets/images/ingridients/Spinach.png": "120fd2f172cc75b86fdb791c612c86e3",
"assets/assets/images/ingridients/Hot%2520Dog.png": "e6b9328aa1f1c64407db8c1ff96223d3",
"assets/assets/images/ingridients/Fries.png": "a7b35be67a48dcfd57a7667df83411cc",
"assets/assets/images/ingridients/Green%2520Onion.png": "e4eb12f517c0f2f403ee5ba6a455a47f",
"assets/assets/images/ingridients/Burger.png": "dac171f2ad1e368a874c0118192515be",
"assets/assets/images/ingridients/Tomatos.png": "62beb3f20589eb37d890cd6d070996d4",
"assets/assets/images/ingridients/Onion.png": "3f42b5eeb6273556bbdbe336fafd0015",
"assets/assets/images/ingridients/Red%2520&%2520Green%2520Chilli.png": "02ca80d3232a25b64d6f280090c8a256",
"assets/assets/images/ingridients/Chicken.png": "7ada13ffb8bfe19b8c305e1b1551ded0",
"assets/assets/images/ingridients/Omelette.png": "1b6063fdef7490a17175633e366339a9",
"assets/assets/images/ingridients/Lettuce.png": "fe2fd89efb929db359a1031156bc67e1",
"assets/assets/images/ingridients/Cabbage.png": "82f7443b0c67ebdb655de5c6814b38d9",
"assets/assets/images/ingridients/Slice%2520Bread.png": "1d7f1cf2693694d29545ed7e75f0627c",
"assets/assets/images/ingridients/Taco.png": "1e8fe7790313809ff4f110c281c9cc45",
"assets/assets/images/intro.png": "263960d91c2e6c33b198852302d785b9",
"assets/assets/images/saved_recipes/4.png": "0d75f1aceb3270029aafd32d39e2247d",
"assets/assets/images/saved_recipes/2.png": "a0f9ce6f69156a74d0c1c62c72931929",
"assets/assets/images/saved_recipes/1.png": "7c608dff32a9cb4ded2eeb749827111a",
"assets/assets/images/saved_recipes/3.png": "ab8818c97e260580db9ffc71ca389983",
"assets/assets/images/user_recipes/5.png": "61ecea19f3dcc4e905a41d795352f85b",
"assets/assets/images/user_recipes/4.png": "601f9dd26eb6a4901be90d3f75b331b3",
"assets/assets/images/user_recipes/2.png": "7f9b34eec5f45e760c640a6fc4be3904",
"assets/assets/images/user_recipes/1.png": "eadf86252fdcdbb458d5f26feee3c3fd",
"assets/assets/images/user_recipes/3.png": "e01cef57d524cd814adccddfc41f766e",
"assets/assets/images/search_result/4.png": "b1510bd0fd65caae0a86e6ac1502df57",
"assets/assets/images/search_result/2.png": "350bf3b168156bcf0aff90c7611d30fd",
"assets/assets/images/search_result/1.png": "c928ee067539cd1620e6a04361af42d4",
"assets/assets/images/search_result/3.png": "49e549c6351ca65a9d99c061732fe665",
"assets/assets/icons/notification_unread.svg": "b6e7fa57aa987e7b8e2526d96374c392",
"assets/assets/icons/notification_bing_selected.svg": "3654027ea6a77a753a6eec024484ac3b",
"assets/assets/icons/3dots.svg": "99f31f44ba14fe5f8434b74bc744e5c9",
"assets/assets/icons/favorite_selected.svg": "967414ad0dd409c455cd98a616fac38a",
"assets/assets/icons/timer.svg": "7a357623d20db3eb0b606521b51ab24b",
"assets/assets/icons/chefshat.png": "c1f171d35de39c4dca34d4dcf9b1c4e1",
"assets/assets/icons/profile_selected.svg": "71395a93b4fe8727e6f0b6b5165afd65",
"assets/assets/icons/union.svg": "ca816d5cbe0934b590f915ce4a72e6e5",
"assets/assets/icons/google_logo.svg": "4512fd16b4d82c36faf66bc7e752dfc7",
"assets/assets/icons/favorite.svg": "381af40c7209c75e7c766d6d530f1b5e",
"assets/assets/icons/notification_bing.svg": "289f81d89dafd0bff7d4fc616d21ff77",
"assets/assets/icons/home.svg": "52bc8f7056c479e8aad5adfab5f0a8cc",
"assets/assets/icons/profile.svg": "84a5e2dd98ee1713b2d248faa6c46ca6",
"assets/assets/icons/facebook_logo.svg": "c5432d44eb9a234d605cc7771db2aaec",
"assets/assets/icons/setting.svg": "9d249de1e07ab271bc4b78f7d3f9a6a9",
"assets/assets/icons/notification_read.svg": "a3aa4c33c25d8f8c29d889057e5f9a60",
"assets/assets/icons/arrow-right.svg": "efbac42494b9ff67fafd8fc99c0c4584",
"assets/assets/icons/home_selected.svg": "629364d2e39a43557e99d809f2674338",
"assets/assets/icons/search.svg": "cd8e73abc33131f7fcf9c507a218d06e",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "b9f2ce297d295ba469010fad41fcd8cc",
"version.json": "576b29847b370372d82ce919c7c15dce",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
