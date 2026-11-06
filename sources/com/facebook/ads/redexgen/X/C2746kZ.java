package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2746kZ {
    public final long A00;
    public final EnumC2745kY A01;
    public final String A02;
    public final boolean A03;

    public C2746kZ(String str, boolean z, EnumC2745kY enumC2745kY) {
        this(str, z, enumC2745kY, System.currentTimeMillis());
    }

    public C2746kZ(String str, boolean z, EnumC2745kY enumC2745kY, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC2745kY;
        this.A00 = j;
    }

    public static C2746kZ A00() {
        return new C2746kZ("", true, EnumC2745kY.A06, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC2745kY A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
