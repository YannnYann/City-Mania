package com.ironsource;

import com.ironsource.Z4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Wg implements Yg {
    private final Rg a;
    private int b;

    public Wg(Rg waterfallOperations) {
        Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
        this.a = waterfallOperations;
    }

    @Override // com.ironsource.Yg
    public void a(A it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.b++;
        this.a.a(it);
    }

    @Override // com.ironsource.Yg
    public Pd b() {
        return this.b >= 2 ? Pd.d : !this.a.a() ? Pd.c : Pd.b;
    }

    @Override // com.ironsource.Yg
    public A c() {
        return this.a.a(this.b);
    }

    @Override // com.ironsource.Yg
    public void a() {
        this.a.a(Z4.c.b);
    }
}
