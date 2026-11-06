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

/* JADX INFO: renamed from: com.ironsource.ge, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3623ge extends AbstractC3919x0 {
    public static final a A = new a(null);
    private final C3609g0 u;
    private final boolean v;
    private final C3901w0 w;
    private final C3659ie x;
    private final String y;
    private final String z;

    /* JADX INFO: renamed from: com.ironsource.ge$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3623ge a(C3609g0 adProperties, C3468ab c3468ab, boolean z) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3919x0.a aVar = AbstractC3919x0.s;
            S3 s3C = (c3468ab == null || (ueD = c3468ab.d()) == null) ? null : ueD.c();
            C3659ie c3659ieF = s3C != null ? s3C.f() : null;
            if (c3659ieF == null) {
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
            return new C3623ge(adProperties, z, new C3901w0(strF, arrayList, c3857taB), c3659ieF);
        }

        private a() {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C3623ge(C3609g0 adProperties, boolean z, C3901w0 adUnitCommonData, C3659ie configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        String strF = adUnitCommonData.f();
        List<NetworkSettings> listD = adUnitCommonData.d();
        C3857ta c3857taE = adUnitCommonData.e();
        A2 a2K = configs.k();
        Intrinsics.checkNotNullExpressionValue(a2K, "getRewardedVideoAuctionSettings(...)");
        super(adProperties, z, strF, listD, c3857taE, a2K, configs.g(), configs.h(), configs.j(), configs.b(), configs.c(), new M0(M0.a.MANUAL, configs.k().j(), configs.k().b(), -1L), configs.l(), configs.f(), configs.o(), configs.n(), false, 65536, null);
        this.u = adProperties;
        this.v = z;
        this.w = adUnitCommonData;
        this.x = configs;
        this.y = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.z = C3529bb.b;
    }

    public final C3659ie A() {
        return this.x;
    }

    public final C3901w0 B() {
        return this.w;
    }

    public final C3659ie C() {
        return this.x;
    }

    public final C3623ge a(C3609g0 adProperties, boolean z, C3901w0 adUnitCommonData, C3659ie configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3623ge(adProperties, z, adUnitCommonData, configs);
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
        if (!(obj instanceof C3623ge)) {
            return false;
        }
        C3623ge c3623ge = (C3623ge) obj;
        return Intrinsics.areEqual(this.u, c3623ge.u) && this.v == c3623ge.v && Intrinsics.areEqual(this.w, c3623ge.w) && Intrinsics.areEqual(this.x, c3623ge.x);
    }

    public int hashCode() {
        return (((((this.u.hashCode() * 31) + Boolean.hashCode(this.v)) * 31) + this.w.hashCode()) * 31) + this.x.hashCode();
    }

    @Override // com.ironsource.AbstractC3919x0
    public String k() {
        return this.z;
    }

    public String toString() {
        return "RewardedAdUnitData(adProperties=" + this.u + ", isPublisherLoad=" + this.v + ", adUnitCommonData=" + this.w + ", configs=" + this.x + ")";
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

    public static /* synthetic */ C3623ge a(C3623ge c3623ge, C3609g0 c3609g0, boolean z, C3901w0 c3901w0, C3659ie c3659ie, int i, Object obj) {
        if ((i & 1) != 0) {
            c3609g0 = c3623ge.u;
        }
        if ((i & 2) != 0) {
            z = c3623ge.v;
        }
        if ((i & 4) != 0) {
            c3901w0 = c3623ge.w;
        }
        if ((i & 8) != 0) {
            c3659ie = c3623ge.x;
        }
        return c3623ge.a(c3609g0, z, c3901w0, c3659ie);
    }

    @Override // com.ironsource.AbstractC3919x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject rewardedVideoSettings = providerSettings.getRewardedVideoSettings();
        Intrinsics.checkNotNullExpressionValue(rewardedVideoSettings, "getRewardedVideoSettings(...)");
        return rewardedVideoSettings;
    }
}
