package com.ironsource;

import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.eb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3584eb implements ImpressionDataListener {
    private final LevelPlayImpressionDataListener a;

    public C3584eb(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = listener;
    }

    public final LevelPlayImpressionDataListener a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3584eb) {
            return Intrinsics.areEqual(this.a, ((C3584eb) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // com.ironsource.mediationsdk.impressionData.ImpressionDataListener
    public void onImpressionSuccess(C3545c9 impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        this.a.onImpressionSuccess(new LevelPlayImpressionData(impressionData.d()));
    }
}
