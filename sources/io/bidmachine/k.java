package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.AdRequest;
import io.bidmachine.NetworkRegistry;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.mraid.MraidUtils;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.internal.C4219c;
import io.bidmachine.internal.C4231o;
import io.bidmachine.internal.C4236u;
import io.bidmachine.internal.E;
import io.bidmachine.internal.H;
import io.bidmachine.protobuf.AdCachePlacementControl;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.utils.UserAgentProvider;
import io.bidmachine.tracking.EventTrackerImpl;
import io.bidmachine.tracking.SessionTracker;
import io.bidmachine.u;
import io.bidmachine.utils.BluetoothUtils;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.ProtoUtilsKt;
import io.bidmachine.utils.ThrowableRunnable;
import io.bidmachine.utils.lazy.LazyValue;
import io.bidmachine.utils.log.DefaultLoggerInstance;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class k {
    public static final AtomicBoolean F = new AtomicBoolean(false);
    public static volatile k G;
    public long A;
    public long B;
    public List C;
    public u D;
    public final u.d E;
    public final Set a = new CopyOnWriteArraySet();
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final EventTrackerImpl d;
    public final SessionTracker e;
    public final io.bidmachine.internal.x f;
    public final PriceFloorParams g;
    public final AppParams h;
    public final DeviceParams i;
    public final SessionParams j;
    public final InterfaceC4237r k;
    public final Map l;
    public final List m;
    public final e n;
    public final C4219c o;
    public final i p;
    public final BidMachineAssetCacheInitializer q;
    public final InstallInfoProvider r;
    public Context s;
    public String t;
    public TargetingParams u;
    public CustomParams v;
    public Publisher w;
    public boolean x;
    public int y;
    public int z;

    public class a extends DefaultLoggerInstance {
        public a(String str) {
            super(str);
        }

        @Override // io.bidmachine.utils.log.DefaultLoggerInstance
        public String buildMessage(Object obj, String str, LazyValue lazyValue, Throwable th) {
            String strBuildMessage = super.buildMessage(obj, str, lazyValue, th);
            if (!k.b().u()) {
                return strBuildMessage;
            }
            return "(TEST MODE) " + strBuildMessage;
        }
    }

    public class b implements u.d {
        public b() {
        }

        @Override // io.bidmachine.u.d
        public void a(u.b bVar) {
            InitResponse initResponseA = bVar.a();
            k.this.a(SessionManager.get().getSessionId(), initResponseA, bVar.b());
            if (k.this.s == null) {
                return;
            }
            ExtraParamsManager.get().setExtras(k.this.s, initResponseA.getExtras());
            k kVar = k.this;
            kVar.a(kVar.s, initResponseA.getAdNetworksList());
        }

        @Override // io.bidmachine.u.d
        public void b(u.b bVar) {
            k kVar = k.this;
            Context context = kVar.s;
            if (context == null) {
                return;
            }
            kVar.a(context, bVar.a().getAdNetworksList());
        }

        @Override // io.bidmachine.u.d
        public void c(u.b bVar) {
            k.this.a(SessionManager.get().getSessionId(), bVar.a(), bVar.b());
        }

        public /* synthetic */ b(k kVar, a aVar) {
            this();
        }
    }

    public static class c implements UserAgentProvider {
        public final Context a;

        public c(Context context) {
            this.a = context.getApplicationContext();
        }

        @Override // io.bidmachine.rendering.utils.UserAgentProvider
        public String getUserAgent() {
            return UserAgentManager.getUserAgent(this.a);
        }
    }

    static {
        Logger.setEnabledInstance(new a("BidMachineLog"));
    }

    public k() {
        EventTrackerImpl eventTrackerImpl = new EventTrackerImpl();
        this.d = eventTrackerImpl;
        this.e = new l(eventTrackerImpl);
        this.f = new io.bidmachine.internal.x();
        this.g = new PriceFloorParams().m2448addPriceFloor(UUID.randomUUID().toString(), 0.01d);
        this.h = new AppParams(new f());
        this.i = new DeviceParams(new DeviceConnectionParams());
        this.j = new SessionParams();
        this.k = new s();
        this.l = new EnumMap(TrackEventType.class);
        this.m = new CopyOnWriteArrayList();
        this.n = new e();
        this.o = new C4219c();
        this.p = new i();
        this.q = new BidMachineAssetCacheInitializer();
        this.r = new InstallInfoProvider();
        this.u = new TargetingParams();
        this.v = new CustomParams();
        this.y = 0;
        this.z = 0;
        this.A = 0L;
        this.B = 0L;
        this.C = null;
        this.E = new b(this, null);
    }

    public static k b() {
        k kVar;
        k kVar2 = G;
        if (kVar2 != null) {
            return kVar2;
        }
        synchronized (k.class) {
            try {
                kVar = G;
                if (kVar == null) {
                    kVar = new k();
                    G = kVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }

    public static void k(final Context context) {
        if (F.compareAndSet(false, true)) {
            Utils.runCatching(new ThrowableRunnable() { // from class: io.bidmachine.k$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.ThrowableRunnable
                public final void run() {
                    h.a(context);
                }
            });
            Utils.runCatching(new ThrowableRunnable() { // from class: io.bidmachine.k$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.ThrowableRunnable
                public final void run() {
                    i.a(context);
                }
            });
        }
    }

    public void a(Context context, String str, InitializationCallback initializationCallback) {
        k(context);
        if (s()) {
            a(initializationCallback);
            return;
        }
        if (context == null) {
            Logger.d("Initialization fail: Context is not provided");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Logger.d("Initialization fail: Source id is not provided");
            return;
        }
        if (initializationCallback != null) {
            this.a.add(initializationCallback);
        }
        if (this.b.compareAndSet(false, true)) {
            final Context applicationContext = context.getApplicationContext();
            this.s = applicationContext;
            this.t = str;
            this.o.a(applicationContext);
            SessionManager sessionManager = SessionManager.get();
            sessionManager.addObserver(this.o);
            sessionManager.attachContext(applicationContext);
            sessionManager.resume();
            BluetoothUtils.register(applicationContext);
            UserAgentManager.initialize(context);
            Rendering.setUserAgentProvider(new c(applicationContext));
            this.D = new u(applicationContext, str, this.E);
            Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.k$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.d(applicationContext);
                }
            });
        }
    }

    public long c(Context context) {
        return n.u(context);
    }

    public final /* synthetic */ void d(Context context) {
        try {
            Debugger.setup(context);
            this.f.a(H.a(context));
            this.k.a(context);
            this.n.b(context);
            this.D.d();
            h(context);
            this.r.initialize(context);
            a(context, (NetworkRegistry.c) null);
            v();
            this.D.c();
            C4231o.a();
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public String g() {
        return this.n.a();
    }

    public long h(Context context) {
        long j = this.A;
        if (j != 0) {
            return j;
        }
        long jD = n.D(context);
        this.A = jD;
        return jD;
    }

    public List i(Context context) {
        List list = this.C;
        if (list != null) {
            return list;
        }
        List listA = n.a(context, j(context));
        this.C = listA;
        return listA;
    }

    public long j(Context context) {
        long j = this.B;
        if (j != 0) {
            return j;
        }
        long jE = n.E(context);
        this.B = jE;
        return jE;
    }

    public Publisher l() {
        return this.w;
    }

    public int m() {
        return this.y;
    }

    public String n() {
        return this.t;
    }

    public SessionParams o() {
        return this.j;
    }

    public SessionTracker p() {
        return this.e;
    }

    public TargetingParams q() {
        return this.u;
    }

    public boolean r() {
        return t() || s();
    }

    public boolean s() {
        return this.c.get();
    }

    public boolean t() {
        return this.b.get();
    }

    public boolean u() {
        return this.x;
    }

    public void v() {
        Logger.d("Notify initialization finished");
        this.c.set(true);
        this.b.set(false);
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            a((InitializationCallback) it.next());
        }
        this.a.clear();
    }

    public List c() {
        return this.m;
    }

    public AppParams e() {
        return this.h;
    }

    public DeviceParams f() {
        return this.i;
    }

    public String g(Context context) {
        return this.o.b(context);
    }

    public InstallInfoProvider h() {
        return this.r;
    }

    public PriceFloorParams j() {
        return this.g;
    }

    public int i() {
        return this.z;
    }

    public io.bidmachine.internal.x k() {
        return this.f;
    }

    public void b(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.m.remove(adRequestListener);
    }

    public C4236u b(Context context) {
        return a(n.t(context));
    }

    public Context d() {
        return this.s;
    }

    public static void a(final InitializationCallback initializationCallback) {
        if (initializationCallback == null) {
            return;
        }
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.k$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                initializationCallback.onInitialized();
            }
        });
    }

    public void a(final String str, final InitResponse initResponse, final String str2) {
        UrlProvider.setAuctionUrlFromInit(initResponse.getEndpoint());
        this.l.clear();
        ProtoUtils.prepareEvents(this.l, initResponse.getEventList());
        this.d.setDefaultEventConfiguration(initResponse.getEventConfiguration());
        SessionManager.get().setSessionResetAfter(initResponse.getSessionResetAfter());
        this.y = initResponse.getAdRequestTmax();
        this.z = initResponse.getAdNetworksLoadingTimeout();
        m.a(initResponse.getShowWithoutInternet());
        o.a(initResponse.getTokenConfigurationsList());
        Map<String, AdCachePlacementControl> adCachePlacementControlMap = initResponse.getAdCachePlacementControlMap();
        if (adCachePlacementControlMap != null) {
            io.bidmachine.c.a(adCachePlacementControlMap);
            AdCachePlacementControl adCachePlacementControl = adCachePlacementControlMap.get(AdsType.Interstitial.getName());
            int maxCacheSize = adCachePlacementControl != null ? adCachePlacementControl.getMaxCacheSize() : 0;
            AdCachePlacementControl adCachePlacementControl2 = adCachePlacementControlMap.get(AdsType.Rewarded.getName());
            if (adCachePlacementControl2 != null) {
                maxCacheSize += adCachePlacementControl2.getMaxCacheSize();
            }
            if (maxCacheSize > 5) {
                VastRequest.setCacheSize(maxCacheSize);
            }
        }
        MraidUtils.dynamicMraidJs = ProtoUtilsKt.getString(initResponse.getExtras().getInternal(), "mraid_js");
        final io.bidmachine.internal.y yVarA = E.a(initResponse.getRestrictionMode());
        Utils.ifNotNull(this.s, new Executable() { // from class: io.bidmachine.k$$ExternalSyntheticLambda3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                this.f$0.a(str, initResponse, str2, yVarA, (Context) obj);
            }
        });
    }

    public final /* synthetic */ void a(String str, InitResponse initResponse, String str2, io.bidmachine.internal.y yVar, Context context) {
        this.p.a(context, str, initResponse, str2);
        this.q.configure(context, initResponse);
        this.o.b(context, initResponse.getBmifvTtlSessions());
        n.a(context, yVar);
        if (yVar == io.bidmachine.internal.y.STRICT) {
            a(context);
        }
        CrashTracker.reportAndInit(context, initResponse.getCrashSignalConfig());
        AnrTracker.initAndReport(context, initResponse.getCrashSignalConfig());
    }

    public final void a(Context context) {
        n.b(context, (String) null);
    }

    public void a(Context context, List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NetworkRegistry.registerInitNetwork(context, (AdNetwork) it.next());
        }
    }

    public void a(Context context, NetworkRegistry.c cVar) {
        NetworkRegistry.registerCoreNetworks();
        NetworkRegistry.initializeNetworksAsync(context, cVar);
    }

    public List a(TrackEventType trackEventType) {
        return (List) this.l.get(trackEventType);
    }

    public void a(boolean z) {
        this.x = z;
    }

    public void a(TargetingParams targetingParams) {
        if (targetingParams == null) {
            targetingParams = new TargetingParams();
        }
        this.u = targetingParams;
    }

    public void a(Publisher publisher) {
        this.w = publisher;
    }

    public void a(AdRequest.AdRequestListener adRequestListener) {
        if (adRequestListener == null) {
            return;
        }
        this.m.add(adRequestListener);
    }

    public InitializationParams a() {
        return new v(this.u, a(io.bidmachine.internal.y.STRICT).a());
    }

    public C4236u a(io.bidmachine.internal.y yVar) {
        return this.f.a(SessionManager.get().getSessionId(), yVar);
    }
}
