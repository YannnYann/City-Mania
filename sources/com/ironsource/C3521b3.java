package com.ironsource;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3521b3 {
    private static final int p = 0;
    private R1 a;
    private int b;
    private long c;
    private boolean d;
    private ArrayList<C3701l3> e;
    private C3701l3 f;
    private int g;
    private int h;
    private A2 i;
    private boolean j;
    private long k;
    private boolean l;
    private boolean m;
    private boolean n;
    private long o;

    public C3521b3() {
        this.a = new R1();
        this.e = new ArrayList<>();
    }

    public int a() {
        return this.b;
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public A2 d() {
        return this.i;
    }

    public long e() {
        return this.k;
    }

    public int f() {
        return this.h;
    }

    public R1 g() {
        return this.a;
    }

    public int h() {
        return this.g;
    }

    public C3701l3 i() {
        for (C3701l3 c3701l3 : this.e) {
            if (c3701l3.d()) {
                return c3701l3;
            }
        }
        C3701l3 c3701l32 = this.f;
        return c3701l32 != null ? c3701l32 : new C3757o5();
    }

    public long j() {
        return this.o;
    }

    public boolean k() {
        return this.j;
    }

    public boolean l() {
        return this.l;
    }

    public boolean m() {
        return this.n;
    }

    public boolean n() {
        return this.m;
    }

    public String toString() {
        return "BannerConfigurations{parallelLoad=" + this.b + ", bidderExclusive=" + this.d + '}';
    }

    public void a(C3701l3 c3701l3) {
        if (c3701l3 != null) {
            this.e.add(c3701l3);
            if (this.f == null) {
                this.f = c3701l3;
            } else if (c3701l3.a(0)) {
                this.f = c3701l3;
            }
        }
    }

    public C3521b3(int i, long j, boolean z, R1 r1, int i2, A2 a2, int i3, boolean z2, long j2, boolean z3, boolean z4, boolean z5, long j3) {
        this.e = new ArrayList<>();
        this.b = i;
        this.c = j;
        this.d = z;
        this.a = r1;
        this.g = i2;
        this.h = i3;
        this.i = a2;
        this.j = z2;
        this.k = j2;
        this.l = z3;
        this.m = z4;
        this.n = z5;
        this.o = j3;
    }

    public C3701l3 a(String str) {
        for (C3701l3 c3701l3 : this.e) {
            if (c3701l3.c().equals(str)) {
                return c3701l3;
            }
        }
        return null;
    }
}
