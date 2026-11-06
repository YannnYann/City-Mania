package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;

/* JADX INFO: renamed from: com.ironsource.rf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3824rf implements F1 {
    public static final C3824rf a = new C3824rf();
    private static final String b = "anr_reporter_watermark";

    private C3824rf() {
    }

    @Override // com.ironsource.F1
    public long a() {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext == null) {
            return -1L;
        }
        String strC = IronSourceUtils.c(applicationContext, b, "");
        Intrinsics.checkNotNullExpressionValue(strC, "getStringFromSharedPrefs(...)");
        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strC);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return -1L;
    }

    @Override // com.ironsource.F1
    public void a(long j) {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        IronSourceUtils.f(applicationContext, b, String.valueOf(j));
    }
}
