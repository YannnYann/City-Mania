package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class G0 implements Ob<F0, C3931xc> {
    @Override // com.ironsource.Ob
    public C3931xc a(F0 input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new C3931xc(input.e(), input.c(), input.b(), input.a());
    }
}
