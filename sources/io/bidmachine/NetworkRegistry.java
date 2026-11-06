package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingConfig;
import io.bidmachine.ads.networks.mraid.MraidConfig;
import io.bidmachine.ads.networks.nast.NastConfig;
import io.bidmachine.ads.networks.vast.VastConfig;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.internal.InterfaceC4232p;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.tracking.EventData;
import io.bidmachine.tracking.TrackEventInfo;
import io.bidmachine.tracking.TrackingObject;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public class NetworkRegistry {
    static final Map<String, NetworkAdapter> NETWORK_ADAPTER_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> CORE_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> FROM_INIT_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> PENDING_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> INITIALIZING_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<String, NetworkConfig> INITIALIZED_NETWORK_CONFIG_MAP = new ConcurrentHashMap();
    static final Map<AdsType, Map<String, NetworkConfig>> INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP = new ConcurrentHashMap(AdsType.values().length);
    static final Map<AdsType, Map<String, NetworkConfig>> INITIALIZED_NETWORK_CONFIG_TYPED_MAP = new ConcurrentHashMap(AdsType.values().length);
    private static final AtomicBoolean IS_NETWORKS_INITIALIZING_EXECUTED = new AtomicBoolean(false);
    private static final AtomicBoolean IS_CORE_NETWORKS_INITIALIZING = new AtomicBoolean(false);
    private static final AtomicBoolean IS_CORE_NETWORKS_INITIALIZED = new AtomicBoolean(false);
    private static final Object CORE_INITIALIZING_LOCK = new Object();
    private static final Object INITIALIZING_LOCK = new Object();

    public class a extends Thread {
        public final /* synthetic */ Context a;
        public final /* synthetic */ c b;

        public a(Context context, c cVar) {
            this.a = context;
            this.b = cVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            NetworkRegistry.initializeNetworksAwait(this.a);
            c cVar = this.b;
            if (cVar != null) {
                cVar.a();
            }
        }
    }

    public static final class b implements Runnable {
        public static final Executor g = Executors.newFixedThreadPool(Math.max(8, Runtime.getRuntime().availableProcessors() * 4));
        public static final Object h = new Object();
        public static final List i = new CopyOnWriteArrayList();
        public final ContextProvider a;
        public final InitializationParams b;
        public final NetworkConfig c;
        public final c d;
        public final String e;
        public final TrackingObject f;

        public static class a implements InternalNetworkInitializationCallback {
            public final WeakReference a;

            public a(b bVar) {
                this.a = new WeakReference(bVar);
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onFail(NetworkAdapter networkAdapter, String str) {
                b bVar = (b) this.a.get();
                if (bVar != null) {
                    bVar.b(str);
                }
            }

            @Override // io.bidmachine.InternalNetworkInitializationCallback
            public void onSuccess(NetworkAdapter networkAdapter) {
                b bVar = (b) this.a.get();
                if (bVar != null) {
                    bVar.b(networkAdapter);
                }
            }
        }

        public /* synthetic */ b(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, c cVar, a aVar) {
            this(contextProvider, initializationParams, networkConfig, cVar);
        }

        public void a() {
            i.add(this);
            try {
                g.execute(this);
            } catch (Throwable th) {
                Logger.w(th);
                b("Exception creating network initialization task");
            }
        }

        public void b(final NetworkAdapter networkAdapter) {
            Logger.d(this.e, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return NetworkRegistry.b.a(networkAdapter);
                }
            });
            if (networkAdapter instanceof HeaderBiddingAdapter) {
                this.f.eventFinish(TrackEventType.HeaderBiddingNetworkInitialize, null, new EventData().setNetworkName(this.e), null);
            } else {
                this.f.clearEvent(TrackEventType.HeaderBiddingNetworkInitialize);
            }
            i.remove(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            Logger.d(this.e, "Initialization started");
            try {
                this.f.eventStart(TrackEventType.HeaderBiddingNetworkInitialize, new TrackEventInfo().withParameter("HB_NETWORK", this.e));
                NetworkAdapter networkAdapterObtainAdapter = NetworkRegistry.obtainAdapter(this.c);
                networkAdapterObtainAdapter.setLogging(Logger.isLoggingEnabled());
                networkAdapterObtainAdapter.initialize(this.a, this.b, this.c.getNetworkConfigParams(), new a(this));
                Map<String, NetworkConfig> map = NetworkRegistry.INITIALIZED_NETWORK_CONFIG_MAP;
                if (!map.containsKey(this.e)) {
                    map.put(this.e, this.c);
                }
                for (AdsType adsType : this.c.getSupportedAdsTypes(networkAdapterObtainAdapter)) {
                    synchronized (h) {
                        try {
                            if (NetworkRegistry.CORE_NETWORK_CONFIG_MAP.containsKey(this.e)) {
                                a(NetworkRegistry.INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP, adsType, this.e, this.c);
                            }
                            a(NetworkRegistry.INITIALIZED_NETWORK_CONFIG_TYPED_MAP, adsType, this.e, this.c);
                        } finally {
                        }
                    }
                }
                NetworkRegistry.PENDING_NETWORK_CONFIG_MAP.remove(this.e);
            } catch (Throwable th) {
                Logger.w(th);
                b("Network initialization exception");
            }
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
        }

        public b(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, c cVar) {
            this.a = contextProvider;
            this.b = initializationParams;
            this.c = networkConfig;
            this.d = cVar;
            String networkKey = networkConfig.getNetworkKey();
            this.e = networkKey;
            this.f = new BidMachineTrackingObject(networkKey + "_initialize");
        }

        public static /* synthetic */ String a(NetworkAdapter networkAdapter) {
            return String.format("Initialization completed: %s, %s", networkAdapter.obtainNetworkSdkVersion(), networkAdapter.getAdapterVersion());
        }

        public static /* synthetic */ String a(String str) {
            return String.format("Initialization error: %s", str);
        }

        public final void a(Map map, AdsType adsType, String str, NetworkConfig networkConfig) {
            Map concurrentHashMap = (Map) map.get(adsType);
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap();
                map.put(adsType, concurrentHashMap);
            }
            concurrentHashMap.put(str, networkConfig);
        }

        public void b(final String str) {
            Logger.e(this.e, new LazyValue() { // from class: io.bidmachine.NetworkRegistry$b$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return NetworkRegistry.b.a(str);
                }
            });
            this.f.eventFinish(TrackEventType.HeaderBiddingNetworkInitialize, null, new EventData().setNetworkName(this.e), BMError.adapterInitialization(str));
            i.remove(this);
        }
    }

    public interface c {
        void a();
    }

    /* JADX INFO: renamed from: $r8$lambda$fVHrmvqrB19tcf-LU07zMmh14_U, reason: not valid java name */
    public static /* synthetic */ void m2445$r8$lambda$fVHrmvqrB19tcfLU07zMmh14_U(Context context, String str, final NetworkRegistryCallback networkRegistryCallback) {
        registerNetworks(context, str);
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                NetworkRegistry.$r8$lambda$rXziGQ9LwQ50E7UkrLDdZkjVSkA(networkRegistryCallback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$rXziGQ9LwQ50E7UkrLDdZkjVSkA(NetworkRegistryCallback networkRegistryCallback) {
        if (networkRegistryCallback != null) {
            networkRegistryCallback.onRegistered();
        }
    }

    public static String checkAndPutNetwork(Context context, AdsType adsType, NetworkConfig networkConfig, Map<String, NetworkConfig> map) {
        NetworkAdapter adapter = getAdapter(networkConfig.getNetworkKey());
        if (adapter == null) {
            return "Network not registered";
        }
        if (!adapter.isAdsTypeSupported(adsType)) {
            return "Network does not support this ad type";
        }
        if (!adapter.isInitialized(context)) {
            return "Network not initialized";
        }
        map.put(networkConfig.getNetworkKey(), networkConfig);
        return null;
    }

    public static Map<String, NetworkConfig> copyOrNullInitializedCoreNetworkConfigs(AdsType adsType) {
        Map<String, NetworkConfig> map = INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP.get(adsType);
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    public static Map<String, NetworkConfig> copyOrNullInitializedNetworkConfigs(AdsType adsType) {
        Map<String, NetworkConfig> map = INITIALIZED_NETWORK_CONFIG_TYPED_MAP.get(adsType);
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    public static Map<String, NetworkConfig> createInitNetworkConfigMap() {
        return new HashMap(FROM_INIT_NETWORK_CONFIG_MAP);
    }

    public static NetworkAdapter getAdapter(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return NETWORK_ADAPTER_MAP.get(str);
    }

    public static NetworkConfig getConfig(String str) {
        if (str == null) {
            return null;
        }
        return INITIALIZED_NETWORK_CONFIG_MAP.get(str);
    }

    public static Collection<NetworkConfig> getCoreNetworkConfigList() {
        return CORE_NETWORK_CONFIG_MAP.values();
    }

    public static Collection<NetworkConfig> getPendingNetworkConfigList() {
        return PENDING_NETWORK_CONFIG_MAP.values();
    }

    private static void initializeNetwork(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfig networkConfig, c cVar) {
        synchronized (INITIALIZING_LOCK) {
            try {
                String networkKey = networkConfig.getNetworkKey();
                Map<String, NetworkConfig> map = INITIALIZING_NETWORK_CONFIG_MAP;
                if (!map.containsKey(networkKey)) {
                    map.put(networkKey, networkConfig);
                    new b(contextProvider, initializationParams, networkConfig, cVar, null).a();
                } else {
                    PENDING_NETWORK_CONFIG_MAP.remove(networkKey);
                    if (cVar != null) {
                        cVar.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void initializeNetworksAsync(Context context, c cVar) {
        if (IS_NETWORKS_INITIALIZING_EXECUTED.compareAndSet(false, true)) {
            new a(context.getApplicationContext(), cVar).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initializeNetworksAwait(Context context) {
        initializeNetworksAwait(context, getPendingNetworkConfigList());
    }

    public static void initializeNetworksSync(Context context) {
        if (IS_NETWORKS_INITIALIZING_EXECUTED.compareAndSet(false, true)) {
            initializeNetworksAwait(context.getApplicationContext());
        }
    }

    public static boolean isNetworkRegistered(String str) {
        return getAdapter(str) != null;
    }

    public static boolean isNetworksInitializingExecuted() {
        return IS_NETWORKS_INITIALIZING_EXECUTED.get();
    }

    public static NetworkAdapter obtainAdapter(NetworkConfig networkConfig) {
        synchronized (NetworkRegistry.class) {
            try {
                String networkKey = networkConfig.getNetworkKey();
                NetworkAdapter adapter = getAdapter(networkKey);
                if (adapter != null) {
                    return adapter;
                }
                NetworkAdapter networkAdapterCreateNetworkAdapter = networkConfig.createNetworkAdapter();
                NETWORK_ADAPTER_MAP.put(networkKey, networkAdapterCreateNetworkAdapter);
                return networkAdapterCreateNetworkAdapter;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void registerAndInitializeCoreNetworks(Context context) {
        AtomicBoolean atomicBoolean = IS_CORE_NETWORKS_INITIALIZED;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (CORE_INITIALIZING_LOCK) {
            try {
                if (IS_CORE_NETWORKS_INITIALIZING.compareAndSet(false, true)) {
                    registerCoreNetworks();
                    initializeNetworksAwait(context, getCoreNetworkConfigList());
                    atomicBoolean.set(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void registerCoreNetwork(NetworkConfig networkConfig) {
        String networkKey = networkConfig.getNetworkKey();
        Map<String, NetworkConfig> map = CORE_NETWORK_CONFIG_MAP;
        if (map.containsKey(networkKey)) {
            return;
        }
        map.put(networkKey, networkConfig);
        registerNetwork(networkConfig);
    }

    public static void registerCoreNetworks() {
        MraidConfig mraidConfig = new MraidConfig();
        AdsFormat adsFormat = AdsFormat.Banner;
        registerCoreNetwork(mraidConfig.withMediationConfig(adsFormat, new HashMap()).withMediationConfig(AdsFormat.InterstitialStatic, new HashMap()).withMediationConfig(AdsFormat.RewardedStatic, new HashMap()));
        registerCoreNetwork(new VastConfig().withMediationConfig(AdsFormat.InterstitialVideo, new HashMap()).withMediationConfig(AdsFormat.RewardedVideo, new HashMap()));
        registerCoreNetwork(new NastConfig().withMediationConfig(AdsFormat.Native, new HashMap()));
        registerCoreNetwork(new AdaptiveRenderingConfig().withMediationConfig(adsFormat, new HashMap()).withMediationConfig(AdsFormat.Interstitial, new HashMap()).withMediationConfig(AdsFormat.Rewarded, new HashMap()));
    }

    public static void registerInitNetwork(Context context, AdNetwork adNetwork) {
        NetworkConfig networkConfigA;
        if (isNetworkRegistered(adNetwork.getName()) || (networkConfigA = y.a(context, adNetwork)) == null) {
            return;
        }
        FROM_INIT_NETWORK_CONFIG_MAP.put(networkConfigA.getNetworkKey(), networkConfigA);
        registerNetwork(networkConfigA);
    }

    public static void registerNetwork(NetworkConfig networkConfig) {
        k kVarB;
        Context contextD;
        if (networkConfig == null || isNetworkRegistered(networkConfig.getNetworkKey())) {
            return;
        }
        obtainAdapter(networkConfig);
        PENDING_NETWORK_CONFIG_MAP.put(networkConfig.getNetworkKey(), networkConfig);
        if (!isNetworksInitializingExecuted() || (contextD = (kVarB = k.b()).d()) == null) {
            return;
        }
        initializeNetwork(new SimpleContextProvider(contextD), kVarB.a(), networkConfig, null);
    }

    public static void registerNetworks(NetworkConfig... networkConfigArr) {
        if (networkConfigArr == null) {
            return;
        }
        for (NetworkConfig networkConfig : networkConfigArr) {
            registerNetwork(networkConfig);
        }
    }

    public static void reset() {
        NETWORK_ADAPTER_MAP.clear();
        CORE_NETWORK_CONFIG_MAP.clear();
        FROM_INIT_NETWORK_CONFIG_MAP.clear();
        PENDING_NETWORK_CONFIG_MAP.clear();
        INITIALIZING_NETWORK_CONFIG_MAP.clear();
        INITIALIZED_NETWORK_CONFIG_MAP.clear();
        INITIALIZED_CORE_NETWORK_CONFIG_TYPED_MAP.clear();
        INITIALIZED_NETWORK_CONFIG_TYPED_MAP.clear();
        IS_NETWORKS_INITIALIZING_EXECUTED.set(false);
        IS_CORE_NETWORKS_INITIALIZING.set(false);
        IS_CORE_NETWORKS_INITIALIZED.set(false);
        b.i.clear();
    }

    public static void setLoggingEnabled(boolean z) {
        Iterator<Map.Entry<String, NetworkAdapter>> it = NETWORK_ADAPTER_MAP.entrySet().iterator();
        while (it.hasNext()) {
            try {
                it.next().getValue().setLogging(z);
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    private static void initializeNetworksAwait(Context context, Collection<NetworkConfig> collection) {
        initializeNetworksAwait(new SimpleContextProvider(context), k.b().a(), collection);
    }

    public static void registerNetworks(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                NetworkConfig networkConfigA = y.a(context, jSONArray.getJSONObject(i));
                if (networkConfigA != null) {
                    registerNetwork(networkConfigA);
                }
            }
        } catch (JSONException e) {
            Logger.w(e);
        }
    }

    private static void initializeNetworksAwait(ContextProvider contextProvider, InitializationParams initializationParams, Collection<NetworkConfig> collection) {
        if (collection.isEmpty()) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(collection.size());
        Iterator<NetworkConfig> it = collection.iterator();
        while (it.hasNext()) {
            initializeNetwork(contextProvider, initializationParams, it.next(), new c() { // from class: io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda1
                @Override // io.bidmachine.NetworkRegistry.c
                public final void a() {
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            Logger.w(e);
        }
    }

    public static void registerNetworks(final Context context, final String str, final NetworkRegistryCallback networkRegistryCallback) {
        p.a().execute(new InterfaceC4232p() { // from class: io.bidmachine.NetworkRegistry$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.SafeRunnable
            public final void onRun() {
                NetworkRegistry.m2445$r8$lambda$fVHrmvqrB19tcfLU07zMmh14_U(context, str, networkRegistryCallback);
            }
        });
    }
}
