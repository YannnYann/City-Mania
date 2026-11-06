package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.v2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3885v2 {
    private final String a;
    private final JSONObject b;
    private final C3939y2 c;
    private final int d;
    private final String e;

    public C3885v2(String auctionId, JSONObject jSONObject, C3939y2 c3939y2, int i, String auctionFallback) {
        Intrinsics.checkNotNullParameter(auctionId, "auctionId");
        Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
        this.a = auctionId;
        this.b = jSONObject;
        this.c = c3939y2;
        this.d = i;
        this.e = auctionFallback;
    }

    public final String a() {
        return this.a;
    }

    public final JSONObject b() {
        return this.b;
    }

    public final C3939y2 c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3885v2)) {
            return false;
        }
        C3885v2 c3885v2 = (C3885v2) obj;
        return Intrinsics.areEqual(this.a, c3885v2.a) && Intrinsics.areEqual(this.b, c3885v2.b) && Intrinsics.areEqual(this.c, c3885v2.c) && this.d == c3885v2.d && Intrinsics.areEqual(this.e, c3885v2.e);
    }

    public final String f() {
        return this.e;
    }

    public final String g() {
        return this.a;
    }

    public final JSONObject h() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        JSONObject jSONObject = this.b;
        int iHashCode2 = (iHashCode + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
        C3939y2 c3939y2 = this.c;
        return ((((iHashCode2 + (c3939y2 != null ? c3939y2.hashCode() : 0)) * 31) + Integer.hashCode(this.d)) * 31) + this.e.hashCode();
    }

    public final int i() {
        return this.d;
    }

    public final C3939y2 j() {
        return this.c;
    }

    public String toString() {
        return "AuctionResponseData(auctionId=" + this.a + ", auctionResponseGenericParam=" + this.b + ", genericNotifications=" + this.c + ", auctionTrial=" + this.d + ", auctionFallback=" + this.e + ")";
    }

    public final C3885v2 a(String auctionId, JSONObject jSONObject, C3939y2 c3939y2, int i, String auctionFallback) {
        Intrinsics.checkNotNullParameter(auctionId, "auctionId");
        Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
        return new C3885v2(auctionId, jSONObject, c3939y2, i, auctionFallback);
    }

    public static /* synthetic */ C3885v2 a(C3885v2 c3885v2, String str, JSONObject jSONObject, C3939y2 c3939y2, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = c3885v2.a;
        }
        if ((i2 & 2) != 0) {
            jSONObject = c3885v2.b;
        }
        if ((i2 & 4) != 0) {
            c3939y2 = c3885v2.c;
        }
        if ((i2 & 8) != 0) {
            i = c3885v2.d;
        }
        if ((i2 & 16) != 0) {
            str2 = c3885v2.e;
        }
        String str3 = str2;
        C3939y2 c3939y22 = c3939y2;
        return c3885v2.a(str, jSONObject, c3939y22, i, str3);
    }
}
