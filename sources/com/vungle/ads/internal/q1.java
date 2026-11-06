package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.internal.model.j3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class q1 extends x0 implements com.vungle.ads.internal.presenter.z {
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q1(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void a(String str) {
        this.s = str;
    }

    public final void b(String str) {
        this.t = str;
    }

    public final void c(String str) {
        this.u = str;
    }

    public final void d(String str) {
        this.r = str;
    }

    public final void e(String str) {
        this.v = str;
    }

    @Override // com.vungle.ads.internal.x0
    public final com.vungle.ads.internal.presenter.z k() {
        return this;
    }

    public final String l() {
        return this.s;
    }

    public final String m() {
        return this.t;
    }

    public final String n() {
        return this.u;
    }

    public final String o() {
        return this.r;
    }

    public final String p() {
        return this.v;
    }

    @Override // com.vungle.ads.internal.r
    public final boolean a(j3 placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return placement.j();
    }
}
