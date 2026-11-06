package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import java.util.UUID;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3657ic extends C3609g0 {
    public /* synthetic */ C3657ic(UUID uuid, String str, C3729md c3729md, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(uuid, str, (i & 4) != 0 ? null : c3729md);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3657ic(UUID adId, String adUnitId, C3729md c3729md) {
        super(IronSource.a.NATIVE_AD, adId, adUnitId, c3729md, null, null, 48, null);
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }

    public C3657ic() {
        this(C3962z7.a.a(), "", null, 4, null);
    }
}
