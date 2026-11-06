package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.unity3d.mediation.LevelPlayAdSize;
import com.vungle.ads.internal.protos.Sdk;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Q2 extends C3609g0 {
    private final LevelPlayAdSize g;
    private final Boolean h;
    private final Long i;

    public /* synthetic */ Q2(UUID uuid, String str, C3729md c3729md, LevelPlayAdSize levelPlayAdSize, Boolean bool, Long l, Tf tf, Double d, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uuid, str, (i & 4) != 0 ? null : c3729md, (i & 8) != 0 ? LevelPlayAdSize.BANNER : levelPlayAdSize, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? null : l, (i & 64) != 0 ? null : tf, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : d);
    }

    public final LevelPlayAdSize i() {
        return this.g;
    }

    public final Boolean j() {
        return this.h;
    }

    public final Long k() {
        return this.i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q2(UUID adId, String adUnitId, C3729md c3729md, LevelPlayAdSize adSize, Boolean bool, Long l, Tf tf, Double d) {
        super(IronSource.a.BANNER, adId, adUnitId, c3729md, tf, d);
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.g = adSize;
        this.h = bool;
        this.i = l;
    }

    public Q2() {
        this(C3962z7.a.a(), "", null, null, null, null, null, null, 252, null);
    }
}
