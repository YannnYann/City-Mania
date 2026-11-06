package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3931xc {
    private final EnumC3731mf a;
    private final String b;
    private final W7 c;
    private final String d;

    public C3931xc(EnumC3731mf recordType, String advertiserBundleId, W7 adProvider, String adInstanceId) {
        Intrinsics.checkNotNullParameter(recordType, "recordType");
        Intrinsics.checkNotNullParameter(advertiserBundleId, "advertiserBundleId");
        Intrinsics.checkNotNullParameter(adProvider, "adProvider");
        Intrinsics.checkNotNullParameter(adInstanceId, "adInstanceId");
        this.a = recordType;
        this.b = advertiserBundleId;
        this.c = adProvider;
        this.d = adInstanceId;
    }

    public final String a() {
        return this.d;
    }

    public final W7 b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final EnumC3731mf d() {
        return this.a;
    }

    public final C3628h1 a(Ob<C3931xc, C3628h1> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }
}
