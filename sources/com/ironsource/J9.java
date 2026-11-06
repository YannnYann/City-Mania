package com.ironsource;

import com.ironsource.AbstractC3919x0;
import com.ironsource.M0;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
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
public final class J9 extends AbstractC3919x0 {
    public static final a A = new a(null);
    private final C3609g0 u;
    private final boolean v;
    private final C3901w0 w;
    private final L9 x;
    private final String y;
    private final String z;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final J9 a(C3609g0 adProperties, C3468ab c3468ab, boolean z) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3919x0.a aVar = AbstractC3919x0.s;
            S3 s3C = (c3468ab == null || (ueD = c3468ab.d()) == null) ? null : ueD.c();
            L9 l9D = s3C != null ? s3C.d() : null;
            if (l9D == null) {
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
            return new J9(adProperties, z, new C3901w0(strF, arrayList, c3857taB), l9D);
        }

        private a() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public J9(C3609g0 adProperties, boolean z, C3901w0 adUnitCommonData, L9 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        C3857ta c3857taE = adUnitCommonData.e();
        A2 a2G = configs.g();
        Intrinsics.checkNotNullExpressionValue(a2G, "getInterstitialAuctionSettings(...)");
        super(adProperties, z, strF, listD, c3857taE, a2G, configs.c(), configs.d(), configs.f(), configs.b(), -1, new M0(M0.a.MANUAL, configs.g().j(), configs.g().b(), -1L), configs.h(), configs.k(), configs.m(), configs.l(), false, 65536, null);
        this.u = adProperties;
        this.v = z;
        this.w = adUnitCommonData;
        this.x = configs;
        this.y = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.z = C3529bb.c;
    }

    public final L9 A() {
        return this.x;
    }

    public final C3901w0 B() {
        return this.w;
    }

    public final L9 C() {
        return this.x;
    }

    public final J9 a(C3609g0 adProperties, boolean z, C3901w0 adUnitCommonData, L9 configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new J9(adProperties, z, adUnitCommonData, configs);
    }

    @Override // com.ironsource.AbstractC3919x0
    public C3609g0 b() {
        return this.u;
    }

    @Override // com.ironsource.AbstractC3919x0
    public String c() {
        return this.y;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof J9)) {
            return false;
        }
        J9 j9 = (J9) obj;
        return Intrinsics.areEqual(this.u, j9.u) && this.v == j9.v && Intrinsics.areEqual(this.w, j9.w) && Intrinsics.areEqual(this.x, j9.x);
    }

    public int hashCode() {
        return (((((this.u.hashCode() * 31) + Boolean.hashCode(this.v)) * 31) + this.w.hashCode()) * 31) + this.x.hashCode();
    }

    @Override // com.ironsource.AbstractC3919x0
    public String k() {
        return this.z;
    }

    public String toString() {
        return "InterstitialAdUnitData(adProperties=" + this.u + ", isPublisherLoad=" + this.v + ", adUnitCommonData=" + this.w + ", configs=" + this.x + ")";
    }

    @Override // com.ironsource.AbstractC3919x0
    public boolean v() {
        return this.v;
    }

    public final C3609g0 x() {
        return this.u;
    }

    public final boolean y() {
        return this.v;
    }

    public final C3901w0 z() {
        return this.w;
    }

    public static /* synthetic */ J9 a(J9 j9, C3609g0 c3609g0, boolean z, C3901w0 c3901w0, L9 l9, int i, Object obj) {
        if ((i & 1) != 0) {
            c3609g0 = j9.u;
        }
        if ((i & 2) != 0) {
            z = j9.v;
        }
        if ((i & 4) != 0) {
            c3901w0 = j9.w;
        }
        if ((i & 8) != 0) {
            l9 = j9.x;
        }
        return j9.a(c3609g0, z, c3901w0, l9);
    }

    @Override // com.ironsource.AbstractC3919x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject interstitialSettings = providerSettings.getInterstitialSettings();
        Intrinsics.checkNotNullExpressionValue(interstitialSettings, "getInterstitialSettings(...)");
        return interstitialSettings;
    }
}
