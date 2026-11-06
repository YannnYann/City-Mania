package com.ironsource;

import com.ironsource.AbstractC3919x0;
import com.ironsource.M0;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class T2 extends AbstractC3919x0 {
    public static final a A = new a(null);
    private final Q2 u;
    private final boolean v;
    private final C3901w0 w;
    private final C3521b3 x;
    private final String y;
    private final String z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final T2 a(Q2 adProperties, C3468ab c3468ab, boolean z) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3919x0.a aVar = AbstractC3919x0.s;
            S3 s3C = (c3468ab == null || (ueD = c3468ab.d()) == null) ? null : ueD.c();
            C3521b3 c3521b3C = s3C != null ? s3C.c() : null;
            if (c3521b3C == null) {
                throw new IllegalStateException("Error getting " + adProperties.a() + " configurations");
            }
            if (c3468ab == null || (listEmptyList = c3468ab.d(adProperties.e(), adProperties.c())) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            String strF = IronSourceUtils.f();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listEmptyList, 10));
            Iterator<T> it = listEmptyList.iterator();
            while (it.hasNext()) {
                arrayList.add(((Ec) it.next()).f());
            }
            C3857ta c3857taB = C3857ta.b();
            Intrinsics.checkNotNullExpressionValue(c3857taB, "getInstance(...)");
            return new T2(adProperties, z, new C3901w0(strF, arrayList, c3857taB), c3521b3C);
        }

        private a() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public T2(Q2 adProperties, boolean z, C3901w0 adUnitCommonData, C3521b3 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        C3857ta c3857taE = adUnitCommonData.e();
        A2 a2D = configs.d();
        Intrinsics.checkNotNullExpressionValue(a2D, "getBannerAuctionSettings(...)");
        super(adProperties, z, strF, listD, c3857taE, a2D, configs.a(), (int) (configs.b() / ((long) 1000)), configs.c(), configs.f(), -1, new M0(M0.a.MANUAL_WITH_AUTOMATIC_RELOAD, configs.d().j(), configs.d().b(), 1000 * ((long) configs.h())), configs.e(), configs.l(), configs.n(), configs.m(), false, 65536, null);
        this.u = adProperties;
        this.v = z;
        this.w = adUnitCommonData;
        this.x = configs;
        this.y = "BN";
        this.z = C3529bb.d;
    }

    public final C3521b3 A() {
        return this.x;
    }

    @Override // com.ironsource.AbstractC3919x0
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public Q2 b() {
        return this.u;
    }

    public final C3901w0 C() {
        return this.w;
    }

    public final C3521b3 D() {
        return this.x;
    }

    public final T2 a(Q2 adProperties, boolean z, C3901w0 adUnitCommonData, C3521b3 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new T2(adProperties, z, adUnitCommonData, configs);
    }

    @Override // com.ironsource.AbstractC3919x0
    public String c() {
        return this.y;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof T2)) {
            return false;
        }
        T2 t2 = (T2) obj;
        return Intrinsics.areEqual(this.u, t2.u) && this.v == t2.v && Intrinsics.areEqual(this.w, t2.w) && Intrinsics.areEqual(this.x, t2.x);
    }

    public int hashCode() {
        return (((((this.u.hashCode() * 31) + Boolean.hashCode(this.v)) * 31) + this.w.hashCode()) * 31) + this.x.hashCode();
    }

    @Override // com.ironsource.AbstractC3919x0
    public String k() {
        return this.z;
    }

    public String toString() {
        return "BannerAdUnitData(adProperties=" + this.u + ", isPublisherLoad=" + this.v + ", adUnitCommonData=" + this.w + ", configs=" + this.x + ")";
    }

    @Override // com.ironsource.AbstractC3919x0
    public boolean v() {
        return this.v;
    }

    public final Q2 x() {
        return this.u;
    }

    public final boolean y() {
        return this.v;
    }

    public final C3901w0 z() {
        return this.w;
    }

    public static /* synthetic */ T2 a(T2 t2, Q2 q2, boolean z, C3901w0 c3901w0, C3521b3 c3521b3, int i, Object obj) {
        if ((i & 1) != 0) {
            q2 = t2.u;
        }
        if ((i & 2) != 0) {
            z = t2.v;
        }
        if ((i & 4) != 0) {
            c3901w0 = t2.w;
        }
        if ((i & 8) != 0) {
            c3521b3 = t2.x;
        }
        return t2.a(q2, z, c3901w0, c3521b3);
    }

    @Override // com.ironsource.AbstractC3919x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject bannerSettings = providerSettings.getBannerSettings();
        Intrinsics.checkNotNullExpressionValue(bannerSettings, "getBannerSettings(...)");
        return bannerSettings;
    }

    @Override // com.ironsource.AbstractC3919x0
    public AdData a(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        AdData adDataCreateAdDataForNetworkAdapter = AdData.createAdDataForNetworkAdapter(b(providerSettings), b().a(), s(), new com.ironsource.mediationsdk.o(ContextProvider.getInstance().getApplicationContext(), new C3716m0().b(b().i())));
        Intrinsics.checkNotNullExpressionValue(adDataCreateAdDataForNetworkAdapter, "createAdDataForNetworkAdapter(...)");
        return adDataCreateAdDataForNetworkAdapter;
    }
}
