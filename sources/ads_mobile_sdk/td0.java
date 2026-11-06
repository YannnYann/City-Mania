package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class td0 {
    public yc1 A;
    public dw2 B;
    public final id0 a;
    public final nd0 b;
    public vh1 c;
    public vh1 d;
    public vh1 e;
    public po0 f;
    public rm0 g;
    public vh1 h;
    public na2 i;
    public tp0 j;
    public kr3 k;
    public wp1 l;
    public vh1 m;
    public pa3 n;
    public gk o;
    public ou2 p;
    public k13 q;
    public g1 r;
    public sc3 s;
    public vh1 t;
    public q u;
    public dw2 v;
    public dy3 w;
    public m92 x;
    public sc3 y;
    public pr3 z;

    public td0(id0 id0Var, nd0 nd0Var, Context context, View view, Activity activity, String str, Map map, xf xfVar, fl3 fl3Var) {
        this.a = id0Var;
        this.b = nd0Var;
        a(context, view, activity, str, map, xfVar, fl3Var);
        a();
    }

    public final void a(Context context, View view, Activity activity, String str, Map map, xf xfVar, fl3 fl3Var) {
        vh1 vh1Var;
        vh1 vh1Var2;
        vh1 vh1Var3;
        this.c = vh1.a(fl3Var);
        if (str == null) {
            vh1Var = vh1.b;
        } else {
            vh1Var = new vh1(str);
        }
        this.d = vh1Var;
        vh1 vh1VarA = vh1.a(xfVar);
        this.e = vh1VarA;
        dw2 dw2Var = this.b.c;
        id0 id0Var = this.a;
        vh1 vh1Var4 = id0Var.b;
        dw2 dw2Var2 = id0Var.s;
        this.f = new po0(vh1VarA, dw2Var, vh1Var4, dw2Var2);
        this.g = new rm0(vh1VarA, dw2Var, dw2Var2);
        vh1 vh1VarA2 = vh1.a(map);
        this.h = vh1VarA2;
        vh1 vh1Var5 = this.e;
        dw2 dw2Var3 = this.b.c;
        id0 id0Var2 = this.a;
        dw2 dw2Var4 = id0Var2.s;
        this.i = new na2(vh1Var5, dw2Var3, vh1VarA2, dw2Var4);
        this.j = new tp0(vh1Var5, dw2Var3, id0Var2.j, dw2Var4);
        this.k = new kr3(vh1Var5, dw2Var3, this.c, vh1VarA2, dw2Var4);
        this.l = new wp1(vh1Var5, dw2Var3, dw2Var4);
        vh1 vh1VarA3 = vh1.a(context);
        this.m = vh1VarA3;
        vh1 vh1Var6 = this.e;
        dw2 dw2Var5 = this.b.c;
        vh1 vh1Var7 = this.c;
        vh1 vh1Var8 = this.h;
        id0 id0Var3 = this.a;
        dw2 dw2Var6 = id0Var3.s;
        this.n = new pa3(vh1Var6, dw2Var5, vh1Var7, vh1VarA3, vh1Var8, dw2Var6);
        vh1 vh1Var9 = id0Var3.b;
        vh1 vh1Var10 = id0Var3.j;
        this.o = new gk(vh1Var6, dw2Var5, vh1Var8, vh1Var9, vh1Var7, vh1Var10, dw2Var6);
        this.p = new ou2(vh1Var6, dw2Var5, vh1Var9, dw2Var6);
        this.q = new k13(vh1Var6, dw2Var5, vh1Var8, vh1Var9, dw2Var6);
        this.r = new g1(vh1Var6, vh1Var8, vh1Var10, dw2Var6);
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(11, 0);
        rc3Var.a(this.f);
        rc3Var.a(this.g);
        rc3Var.a(this.i);
        rc3Var.a(this.j);
        rc3Var.a(this.k);
        rc3Var.a(this.l);
        rc3Var.a(this.n);
        rc3Var.a(this.o);
        rc3Var.a(this.p);
        rc3Var.a(this.q);
        rc3Var.a(this.r);
        this.s = rc3Var.a();
        if (view == null) {
            vh1Var2 = vh1.b;
        } else {
            vh1Var2 = new vh1(view);
        }
        this.t = vh1Var2;
        if (activity == null) {
            vh1Var3 = vh1.b;
        } else {
            vh1Var3 = new vh1(activity);
        }
        this.u = new q(this.e, this.b.c, vh1Var2, vh1Var3, this.a.s);
        oh3 oh3Var = new oh3(this.m);
        Object obj = do0.c;
        do0 do0Var = new do0(oh3Var);
        this.v = do0Var;
        vh1 vh1Var11 = this.e;
        dw2 dw2Var7 = this.b.c;
        vh1 vh1Var12 = this.t;
        dw2 dw2Var8 = this.a.s;
        this.w = new dy3(vh1Var11, dw2Var7, do0Var, vh1Var12, dw2Var8);
        this.x = new m92(vh1Var11, dw2Var7, this.h, dw2Var8);
        rc3 rc3Var2 = new rc3(12, 0);
        rc3Var2.a(this.f);
        rc3Var2.a(this.g);
        rc3Var2.a(this.j);
        rc3Var2.a(this.u);
        rc3Var2.a(this.w);
        rc3Var2.a(this.k);
        rc3Var2.a(this.l);
        rc3Var2.a(this.n);
        rc3Var2.a(this.o);
        rc3Var2.a(this.p);
        rc3Var2.a(this.q);
        rc3Var2.a(this.x);
        this.y = rc3Var2.a();
        this.z = new pr3(this.e, this.b.c, this.h, this.v, this.a.s);
    }

    public final void a() {
        this.A = new yc1(this.e, this.b.c, this.h, this.m, this.a.s);
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(13, 0);
        rc3Var.a(this.f);
        rc3Var.a(this.g);
        rc3Var.a(this.j);
        rc3Var.a(this.u);
        rc3Var.a(this.w);
        rc3Var.a(this.k);
        rc3Var.a(this.l);
        rc3Var.a(this.n);
        rc3Var.a(this.o);
        rc3Var.a(this.p);
        rc3Var.a(this.q);
        rc3Var.a(this.z);
        rc3Var.a(this.A);
        sc3 sc3VarA = rc3Var.a();
        id0 id0Var = this.a;
        mh3 mh3Var = new mh3(id0Var.u, id0Var.B, this.b.c, this.c, this.d, this.e, this.s, this.y, sc3VarA, id0Var.s);
        Object obj = do0.c;
        this.B = new do0(mh3Var);
    }
}
