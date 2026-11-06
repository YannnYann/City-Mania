package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class C1 {
    private final String a;
    private final String b;
    private final int c;
    private final int d;
    private final String e;
    private final int f;
    private final long g;
    private final long h;
    private final String i;
    private final int j;
    private final String k;
    private final int l;

    public C1(String signature, String compactStack, int i, int i2, String topSdkFrame, int i3, long j, long j2, String description, int i4, String processLabel, int i5) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(compactStack, "compactStack");
        Intrinsics.checkNotNullParameter(topSdkFrame, "topSdkFrame");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(processLabel, "processLabel");
        this.a = signature;
        this.b = compactStack;
        this.c = i;
        this.d = i2;
        this.e = topSdkFrame;
        this.f = i3;
        this.g = j;
        this.h = j2;
        this.i = description;
        this.j = i4;
        this.k = processLabel;
        this.l = i5;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.j;
    }

    public final String c() {
        return this.k;
    }

    public final int d() {
        return this.l;
    }

    public final String e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1)) {
            return false;
        }
        C1 c1 = (C1) obj;
        return Intrinsics.areEqual(this.a, c1.a) && Intrinsics.areEqual(this.b, c1.b) && this.c == c1.c && this.d == c1.d && Intrinsics.areEqual(this.e, c1.e) && this.f == c1.f && this.g == c1.g && this.h == c1.h && Intrinsics.areEqual(this.i, c1.i) && this.j == c1.j && Intrinsics.areEqual(this.k, c1.k) && this.l == c1.l;
    }

    public final int f() {
        return this.c;
    }

    public final int g() {
        return this.d;
    }

    public final String h() {
        return this.e;
    }

    public int hashCode() {
        return (((((((((((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + this.e.hashCode()) * 31) + Integer.hashCode(this.f)) * 31) + Long.hashCode(this.g)) * 31) + Long.hashCode(this.h)) * 31) + this.i.hashCode()) * 31) + Integer.hashCode(this.j)) * 31) + this.k.hashCode()) * 31) + Integer.hashCode(this.l);
    }

    public final int i() {
        return this.f;
    }

    public final long j() {
        return this.g;
    }

    public final long k() {
        return this.h;
    }

    public final String l() {
        return this.i;
    }

    public final long m() {
        return this.g;
    }

    public final String n() {
        return this.b;
    }

    public final String o() {
        return this.i;
    }

    public final int p() {
        return this.j;
    }

    public final int q() {
        return this.f;
    }

    public final String r() {
        return this.k;
    }

    public final long s() {
        return this.h;
    }

    public final int t() {
        return this.l;
    }

    public String toString() {
        return "AnrReport(signature=" + this.a + ", compactStack=" + this.b + ", stackDepth=" + this.c + ", topSdkFrameIndex=" + this.d + ", topSdkFrame=" + this.e + ", importance=" + this.f + ", anrTimestampMillis=" + this.g + ", reportLagMillis=" + this.h + ", description=" + this.i + ", exitReason=" + this.j + ", processLabel=" + this.k + ", sequence=" + this.l + ")";
    }

    public final String u() {
        return this.a;
    }

    public final int v() {
        return this.c;
    }

    public final String w() {
        return this.e;
    }

    public final int x() {
        return this.d;
    }

    public final C1 a(String signature, String compactStack, int i, int i2, String topSdkFrame, int i3, long j, long j2, String description, int i4, String processLabel, int i5) {
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(compactStack, "compactStack");
        Intrinsics.checkNotNullParameter(topSdkFrame, "topSdkFrame");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(processLabel, "processLabel");
        return new C1(signature, compactStack, i, i2, topSdkFrame, i3, j, j2, description, i4, processLabel, i5);
    }
}
