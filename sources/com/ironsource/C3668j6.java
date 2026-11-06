package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3668j6 {
    @InterfaceC3930xb
    public final C3651i6 a(InterfaceC3686k6 listener, C3770p0 adTools, C3609g0 adProperties, InterfaceC3889v6 fullscreenAdUnitFactory) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        return new C3651i6(listener, adTools, adProperties, null, fullscreenAdUnitFactory, 8, null);
    }
}
