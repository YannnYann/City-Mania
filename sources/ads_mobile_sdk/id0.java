package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class id0 {
    public dw2 A;
    public dw2 B;
    public dw2 C;
    public dw2 D;
    public dw2 E;
    public final id0 a = this;
    public vh1 b;
    public dw2 c;
    public vh1 d;
    public dw2 e;
    public dw2 f;
    public dw2 g;
    public dw2 h;
    public dw2 i;
    public vh1 j;
    public dw2 k;
    public dw2 l;
    public dw2 m;
    public sc3 n;
    public dw2 o;
    public dw2 p;
    public dw2 q;
    public dw2 r;
    public dw2 s;
    public dw2 t;
    public dw2 u;
    public dw2 v;
    public dw2 w;
    public dw2 x;
    public dw2 y;
    public dw2 z;

    public final void b() {
        ha haVar = new ha(this.d);
        Object obj = do0.c;
        do0 do0Var = new do0(haVar);
        this.u = do0Var;
        this.v = new do0(new ik(this.b, this.s, this.j, do0Var));
        this.w = new do0(new jz0(this.b, this.s, this.u, this.j, this.k));
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(3, 0);
        rc3Var.a(this.t);
        rc3Var.a(this.v);
        rc3Var.a(this.w);
        this.x = new do0(new rc1(this.n, rc3Var.a(), this.d, this.s));
        this.y = new do0(dl3.a);
        this.z = new do0(new mr3(this.c));
        rc3 rc3Var2 = new rc3(7, 0);
        rc3Var2.a(this.y);
        rc3Var2.a(this.e);
        rc3Var2.a(this.f);
        rc3Var2.a(this.z);
        rc3Var2.a(this.g);
        rc3Var2.a(this.v);
        rc3Var2.a(this.w);
        this.A = new do0(new il3(this.y, rc3Var2.a()));
        do0 do0Var2 = new do0(new b(this.s));
        this.B = do0Var2;
        this.C = new do0(new ja(this.x, this.t, this.A, this.s, this.k, new do0(new dx1(this.b, this.s, do0Var2, this.j)), this.j));
        this.D = new do0(new ga(this.b));
        this.E = new do0(new zl3(this.d));
    }

    public id0(v9 v9Var, z9 z9Var, ba baVar, da daVar, ExecutorService executorService, Context context, na naVar) {
        a(v9Var, z9Var, baVar, daVar, executorService, context, naVar);
        b();
    }

    public final ia a() {
        return (ia) this.C.get();
    }

    public final void a(v9 v9Var, z9 z9Var, ba baVar, da daVar, ExecutorService executorService, Context context, na naVar) {
        this.b = vh1.a(context);
        ay ayVar = zx.a;
        Object obj = do0.c;
        this.c = new do0(ayVar);
        vh1 vh1VarA = vh1.a(executorService);
        this.d = vh1VarA;
        this.e = new do0(new ry3(this.b, this.c, vh1VarA));
        this.f = new do0(new sa2(this.b, this.d));
        this.g = new do0(new gx3(this.b, this.d));
        vh1 vh1Var = this.d;
        vh1Var.getClass();
        this.h = new do0(new ms1(new do0(vh1Var), this.c));
        this.i = new do0(ho2.a);
        vh1 vh1VarA2 = vh1.a(naVar);
        this.j = vh1VarA2;
        this.k = new do0(new ka3(this.h, this.i, vh1VarA2));
        do0 do0Var = new do0(new y71(this.d, this.j));
        this.l = do0Var;
        this.m = new do0(new tt1(this.b, this.k, this.d, do0Var, this.j));
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(4, 0);
        rc3Var.a(this.e);
        rc3Var.a(this.f);
        rc3Var.a(this.g);
        rc3Var.a(this.m);
        this.n = rc3Var.a();
        this.o = new do0(new w9(v9Var, new ed0(this)));
        this.p = new do0(new aa(z9Var, new fd0(this)));
        this.q = new do0(new ca(baVar, new gd0(this)));
        this.r = new do0(new ea(daVar, new hd0(this)));
        do0 do0Var2 = new do0(new us3(this.c, this.m));
        this.s = do0Var2;
        this.t = new do0(new xj3(this.j, new do0(new uj3(this.o, this.p, this.q, this.r, this.j, this.d, do0Var2)), this.m, this.d, this.s));
    }
}
