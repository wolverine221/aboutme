'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "ad14375df0b736c3a2635d23dc5cb137",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "f03373fbadca8668d0eda2ea1f541767",
"/": "f03373fbadca8668d0eda2ea1f541767",
"main.dart.js": "05956fd91b0e62e758c93df5f9fefc79",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"README.md": "2a42f417c086cc3b39219eb6d40f38aa",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
".git/config": "a597715a665e245b6a9d12e12dbc12a2",
".git/objects/95/7adad424116352dd3c72227f4e56c6a9066ada": "6bc00066021c9550216de7377999a2a5",
".git/objects/59/62efb2dffef4c259bda261b128fcab4b659c34": "11e1a7683fedc73b6a0da57ee3c6a112",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/03/2fe904174b32b7135766696dd37e9a95c1b4fd": "80ba3eb567ab1b2327a13096a62dd17e",
".git/objects/9e/c0cb0b9bc62ff8563f78ef18701be6ada1b7ec": "4dc9eb0c33160efc53a2e954e1c9abf3",
".git/objects/35/96d08a5b8c249a9ff1eb36682aee2a23e61bac": "e931dda039902c600d4ba7d954ff090f",
".git/objects/3c/aad198edd59d08f8dd99ec1c65c7bea769dfd9": "840aa4c0a47e9fad6544517d99b886f0",
".git/objects/58/90ef5f5b6a209f643c0242ef291ac230afee74": "f0f57af5841742b514850ed52b0a0ef0",
".git/objects/60/4138981343a389f92b1d7f21bae955799fb5c5": "38e8ae7276bbe45dfb8b5881f177a184",
".git/objects/5a/87ae9e0fb1b26646b4feea1ac5577164688a23": "c80c5af485dc4f157cf430347af3b4f0",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/9d/3610e8e7d3a61bff74a8e37f923af9b6882465": "9983d11a7246e254eba689d2918f69a1",
".git/objects/a4/cdfe6b964f153da9b3df0a4006d07bf51dc526": "64004d42f49112429124abc671ce1efd",
".git/objects/b2/ab15628e76af633ccd0a83f0b806f50e3806d3": "b3684106b966e4c453f951dd512815ec",
".git/objects/d9/3952e90f26e65356f31c60fc394efb26313167": "1401847c6f090e48e83740a00be1c303",
".git/objects/bb/2db2eadcaff6cb67c3c8652f3270cbb46214d1": "7f7e563469ac25fac77d19e1c222a13a",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/a5/de584f4d25ef8aace1c5a0c190c3b31639895b": "9fbbb0db1824af504c56e5d959e1cdff",
".git/objects/bd/6be43d015a2a8a92db341ee519feb383a20cb4": "0df4c80430aff6e9b0cdd970bc215545",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e5/06de75d04d167162520138f59acb28c9eefebd": "ba25f295ada34fe1884d0d69d1a8b915",
".git/objects/f3/709a83aedf1f03d6e04459831b12355a9b9ef1": "538d2edfa707ca92ed0b867d6c3903d1",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c7/84ccbcd550bd8ce45953a6537bd30fab223ad0": "7bdf2abcea17311364fdaee1b788e3d2",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fb/545a9540ee978f5c1b7df402fc7915c86eab23": "c608c791eaf28e19d3e3c77a52cc55e4",
".git/objects/c6/f6414461cf7c055a539cda6725cc6bf4c887d3": "e60fe49a2ab628910ef16f84bfc1658b",
".git/objects/4b/825dc642cb6eb9a060e54bf8d69288fbee4904": "75589287973d2772c2fc69d664e10822",
".git/objects/74/9970dc1bc693f56979d15924cfc410403215f3": "68f1b57529adb434c2ce48b183863cd8",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/7e/2062b883d6464c71b53e7f233333b65b00541e": "4c005191ea0e2c7f3e5dac6dbf604ace",
".git/objects/44/c412790fa00beeff4b91f2590f75431a5e74f2": "668cd5d36fda131166eb7b9276ec6286",
".git/objects/2f/08363aedb26570d611eb7366d78eafde4d2bed": "068482cb41fcbc3b3d1646b3928d87b4",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6e/2b75b20e01478e1b7ae6f752bbcf2e796a09a4": "428e3ffc3f54dcce4ba58deabd56611a",
".git/objects/9a/b3805abead6534ad1696c09be750c437c0e25c": "d24315a859250cf89675cf40c3c4100e",
".git/objects/5c/77c2c2c0bb40955ea473d73b16d6f41b1fd4fa": "6b13f28798820ea715196a1d0706334f",
".git/objects/91/4a40ccb508c126fa995820d01ea15c69bb95f7": "8963a99a625c47f6cd41ba314ebd2488",
".git/objects/55/3373b459f9d416f5df75b07292727ce9400648": "f0d5a25aa924fb69c8f096fcb876bb08",
".git/objects/90/98323983c003cb0b820f721ded801097496242": "704452da63d26a3941a249a372737a21",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/a7/74a9d5d56e1862b0a1746f325e03a12045d695": "3d843d163b63f07510a154d7a8219077",
".git/objects/dc/f83695f71da8c6278eb914cdd42692c427924e": "9ca7f32e12839dea4610032ada023058",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/b75abc06eb1ce73d0ec2a6d29d9af0d3c11864": "151878550f6c83de79618eb01136670b",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/de/efded5647a8b5eb25639c37cce1a055b386322": "405e6bcc33d3d100b00897584c6f16ae",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ef/b875788e4094f6091d9caa43e35c77640aaf21": "27e32738aea45acd66b98d36fc9fc9e0",
".git/objects/e1/2ff6a3c91ccb34e5715182075058cc7d6dd15c": "2a3dcdb1a81320af7487e2e20439e0fb",
".git/objects/f7/4826fb5f4a1d90178a3980f598af0e4d7233d9": "841aeffeeb662ef0afb0f393687c5363",
".git/objects/f7/d08d24faca63b4819a6540e7c1fb43ed1a528f": "d1677da88a0824e436668a33750b6966",
".git/objects/fa/6a2ea57545c02a7f63b6b5396fad774cfe1bbd": "1b449918943376687ffa67a8f4865eb8",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/83/11c388031bcb00cd8a8209fa67401db28a6798": "be8e98ceecbf9d67625cda8056c186a3",
".git/objects/23/209a8094ffb6811291390ee46e532845d86e6b": "da0ad86c69ba20ac82f910e7f919b881",
".git/objects/4f/02e9875cb698379e68a23ba5d25625e0e2e4bc": "254bc336602c9480c293f5f1c64bb4c7",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/2e/97351f314a151ece4222d2b301680cd6651b25": "bc183947d522b8aed48003e251160fb6",
".git/objects/13/3ee2f6dd7df6fd3e0946a25426c0f9bcaa1e61": "b70c8bdc5ac65442a9f9156d79639ee6",
".git/objects/22/2a955b6d1ebe113a077d84d615bbe1e5149c0e": "04b5940458084caabe8accbd857feea6",
".git/objects/22/d9f9ced6ce1163d97e5cf5a48b26ddfb30fce2": "49be07044e4d0c3d646e38e68f43a6b3",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "adb224c60566650217aa499bfad54bc0",
".git/logs/refs/heads/gh-pages": "1e8eee6e840a94a2c5b08b59f8502102",
".git/logs/refs/heads/main": "59078af7b86d262315022f3d21456ab4",
".git/logs/refs/remotes/origin/gh-pages": "4524e5b9766a3212a1d8f144b8fa79c8",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "a6d4037fae207a5d440978c343761cbd",
".git/refs/heads/main": "f64420b18917e78c5a14629464dcc8b5",
".git/refs/remotes/origin/gh-pages": "a6d4037fae207a5d440978c343761cbd",
".git/index": "6bce821f120f3633eabcfda292be2126",
".git/COMMIT_EDITMSG": "8439beb8b1732c0a2985d22d90c57484",
"assets/asset/6816146.jpg": "7d3d4911ad7b7926cd6b540224e0223b",
"assets/asset/IMG_6840.jpg": "a46187c9c8445ce104940d4b81f507dc",
"assets/asset/dian10.jpg": "0aedbbeaf3ba4690f8670e06d19164ee",
"assets/asset/bgbgyellow.jpeg": "42c593fb61c0c72127ede21f1dd4abcd",
"assets/asset/images/mobileuiremove.png": "4044381115a2c715212de53f50902964",
"assets/asset/images/mobileui2.jpeg": "e89791347ccd6a6c8a453962fad82e77",
"assets/asset/images/mobile4.jpg": "48bd453cce5fc8be641f4a67dc1ef432",
"assets/asset/images/mobile%2520uiremove.png": "e8c5dd6e8562214acb98a249686228f8",
"assets/asset/images/IMG_6788.jpg": "2565100519754a8b7515cfb189e06825",
"assets/asset/images/dpimage.png": "4d9a1fcc1eacb3217dbf28bf7960e22e",
"assets/asset/images/profileImage.png": "06a9dbb13e2b0ae6aca1efa00add6ab7",
"assets/asset/images/mobileui3.jpg": "d04f5b378ae50696e5b70aa3db17e489",
"assets/asset/images/mobileui1.png": "8793a72b3cde38cc7a61a3bd5ae658b0",
"assets/asset/images/HeadImage.png": "8faa5827474f7dc918b9299fd8b1c66a",
"assets/asset/Programmer-rafiki.png": "e5965fae94182f83169a1e5b7dbc1352",
"assets/asset/Programmer-rafikiqqq.png": "a71c1f66d8fa97354bb5147915bdf17e",
"assets/asset/desktop%2520computer-cuate.png": "6a37041170b77ee6934a7af3c7d783e5",
"assets/asset/sky.png": "a3d0c09f753e61cbd56df5e42641e4e5",
"assets/asset/job503-wit-051.jpg": "c2f5d51d35c90b6c1ffaabfbf6811179",
"assets/asset/bg.jpeg": "9034f02fa738df282b2032aef86ab76f",
"assets/asset/minimal.jpg": "5d3123f9e83d2a12ce4309aa7dfc68c6",
"assets/AssetManifest.json": "71b521dcf4ebb1eda6ec978ca9a788c0",
"assets/NOTICES": "cc90d2497ec65adaf4e00e42504fd140",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "c96c0cfbadbc643c692d24e5fdca5597",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "6c42594c531261a67410f4d9aca3b776",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "c5524f5d6e1ec15bebf75658b1e4c8d0",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
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
