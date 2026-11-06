package com.ironsource;

import android.content.Context;

/* JADX INFO: renamed from: com.ironsource.c5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3541c5 {
    private static C3541c5 h;
    private String a;
    private String b;
    private String c;
    private String d;
    private int e;
    private String f;
    private final B7 g;

    private C3541c5(Context context) {
        B7 b7A = Pb.k0().a();
        this.g = b7A;
        this.a = b7A.q();
        this.b = b7A.l();
        this.c = b7A.f();
        this.d = b7A.i();
        this.e = b7A.e();
        this.f = b7A.v(context);
    }

    public static C3541c5 b(Context context) {
        if (h == null) {
            h = new C3541c5(context);
        }
        return h;
    }

    public static void g() {
        h = null;
    }

    public int a() {
        return this.e;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.a;
    }

    public String e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }

    public float a(Context context) {
        return this.g.F(context);
    }

    public String b() {
        return this.f;
    }
}
