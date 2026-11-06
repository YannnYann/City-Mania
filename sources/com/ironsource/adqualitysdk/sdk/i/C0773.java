package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ΐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0773 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Handler f3105;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0321 f3106;

    public C0773(Context context, String str, String str2) {
        this.f3106 = new C0321(context, str, str2);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Handler m1446() {
        Handler handler;
        synchronized (C0773.class) {
            try {
                if (f3105 == null) {
                    HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("29brBMDxulLDx/0gwPqq\n", "kLOSUqGdzzc=\n"));
                    handlerThread.start();
                    f3105 = new Handler(handlerThread.getLooper());
                }
                handler = f3105;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1447(String str) {
        C0321 c0321 = this.f3106;
        c0321.getClass();
        try {
            C0252 c0252 = c0321.f1886;
            synchronized (c0252) {
                c0252.f1569.delete(C0252.f1568, StringFog.decrypt("uK6XB4Y=\n", "08vuOrkwJ7Y=\n"), new String[]{str});
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m1448(String str) {
        C0321 c0321 = this.f3106;
        c0321.getClass();
        try {
            String strM1207 = c0321.f1886.m1207(str);
            if (strM1207 == null || TextUtils.isEmpty(strM1207)) {
                return strM1207;
            }
            try {
                return c0321.f1887.m1246(strM1207);
            } catch (C0369 unused) {
                return "";
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1449(String str, String str2) {
        C0321 c0321 = this.f3106;
        c0321.getClass();
        try {
            c0321.f1886.m1209(str, c0321.f1887.m1247(str2));
        } catch (Throwable unused) {
        }
    }
}
