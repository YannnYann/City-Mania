package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.lf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3713lf implements Ob<AbstractC3606ff, C3882v> {
    @Override // com.ironsource.Ob
    public C3882v a(AbstractC3606ff input) {
        String strH;
        String strI;
        String strG;
        W7 w7E;
        String strC;
        Intrinsics.checkNotNullParameter(input, "input");
        EnumC3731mf enumC3731mfB = input.b();
        O oA = input.a();
        if (oA == null || (strH = oA.h()) == null) {
            strH = "0";
        }
        O oA2 = input.a();
        if (oA2 == null || (strI = oA2.i()) == null) {
            strI = "0";
        }
        O oA3 = input.a();
        if (oA3 == null || (strG = oA3.g()) == null) {
            strG = "0";
        }
        O oA4 = input.a();
        if (oA4 == null || (w7E = oA4.e()) == null) {
            w7E = W7.c;
        }
        O oA5 = input.a();
        return new C3882v(enumC3731mfB, strH, strI, strG, w7E, (oA5 == null || (strC = oA5.c()) == null) ? "0" : strC);
    }
}
