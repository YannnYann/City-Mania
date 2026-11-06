package com.ironsource;

import com.ironsource.V0;
import com.unity3d.mediation.LevelPlay;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class X0 {
    public final V0 a(String adUnitId, LevelPlay.AdFormat adFormat, M8 sdkConfigService) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(sdkConfigService, "sdkConfigService");
        if (adUnitId.length() == 0) {
            return new V0.a(W0.a);
        }
        if (!sdkConfigService.c()) {
            return new V0.a(W0.b);
        }
        C3468ab c3468abA = sdkConfigService.a();
        return (c3468abA == null || !c3468abA.a(adUnitId, adFormat)) ? new V0.a(W0.c) : V0.b.a;
    }
}
