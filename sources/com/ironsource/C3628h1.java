package com.ironsource;

import java.util.Calendar;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3628h1 {
    private final EnumC3731mf a;
    private final W7 b;
    private final String c;
    private final long d;

    public C3628h1(EnumC3731mf recordType, W7 adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.a = recordType;
        this.b = adProvider;
        this.c = adInstanceId;
        this.d = Calendar.getInstance().getTimeInMillis() / ((long) 1000);
    }

    public final String a() {
        return this.c;
    }

    public final W7 b() {
        return this.b;
    }

    public final Map<String, Object> c() {
        return MapsKt__MapsKt.mapOf(TuplesKt.to(Ba.c, Integer.valueOf(this.b.c())), TuplesKt.to("ts", String.valueOf(this.d)));
    }

    public final Map<String, Object> d() {
        return MapsKt__MapsKt.mapOf(TuplesKt.to(Ba.b, this.c), TuplesKt.to(Ba.c, Integer.valueOf(this.b.c())), TuplesKt.to("ts", String.valueOf(this.d)), TuplesKt.to("rt", Integer.valueOf(this.a.ordinal())));
    }

    public final EnumC3731mf e() {
        return this.a;
    }

    public final long f() {
        return this.d;
    }
}
