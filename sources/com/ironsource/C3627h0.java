package com.ironsource;

import com.ironsource.mediationsdk.adquality.AdQualityBridge;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3627h0 implements ImpressionDataListener {
    private final AdQualityBridge a;
    private final C3948yb b;

    public C3627h0(AdQualityBridge adQualityBridge, C3948yb tools) {
        Intrinsics.checkNotNullParameter(adQualityBridge, "adQualityBridge");
        Intrinsics.checkNotNullParameter(tools, "tools");
        this.a = adQualityBridge;
        this.b = tools;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3627h0 c3627h0, C3545c9 c3545c9) {
        c3627h0.a.sendCustomMediationRevenue$mediationsdk_release(c3545c9);
    }

    @Override // com.ironsource.mediationsdk.impressionData.ImpressionDataListener
    public void onImpressionSuccess(final C3545c9 impressionData) {
        Intrinsics.checkNotNullParameter(impressionData, "impressionData");
        this.b.a(new Runnable() { // from class: com.ironsource.h0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3627h0.a(this.f$0, impressionData);
            }
        });
    }

    public /* synthetic */ C3627h0(AdQualityBridge adQualityBridge, C3948yb c3948yb, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(adQualityBridge, (i & 2) != 0 ? new C3948yb() : c3948yb);
    }
}
