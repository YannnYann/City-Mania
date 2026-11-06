package com.ironsource.adqualitysdk.sdk.i;

import android.os.Process;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.Thread;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ọ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0746 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f3060;

    public C0746(C0622 c0622) {
        this.f3060 = c0622;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            AbstractC1003.m1591(StringFog.decrypt("mvTZwiAkOyOo\n", "25q4rllQUkA=\n"), StringFog.decrypt("0Wphq1QBdNGkYXqpRBZozOtq\n", "hAQCyiFmHKU=\n"), StringFog.decrypt("6lRPbQrb+WDV\n", "viYuDm+5mAM=\n"), th, null, null, false, false, false);
        } catch (Throwable unused) {
        }
        this.f3060.m1396();
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3060.f2624;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
            return;
        }
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (SecurityException unused2) {
        }
    }
}
