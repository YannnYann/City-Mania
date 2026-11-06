package com.ironsource;

import com.ironsource.mediationsdk.ISBannerSize;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3594f3 extends C3840sd {
    private final C3770p0 b;
    private final ISBannerSize c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3594f3(C3770p0 adTools, ISBannerSize size, String placement) {
        super(placement);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.b = adTools;
        this.c = size;
    }

    @Override // com.ironsource.C3840sd, com.ironsource.D0
    public Map<String, Object> a(B0 b0) {
        Map<String, Object> mutableMap = MapsKt__MapsKt.toMutableMap(super.a(b0));
        this.b.a(mutableMap, this.c);
        return mutableMap;
    }
}
