package com.ironsource;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ie {
    private static Boolean b;
    public static final Ie a = new Ie();
    private static He c = He.a;

    private Ie() {
    }

    public final synchronized He a() {
        return c;
    }

    public final He b() {
        Boolean bool = b;
        if (bool == null || Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return He.a;
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return c;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final synchronized void a(He he) {
        Intrinsics.checkNotNullParameter(he, "<set-?>");
        c = he;
    }

    public final void a(boolean z) {
        b = Boolean.valueOf(z);
    }
}
