package com.ironsource;

import com.ironsource.C3809r0;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class B {
    private final AbstractC3919x0 a;
    private final NetworkSettings b;
    private final C3885v2 c;
    private final C3537c1 d;
    private C3939y2 e;
    private final int f;
    private final boolean g;
    private final I h;
    private final IronSource.a i;
    private final JSONObject j;
    private final String k;
    private final int l;
    private final String m;
    private final C3939y2 n;
    private final String o;
    private final String p;
    private final int q;
    private final AdData r;

    public B(AbstractC3919x0 adUnitData, NetworkSettings providerSettings, C3885v2 auctionData, C3537c1 adapterConfig, C3939y2 auctionResponseItem, int i, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        Intrinsics.checkNotNullParameter(adapterConfig, "adapterConfig");
        Intrinsics.checkNotNullParameter(auctionResponseItem, "auctionResponseItem");
        this.a = adUnitData;
        this.b = providerSettings;
        this.c = auctionData;
        this.d = adapterConfig;
        this.e = auctionResponseItem;
        this.f = i;
        this.g = z;
        this.h = new I(C3809r0.a.a);
        IronSource.a aVarA = adUnitData.b().a();
        this.i = aVarA;
        this.j = auctionData.h();
        this.k = auctionData.g();
        this.l = auctionData.i();
        this.m = auctionData.f();
        this.n = auctionData.j();
        String strF = adapterConfig.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getProviderName(...)");
        this.o = strF;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s %s", Arrays.copyOf(new Object[]{strF, Integer.valueOf(hashCode())}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        this.p = str;
        this.q = adapterConfig.d();
        String strK = this.e.k();
        Map<String, Object> mapA = C3780pa.a(this.e.a());
        Intrinsics.checkNotNullExpressionValue(mapA, "jsonObjectToMap(...)");
        mapA.put("adUnit", aVarA);
        HashMap map = new HashMap();
        Map<String, Object> mapA2 = C3780pa.a(adapterConfig.c());
        Intrinsics.checkNotNullExpressionValue(mapA2, "jsonObjectToMap(...)");
        map.putAll(mapA2);
        mapA.put("userId", adUnitData.s());
        mapA.put("adUnitId", adUnitData.b().c());
        mapA.put("isMultipleAdUnits", Boolean.TRUE);
        this.r = new AdData(strK, map, mapA);
    }

    public final AbstractC3919x0 a() {
        return this.a;
    }

    public final NetworkSettings b() {
        return this.b;
    }

    public final C3885v2 c() {
        return this.c;
    }

    public final C3537c1 d() {
        return this.d;
    }

    public final C3939y2 e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof B)) {
            return false;
        }
        B b = (B) obj;
        return Intrinsics.areEqual(this.a, b.a) && Intrinsics.areEqual(this.b, b.b) && Intrinsics.areEqual(this.c, b.c) && Intrinsics.areEqual(this.d, b.d) && Intrinsics.areEqual(this.e, b.e) && this.f == b.f && this.g == b.g;
    }

    public final int f() {
        return this.f;
    }

    public final boolean g() {
        return this.g;
    }

    public final AdData h() {
        return this.r;
    }

    public int hashCode() {
        return (((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + Integer.hashCode(this.f)) * 31) + Boolean.hashCode(this.g);
    }

    public final IronSource.a i() {
        return this.i;
    }

    public final AbstractC3919x0 j() {
        return this.a;
    }

    public final C3537c1 k() {
        return this.d;
    }

    public final C3885v2 l() {
        return this.c;
    }

    public final String m() {
        return this.m;
    }

    public final String n() {
        return this.k;
    }

    public final C3939y2 o() {
        return this.e;
    }

    public final int p() {
        return this.l;
    }

    public final C3939y2 q() {
        return this.n;
    }

    public final JSONObject r() {
        return this.j;
    }

    public final String s() {
        return this.o;
    }

    public final int t() {
        return this.q;
    }

    public String toString() {
        return "AdInstanceData(adUnitData=" + this.a + ", providerSettings=" + this.b + ", auctionData=" + this.c + ", adapterConfig=" + this.d + ", auctionResponseItem=" + this.e + ", sessionDepth=" + this.f + ", isPreloaded=" + this.g + ")";
    }

    public final I u() {
        return this.h;
    }

    public final NetworkSettings v() {
        return this.b;
    }

    public final int w() {
        return this.f;
    }

    public final String x() {
        return this.p;
    }

    public final boolean y() {
        return this.g;
    }

    public final B a(AbstractC3919x0 adUnitData, NetworkSettings providerSettings, C3885v2 auctionData, C3537c1 adapterConfig, C3939y2 auctionResponseItem, int i, boolean z) {
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        Intrinsics.checkNotNullParameter(adapterConfig, "adapterConfig");
        Intrinsics.checkNotNullParameter(auctionResponseItem, "auctionResponseItem");
        return new B(adUnitData, providerSettings, auctionData, adapterConfig, auctionResponseItem, i, z);
    }

    public static /* synthetic */ B a(B b, AbstractC3919x0 abstractC3919x0, NetworkSettings networkSettings, C3885v2 c3885v2, C3537c1 c3537c1, C3939y2 c3939y2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            abstractC3919x0 = b.a;
        }
        if ((i2 & 2) != 0) {
            networkSettings = b.b;
        }
        if ((i2 & 4) != 0) {
            c3885v2 = b.c;
        }
        if ((i2 & 8) != 0) {
            c3537c1 = b.d;
        }
        if ((i2 & 16) != 0) {
            c3939y2 = b.e;
        }
        if ((i2 & 32) != 0) {
            i = b.f;
        }
        if ((i2 & 64) != 0) {
            z = b.g;
        }
        int i3 = i;
        boolean z2 = z;
        C3939y2 c3939y22 = c3939y2;
        C3885v2 c3885v22 = c3885v2;
        return b.a(abstractC3919x0, networkSettings, c3885v22, c3537c1, c3939y22, i3, z2);
    }

    public final void a(C3939y2 c3939y2) {
        Intrinsics.checkNotNullParameter(c3939y2, "<set-?>");
        this.e = c3939y2;
    }

    public final void a(C3809r0.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        this.h.b(performance);
    }

    public /* synthetic */ B(AbstractC3919x0 abstractC3919x0, NetworkSettings networkSettings, C3885v2 c3885v2, C3537c1 c3537c1, C3939y2 c3939y2, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC3919x0, networkSettings, c3885v2, c3537c1, c3939y2, i, (i2 & 64) != 0 ? false : z);
    }
}
