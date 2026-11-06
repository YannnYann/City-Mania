package com.vungle.ads.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends Lambda implements Function1 {
    public final /* synthetic */ View a;
    public final /* synthetic */ j b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(WebView webView, j jVar, int i) {
        super(1);
        this.a = webView;
        this.b = jVar;
        this.c = i;
    }

    public final void a(final Bitmap bitmap) {
        Context context = this.a.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "view.context");
        com.vungle.ads.internal.executor.j jVarD = ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new h(context)).getValue())).d();
        final j jVar = this.b;
        final int i = this.c;
        jVarD.execute(new Runnable() { // from class: com.vungle.ads.internal.util.i$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                i.a(jVar, bitmap, i);
            }
        });
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        a((Bitmap) obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0060 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(com.vungle.ads.internal.util.j r4, android.graphics.Bitmap r5, int r6) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r4.getClass()     // Catch: java.lang.Throwable -> L2a
            kotlin.Pair r6 = com.vungle.ads.internal.util.j.a(r5, r6)     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r0 = r6.component1()     // Catch: java.lang.Throwable -> L2a
            java.lang.Number r0 = (java.lang.Number) r0     // Catch: java.lang.Throwable -> L2a
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r6 = r6.component2()     // Catch: java.lang.Throwable -> L2a
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L2a
            kotlin.jvm.functions.Function2 r1 = com.vungle.ads.internal.util.j.a(r4)     // Catch: java.lang.Throwable -> L2a
            if (r1 == 0) goto L2c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L2a
            r1.invoke(r0, r6)     // Catch: java.lang.Throwable -> L2a
            goto L2c
        L2a:
            r6 = move-exception
            goto L2f
        L2c:
            if (r5 == 0) goto L63
            goto L60
        L2f:
            boolean r0 = com.vungle.ads.internal.util.v.a     // Catch: java.lang.Throwable -> L5c
            java.lang.String r0 = "BlackScreenDetector"
            java.lang.String r1 = "Black screen detection failed"
            com.vungle.ads.internal.util.u.a(r0, r1, r6)     // Catch: java.lang.Throwable -> L5c
            kotlin.jvm.functions.Function2 r0 = com.vungle.ads.internal.util.j.a(r4)     // Catch: java.lang.Throwable -> L5c
            if (r0 == 0) goto L5e
            r1 = -1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r2.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r3 = "Internal calculation error: "
            r2.append(r3)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r6.getMessage()     // Catch: java.lang.Throwable -> L5c
            r2.append(r6)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L5c
            r0.invoke(r1, r6)     // Catch: java.lang.Throwable -> L5c
            goto L5e
        L5c:
            r6 = move-exception
            goto L67
        L5e:
            if (r5 == 0) goto L63
        L60:
            r5.recycle()
        L63:
            com.vungle.ads.internal.util.j.b(r4)
            return
        L67:
            if (r5 == 0) goto L6c
            r5.recycle()
        L6c:
            com.vungle.ads.internal.util.j.b(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.util.i.a(com.vungle.ads.internal.util.j, android.graphics.Bitmap, int):void");
    }
}
