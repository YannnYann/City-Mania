package com.google.android.libraries.ads.mobile.sdk.internal.webview;

import ads_mobile_sdk.nr1;
import ads_mobile_sdk.r31;
import ads_mobile_sdk.r41;
import ads_mobile_sdk.w21;
import android.net.Uri;
import androidx.annotation.Keep;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes3.dex */
public final class PerAdNativeJavscriptEngineJsContext implements nr1 {
    public final nr1 a;
    public final String b;
    public final Mutex c;

    @Keep
    private final Set<r41> perAdGmsgHandlers;

    public PerAdNativeJavscriptEngineJsContext(nr1 jsContext, String str) {
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        this.a = jsContext;
        this.b = str;
        this.c = MutexKt.Mutex(false);
        this.perAdGmsgHandlers = new LinkedHashSet();
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(r31 r31Var, Uri uri, Continuation continuation) {
        return this.a.a(r31Var, uri, continuation);
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(r31 r31Var, String str, Continuation continuation) {
        return this.a.a(r31Var, str, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cc, code lost:
    
        if (r10.a(r8, r9, r0) != r1) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.nr1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, ads_mobile_sdk.r41 r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.internal.webview.PerAdNativeJavscriptEngineJsContext.a(java.lang.String, ads_mobile_sdk.r41, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.nr1
    public final Object a(String str, CompletableDeferred completableDeferred, w21 w21Var) {
        return this.a.a(str, completableDeferred, w21Var);
    }
}
