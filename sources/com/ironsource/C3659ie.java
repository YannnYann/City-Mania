package com.ironsource;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.ironsource.ie, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3659ie {
    private static final int o = 0;
    private ArrayList<C3729md> a;
    private R1 b;
    private int c;
    private boolean d;
    private int e;
    private int f;
    private int g;
    private long h;
    private boolean i;
    private boolean j;
    private boolean k;
    private C3729md l;
    private A2 m;
    private boolean n;

    public C3659ie() {
        this.a = new ArrayList<>();
        this.b = new R1();
    }

    public void a(C3729md c3729md) {
        if (c3729md != null) {
            this.a.add(c3729md);
            if (this.l == null) {
                this.l = c3729md;
            } else if (c3729md.a(0)) {
                this.l = c3729md;
            }
        }
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.f;
    }

    public boolean d() {
        return this.n;
    }

    public ArrayList<C3729md> e() {
        return this.a;
    }

    public boolean f() {
        return this.i;
    }

    public int g() {
        return this.c;
    }

    public int h() {
        return this.e;
    }

    public long i() {
        return TimeUnit.SECONDS.toMillis(this.e);
    }

    public boolean j() {
        return this.d;
    }

    public A2 k() {
        return this.m;
    }

    public long l() {
        return this.h;
    }

    public R1 m() {
        return this.b;
    }

    public boolean n() {
        return this.k;
    }

    public boolean o() {
        return this.j;
    }

    public String toString() {
        return "RewardedVideoConfigurations{parallelLoad=" + this.c + ", bidderExclusive=" + this.d + '}';
    }

    public C3659ie(int i, boolean z, int i2, int i3, R1 r1, A2 a2, int i4, boolean z2, long j, boolean z3, boolean z4, boolean z5) {
        this.a = new ArrayList<>();
        this.c = i;
        this.d = z;
        this.e = i2;
        this.b = r1;
        this.f = i3;
        this.m = a2;
        this.g = i4;
        this.n = z2;
        this.h = j;
        this.i = z3;
        this.j = z4;
        this.k = z5;
    }

    public C3729md a(String str) {
        for (C3729md c3729md : this.a) {
            if (c3729md.c().equals(str)) {
                return c3729md;
            }
        }
        return null;
    }

    public C3729md a() {
        for (C3729md c3729md : this.a) {
            if (c3729md.d()) {
                return c3729md;
            }
        }
        return this.l;
    }
}
