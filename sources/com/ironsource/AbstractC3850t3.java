package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.t3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC3850t3 {
    private final int a;
    private final String b;
    private final boolean c;
    private final C3747nd d;

    public AbstractC3850t3(int i, String placementName, boolean z, C3747nd c3747nd) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a = i;
        this.b = placementName;
        this.c = z;
        this.d = c3747nd;
    }

    public final C3747nd a() {
        return this.d;
    }

    public final int b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean d() {
        return this.c;
    }

    public String toString() {
        return "placement name: " + this.b;
    }

    public final boolean a(int i) {
        return this.a == i;
    }

    public /* synthetic */ AbstractC3850t3(int i, String str, boolean z, C3747nd c3747nd, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, str, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : c3747nd);
    }
}
