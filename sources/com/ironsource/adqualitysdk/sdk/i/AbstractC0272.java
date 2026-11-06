package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ՙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0272 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final ScheduledExecutorService f1608;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final Handler f1609;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Handler f1610 = new Handler(Looper.getMainLooper());

    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    static {
        /*
            android.os.Handler r0 = new android.os.Handler
            android.os.Looper r1 = android.os.Looper.getMainLooper()
            r0.<init>(r1)
            com.ironsource.adqualitysdk.sdk.i.AbstractC0272.f1610 = r0
            r0 = 0
        Lc:
            r1 = 0
            r2 = 3
            if (r0 >= r2) goto L5a
            android.os.HandlerThread r2 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L2a
            java.lang.String r3 = "/vnfUz4gKnDL3w==\n"
            java.lang.String r4 = "qrudFGpIWBU=\n"
            java.lang.String r3 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r3, r4)     // Catch: java.lang.Throwable -> L2a
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L2a
            r2.start()     // Catch: java.lang.Throwable -> L2b
            android.os.Handler r3 = new android.os.Handler     // Catch: java.lang.Throwable -> L2b
            android.os.Looper r4 = r2.getLooper()     // Catch: java.lang.Throwable -> L2b
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L2b
            goto L5b
        L2a:
            r2 = r1
        L2b:
            r3 = 1
            if (r2 == 0) goto L31
            r2.quitSafely()     // Catch: java.lang.Throwable -> L47
        L31:
            java.lang.String r2 = "cRPzfqfGCS5JJOZA\n"
            java.lang.String r4 = "MHeiC8aqYFo=\n"
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r2, r4)     // Catch: java.lang.Throwable -> L47
            java.lang.String r4 = "62nO9wJ81qvCKMTpAnmCuo1qxvgMf4Sw2GbDuw95mLvBbdW3R2qTq99xzvUANtjx\n"
            java.lang.String r5 = "rQinm2cY9t8=\n"
            java.lang.String r4 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r4, r5)     // Catch: java.lang.Throwable -> L47
            com.ironsource.adqualitysdk.sdk.i.AbstractC0182.m1158(r2, r4, r3)     // Catch: java.lang.Throwable -> L47
            int r0 = r0 + 1
            goto Lc
        L47:
            java.lang.String r0 = "3wOvAlu8PB3nNLo8\n"
            java.lang.String r2 = "nmf+dzrQVWk=\n"
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r0, r2)
            java.lang.String r2 = "FzlPej85M2E+eEVkPzxncHE6R3UxOmF6JDZCNjI8fXE9PVQ=\n"
            java.lang.String r4 = "UVgmFlpdExU=\n"
            java.lang.String r2 = com.ironsource.adqualitysdk.sdk.StringFog.decrypt(r2, r4)
            com.ironsource.adqualitysdk.sdk.i.AbstractC0182.m1158(r0, r2, r3)
        L5a:
            r3 = r1
        L5b:
            com.ironsource.adqualitysdk.sdk.i.AbstractC0272.f1609 = r3
            if (r3 != 0) goto L63
            java.util.concurrent.ScheduledExecutorService r1 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor()
        L63:
            com.ironsource.adqualitysdk.sdk.i.AbstractC0272.f1608 = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.AbstractC0272.<clinit>():void");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1210(AbstractRunnableC0689 abstractRunnableC0689) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            abstractRunnableC0689.run();
        } else {
            m1212(abstractRunnableC0689);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1211(AbstractRunnableC0689 abstractRunnableC0689) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m1214(abstractRunnableC0689);
        } else {
            abstractRunnableC0689.run();
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1213(AbstractRunnableC0689 abstractRunnableC0689, long j) {
        try {
            f1610.postDelayed(abstractRunnableC0689, j);
        } catch (Throwable unused) {
            AbstractC0182.m1158(StringFog.decrypt("r0RiIYO5txOXc3cf\n", "7iAzVOLV3mc=\n"), StringFog.decrypt("wnzYTze64THrPcFMIarhIeFx0Fo3uuEq6j3cQjuw4THsb9RCNg==\n", "hB2xI1LewUU=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1215(AbstractRunnableC0689 abstractRunnableC0689, long j) {
        try {
            Handler handler = f1609;
            if (handler != null) {
                handler.postDelayed(abstractRunnableC0689, j);
                return;
            }
            ScheduledExecutorService scheduledExecutorService = f1608;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.schedule(abstractRunnableC0689, j, TimeUnit.MILLISECONDS);
            } else {
                AbstractC0182.m1158(StringFog.decrypt("N1xs8lOAuC4Pa3nM\n", "djg9hzLs0Vo=\n"), StringFog.decrypt("XZs83TADx4Bhm2nRNUDEhn2QcNojQMOVM5J90z0CzYR41HnHNAPZk3yGPN4nAcWLcpZw2g==\n", "E/Qcv1FgrOc=\n"), false);
            }
        } catch (Throwable unused) {
            AbstractC0182.m1158(StringFog.decrypt("yhIXbpi67/byJQJQ\n", "i3ZGG/nWhoI=\n"), StringFog.decrypt("cWwEXc96+WRYLR1e2Wr5dFJhDEjPevl/WS0PUMl1vmJYeANVina4flNhCEM=\n", "Nw1tMaoe2RA=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1212(AbstractRunnableC0689 abstractRunnableC0689) {
        try {
            f1610.post(abstractRunnableC0689);
        } catch (Throwable unused) {
            AbstractC0182.m1158(StringFog.decrypt("q7jR38WbYyqTj8Th\n", "6tyAqqT3Cl4=\n"), StringFog.decrypt("I1VBEMkwbWwKFFgT3yBtdwsURR3FOm1sDUZNHcg=\n", "ZTQofKxUTRg=\n"), false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1214(AbstractRunnableC0689 abstractRunnableC0689) {
        try {
            Handler handler = f1609;
            if (handler != null) {
                handler.post(abstractRunnableC0689);
                return;
            }
            ScheduledExecutorService scheduledExecutorService = f1608;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.execute(abstractRunnableC0689);
            } else {
                AbstractC0182.m1158(StringFog.decrypt("4GJ/itkuA/nYVWq0\n", "oQYu/7hCao0=\n"), StringFog.decrypt("p/ATwDY+0iib8EbMM33RLof7X8clfdY9yflSzjs/2CyCv1baMj7MO4btE8MhPNAjiP1fxw==\n", "6Z8zoldduU8=\n"), false);
            }
        } catch (Throwable unused) {
            AbstractC0182.m1158(StringFog.decrypt("3S0dephpH3vlGghE\n", "nElMD/kFdg8=\n"), StringFog.decrypt("ZtszEz613xBPmioQKKXfC06aOB44upgWT880G3u5ngpE1j8N\n", "ILpaf1vR/2Q=\n"), false);
        }
    }
}
