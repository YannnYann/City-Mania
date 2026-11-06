package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.gson.Gson;
import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ka2 {
    public final jb3 a;
    public final g30 b;
    public final e01 c;
    public final zw3 d;
    public final ex0 e;
    public final tx f;
    public final Gson g;
    public final ej1 h;
    public final Optional i;
    public final ur3 j;

    public ka2(jb3 javascriptEngine, g30 consentManager, e01 httpClient, zw3 userAgentProvider, ex0 flags, tx clock, Gson gson, ej1 internalAdRequestEventEmitter, Optional isPersistentCacheFillRequest, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(isPersistentCacheFillRequest, "isPersistentCacheFillRequest");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = javascriptEngine;
        this.b = consentManager;
        this.c = httpClient;
        this.d = userAgentProvider;
        this.e = flags;
        this.f = clock;
        this.g = gson;
        this.h = internalAdRequestEventEmitter;
        this.i = isPersistentCacheFillRequest;
        this.j = traceLogger;
    }

    public final Object a(Signals signals, zt ztVar, xa2 xa2Var) {
        return a(this, signals, ztVar, xa2Var);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0276 A[Catch: all -> 0x0250, TRY_LEAVE, TryCatch #0 {all -> 0x0250, blocks: (B:84:0x023d, B:86:0x0244, B:88:0x0248, B:90:0x024c, B:93:0x0253, B:95:0x0257, B:97:0x025b, B:99:0x025f, B:100:0x0260, B:101:0x0265, B:102:0x0266, B:103:0x026d, B:104:0x026e, B:105:0x0275, B:106:0x0276), top: B:145:0x023d }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02a3 A[Catch: all -> 0x02af, TryCatch #8 {all -> 0x02af, blocks: (B:118:0x029c, B:120:0x02a3, B:122:0x02a7, B:124:0x02ab, B:127:0x02b2, B:129:0x02b6, B:131:0x02ba, B:133:0x02be, B:134:0x02bf, B:135:0x02c4, B:136:0x02c5, B:137:0x02cc, B:138:0x02cd, B:139:0x02d4, B:140:0x02d5), top: B:159:0x029c }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02d5 A[Catch: all -> 0x02af, TRY_LEAVE, TryCatch #8 {all -> 0x02af, blocks: (B:118:0x029c, B:120:0x02a3, B:122:0x02a7, B:124:0x02ab, B:127:0x02b2, B:129:0x02b6, B:131:0x02ba, B:133:0x02be, B:134:0x02bf, B:135:0x02c4, B:136:0x02c5, B:137:0x02cc, B:138:0x02cd, B:139:0x02d4, B:140:0x02d5), top: B:159:0x029c }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:20:0x0060, B:29:0x00a7, B:31:0x00ad, B:34:0x00b6), top: B:146:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6 A[Catch: all -> 0x0064, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0064, blocks: (B:20:0x0060, B:29:0x00a7, B:31:0x00ad, B:34:0x00b6), top: B:146:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ca A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #2 {all -> 0x0045, blocks: (B:13:0x003f, B:58:0x01c4, B:60:0x01ca), top: B:147:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0244 A[Catch: all -> 0x0250, TryCatch #0 {all -> 0x0250, blocks: (B:84:0x023d, B:86:0x0244, B:88:0x0248, B:90:0x024c, B:93:0x0253, B:95:0x0257, B:97:0x025b, B:99:0x025f, B:100:0x0260, B:101:0x0265, B:102:0x0266, B:103:0x026d, B:104:0x026e, B:105:0x0275, B:106:0x0276), top: B:145:0x023d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ka2 r18, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals r19, ads_mobile_sdk.zt r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instruction units count: 732
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ka2.a(ads_mobile_sdk.ka2, com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals, ads_mobile_sdk.zt, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.zt r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 468
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ka2.a(ads_mobile_sdk.zt, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
