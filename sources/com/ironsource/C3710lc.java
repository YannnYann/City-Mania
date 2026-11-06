package com.ironsource;

import com.ironsource.AbstractC3919x0;
import com.ironsource.M0;
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

/* JADX INFO: renamed from: com.ironsource.lc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3710lc extends AbstractC3919x0 {
    public static final a z = new a(null);
    private final C3609g0 u;
    private final C3901w0 v;
    private final Wb w;
    private final String x;
    private final String y;

    /* JADX INFO: renamed from: com.ironsource.lc$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3710lc a(C3609g0 adProperties, C3468ab c3468ab) {
            List<Ec> listEmptyList;
            Ue ueD;
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            AbstractC3919x0.a aVar = AbstractC3919x0.s;
            S3 s3C = (c3468ab == null || (ueD = c3468ab.d()) == null) ? null : ueD.c();
            Wb wbE = s3C != null ? s3C.e() : null;
            if (wbE == null) {
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
            return new C3710lc(adProperties, new C3901w0(strF, arrayList, c3857taB), wbE);
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3710lc(C3609g0 adProperties, C3901w0 adUnitCommonData, Wb configs) {
        super(adProperties, true, adUnitCommonData.f(), adUnitCommonData.d(), adUnitCommonData.e(), configs.d(), configs.b(), (int) (configs.c() / ((long) 1000)), configs.a(), configs.f(), -1, new M0(M0.a.MANUAL, configs.d().j(), configs.d().b(), -1L), configs.h(), configs.i(), configs.k(), configs.j(), false, 65536, null);
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        this.u = adProperties;
        this.v = adUnitCommonData;
        this.w = configs;
        this.x = "NA";
        this.y = C3529bb.e;
    }

    public final C3901w0 A() {
        return this.v;
    }

    public final Wb B() {
        return this.w;
    }

    public final C3710lc a(C3609g0 adProperties, C3901w0 adUnitCommonData, Wb configs) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitCommonData, "adUnitCommonData");
        Intrinsics.checkNotNullParameter(configs, "configs");
        return new C3710lc(adProperties, adUnitCommonData, configs);
    }

    @Override // com.ironsource.AbstractC3919x0
    public C3609g0 b() {
        return this.u;
    }

    @Override // com.ironsource.AbstractC3919x0
    public String c() {
        return this.x;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3710lc)) {
            return false;
        }
        C3710lc c3710lc = (C3710lc) obj;
        return Intrinsics.areEqual(this.u, c3710lc.u) && Intrinsics.areEqual(this.v, c3710lc.v) && Intrinsics.areEqual(this.w, c3710lc.w);
    }

    public int hashCode() {
        return (((this.u.hashCode() * 31) + this.v.hashCode()) * 31) + this.w.hashCode();
    }

    @Override // com.ironsource.AbstractC3919x0
    public String k() {
        return this.y;
    }

    public String toString() {
        return "NativeAdUnitData(adProperties=" + this.u + ", adUnitCommonData=" + this.v + ", configs=" + this.w + ")";
    }

    public final C3609g0 x() {
        return this.u;
    }

    public final C3901w0 y() {
        return this.v;
    }

    public final Wb z() {
        return this.w;
    }

    public static /* synthetic */ C3710lc a(C3710lc c3710lc, C3609g0 c3609g0, C3901w0 c3901w0, Wb wb, int i, Object obj) {
        if ((i & 1) != 0) {
            c3609g0 = c3710lc.u;
        }
        if ((i & 2) != 0) {
            c3901w0 = c3710lc.v;
        }
        if ((i & 4) != 0) {
            wb = c3710lc.w;
        }
        return c3710lc.a(c3609g0, c3901w0, wb);
    }

    @Override // com.ironsource.AbstractC3919x0
    public JSONObject b(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "getNativeAdSettings(...)");
        return nativeAdSettings;
    }
}
