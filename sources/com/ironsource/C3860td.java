package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.td, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3860td {
    private final String a;
    private final LevelPlay.AdFormat b;

    public C3860td(String placementName, LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.a = placementName;
        this.b = adFormat;
    }

    public final String a() {
        return this.a + "_" + this.b;
    }
}
