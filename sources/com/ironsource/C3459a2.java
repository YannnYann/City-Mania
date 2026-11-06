package com.ironsource;

import com.ironsource.C3459a2;
import com.ironsource.C3958z3;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: com.ironsource.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3459a2 {
    private final T0 a;
    private final AbstractC3919x0 b;
    private final Map<String, H> c;
    private final C3794q2 d;
    private final List<CallableC3904w3> e;
    private final boolean f;

    /* JADX INFO: renamed from: com.ironsource.a2$a */
    public static final class a extends com.ironsource.environment.thread.a {
        final /* synthetic */ C3958z3 b;
        final /* synthetic */ C3459a2 c;
        final /* synthetic */ C3958z3.b d;

        public a(C3958z3 c3958z3, C3459a2 c3459a2, C3958z3.b bVar) {
            this.b = c3958z3;
            this.c = c3459a2;
            this.d = bVar;
        }

        @Override // com.ironsource.environment.thread.a
        public void a() {
            this.b.a(this.c.e(), this.d, this.c.b.f(), TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a2$c */
    public static final class c implements C3958z3.b {
        final /* synthetic */ d b;

        public c(d dVar) {
            this.b = dVar;
        }

        @Override // com.ironsource.C3958z3.b
        public void a(final List<? extends A3> biddingDataList, final long j, final List<String> reachedTimeout) {
            Intrinsics.checkNotNullParameter(biddingDataList, "biddingDataList");
            Intrinsics.checkNotNullParameter(reachedTimeout, "reachedTimeout");
            T0 t0 = C3459a2.this.a;
            final C3459a2 c3459a2 = C3459a2.this;
            final d dVar = this.b;
            t0.a(new Runnable() { // from class: com.ironsource.a2$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3459a2.c.a(c3459a2, j, biddingDataList, reachedTimeout, dVar);
                }
            });
        }

        @Override // com.ironsource.C3958z3.b
        public void onFailure(final String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            T0 t0 = C3459a2.this.a;
            final C3459a2 c3459a2 = C3459a2.this;
            final d dVar = this.b;
            t0.a(new Runnable() { // from class: com.ironsource.a2$c$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3459a2.c.a(c3459a2, error, dVar);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3459a2 c3459a2, long j, List list, List list2, d dVar) {
            c3459a2.a(j, list, list2, dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3459a2 c3459a2, String str, d dVar) {
            c3459a2.a.f().g().a(str);
            dVar.a(c3459a2, str);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a2$d */
    public interface d {
        void a(C3459a2 c3459a2);

        void a(C3459a2 c3459a2, String str);
    }

    public C3459a2(T0 adTools, AbstractC3919x0 adUnitData, C3722m6 c3722m6) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adTools;
        this.b = adUnitData;
        this.c = a();
        this.d = new C3794q2(adUnitData);
        this.e = new ArrayList();
        this.f = adUnitData.e().q();
        b bVarB = b();
        Tf tfG = adUnitData.b().g();
        boolean z = Pb.w.d().h().z() && (adUnitData.b().a() == IronSource.a.INTERSTITIAL || adUnitData.b().a() == IronSource.a.REWARDED_VIDEO);
        for (NetworkSettings networkSettings : adUnitData.n()) {
            if (tfG == null || tfG.a(networkSettings, this.b.b().a())) {
                AdData adDataA = this.b.a(networkSettings);
                if (networkSettings.isBidder(this.b.b().a())) {
                    Object objB = this.f ? b(networkSettings.getProviderName()) : a(networkSettings);
                    if (objB instanceof InterfaceC3940y3) {
                        this.e.add(new CallableC3904w3(networkSettings.getInstanceType(this.b.b().a()), networkSettings.getProviderInstanceName(), adDataA, (InterfaceC3940y3) objB, bVarB, networkSettings));
                    } else {
                        this.a.f().h().g(objB == null ? "prepareAuctionCandidates - could not load network adapter " + networkSettings.getProviderName() : "network adapter " + networkSettings.getProviderName() + " does not implementing BiddingDataInterface");
                    }
                } else if (!z) {
                    this.d.a(networkSettings);
                }
            }
        }
        this.d.a(c3722m6);
    }

    public final Map<String, H> c() {
        return this.c;
    }

    public final C3794q2 d() {
        return this.d;
    }

    public final List<CallableC3904w3> e() {
        return this.e;
    }

    public final boolean f() {
        return !this.e.isEmpty();
    }

    public final boolean g() {
        return this.d.e();
    }

    public final boolean h() {
        return this.f;
    }

    private final b b() {
        return new b();
    }

    private final C3958z3.b b(d dVar) {
        return new c(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseAdAdapter<?, ?> b(String str) {
        H h = this.c.get(str);
        if (h != null) {
            return h.b();
        }
        return null;
    }

    private final Map<String, H> a() {
        List<NetworkSettings> listN = this.b.n();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listN, 10)), 16));
        Iterator<T> it = listN.iterator();
        while (it.hasNext()) {
            H h = new H(this.a, this.b, (NetworkSettings) it.next());
            Pair pair = TuplesKt.to(h.c(), h);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    /* JADX INFO: renamed from: com.ironsource.a2$b */
    public static final class b implements InterfaceC3922x3 {
        public b() {
        }

        @Override // com.ironsource.InterfaceC3922x3
        public void a(NetworkSettings networkSettings) {
            AdapterBaseInterface adapterBaseInterfaceA;
            if (C3459a2.this.h()) {
                adapterBaseInterfaceA = null;
                BaseAdAdapter baseAdAdapterB = C3459a2.this.b(networkSettings != null ? networkSettings.getProviderName() : null);
                if (baseAdAdapterB != null) {
                    adapterBaseInterfaceA = baseAdAdapterB.getNetworkAdapter();
                }
            } else {
                adapterBaseInterfaceA = C3459a2.this.a(networkSettings);
            }
            if (adapterBaseInterfaceA != null) {
                C3459a2.this.a.f().g().b(C3459a2.this.a(networkSettings, adapterBaseInterfaceA));
            }
        }

        @Override // com.ironsource.InterfaceC3922x3
        public void a(String str) {
            C3459a2.this.a.f().h().g(str);
        }
    }

    public /* synthetic */ C3459a2(T0 t0, AbstractC3919x0 abstractC3919x0, C3722m6 c3722m6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(t0, abstractC3919x0, (i & 4) != 0 ? null : c3722m6);
    }

    public final void a(d biddingDataListener) {
        Intrinsics.checkNotNullParameter(biddingDataListener, "biddingDataListener");
        C3958z3 c3958z3 = new C3958z3();
        C3958z3.b bVarB = b(biddingDataListener);
        this.a.f().g().a(this.b.f());
        this.a.a((com.ironsource.environment.thread.a) new a(c3958z3, this, bVarB));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(long j, List<? extends A3> list, List<String> list2, d dVar) {
        this.a.f().g().b(j);
        for (A3 a3 : list) {
            String strC = a3.c();
            Intrinsics.checkNotNullExpressionValue(strC, "getInstanceName(...)");
            Map<String, Object> mapA = a(strC);
            if (a3.a() != null) {
                this.d.a(a3);
                this.a.f().g().a(mapA, a3.e());
            } else {
                this.a.f().g().a(mapA, a3.e(), a3.b());
            }
        }
        Iterator<String> it = list2.iterator();
        while (it.hasNext()) {
            this.a.f().g().b(a(it.next()), j);
        }
        dVar.a(this);
    }

    private final Map<String, Object> a(String str) {
        AdapterBaseInterface adapterBaseInterfaceA;
        NetworkSettings networkSettingsA = this.b.a(str);
        if (this.f) {
            BaseAdAdapter<?, ?> baseAdAdapterB = b(str);
            adapterBaseInterfaceA = baseAdAdapterB != null ? baseAdAdapterB.getNetworkAdapter() : null;
        } else {
            adapterBaseInterfaceA = a(networkSettingsA);
        }
        return a(networkSettingsA, adapterBaseInterfaceA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, Object> a(NetworkSettings networkSettings, AdapterBaseInterface adapterBaseInterface) {
        String providerDefaultInstance;
        HashMap map = new HashMap();
        if (networkSettings != null) {
            try {
                providerDefaultInstance = networkSettings.getProviderDefaultInstance();
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "getProviderEventData " + (networkSettings != null ? networkSettings.getProviderDefaultInstance() : null), e);
                return map;
            }
        } else {
            providerDefaultInstance = null;
        }
        map.put(IronSourceConstants.EVENTS_PROVIDER, providerDefaultInstance);
        map.put(IronSourceConstants.EVENTS_PROVIDER_ADAPTER_VERSION, adapterBaseInterface != null ? adapterBaseInterface.getAdapterVersion() : null);
        map.put(IronSourceConstants.EVENTS_PROVIDER_SDK_VERSION, adapterBaseInterface != null ? adapterBaseInterface.getNetworkSDKVersion() : null);
        map.put("spId", networkSettings != null ? networkSettings.getSubProviderId() : null);
        map.put(IronSourceConstants.EVENTS_PROGRAMMATIC, 1);
        map.put("instanceType", networkSettings != null ? Integer.valueOf(networkSettings.getInstanceType(this.b.b().a())) : null);
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdapterBaseInterface a(NetworkSettings networkSettings) {
        return com.ironsource.mediationsdk.c.c().b(networkSettings, this.b.b().a(), this.b.b().b());
    }
}
