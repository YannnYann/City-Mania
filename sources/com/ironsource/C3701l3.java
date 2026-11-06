package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3701l3 extends AbstractC3850t3 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3701l3(int i, String placementName, boolean z, C3747nd c3747nd) {
        super(i, placementName, z, c3747nd);
        Intrinsics.checkNotNullParameter(placementName, "placementName");
    }

    @Override // com.ironsource.AbstractC3850t3
    public String toString() {
        return super.toString() + ", placementId: " + b();
    }
}
