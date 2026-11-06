package com.vungle.ads.internal;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b1 implements Runnable {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final /* synthetic */ c1 c;

    public b1(c1 c1Var) {
        this.c = c1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z0 z0VarB;
        z0 z0VarB2;
        this.c.f = false;
        for (Map.Entry entry : this.c.a.entrySet()) {
            View view = (View) entry.getKey();
            if (c1.a(this.c, view, ((a1) entry.getValue()).c())) {
                this.a.add(view);
            } else {
                this.b.add(view);
            }
        }
        for (View view2 : this.a) {
            a1 a1Var = (a1) this.c.a.get(view2);
            if (a1Var != null && (z0VarB2 = a1Var.b()) != null) {
                z0VarB2.onImpression(view2);
            }
            c1 c1Var = this.c;
            Intrinsics.checkNotNullExpressionValue(view2, "view");
            c1Var.a(view2);
        }
        this.a.clear();
        for (View view3 : this.b) {
            a1 a1Var2 = (a1) this.c.a.get(view3);
            if (a1Var2 != null && (z0VarB = a1Var2.b()) != null) {
                z0VarB.onViewInvisible(view3);
            }
        }
        this.b.clear();
        Map map = this.c.a;
        if (map.isEmpty()) {
            return;
        }
        for (Map.Entry entry2 : map.entrySet()) {
            View view4 = (View) entry2.getKey();
            if (((a1) entry2.getValue()).d() == null && view4.isAttachedToWindow()) {
                c1.b(this.c);
                return;
            }
        }
    }
}
