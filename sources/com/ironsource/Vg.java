package com.ironsource;

import com.ironsource.Z4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Vg implements Yg {
    private final Rg a;

    public Vg(Rg waterfallOperations) {
        Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
        this.a = waterfallOperations;
    }

    @Override // com.ironsource.Yg
    public void a() {
    }

    @Override // com.ironsource.Yg
    public void a(A it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.a.a(it);
        this.a.a(Z4.b.b);
    }

    @Override // com.ironsource.Yg
    public Pd b() {
        return Pd.e;
    }

    @Override // com.ironsource.Yg
    public A c() {
        return this.a.a(0);
    }
}
