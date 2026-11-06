package com.ironsource;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: renamed from: com.ironsource.e5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3578e5 {
    public static final C3578e5 a = new C3578e5();

    private C3578e5() {
    }

    private final int a(Context context, int i) {
        return MathKt__MathJVMKt.roundToInt(i / context.getResources().getDisplayMetrics().density);
    }

    public final int b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, context.getResources().getDisplayMetrics().widthPixels);
    }

    public final int a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, context.getResources().getDisplayMetrics().heightPixels);
    }
}
