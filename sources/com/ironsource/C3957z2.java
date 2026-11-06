package com.ironsource;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3957z2 {
    private final String a;
    private final com.ironsource.mediationsdk.d b;

    public C3957z2(String serverData) {
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        this.a = serverData;
        this.b = com.ironsource.mediationsdk.d.b();
    }

    private final String c() {
        return this.a;
    }

    public final C3957z2 a(String serverData) {
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        return new C3957z2(serverData);
    }

    public final Map<String, String> b() {
        Map<String, String> mapB = this.b.b(this.a);
        Intrinsics.checkNotNullExpressionValue(mapB, "getAuctionResponseServerDataParams(...)");
        return mapB;
    }

    public final String d() {
        String strC = this.b.c(this.a);
        Intrinsics.checkNotNullExpressionValue(strC, "getDynamicDemandSourceIdFromServerData(...)");
        return strC;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3957z2) && Intrinsics.areEqual(this.a, ((C3957z2) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "AuctionServerData(serverData=" + this.a + ")";
    }

    public static /* synthetic */ C3957z2 a(C3957z2 c3957z2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3957z2.a;
        }
        return c3957z2.a(str);
    }

    public final String a() {
        String strA = this.b.a(this.a);
        Intrinsics.checkNotNullExpressionValue(strA, "getAdmFromServerData(...)");
        return strA;
    }
}
