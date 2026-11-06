package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class im2 {
    public final r1 a;
    public final e9 b;
    public final cl2 c;
    public final tx d;
    public final Context e;
    public final xw0 f;
    public final g83 g;
    public final cw2 h;
    public final cw2 i;
    public final Mutex j;
    public volatile boolean k;
    public final ConcurrentHashMap l;

    public im2(r1 dataStore, e9 fileStore, cl2 flags, tx clock, Context context, xw0 flagValueProvider, g83 rootTraceCreator, dw2 consentStringsProvider, dw2 persistentCacheAutoRefreshManager) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(fileStore, "fileStore");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(consentStringsProvider, "consentStringsProvider");
        Intrinsics.checkNotNullParameter(persistentCacheAutoRefreshManager, "persistentCacheAutoRefreshManager");
        this.a = dataStore;
        this.b = fileStore;
        this.c = flags;
        this.d = clock;
        this.e = context;
        this.f = flagValueProvider;
        this.g = rootTraceCreator;
        this.h = consentStringsProvider;
        this.i = persistentCacheAutoRefreshManager;
        this.j = MutexKt.Mutex$default(false, 1, null);
        this.l = new ConcurrentHashMap();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c7, code lost:
    
        if (r0 == r11) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x00c7 -> B:27:0x00ca). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.j53 r16, java.lang.String r17, boolean r18, kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.j53, java.lang.String, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[Catch: all -> 0x0049, TryCatch #2 {all -> 0x0049, blocks: (B:21:0x0045, B:40:0x0082, B:42:0x009f, B:44:0x00a7, B:43:0x00a4), top: B:62:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a4 A[Catch: all -> 0x0049, TryCatch #2 {all -> 0x0049, blocks: (B:21:0x0045, B:40:0x0082, B:42:0x009f, B:44:0x00a7, B:43:0x00a4), top: B:62:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.b(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static Object a(im2 im2Var, jk2 jk2Var, Continuation continuation) {
        im2Var.getClass();
        return a(im2Var, jk2Var, false, continuation);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x025e A[Catch: all -> 0x0238, TRY_LEAVE, TryCatch #5 {all -> 0x0238, blocks: (B:85:0x0225, B:87:0x022c, B:89:0x0230, B:91:0x0234, B:94:0x023b, B:96:0x023f, B:98:0x0243, B:100:0x0247, B:101:0x0248, B:102:0x024d, B:103:0x024e, B:104:0x0255, B:105:0x0256, B:106:0x025d, B:107:0x025e), top: B:175:0x0225 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ea A[Catch: all -> 0x004e, LOOP:0: B:128:0x02e4->B:130:0x02ea, LOOP_END, TryCatch #8 {all -> 0x004e, blocks: (B:15:0x0049, B:127:0x02da, B:128:0x02e4, B:130:0x02ea, B:131:0x02f4), top: B:181:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0307 A[Catch: all -> 0x0313, TryCatch #4 {all -> 0x0313, blocks: (B:138:0x0300, B:140:0x0307, B:142:0x030b, B:144:0x030f, B:147:0x0316, B:149:0x031a, B:151:0x031e, B:153:0x0322, B:154:0x0323, B:155:0x0328, B:156:0x0329, B:157:0x0330, B:158:0x0331, B:159:0x0338, B:160:0x0339), top: B:174:0x0300 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0339 A[Catch: all -> 0x0313, TRY_LEAVE, TryCatch #4 {all -> 0x0313, blocks: (B:138:0x0300, B:140:0x0307, B:142:0x030b, B:144:0x030f, B:147:0x0316, B:149:0x031a, B:151:0x031e, B:153:0x0322, B:154:0x0323, B:155:0x0328, B:156:0x0329, B:157:0x0330, B:158:0x0331, B:159:0x0338, B:160:0x0339), top: B:174:0x0300 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0210 A[Catch: all -> 0x0080, LOOP:1: B:77:0x020a->B:79:0x0210, LOOP_END, TryCatch #1 {all -> 0x0080, blocks: (B:27:0x007b, B:76:0x0200, B:77:0x020a, B:79:0x0210, B:80:0x021a), top: B:167:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x022c A[Catch: all -> 0x0238, TryCatch #5 {all -> 0x0238, blocks: (B:85:0x0225, B:87:0x022c, B:89:0x0230, B:91:0x0234, B:94:0x023b, B:96:0x023f, B:98:0x0243, B:100:0x0247, B:101:0x0248, B:102:0x024d, B:103:0x024e, B:104:0x0255, B:105:0x0256, B:106:0x025d, B:107:0x025e), top: B:175:0x0225 }] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v25, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v28, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v9, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v3, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.im2 r17, ads_mobile_sdk.jk2 r18, boolean r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 852
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.im2, ads_mobile_sdk.jk2, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean b(com.google.android.libraries.ads.mobile.sdk.common.AdRequest r5, ads_mobile_sdk.j53 r6) {
        /*
            r4 = this;
            java.lang.String r0 = "adRequest"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "requestType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            ads_mobile_sdk.cl2 r0 = r4.c
            r0.getClass()
            java.lang.String r1 = "key"
            java.lang.String r2 = "gads:pc:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r3 = ads_mobile_sdk.yr.b
            java.lang.Object r0 = r0.a(r2, r1, r3)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 != 0) goto L28
            return r1
        L28:
            int r6 = r6.ordinal()
            r0 = 1
            r2 = 0
            if (r6 == r0) goto L5f
            r3 = 3
            if (r6 == r3) goto L45
            r3 = 5
            if (r6 == r3) goto L37
            return r1
        L37:
            boolean r6 = r5 instanceof com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest
            if (r6 == 0) goto L3e
            r2 = r5
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest r2 = (com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest) r2
        L3e:
            if (r2 == 0) goto L70
            boolean r5 = r2.getAdPersistenceEnabled()
            goto L6c
        L45:
            boolean r6 = r5 instanceof com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest
            if (r6 == 0) goto L4c
            r2 = r5
            com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest r2 = (com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest) r2
        L4c:
            if (r2 == 0) goto L70
            boolean r5 = r2.getAdPersistenceEnabled()
            if (r5 == 0) goto L70
            java.util.Set r5 = r2.getExcludedAppIds()
            boolean r5 = r5.isEmpty()
            if (r5 == 0) goto L70
            goto L6f
        L5f:
            boolean r6 = r5 instanceof com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest
            if (r6 == 0) goto L66
            r2 = r5
            com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest r2 = (com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest) r2
        L66:
            if (r2 == 0) goto L70
            boolean r5 = r2.getAdPersistenceEnabled()
        L6c:
            if (r5 != 0) goto L6f
            goto L70
        L6f:
            return r0
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.b(com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0257 A[Catch: all -> 0x029e, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x029e, blocks: (B:84:0x01f5, B:86:0x01f9, B:88:0x0201, B:90:0x021d, B:91:0x0231, B:95:0x0244, B:100:0x0257, B:48:0x0101), top: B:168:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02a9 A[Catch: all -> 0x02b5, TryCatch #5 {all -> 0x02b5, blocks: (B:122:0x02a2, B:124:0x02a9, B:126:0x02ad, B:128:0x02b1, B:131:0x02b8, B:133:0x02bc, B:135:0x02c0, B:137:0x02c4, B:138:0x02c5, B:139:0x02ca, B:140:0x02cb, B:141:0x02d2, B:142:0x02d3, B:143:0x02da, B:144:0x02db), top: B:160:0x02a2, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02db A[Catch: all -> 0x02b5, TRY_LEAVE, TryCatch #5 {all -> 0x02b5, blocks: (B:122:0x02a2, B:124:0x02a9, B:126:0x02ad, B:128:0x02b1, B:131:0x02b8, B:133:0x02bc, B:135:0x02c0, B:137:0x02c4, B:138:0x02c5, B:139:0x02ca, B:140:0x02cb, B:141:0x02d2, B:142:0x02d3, B:143:0x02da, B:144:0x02db), top: B:160:0x02a2, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014c A[Catch: all -> 0x0260, TryCatch #1 {all -> 0x0260, blocks: (B:52:0x0126, B:56:0x013a, B:58:0x013e, B:59:0x014c, B:63:0x016e, B:76:0x01a8, B:80:0x01b3, B:106:0x0266, B:110:0x0271), top: B:153:0x0126 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f9 A[Catch: all -> 0x029e, TryCatch #10 {all -> 0x029e, blocks: (B:84:0x01f5, B:86:0x01f9, B:88:0x0201, B:90:0x021d, B:91:0x0231, B:95:0x0244, B:100:0x0257, B:48:0x0101), top: B:168:0x01f5 }] */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [T] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v4, types: [ads_mobile_sdk.rr3, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01e9 -> B:24:0x007f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(ads_mobile_sdk.j53 r26, java.lang.String r27, kotlin.coroutines.Continuation r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 746
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.b(ads_mobile_sdk.j53, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01e8 A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #2 {all -> 0x0045, blocks: (B:15:0x0040, B:112:0x01ca, B:128:0x01e4, B:130:0x01e8, B:127:0x01df), top: B:161:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01fb A[Catch: all -> 0x0207, TryCatch #4 {all -> 0x0207, blocks: (B:134:0x01f4, B:136:0x01fb, B:138:0x01ff, B:140:0x0203, B:143:0x020a, B:145:0x020e, B:147:0x0212, B:149:0x0216, B:150:0x0217, B:151:0x021c, B:152:0x021d, B:153:0x0224, B:154:0x0225, B:155:0x022c, B:156:0x022d), top: B:163:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x022d A[Catch: all -> 0x0207, TRY_LEAVE, TryCatch #4 {all -> 0x0207, blocks: (B:134:0x01f4, B:136:0x01fb, B:138:0x01ff, B:140:0x0203, B:143:0x020a, B:145:0x020e, B:147:0x0212, B:149:0x0216, B:150:0x0217, B:151:0x021c, B:152:0x021d, B:153:0x0224, B:154:0x0225, B:155:0x022c, B:156:0x022d), top: B:163:0x01f4 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0130 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #17 {all -> 0x007d, blocks: (B:31:0x0078, B:55:0x0112, B:71:0x012c, B:73:0x0130, B:70:0x0127), top: B:167:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0144 A[Catch: all -> 0x0150, TryCatch #8 {all -> 0x0150, blocks: (B:76:0x013d, B:78:0x0144, B:80:0x0148, B:82:0x014c, B:85:0x0153, B:87:0x0157, B:89:0x015b, B:91:0x015f, B:92:0x0160, B:93:0x0165, B:94:0x0166, B:95:0x016d, B:96:0x016e, B:97:0x0175, B:98:0x0176), top: B:166:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0176 A[Catch: all -> 0x0150, TRY_LEAVE, TryCatch #8 {all -> 0x0150, blocks: (B:76:0x013d, B:78:0x0144, B:80:0x0148, B:82:0x014c, B:85:0x0153, B:87:0x0157, B:89:0x015b, B:91:0x015f, B:92:0x0160, B:93:0x0165, B:94:0x0166, B:95:0x016d, B:96:0x016e, B:97:0x0175, B:98:0x0176), top: B:166:0x013d }] */
    /* JADX WARN: Type inference failed for: r1v0, types: [ads_mobile_sdk.om2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v35, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v39, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v42 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v44 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v9, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v18, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v31, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.bm2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v32, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r5v2, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r5v5, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.im2 r16, ads_mobile_sdk.om2 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 564
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.b(ads_mobile_sdk.im2, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(String webProperty) {
        Intrinsics.checkNotNullParameter(webProperty, "adUnitId");
        m21 m21Var = o21.f;
        String strC = m21.c(webProperty);
        if (strC != null) {
            webProperty = strC;
        }
        Intrinsics.checkNotNullParameter(webProperty, "webProperty");
        this.l.put(webProperty, Boolean.FALSE);
        ek2 ek2Var = (ek2) ((zj2) this.i.get());
        ek2Var.getClass();
        Intrinsics.checkNotNullParameter(webProperty, "webProperty");
        Iterator it = ek2Var.g.entrySet().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            Map.Entry entry = (Map.Entry) next;
            if (Intrinsics.areEqual(((ko) entry.getValue()).a, webProperty)) {
                Job.DefaultImpls.cancel$default(((ko) entry.getValue()).h, null, 1, null);
                it.remove();
            }
        }
    }

    public final ik2 a(AdRequest adRequest, j53 requestType) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        m21 m21Var = o21.f;
        String strC = m21.c(adRequest.getAdUnitId());
        if (strC == null) {
            strC = adRequest.getAdUnitId();
        }
        if (Intrinsics.areEqual(this.l.get(strC), Boolean.FALSE)) {
            return ik2.FILL_DISABLED_REASON_WEB_PROPERTY_DISABLED;
        }
        if (!((k30) ((hr) this.f).k.get()).w().w().contains(s00.API_PERSISTENT_CACHE)) {
            return ik2.FILL_DISABLED_REASON_CONSENT_NOT_ALLOWED;
        }
        if (a(requestType) > 0) {
            cl2 cl2Var = this.c;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:max_total_cached_ads", C3522b4.i.W);
            nr nrVar = yr.f;
            if (((Number) cl2Var.a("gads:pc:max_total_cached_ads", 10, nrVar)).intValue() > 0) {
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:cache_fill_count_per_request", C3522b4.i.W);
                if (((Number) cl2Var2.a("gads:pc:cache_fill_count_per_request", 2, nrVar)).intValue() > 0) {
                    return null;
                }
            }
        }
        return ik2.FILL_DISABLED_REASON_NO_CAPACITY;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r12) throws java.security.NoSuchAlgorithmException {
        /*
            r11 = this;
            boolean r0 = r12 instanceof ads_mobile_sdk.sl2
            if (r0 == 0) goto L13
            r0 = r12
            ads_mobile_sdk.sl2 r0 = (ads_mobile_sdk.sl2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.sl2 r0 = new ads_mobile_sdk.sl2
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            ads_mobile_sdk.im2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L70
        L2e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L36:
            ads_mobile_sdk.im2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r12)
            goto L57
        L3c:
            kotlin.ResultKt.throwOnFailure(r12)
            ads_mobile_sdk.cw2 r12 = r11.h
            java.lang.Object r12 = r12.get()
            ads_mobile_sdk.n30 r12 = (ads_mobile_sdk.n30) r12
            ads_mobile_sdk.g30 r12 = (ads_mobile_sdk.g30) r12
            kotlinx.coroutines.CompletableJob r12 = r12.C
            r0.a = r11
            r0.d = r4
            java.lang.Object r12 = r12.join(r0)
            if (r12 != r1) goto L56
            goto L6e
        L56:
            r2 = r11
        L57:
            ads_mobile_sdk.cw2 r12 = r2.h
            java.lang.Object r12 = r12.get()
            ads_mobile_sdk.n30 r12 = (ads_mobile_sdk.n30) r12
            r0.a = r2
            r0.d = r3
            ads_mobile_sdk.g30 r12 = (ads_mobile_sdk.g30) r12
            r12.getClass()
            java.lang.Object r12 = ads_mobile_sdk.g30.e(r12, r0)
            if (r12 != r1) goto L6f
        L6e:
            return r1
        L6f:
            r0 = r2
        L70:
            com.google.gson.JsonObject r12 = (com.google.gson.JsonObject) r12
            r0.getClass()
            java.lang.String r0 = "json"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.util.Set r12 = r12.entrySet()
            java.lang.String r0 = "entrySet(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r0)
            ads_mobile_sdk.il2 r0 = new ads_mobile_sdk.il2
            r0.<init>()
            java.util.List r1 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r12, r0)
            ads_mobile_sdk.kl2 r7 = ads_mobile_sdk.kl2.a
            r8 = 30
            r9 = 0
            java.lang.String r2 = ","
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            java.lang.String r12 = kotlin.collections.CollectionsKt___CollectionsKt.joinToString$default(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            java.lang.String r0 = "SHA-256"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)
            java.nio.charset.Charset r1 = kotlin.text.Charsets.UTF_8
            byte[] r12 = r12.getBytes(r1)
            java.lang.String r1 = "getBytes(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r1)
            byte[] r2 = r0.digest(r12)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            ads_mobile_sdk.jl2 r8 = ads_mobile_sdk.jl2.a
            r9 = 30
            r10 = 0
            java.lang.String r3 = ""
            r5 = 0
            r6 = 0
            r7 = 0
            java.lang.String r12 = kotlin.collections.ArraysKt___ArraysKt.joinToString$default(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        if (a(r0, r1, false, (kotlin.coroutines.Continuation) r2) == r3) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b0, code lost:
    
        if (a(r13, r0, r2) == r3) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object b(ads_mobile_sdk.im2 r19, kotlin.coroutines.Continuation r20) throws android.content.pm.PackageManager.NameNotFoundException, java.security.NoSuchAlgorithmException {
        /*
            Method dump skipped, instruction units count: 441
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.b(ads_mobile_sdk.im2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final int a(j53 format) {
        Intrinsics.checkNotNullParameter(format, "format");
        switch (format.ordinal()) {
            case 1:
                cl2 cl2Var = this.c;
                cl2Var.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_app_open_ads", C3522b4.i.W);
                return ((Number) cl2Var.a("gads:pc:max_app_open_ads", 2, yr.f)).intValue();
            case 2:
                cl2 cl2Var2 = this.c;
                cl2Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_banner_ads", C3522b4.i.W);
                return ((Number) cl2Var2.a("gads:pc:max_banner_ads", 0, yr.f)).intValue();
            case 3:
                cl2 cl2Var3 = this.c;
                cl2Var3.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_icon_ads", C3522b4.i.W);
                return ((Number) cl2Var3.a("gads:pc:max_icon_ads", 2, yr.f)).intValue();
            case 4:
                cl2 cl2Var4 = this.c;
                cl2Var4.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_interstitial_ads", C3522b4.i.W);
                return ((Number) cl2Var4.a("gads:pc:max_interstitial_ads", 0, yr.f)).intValue();
            case 5:
                cl2 cl2Var5 = this.c;
                cl2Var5.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_native_ads", C3522b4.i.W);
                return ((Number) cl2Var5.a("gads:pc:max_native_ads", 2, yr.f)).intValue();
            case 6:
                cl2 cl2Var6 = this.c;
                cl2Var6.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_rewarded_ads", C3522b4.i.W);
                return ((Number) cl2Var6.a("gads:pc:max_rewarded_ads", 0, yr.f)).intValue();
            case 7:
                cl2 cl2Var7 = this.c;
                cl2Var7.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_rewarded_interstitial_ads", C3522b4.i.W);
                return ((Number) cl2Var7.a("gads:pc:max_rewarded_interstitial_ads", 0, yr.f)).intValue();
            case 8:
                cl2 cl2Var8 = this.c;
                cl2Var8.getClass();
                Intrinsics.checkNotNullParameter("gads:pc:max_swipeable_interstitial_ads", C3522b4.i.W);
                return ((Number) cl2Var8.a("gads:pc:max_swipeable_interstitial_ads", 0, yr.f)).intValue();
            default:
                return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.j53 r5, java.lang.String r6, kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.j53, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0181 A[Catch: all -> 0x015b, TRY_LEAVE, TryCatch #9 {all -> 0x015b, blocks: (B:96:0x0148, B:98:0x014f, B:100:0x0153, B:102:0x0157, B:105:0x015e, B:107:0x0162, B:109:0x0166, B:111:0x016a, B:112:0x016b, B:113:0x0170, B:114:0x0171, B:115:0x0178, B:116:0x0179, B:117:0x0180, B:118:0x0181), top: B:131:0x0148 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b7 A[Catch: all -> 0x0050, TRY_LEAVE, TryCatch #0 {all -> 0x0050, blocks: (B:22:0x004c, B:35:0x009c, B:44:0x00b2, B:46:0x00b7, B:43:0x00ac), top: B:123:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x013d A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #8 {all -> 0x003a, blocks: (B:13:0x0035, B:81:0x0122, B:90:0x0138, B:92:0x013d, B:89:0x0132), top: B:127:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x014f A[Catch: all -> 0x015b, TryCatch #9 {all -> 0x015b, blocks: (B:96:0x0148, B:98:0x014f, B:100:0x0153, B:102:0x0157, B:105:0x015e, B:107:0x0162, B:109:0x0166, B:111:0x016a, B:112:0x016b, B:113:0x0170, B:114:0x0171, B:115:0x0178, B:116:0x0179, B:117:0x0180, B:118:0x0181), top: B:131:0x0148 }] */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [ads_mobile_sdk.om2] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.xl2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.im2 r16, ads_mobile_sdk.om2 r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instruction units count: 392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.im2, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Pair a(j9 j9Var, long j) {
        cl2 cl2Var = this.c;
        cl2Var.getClass();
        Duration.Companion companion = Duration.Companion;
        long jM2906unboximpl = ((Duration) cl2Var.a("gads:pc:ad_ttl_ms", wm2.a(24, DurationUnit.HOURS, "gads:pc:ad_ttl_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
        long duration = DurationKt.toDuration(j, DurationUnit.MILLISECONDS);
        List listY = j9Var.y();
        Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listY) {
            Duration.Companion companion2 = Duration.Companion;
            if (Duration.m2871compareToLRDsOJo(Duration.m2896minusLRDsOJo(duration, DurationKt.toDuration(((d9) obj).w(), DurationUnit.MILLISECONDS)), jM2906unboximpl) <= 0) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        return new Pair(arrayList, arrayList2);
    }

    public final Object a(j53 j53Var, String str, String str2, vk2 vk2Var) {
        return a(this, j53Var, str, str2, vk2Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0146, code lost:
    
        if (r1 == r3) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0118 A[Catch: all -> 0x0047, TryCatch #3 {all -> 0x0047, blocks: (B:14:0x0042, B:48:0x0149, B:43:0x0112, B:45:0x0118, B:49:0x014c, B:50:0x0156, B:52:0x015a, B:21:0x0064, B:42:0x010a), top: B:89:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014c A[Catch: all -> 0x0047, TryCatch #3 {all -> 0x0047, blocks: (B:14:0x0042, B:48:0x0149, B:43:0x0112, B:45:0x0118, B:49:0x014c, B:50:0x0156, B:52:0x015a, B:21:0x0064, B:42:0x010a), top: B:89:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015a A[Catch: all -> 0x0047, TRY_LEAVE, TryCatch #3 {all -> 0x0047, blocks: (B:14:0x0042, B:48:0x0149, B:43:0x0112, B:45:0x0118, B:49:0x014c, B:50:0x0156, B:52:0x015a, B:21:0x0064, B:42:0x010a), top: B:89:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v4, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0146 -> B:48:0x0149). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.im2 r20, ads_mobile_sdk.j53 r21, java.lang.String r22, java.lang.String r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.im2, ads_mobile_sdk.j53, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(om2 om2Var, vk2 vk2Var) {
        return b(this, om2Var, vk2Var);
    }

    public final LinkedHashMap a(Map map, long j, List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            j9 j9Var = (j9) entry.getValue();
            Pair pairA = a(j9Var, j);
            List values = (List) pairA.component1();
            for (d9 d9Var : (List) pairA.component2()) {
                s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_EXPIRE;
                WeakHashMap weakHashMap = hs3.a;
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                try {
                    String strX = d9Var.x();
                    Intrinsics.checkNotNullExpressionValue(strX, "getFilename(...)");
                    list.add(strX);
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th) {
                    try {
                        rr3VarA.b(th);
                        if (!(th instanceof v24)) {
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                rr3VarA.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                if (!(th instanceof CancellationException)) {
                                    if (th instanceof w01) {
                                        throw th;
                                    }
                                    throw new b01(th);
                                }
                                throw new wz0(th);
                            }
                            throw new i21(th);
                        }
                        throw th;
                    } finally {
                    }
                }
            }
            if (!values.isEmpty()) {
                vz0.a aVarU = j9Var.u();
                Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
                i9 builder = (i9) aVarU;
                Intrinsics.checkNotNullParameter(builder, "builder");
                List listI = builder.i();
                Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
                builder.h();
                List listI2 = builder.i();
                Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                builder.a(values);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                linkedHashMap.put(str, (j9) vz0VarB);
            }
        }
        return linkedHashMap;
    }

    public static o1 a(o1 o1Var, String key, String key2, String str) {
        j9 j9Var;
        rx0 rx0Var = (rx0) o1Var.A().get(key);
        if (rx0Var == null || (j9Var = (j9) rx0Var.v().get(key2)) == null) {
            return o1Var;
        }
        List listY = j9Var.y();
        Intrinsics.checkNotNullExpressionValue(listY, "getResponsesList(...)");
        ArrayList values = new ArrayList();
        for (Object obj : listY) {
            if (!Intrinsics.areEqual(((d9) obj).x(), str)) {
                values.add(obj);
            }
        }
        vz0.a aVarU = o1Var.u();
        Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
        n1 builder = (n1) aVarU;
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (values.isEmpty()) {
            vz0.a aVarU2 = rx0Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
            qx0 builder2 = (qx0) aVarU2;
            Intrinsics.checkNotNullParameter(builder2, "builder");
            Map mapI = builder2.i();
            Intrinsics.checkNotNullExpressionValue(mapI, "getAdResponseListsMap(...)");
            Intrinsics.checkNotNullParameter(new no0(mapI), "<this>");
            Intrinsics.checkNotNullParameter(key2, "key");
            builder2.a(key2);
            vz0 vz0VarB = builder2.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            rx0 value = (rx0) vz0VarB;
            if (value.v().isEmpty()) {
                Map mapI2 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI2, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI2), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                builder.a(key);
            } else {
                Map mapI3 = builder.i();
                Intrinsics.checkNotNullExpressionValue(mapI3, "getPoolsMap(...)");
                Intrinsics.checkNotNullParameter(new no0(mapI3), "<this>");
                Intrinsics.checkNotNullParameter(key, "key");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(key, value);
            }
        } else {
            Map mapI4 = builder.i();
            Intrinsics.checkNotNullExpressionValue(mapI4, "getPoolsMap(...)");
            no0 no0Var = new no0(mapI4);
            vz0.a aVarU3 = rx0Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
            qx0 builder3 = (qx0) aVarU3;
            Intrinsics.checkNotNullParameter(builder3, "builder");
            Map mapI5 = builder3.i();
            Intrinsics.checkNotNullExpressionValue(mapI5, "getAdResponseListsMap(...)");
            no0 no0Var2 = new no0(mapI5);
            vz0.a aVarU4 = j9Var.u();
            Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
            i9 builder4 = (i9) aVarU4;
            Intrinsics.checkNotNullParameter(builder4, "builder");
            List listI = builder4.i();
            Intrinsics.checkNotNullExpressionValue(listI, "getResponsesList(...)");
            Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
            builder4.h();
            List listI2 = builder4.i();
            Intrinsics.checkNotNullExpressionValue(listI2, "getResponsesList(...)");
            Intrinsics.checkNotNullParameter(new lo0(listI2), "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            builder4.a(values);
            vz0 vz0VarB2 = builder4.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
            j9 value2 = (j9) vz0VarB2;
            Intrinsics.checkNotNullParameter(no0Var2, "<this>");
            Intrinsics.checkNotNullParameter(key2, "key");
            Intrinsics.checkNotNullParameter(value2, "value");
            builder3.a(key2, value2);
            vz0 vz0VarB3 = builder3.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
            rx0 value3 = (rx0) vz0VarB3;
            Intrinsics.checkNotNullParameter(no0Var, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value3, "value");
            builder.a(key, value3);
        }
        vz0 vz0VarB4 = builder.b();
        Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
        return (o1) vz0VarB4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0178 A[Catch: all -> 0x0152, TRY_LEAVE, TryCatch #2 {all -> 0x0152, blocks: (B:96:0x013f, B:98:0x0146, B:100:0x014a, B:102:0x014e, B:105:0x0155, B:107:0x0159, B:109:0x015d, B:111:0x0161, B:112:0x0162, B:113:0x0167, B:114:0x0168, B:115:0x016f, B:116:0x0170, B:117:0x0177, B:118:0x0178), top: B:124:0x013f }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b2 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #8 {all -> 0x004e, blocks: (B:22:0x004a, B:35:0x0097, B:44:0x00ad, B:46:0x00b2, B:43:0x00a7), top: B:132:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0134 A[Catch: all -> 0x0038, TRY_LEAVE, TryCatch #4 {all -> 0x0038, blocks: (B:13:0x0033, B:81:0x0119, B:90:0x012f, B:92:0x0134, B:89:0x0129), top: B:125:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0146 A[Catch: all -> 0x0152, TryCatch #2 {all -> 0x0152, blocks: (B:96:0x013f, B:98:0x0146, B:100:0x014a, B:102:0x014e, B:105:0x0155, B:107:0x0159, B:109:0x015d, B:111:0x0161, B:112:0x0162, B:113:0x0167, B:114:0x0168, B:115:0x016f, B:116:0x0170, B:117:0x0177, B:118:0x0178), top: B:124:0x013f }] */
    /* JADX WARN: Type inference failed for: r0v13, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [ads_mobile_sdk.r1] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ads_mobile_sdk.dm2, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.im2 r16, kotlin.coroutines.Continuation r17) {
        /*
            Method dump skipped, instruction units count: 383
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.im2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
    
        if (r2.a(r4, r0) == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.up0 r6, kotlin.coroutines.Continuation r7) throws java.security.NoSuchAlgorithmException {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.fm2
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.fm2 r0 = (ads_mobile_sdk.fm2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.fm2 r0 = new ads_mobile_sdk.fm2
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L64
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            ads_mobile_sdk.up0 r6 = r0.b
            ads_mobile_sdk.im2 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4d
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.a = r5
            r0.b = r6
            r0.e = r4
            java.lang.Object r7 = r5.a(r0)
            if (r7 != r1) goto L4c
            goto L63
        L4c:
            r2 = r5
        L4d:
            java.lang.String r7 = (java.lang.String) r7
            ads_mobile_sdk.r1 r2 = r2.a
            ads_mobile_sdk.gm2 r4 = new ads_mobile_sdk.gm2
            r4.<init>(r6, r7)
            r6 = 0
            r0.a = r6
            r0.b = r6
            r0.e = r3
            java.lang.Object r6 = r2.a(r4, r0)
            if (r6 != r1) goto L64
        L63:
            return r1
        L64:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.im2.a(ads_mobile_sdk.up0, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
