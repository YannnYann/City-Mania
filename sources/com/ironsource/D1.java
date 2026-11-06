package com.ironsource;

/* JADX INFO: loaded from: classes3.dex */
public final class D1 {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;

    public D1(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final int e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D1)) {
            return false;
        }
        D1 d1 = (D1) obj;
        return this.a == d1.a && this.b == d1.b && this.c == d1.c && this.d == d1.d && this.e == d1.e && this.f == d1.f;
    }

    public final int f() {
        return this.f;
    }

    public final int g() {
        return this.f;
    }

    public final int h() {
        return this.d;
    }

    public int hashCode() {
        return (((((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Integer.hashCode(this.e)) * 31) + Integer.hashCode(this.f);
    }

    public final int i() {
        return this.e;
    }

    public final int j() {
        return this.a;
    }

    public final int k() {
        return this.c;
    }

    public final int l() {
        return this.b;
    }

    public String toString() {
        return "AnrScanSummary(totalAnrRecords=" + this.a + ", withoutTrace=" + this.b + ", withoutSdkFrame=" + this.c + ", staleAnrRecords=" + this.d + ", staleUnknownRecords=" + this.e + ", reported=" + this.f + ")";
    }

    public final D1 a(int i, int i2, int i3, int i4, int i5, int i6) {
        return new D1(i, i2, i3, i4, i5, i6);
    }

    public static /* synthetic */ D1 a(D1 d1, int i, int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i = d1.a;
        }
        if ((i7 & 2) != 0) {
            i2 = d1.b;
        }
        if ((i7 & 4) != 0) {
            i3 = d1.c;
        }
        if ((i7 & 8) != 0) {
            i4 = d1.d;
        }
        if ((i7 & 16) != 0) {
            i5 = d1.e;
        }
        if ((i7 & 32) != 0) {
            i6 = d1.f;
        }
        int i8 = i5;
        int i9 = i6;
        return d1.a(i, i2, i3, i4, i8, i9);
    }
}
