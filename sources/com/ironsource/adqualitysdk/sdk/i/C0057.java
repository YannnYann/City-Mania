package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ľ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0057 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static C0057 f806;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0220 f807;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public ChoreographerFrameCallbackC0095 f808;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f811;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final HashMap f810 = new HashMap();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final Handler f809 = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0057 m1069() {
        try {
            if (f806 == null) {
                f806 = new C0057();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f806;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1070(C0057 c0057) {
        if (c0057.f811 || new HashMap(c0057.f810).isEmpty()) {
            return;
        }
        c0057.f811 = true;
        AbstractC0272.m1211(new C0083(c0057));
    }
}
