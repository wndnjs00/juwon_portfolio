'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "888483df48293866f9f41d3d9274a779",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "271ff256fa46ef6e8cffeb8206cc76f8",
"index.html": "13cf992f761b8dd1981ad8382ae5df4b",
"/": "13cf992f761b8dd1981ad8382ae5df4b",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "c493e801129fff9b8be0e316ffefe515",
"assets/assets/detail_project2.png": "6055af22f94926d01fe35fe5499b292e",
"assets/assets/playstore.png": "5324e554cdd4cb9c4c2dda4109efa806",
"assets/assets/detail_project4.png": "cc9b218c98689901ccd94a5814adcc80",
"assets/assets/kotlin.png": "abd5f9923011c796d87d1c973c734e9f",
"assets/assets/portfolio.pdf": "ad54626bc63b4a709aa98f467468b2ca",
"assets/assets/mysql.png": "420f714addc9ad66baf6957e86f86176",
"assets/assets/project2.png": "be26bdba646a10b4d9053e3edb1be50c",
"assets/assets/springboot.png": "269d5520ba91568a702825faf769b6d9",
"assets/assets/sample_image.png": "3e48cf933b58e5ed9fb1e07c07adc2f9",
"assets/assets/dart.png": "ff4dc171084398cdee6822aab4059327",
"assets/assets/java.png": "3ec98cdd81e3a4e0ae87de28190bebaa",
"assets/assets/detail_project7.png": "019c76b2e61059f31e4d9a79b53975b2",
"assets/assets/github2.png": "e94a005b15b2ce077bad43fbca576488",
"assets/assets/detail_project3.png": "2b33ecd4b12a7965005a1b42c626b240",
"assets/assets/detail_project6.png": "757035bdf562f9d0ed0170d470630715",
"assets/assets/blog.png": "0aeb6af57e20230a6b0aa0ba4a79f083",
"assets/assets/office_2.jpg": "fc583d29b4b1c72704057b442447f27d",
"assets/assets/email.png": "b9d2b33329cfb462278446dd531ae515",
"assets/assets/firebase.png": "92be5a3b5ffdf84aaa84817efd3e5a18",
"assets/assets/project3.png": "cb5c9497fedb613191e58c0c82dae316",
"assets/assets/detail_project5.png": "25af63319226018bfa65e1c0861e4264",
"assets/assets/project4.png": "a7c3f4dca9105827299a054cf8e9c0f9",
"assets/assets/detail_project8.png": "13cea8fea4ecec413b08e78a8a9c36ae",
"assets/assets/project5.png": "f953ec4f1ad5c9004ba4ce177d1ac4f9",
"assets/assets/detail_project9.png": "29d51ad18b6f816700897555012c6072",
"assets/assets/project1.png": "9ea4ad5b4bc741cbf6439f99a27e44dc",
"assets/assets/flutter.png": "0f42d342126f124fed80b0b2a99a360e",
"assets/assets/profile.png": "b67f68ec9bcdeb7ed97df09d54bf1bb9",
"assets/assets/hamburger.png": "82aecb93b4c430fe3da170a3d54809dd",
"assets/assets/android2.png": "2dbaec18deb2ed28b118ee8e3ba0b997",
"assets/assets/detail_project10.png": "cd1d7133c5d95fc786dddb85b131eabd",
"assets/assets/detail_project1.png": "1ddb1d7241cd67fb3040addd69e4b72f",
"assets/assets/github.png": "66399c86bba461784a8fc49e4be05f0a",
"assets/assets/android.png": "aa14f33bb1695b8a1a97ab10005d303e",
"assets/fonts/medium.otf": "13a352bd44156de92cce335ce93cd02d",
"assets/fonts/MaterialIcons-Regular.otf": "7e623e559c7efe49824ca8f9214a0d66",
"assets/fonts/semibold.otf": "6fe301765c4f438e2034a0a47b609c61",
"assets/fonts/bold.otf": "f8a9b84216af5155ffe0e8661203f36f",
"assets/fonts/regular.otf": "84c0ea9d65324c758c8bd9686207afea",
"assets/NOTICES": "56191d880a0ba1bfe0427dc5266d2c78",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/FontManifest.json": "e3a0a250a666ef49c54e320afea415e3",
"assets/AssetManifest.bin": "106284ea752bac3d8e023ab8d7862013",
"assets/AssetManifest.json": "1fb9810b4a3c54edec572018d26205d4",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"profile.png": "b67f68ec9bcdeb7ed97df09d54bf1bb9",
"flutter_bootstrap.js": "f44c9c823ac166d12f0c310649eade49",
"version.json": "f454fc70be2e3885933cdca73e44c59a",
"main.dart.js": "5cce0105dacb5dbc5d65fd5014b90bb9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
