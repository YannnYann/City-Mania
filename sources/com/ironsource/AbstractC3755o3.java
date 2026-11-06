package com.ironsource;

import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.ironsource.AbstractC3773p3;
import com.ironsource.C3664j2;
import com.ironsource.C3958z3;
import com.ironsource.E0;
import com.ironsource.M0;
import com.ironsource.Q7;
import com.ironsource.Q8;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.LoadWhileShowSupportState;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC3755o3<Smash extends AbstractC3773p3<?>, Listener extends AdapterAdListener> implements P0, InterfaceC3538c2, D0, Kb, Jc, InterfaceC3751o, Og, InterfaceC3922x3, InterfaceC3932xd {
    private Boolean A;
    private AdInfo B;
    private C3857ta C;
    final Q8 D;
    final Q8.a E;
    protected final Q7 F;
    private final Q7.a G;
    private boolean H;
    private Tf I;
    private AtomicBoolean J;
    private Z9 K;
    protected Ng<Smash> a;
    protected ConcurrentHashMap<String, C3664j2.a> b;
    private final ConcurrentHashMap<String, BaseAdAdapter<?, Listener>> c;
    protected com.ironsource.mediationsdk.e d;
    protected C3664j2 e;
    protected int f;
    protected String g;
    protected JSONObject h;
    protected C3939y2 i;
    protected C3729md j;
    protected boolean k;
    private NetworkStateReceiver l;
    protected C3515af m;
    protected C3703l5 n;
    protected C3703l5 o;
    protected V p;
    protected f q;
    protected O0 r;
    protected S5 s;
    protected E0 t;
    protected K0 u;
    protected r v;
    protected C3655ia w;
    protected UUID x;
    protected final Object y;
    private long z;

    /* JADX INFO: renamed from: com.ironsource.o3$a */
    public class a extends com.ironsource.environment.thread.a {
        public a() {
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            AbstractC3755o3.this.y();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.o3$b */
    public class b implements Runnable {
        final /* synthetic */ NetworkSettings a;

        public b(NetworkSettings networkSettings) {
            this.a = networkSettings;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3755o3.this.d(this.a);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.o3$c */
    public class c extends TimerTask {
        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            AbstractC3755o3.this.A();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.o3$d */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC3755o3.this.h = new JSONObject();
            AbstractC3755o3.this.t.h.a((Double) null);
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList2 = new ArrayList();
            AbstractC3755o3.this.b(map, arrayList, sb, arrayList2);
            AbstractC3755o3.this.a(map, arrayList, sb, arrayList2);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.o3$e */
    public class e implements C3958z3.b {
        final /* synthetic */ Map a;
        final /* synthetic */ StringBuilder b;
        final /* synthetic */ List c;

        public e(Map map, StringBuilder sb, List list) {
            this.a = map;
            this.b = sb;
            this.c = list;
        }

        @Override // com.ironsource.C3958z3.b
        public void a(List<A3> list, long j, List<String> list2) {
            AbstractC3755o3.this.t.g.b(j);
            for (A3 a3 : list) {
                NetworkSettings networkSettingsA = AbstractC3755o3.this.p.a(a3.c());
                Map<String, Object> mapB = AbstractC3755o3.this.b(networkSettingsA, com.ironsource.mediationsdk.c.c().b(networkSettingsA, AbstractC3755o3.this.p.b(), AbstractC3755o3.this.h()));
                if (a3.a() != null) {
                    this.a.put(a3.c(), a3.a());
                    StringBuilder sb = this.b;
                    sb.append(a3.d());
                    sb.append(a3.c());
                    sb.append(",");
                    AbstractC3755o3.this.t.g.a(mapB, a3.e());
                } else {
                    AbstractC3755o3.this.t.g.a(mapB, a3.e(), a3.b());
                }
            }
            Iterator<String> it = list2.iterator();
            while (it.hasNext()) {
                NetworkSettings networkSettingsA2 = AbstractC3755o3.this.p.a(it.next());
                AbstractC3755o3.this.t.g.b(AbstractC3755o3.this.b(networkSettingsA2, com.ironsource.mediationsdk.c.c().b(networkSettingsA2, AbstractC3755o3.this.p.b(), AbstractC3755o3.this.h())), j);
            }
            AbstractC3755o3.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }

        @Override // com.ironsource.C3958z3.b
        public void onFailure(String str) {
            AbstractC3755o3.this.t.g.a(str);
            AbstractC3755o3.this.a((Map<String, Object>) this.a, (List<String>) this.c, this.b.toString());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.o3$f */
    public enum f {
        NONE,
        READY_TO_LOAD,
        AUCTION,
        LOADING,
        READY_TO_SHOW,
        SHOWING
    }

    public AbstractC3755o3(V v, C3857ta c3857ta, C3655ia c3655ia) {
        this(Pb.k0(), Pb.b0(), v, c3857ta, c3655ia);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        IronLog.INTERNAL.verbose(f());
        AsyncTask.execute(new d());
    }

    private Ug<Smash> B() {
        IronLog.INTERNAL.verbose();
        return new Tg(this.p).d(this.a.b());
    }

    private void C() {
        this.v.a(this.p.b(), false);
    }

    private void H() {
        IronLog.INTERNAL.verbose(f());
        synchronized (this.y) {
            try {
                f fVar = this.q;
                f fVar2 = f.AUCTION;
                if (fVar == fVar2) {
                    return;
                }
                a(fVar2);
                this.J.set(false);
                long jK = this.p.d().k() - C3703l5.a(this.n);
                if (jK > 0) {
                    new Timer().schedule(new c(), jK);
                } else {
                    A();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void I() {
        IronLog.INTERNAL.verbose(f());
        a(g(), j());
    }

    private Z9 a(V v) {
        return null;
    }

    private boolean c(boolean z) {
        Boolean bool = this.A;
        if (bool == null) {
            return false;
        }
        if (z && !bool.booleanValue() && r()) {
            return true;
        }
        return !z && this.A.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(NetworkSettings networkSettings) {
        IronLog.INTERNAL.verbose(b(String.format("Start initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
        AdData adDataA = a(networkSettings, this.p.o());
        AdapterBaseInterface adapterBaseInterfaceB = com.ironsource.mediationsdk.c.c().b(networkSettings, this.p.b(), h());
        if (adapterBaseInterfaceB != null) {
            try {
                adapterBaseInterfaceB.init(adDataA, ContextProvider.getInstance().getApplicationContext(), null);
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                this.t.j.g("initProvider - exception while calling networkAdapter.init with " + networkSettings.getProviderName() + " - " + e2);
            }
        }
        IronLog.INTERNAL.verbose(b(String.format("Done initializing provider %s on thread %s", networkSettings.getProviderInstanceName(), Thread.currentThread().getName())));
    }

    private List<C3939y2> g() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (NetworkSettings networkSettings : this.p.j()) {
            if (!networkSettings.isBidder(this.p.b()) && e(networkSettings)) {
                Ze ze = new Ze(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.p.b()));
                if (!this.m.b(ze)) {
                    copyOnWriteArrayList.add(new C3939y2(ze.c()));
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private int m() {
        return 1;
    }

    private void o() {
        IronLog.INTERNAL.verbose(f());
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.p.j()) {
            if (d(networkSettings, com.ironsource.mediationsdk.c.c().b(networkSettings, this.p.b(), h()))) {
                arrayList.add(new b(networkSettings));
            }
        }
        IronSourceThreadManager.INSTANCE.executeTasks(this.p.k(), this.p.p(), arrayList);
    }

    private void p() {
        ArrayList arrayList = new ArrayList();
        for (NetworkSettings networkSettings : this.p.j()) {
            arrayList.add(new Ze(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.p.b())));
        }
        C3515af c3515af = new C3515af();
        this.m = c3515af;
        c3515af.a(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        f fVar;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        synchronized (this.y) {
            try {
                if (this.p.h().e() && this.m.a()) {
                    ironLog.verbose(b("all smashes are capped"));
                    a(A0.a(this.p.b()), "all smashes are capped", false);
                    return;
                }
                if (!q() && this.q == f.SHOWING) {
                    IronLog.API.error(b("load cannot be invoked while showing an ad"));
                    a(new IronSourceError(A0.d(this.p.b()), "load cannot be invoked while showing an ad"));
                    return;
                }
                if (this.p.h().a() != M0.a.AUTOMATIC_LOAD_WHILE_SHOW && this.p.h().a() != M0.a.MANUAL_WITH_LOAD_ON_SHOW && (((fVar = this.q) != f.READY_TO_LOAD && fVar != f.READY_TO_SHOW) || com.ironsource.mediationsdk.l.a().b(this.p.b()))) {
                    IronLog.API.error(b("load is already in progress"));
                    return;
                }
                this.h = new JSONObject();
                C();
                if (s()) {
                    this.t.f.d();
                } else {
                    this.t.f.a(n());
                }
                this.o = new C3703l5();
                if (this.p.q()) {
                    if (!this.b.isEmpty()) {
                        this.e.a(this.b);
                        this.b.clear();
                    }
                    H();
                } else {
                    a(f.LOADING);
                }
                if (this.p.q()) {
                    return;
                }
                ironLog.verbose(b("auction disabled"));
                I();
                z();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void z() {
        Ug<Smash> ugB = B();
        if (ugB.c()) {
            a(509, "Mediation No fill", false);
        }
        Iterator<Smash> it = ugB.a().iterator();
        while (it.hasNext()) {
            it.next().E();
        }
    }

    public void D() {
        com.ironsource.mediationsdk.l.a().a(this.p.b(), this.p.f());
    }

    public boolean E() {
        return true;
    }

    public boolean F() {
        return true;
    }

    public void G() {
        Iterator<NetworkSettings> it = this.p.j().iterator();
        while (it.hasNext()) {
            com.ironsource.mediationsdk.c.c().b(it.next(), this.p.b(), h());
        }
    }

    public abstract Smash a(NetworkSettings networkSettings, BaseAdAdapter<?, Listener> baseAdAdapter, int i, String str, C3939y2 c3939y2);

    public void a(Context context, boolean z) {
        IronLog.INTERNAL.verbose(b("track = " + z));
        try {
            this.k = z;
            if (z) {
                if (this.l == null) {
                    this.l = new NetworkStateReceiver(context, this);
                }
                context.getApplicationContext().registerReceiver(this.l, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } else if (this.l != null) {
                context.getApplicationContext().unregisterReceiver(this.l);
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error("Got an error from receiver with message: " + e2.getMessage());
        }
    }

    public void b(boolean z) {
        a(false, z, (AbstractC3773p3<?>) null);
    }

    public abstract JSONObject c(NetworkSettings networkSettings);

    public abstract K0 d();

    public O0 e() {
        return new O0(this.p.h(), this);
    }

    public String f() {
        return b((String) null);
    }

    public void h(AbstractC3773p3<?> abstractC3773p3) {
        if (this.p.h().f()) {
            a(abstractC3773p3, abstractC3773p3.f());
        } else {
            a(true, false, abstractC3773p3);
        }
    }

    public abstract String i();

    public void i(AbstractC3773p3<?> abstractC3773p3) {
        if (this.p.q() && this.J.compareAndSet(false, true)) {
            C3939y2 c3939y2I = abstractC3773p3.i();
            this.d.a(c3939y2I, abstractC3773p3.l(), this.i);
            ArrayList<String> arrayList = new ArrayList<>();
            ConcurrentHashMap<String, C3939y2> concurrentHashMap = new ConcurrentHashMap<>();
            for (Smash smash : this.a.b()) {
                arrayList.add(smash.c());
                concurrentHashMap.put(smash.c(), smash.i());
            }
            this.d.a(arrayList, concurrentHashMap, abstractC3773p3.l(), this.i, c3939y2I);
        }
    }

    public String j() {
        return "fallback_" + System.currentTimeMillis();
    }

    public String k() {
        C3729md c3729md = this.j;
        return c3729md == null ? "" : c3729md.c();
    }

    public abstract String l();

    public boolean n() {
        return false;
    }

    public boolean q() {
        return false;
    }

    public boolean r() {
        return false;
    }

    public abstract boolean s();

    public boolean t() {
        boolean z;
        synchronized (this.y) {
            try {
                f fVar = this.q;
                z = fVar == f.LOADING || fVar == f.READY_TO_SHOW;
            } finally {
            }
        }
        return z;
    }

    public boolean u() {
        boolean z;
        synchronized (this.y) {
            z = this.q == f.READY_TO_SHOW;
        }
        return z;
    }

    public boolean v() {
        boolean z;
        synchronized (this.y) {
            z = this.q == f.AUCTION;
        }
        return z;
    }

    public boolean w() {
        boolean z;
        synchronized (this.y) {
            z = this.q == f.LOADING;
        }
        return z;
    }

    public void x() {
        if (c()) {
            a(new a());
        } else {
            y();
        }
    }

    private boolean e(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = com.ironsource.mediationsdk.c.c().b(networkSettings, this.p.b(), h());
        if (adapterBaseInterfaceB instanceof AdapterSettingsInterface) {
            return this.a.a(this.p.h().a(), networkSettings.getProviderInstanceName(), networkSettings.getProviderTypeForReflection(), a(networkSettings, adapterBaseInterfaceB), adapterBaseInterfaceB, this.p.b());
        }
        return false;
    }

    @Override // com.ironsource.Kb
    public void b() {
        IronLog.INTERNAL.verbose(f());
        x();
    }

    public AbstractC3755o3(M7 m7, L7 l7, V v, C3857ta c3857ta, C3655ia c3655ia) {
        this.c = new ConcurrentHashMap<>();
        this.g = "";
        this.k = false;
        this.y = new Object();
        this.z = 0L;
        this.J = new AtomicBoolean(false);
        this.x = UUID.randomUUID();
        this.D = m7.s();
        this.E = l7.i();
        this.F = m7.x();
        this.G = l7.y();
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("adUnit = " + v.b() + ", loading mode = " + v.h().a());
        StringBuilder sb = new StringBuilder();
        sb.append(v.b());
        sb.append(" initiated object per waterfall mode");
        IronSourceUtils.i(sb.toString());
        C3703l5 c3703l5 = new C3703l5();
        this.K = a(v);
        this.w = c3655ia;
        this.p = v;
        this.t = new E0(v.b(), E0.b.MEDIATION, this);
        this.u = d();
        this.r = e();
        a(f.NONE);
        this.C = c3857ta;
        this.a = new Ng<>(this.p.d().f(), this.p.d().i(), this);
        this.t.e.a(l(), this.p.h().a().toString());
        this.b = new ConcurrentHashMap<>();
        this.j = null;
        D();
        this.h = new JSONObject();
        if (this.p.q()) {
            this.d = new com.ironsource.mediationsdk.e(new com.ironsource.mediationsdk.f(this.p.d(), IronSourceUtils.d()));
        }
        this.e = new C3664j2(this.p.j(), this.p.d().c());
        p();
        o();
        this.n = new C3703l5();
        a(f.READY_TO_LOAD);
        this.s = new S5(v.a(), this);
        this.v = new r();
        this.t.e.a(C3703l5.a(c3703l5));
        if (this.p.h().e()) {
            ironLog.verbose("first automatic load");
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, Object> map, List<String> list, StringBuilder sb, List<CallableC3904w3> list2) {
        this.c.clear();
        for (NetworkSettings networkSettings : this.p.j()) {
            Tf tf = this.I;
            if (tf == null || tf.a(networkSettings, this.p.b())) {
                if (!this.m.b(new Ze(networkSettings.getProviderInstanceName(), networkSettings.getMaxAdsPerSession(this.p.b()))) && e(networkSettings)) {
                    AdData adDataA = a(networkSettings, (String) null);
                    if (networkSettings.isBidder(this.p.b())) {
                        AdapterBaseInterface adapterBaseInterfaceB = com.ironsource.mediationsdk.c.c().b(networkSettings, this.p.b(), h());
                        InterfaceC3940y3 interfaceC3940y3C = c(networkSettings, adapterBaseInterfaceB);
                        if (interfaceC3940y3C != null) {
                            list2.add(new CallableC3904w3(networkSettings.getInstanceType(this.p.b()), networkSettings.getProviderInstanceName(), adDataA, interfaceC3940y3C, this, networkSettings));
                        } else {
                            this.t.j.g(adapterBaseInterfaceB == null ? "prepareAuctionCandidates - could not load network adapter " + networkSettings.getProviderName() : "network adapter " + networkSettings.getProviderName() + " does not implementing BiddingDataInterface");
                        }
                    } else {
                        list.add(networkSettings.getProviderInstanceName());
                        sb.append(networkSettings.getInstanceType(this.p.b()));
                        sb.append(networkSettings.getProviderInstanceName());
                        sb.append(",");
                    }
                }
            }
        }
    }

    public UUID h() {
        return this.x;
    }

    public InterfaceC3940y3 c(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        if (adapterBaseInterface instanceof InterfaceC3940y3) {
            return (InterfaceC3940y3) adapterBaseInterface;
        }
        BaseAdAdapter<?, Listener> baseAdAdapterA = a(networkSettings, this.p.b());
        if (!(baseAdAdapterA instanceof InterfaceC3940y3)) {
            return null;
        }
        this.c.put(networkSettings.getProviderInstanceName(), baseAdAdapterA);
        return (InterfaceC3940y3) baseAdAdapterA;
    }

    @Override // com.ironsource.P0
    public void e(AbstractC3773p3<?> abstractC3773p3) {
        IronLog.INTERNAL.verbose(b(abstractC3773p3.k()));
        this.t.i.a(k());
        this.u.a(this.j, abstractC3773p3.f());
    }

    private boolean c(B0 b0) {
        return new ArrayList(Arrays.asList(B0.LOAD_AD_SUCCESS, B0.LOAD_AD_FAILED, B0.LOAD_AD_FAILED_WITH_REASON, B0.AUCTION_SUCCESS, B0.AUCTION_FAILED, B0.AUCTION_FAILED_NO_CANDIDATES, B0.AD_FORMAT_CAPPED, B0.AD_OPENED, B0.SHOW_AD, B0.SHOW_AD_FAILED, B0.AD_CLICKED, B0.RELOAD_AD_FAILED_WITH_REASON, B0.RELOAD_AD_SUCCESS, B0.AD_LEFT_APPLICATION)).contains(b0);
    }

    public void a(f fVar) {
        synchronized (this.y) {
            IronLog.INTERNAL.verbose("set current state to = " + fVar);
            this.q = fVar;
        }
    }

    public void g(AbstractC3773p3<?> abstractC3773p3) {
        this.u.d(abstractC3773p3.f());
    }

    public boolean a(f fVar, f fVar2) {
        boolean z;
        synchronized (this.y) {
            try {
                if (this.q == fVar) {
                    IronLog.INTERNAL.verbose("expected state = " + fVar + ", state to set = " + fVar2);
                    this.q = fVar2;
                    z = true;
                } else {
                    IronLog.INTERNAL.verbose("wrong state, current state = " + this.q + ", expected state = " + fVar);
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.ironsource.InterfaceC3932xd
    public boolean c() {
        Z9 z9 = this.K;
        if (z9 == null || z9 == Thread.currentThread()) {
            return false;
        }
        return this.p.l();
    }

    public void a(K0 k0) {
        this.u = k0;
    }

    public BaseAdAdapter<?, Listener> a(NetworkSettings networkSettings, IronSource.a aVar) {
        BaseAdAdapter<?, Listener> baseAdAdapter = (BaseAdAdapter<?, Listener>) com.ironsource.mediationsdk.c.c().a(networkSettings, aVar, h());
        if (baseAdAdapter != null) {
            return baseAdAdapter;
        }
        return null;
    }

    public void a(boolean z, boolean z2, AbstractC3773p3<?> abstractC3773p3) {
        synchronized (this.y) {
            try {
                Boolean bool = this.A;
                if (bool == null || bool.booleanValue() != z) {
                    this.A = Boolean.valueOf(z);
                    long time = 0;
                    if (this.z != 0) {
                        time = new Date().getTime() - this.z;
                    }
                    this.z = new Date().getTime();
                    this.t.f.a(z, time, z2);
                    AdInfo adInfoF = abstractC3773p3 != null ? abstractC3773p3.f() : this.B;
                    this.B = adInfoF;
                    K0 k0 = this.u;
                    if (!z) {
                        adInfoF = null;
                    }
                    k0.a(z, adInfoF);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean d(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        if (this.a.a(adapterBaseInterface, this.p.b(), networkSettings.getProviderInstanceName())) {
            return false;
        }
        return networkSettings.shouldEarlyInit(networkSettings.isBidder(this.p.b()));
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a2 A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:11:0x0096, B:13:0x009c, B:19:0x00af, B:16:0x00a2, B:18:0x00a8), top: B:37:0x0096 }] */
    @Override // com.ironsource.P0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(com.ironsource.AbstractC3773p3<?> r5) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.AbstractC3755o3.d(com.ironsource.p3):void");
    }

    public BaseAdAdapter<?, Listener> b(NetworkSettings networkSettings) {
        BaseAdAdapter<?, Listener> baseAdAdapterRemove = this.c.remove(networkSettings.getProviderInstanceName());
        return baseAdAdapterRemove != null ? baseAdAdapterRemove : a(networkSettings, this.p.b());
    }

    @Override // com.ironsource.InterfaceC3751o
    public void a() {
        if (this.p.h().e()) {
            a(f.READY_TO_LOAD);
            b(true);
            x();
        }
    }

    private boolean b(B0 b0) {
        return !new ArrayList(Arrays.asList(B0.INIT_STARTED, B0.LOAD_AD, B0.AUCTION_REQUEST, B0.AUCTION_REQUEST_WATERFALL, B0.AUCTION_FAILED_NO_CANDIDATES, B0.COLLECT_TOKEN, B0.COLLECT_TOKENS_COMPLETED, B0.COLLECT_TOKENS_FAILED, B0.INSTANCE_COLLECT_TOKEN, B0.INSTANCE_COLLECT_TOKEN_SUCCESS, B0.INSTANCE_COLLECT_TOKEN_FAILED, B0.INSTANCE_COLLECT_TOKEN_TIMED_OUT)).contains(b0);
    }

    @Override // com.ironsource.Jc
    public void a(boolean z) {
        if (!this.k || this.p.h().f()) {
            return;
        }
        IronLog.INTERNAL.verbose("network availability changed to - " + z);
        if (c(z)) {
            a(z, false, (AbstractC3773p3<?>) null);
        }
    }

    public LoadWhileShowSupportState a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        return LoadWhileShowSupportState.NONE;
    }

    private String a(List<C3939y2> list, String str) {
        IronLog.INTERNAL.verbose(b("waterfall.size() = " + list.size()));
        this.b.clear();
        StringBuilder sb = new StringBuilder();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        for (int i = 0; i < list.size(); i++) {
            C3939y2 c3939y2 = list.get(i);
            AbstractC3773p3 abstractC3773p3A = a(c3939y2, str);
            if (abstractC3773p3A != null) {
                copyOnWriteArrayList.add(abstractC3773p3A);
                sb.append(a(c3939y2, abstractC3773p3A.l()));
            }
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        this.a.a(this.p.h().a(), (CopyOnWriteArrayList<Smash>) copyOnWriteArrayList, str);
        this.c.clear();
        IronLog.INTERNAL.verbose(b("updateWaterfall() - next waterfall is " + ((Object) sb)));
        return sb.toString();
    }

    public void b(C3939y2 c3939y2, String str) {
        if (c3939y2 != null) {
            C3545c9 c3545c9A = c3939y2.a(str);
            if (c3545c9A != null) {
                for (ImpressionDataListener impressionDataListener : new HashSet(this.C.a())) {
                    IronLog.CALLBACK.info(b("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + c3545c9A));
                    impressionDataListener.onImpressionSuccess(c3545c9A);
                }
                return;
            }
            return;
        }
        IronLog.INTERNAL.error(b("reportImpressionDataToPublisher - no auctionResponseItem or listener"));
        E0 e0 = this.t;
        if (e0 != null) {
            e0.j.g("reportImpressionDataToPublisher - no auctionResponseItem or listener");
        }
    }

    private void b(JSONObject jSONObject) {
        int i;
        if (jSONObject == null) {
            this.p.b(false);
            IronLog.INTERNAL.verbose(b("loading configuration from auction response is null, using the following: " + this.p.r()));
            return;
        }
        try {
            try {
                if (jSONObject.has(com.ironsource.mediationsdk.d.x) && (i = jSONObject.getInt(com.ironsource.mediationsdk.d.x)) > 0) {
                    this.p.a(i);
                }
                if (jSONObject.has(com.ironsource.mediationsdk.d.y)) {
                    this.p.a(jSONObject.getBoolean(com.ironsource.mediationsdk.d.y));
                }
                this.p.b(jSONObject.optBoolean(com.ironsource.mediationsdk.d.z, false));
                IronLog.INTERNAL.verbose(b(this.p.r()));
            } catch (JSONException e2) {
                C3813r4.d().a(e2);
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.error("failed to update loading configuration for" + this.p.b() + " Error: " + e2.getMessage());
                ironLog.verbose(b(this.p.r()));
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.verbose(b(this.p.r()));
            throw th;
        }
    }

    @Override // com.ironsource.Og
    public void a(int i) {
        this.t.j.v("waterfalls hold too many with size = " + i);
    }

    private Smash a(C3939y2 c3939y2, String str) {
        NetworkSettings networkSettingsA = this.p.a(c3939y2.c());
        if (networkSettingsA != null) {
            com.ironsource.mediationsdk.c.c().b(networkSettingsA, this.p.b(), h());
            BaseAdAdapter<?, Listener> baseAdAdapterB = b(networkSettingsA);
            if (baseAdAdapterB != null) {
                Smash smash = (Smash) a(networkSettingsA, baseAdAdapterB, this.D.a(this.p.b()), str, c3939y2);
                this.b.put(c3939y2.c(), C3664j2.a.ISAuctionPerformanceDidntAttemptToLoad);
                return smash;
            }
            IronLog.INTERNAL.error(b("addSmashToWaterfall - could not load ad adapter for " + networkSettingsA.getProviderInstanceName()));
            return null;
        }
        String str2 = "could not find matching provider settings for auction response item - item = " + c3939y2.c() + " state = " + this.q;
        IronLog.INTERNAL.error(b(str2));
        this.t.j.i(str2);
        return null;
    }

    public void a(int i, String str, boolean z) {
        int i2;
        String str2;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        a(f.READY_TO_LOAD);
        ironLog.verbose(b("errorCode = " + i + ", errorReason = " + str));
        if (this.p.h().f()) {
            if (z) {
                i2 = i;
                str2 = str;
            } else {
                i2 = i;
                str2 = str;
                this.t.f.a(C3703l5.a(this.o), i2, str2, n());
            }
            a(new IronSourceError(i2, str2));
        } else {
            if (!z) {
                this.t.j.b(i, str);
            }
            b(false);
        }
        this.r.e();
    }

    public String b(String str) {
        String str2 = this.p.b().name() + " state:" + this.q;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str2 + " - " + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> b(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        HashMap map = new HashMap();
        try {
            map.put(IronSourceConstants.EVENTS_PROVIDER, networkSettings.getProviderDefaultInstance());
            map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterBaseInterface.getAdapterVersion());
            map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, adapterBaseInterface.getNetworkSDKVersion());
            map.put("spId", networkSettings.getSubProviderId());
            map.put("instanceType", Integer.valueOf(networkSettings.getInstanceType(this.p.b())));
            map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, Integer.valueOf(m()));
            return map;
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getProviderEventData " + networkSettings.getProviderDefaultInstance(), e2);
            return map;
        }
    }

    public void a(AbstractC3773p3<?> abstractC3773p3, AdInfo adInfo) {
        this.u.c(adInfo);
    }

    public void a(IronSourceError ironSourceError) {
        com.ironsource.mediationsdk.l.a().b(this.p.b(), ironSourceError);
    }

    public AdData a(NetworkSettings networkSettings, String str) {
        return AdData.createAdDataForNetworkAdapter(c(networkSettings), this.p.b(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, StringBuilder sb, List<CallableC3904w3> list2) {
        if (list2.isEmpty()) {
            a(map, list, sb.toString());
            return;
        }
        C3958z3 c3958z3 = new C3958z3();
        e eVar = new e(map, sb, list);
        this.t.g.a();
        c3958z3.a(list2, eVar, this.p.e(), TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Object> map, List<String> list, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(b("auction waterfallString = " + str));
        boolean z = false;
        if (map.size() == 0 && list.size() == 0) {
            ironLog.verbose(b("auction failed - no candidates"));
            this.t.h.a(1005, "No candidates available for auctioning");
            a(A0.e(this.p.b()), "no available ad to load", false);
            return;
        }
        this.t.h.b(str);
        if (this.d != null) {
            int iA = this.D.a(this.p.b());
            com.ironsource.mediationsdk.h hVar = new com.ironsource.mediationsdk.h(this.p.b());
            hVar.b(IronSourceUtils.g());
            hVar.a(map);
            hVar.a(list);
            hVar.a(this.e);
            hVar.a(iA);
            hVar.a(this.w);
            hVar.d(this.H);
            Tf tf = this.I;
            if (tf != null && tf.c()) {
                z = true;
            }
            hVar.e(z);
            a(ContextProvider.getInstance().getApplicationContext(), hVar, this);
            return;
        }
        ironLog.error(b("mAuctionHandler is null"));
    }

    public void a(Context context, com.ironsource.mediationsdk.h hVar, InterfaceC3538c2 interfaceC3538c2) {
        com.ironsource.mediationsdk.e eVar = this.d;
        if (eVar != null) {
            eVar.a(context, hVar, interfaceC3538c2);
        } else {
            IronLog.INTERNAL.error(b("mAuctionHandler is null"));
        }
    }

    @Override // com.ironsource.InterfaceC3538c2
    public void a(List<C3939y2> list, String str, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        if (v()) {
            this.g = "";
            this.f = i;
            this.i = c3939y2;
            this.h = jSONObject;
            if (!TextUtils.isEmpty(str2)) {
                this.t.j.a(i2, str2);
            }
            a(jSONObject2);
            if (this.v.a(this.p.b())) {
                this.t.h.a(str);
                a(IronSourceError.ERROR_AD_FORMAT_CAPPED, "Ad unit is capped", true);
                return;
            }
            String strA = a(list, str);
            this.t.h.a(j, this.p.r() + ";wtf=" + list.size());
            this.t.h.c(strA);
            a(f.LOADING);
            z();
            return;
        }
        ironLog.error(b("unexpected auction success for auctionId - " + str + " state = " + this.q));
        C3790pg c3790pg = this.t.j;
        StringBuilder sb = new StringBuilder();
        sb.append("unexpected auction success, state = ");
        sb.append(this.q);
        c3790pg.k(sb.toString());
    }

    @Override // com.ironsource.InterfaceC3538c2
    public void a(int i, String str, int i2, String str2, long j) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(f());
        if (v()) {
            String str3 = "Auction failed (error " + i + " - " + str + ")";
            ironLog.verbose(b(str3));
            IronSourceUtils.i(i() + ": " + str3);
            this.f = i2;
            this.g = str2;
            this.h = new JSONObject();
            if (this.p.d().n()) {
                ironLog.verbose(b("Moving to fallback waterfall"));
                I();
            }
            this.t.h.a(j, i, str);
            a(f.LOADING);
            z();
            return;
        }
        String str4 = "unexpected auction fail - error = " + i + ", " + str + " state = " + this.q;
        ironLog.error(b(str4));
        this.t.j.j(str4);
    }

    @Override // com.ironsource.P0
    public void a(IronSourceError ironSourceError, AbstractC3773p3<?> abstractC3773p3) {
        Ug<Smash> ugB;
        AbstractC3773p3<?> abstractC3773p3C;
        synchronized (this.y) {
            try {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose(b(abstractC3773p3.k() + " - error = " + ironSourceError));
                if (abstractC3773p3.h().equals(this.a.c()) && this.q != f.AUCTION) {
                    this.b.put(abstractC3773p3.c(), C3664j2.a.ISAuctionPerformanceFailedToLoad);
                    if (w() || u()) {
                        ugB = B();
                        if (ugB.c()) {
                            a(509, "Mediation No fill", false);
                            return;
                        }
                    } else {
                        ugB = null;
                    }
                    if (ugB == null) {
                        return;
                    }
                    if (this.p.m()) {
                        synchronized (this.y) {
                            try {
                                if (ugB.b() && t() && (abstractC3773p3C = new Tg(this.p).c(this.a.b())) != null) {
                                    i(abstractC3773p3C);
                                }
                            } finally {
                            }
                        }
                    }
                    Iterator<Smash> it = ugB.a().iterator();
                    while (it.hasNext()) {
                        it.next().E();
                    }
                    return;
                }
                ironLog.error(b("onAdLoadFailed was invoked from " + abstractC3773p3.c() + " with state =" + this.q + " auctionId: " + abstractC3773p3.h() + " and the current id is " + this.a.c()));
                C3790pg c3790pg = this.t.j;
                StringBuilder sb = new StringBuilder();
                sb.append("onAdLoadFailed was invoked with state =");
                sb.append(this.q);
                c3790pg.o(sb.toString());
            } finally {
            }
        }
    }

    @Override // com.ironsource.P0
    public void a(AbstractC3773p3<?> abstractC3773p3) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(b(abstractC3773p3.k()));
        this.t.i.g(k());
        this.a.a(abstractC3773p3);
        this.a.b(abstractC3773p3);
        this.m.a(abstractC3773p3);
        if (this.m.b(abstractC3773p3)) {
            ironLog.verbose(b(abstractC3773p3.c() + " was session capped"));
            abstractC3773p3.N();
            IronSourceUtils.i(abstractC3773p3.c() + " was session capped");
        }
        this.G.a(ContextProvider.getInstance().getApplicationContext(), k(), this.p.b());
        if (this.F.c(ContextProvider.getInstance().getApplicationContext(), this.j, this.p.b())) {
            ironLog.verbose(b("placement " + k() + " is capped"));
            this.t.i.b(k(), null);
        }
        this.E.b(this.p.b());
        if (this.p.q()) {
            C3939y2 c3939y2I = abstractC3773p3.i();
            this.d.a(c3939y2I, abstractC3773p3.l(), this.i, k());
            this.b.put(abstractC3773p3.c(), C3664j2.a.ISAuctionPerformanceShowedSuccessfully);
            if (E()) {
                b(c3939y2I, k());
            }
        }
        g(abstractC3773p3);
        if (this.p.h().e()) {
            b(false);
        }
        this.r.h();
    }

    public Map<String, Object> a(B0 b0) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_PROVIDER, "Mediation");
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        JSONObject jSONObject = this.h;
        if (jSONObject != null && jSONObject.length() > 0) {
            map.put("genericParams", this.h);
        }
        map.put("sessionDepth", Integer.valueOf(this.D.a(this.p.b())));
        if (c(b0)) {
            map.put(IronSourceConstants.AUCTION_TRIALS, Integer.valueOf(this.f));
            if (!TextUtils.isEmpty(this.g)) {
                map.put(IronSourceConstants.AUCTION_FALLBACK, this.g);
            }
        }
        if (b(b0) && !TextUtils.isEmpty(this.a.c())) {
            map.put("auctionId", this.a.c());
        }
        return map;
    }

    public void a(C3655ia c3655ia) {
        this.w = c3655ia;
    }

    private void a(JSONObject jSONObject) {
        this.v.a(this.p.b(), jSONObject != null ? jSONObject.optBoolean(com.ironsource.mediationsdk.d.f, false) : false);
        b(jSONObject);
    }

    public String a(C3939y2 c3939y2, int i) {
        return String.format("%s%s", Integer.valueOf(i), c3939y2.c());
    }

    public void a(Tf tf) {
        this.I = tf;
        if (tf != null) {
            this.H = true;
        } else {
            this.H = false;
        }
        this.A = null;
    }

    @Override // com.ironsource.InterfaceC3922x3
    public void a(NetworkSettings networkSettings) {
        AdapterBaseInterface adapterBaseInterfaceB = com.ironsource.mediationsdk.c.c().b(networkSettings, this.p.b(), h());
        if (adapterBaseInterfaceB != null) {
            this.t.g.b(b(networkSettings, adapterBaseInterfaceB));
        }
    }

    @Override // com.ironsource.InterfaceC3922x3
    public void a(String str) {
        this.t.j.g(str);
    }

    @Override // com.ironsource.InterfaceC3932xd
    public void a(Runnable runnable) {
        Z9 z9 = this.K;
        if (z9 != null) {
            z9.a(runnable);
        }
    }
}
