package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.ironsource.C3522b4;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class al2 {
    public final CoroutineScope a;
    public final im2 b;
    public final cl2 c;
    public final Map d;
    public final v8 e;
    public final g83 f;
    public final f13 g;
    public final du1 h;
    public final c63 i;
    public final ca2 j;
    public final ur3 k;
    public final cw2 l;
    public final Mutex m;
    public final LinkedHashSet n;

    public al2(CoroutineScope backgroundScope, im2 persistentCacheManager, cl2 flags, Map componentFactories, v8 adRequestKeyGenerator, g83 rootTraceCreator, f13 randomGenerator, du1 macroExpander, c63 retryingUrlPinger, ca2 networkConnectivityManager, ur3 traceLogger, dw2 persistentCacheAutoRefreshManager) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(componentFactories, "componentFactories");
        Intrinsics.checkNotNullParameter(adRequestKeyGenerator, "adRequestKeyGenerator");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(networkConnectivityManager, "networkConnectivityManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(persistentCacheAutoRefreshManager, "persistentCacheAutoRefreshManager");
        this.a = backgroundScope;
        this.b = persistentCacheManager;
        this.c = flags;
        this.d = componentFactories;
        this.e = adRequestKeyGenerator;
        this.f = rootTraceCreator;
        this.g = randomGenerator;
        this.h = macroExpander;
        this.i = retryingUrlPinger;
        this.j = networkConnectivityManager;
        this.k = traceLogger;
        this.l = persistentCacheAutoRefreshManager;
        this.m = MutexKt.Mutex$default(false, 1, null);
        this.n = new LinkedHashSet();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6 A[Catch: all -> 0x0039, TryCatch #1 {all -> 0x0039, blocks: (B:13:0x0034, B:33:0x00ca, B:38:0x00db, B:37:0x00d6), top: B:47:0x0034 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.al2 r10, kotlin.Pair r11, ads_mobile_sdk.om2 r12, kotlin.coroutines.Continuation r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.al2.a(ads_mobile_sdk.al2, kotlin.Pair, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0154, code lost:
    
        if (r1 != r4) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0162, code lost:
    
        if (r1 != 2) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0154 -> B:14:0x0045). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.al2 r17, com.google.android.libraries.ads.mobile.sdk.common.AdRequest r18, ads_mobile_sdk.j53 r19, java.lang.String r20, int r21, ads_mobile_sdk.om2 r22, kotlin.coroutines.Continuation r23) {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.al2.a(ads_mobile_sdk.al2, com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x027a, code lost:
    
        if (r9.a == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x027f, code lost:
    
        if (r9.d != null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0171, code lost:
    
        if (r14.a(r7, (ads_mobile_sdk.ac3) null, r2, r1, r3) == r6) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01c9, code lost:
    
        if (r14.a(r7, r4, "Failed to get ad config from server response", r1, r2) == r6) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0259, code lost:
    
        if (r9.a != null) goto L109;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0255  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest r19, ads_mobile_sdk.j53 r20, java.lang.String r21, int r22, ads_mobile_sdk.rk2 r23, ads_mobile_sdk.om2 r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instruction units count: 1030
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.al2.a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.rk2, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final ik2 a(AdRequest adRequest, j53 j53Var) {
        ik2 value = this.b.a(adRequest, j53Var);
        if (value == null) {
            cl2 cl2Var = this.c;
            cl2Var.getClass();
            Intrinsics.checkNotNullParameter("gads:pc:enable_cache_fill_on_cellular", C3522b4.i.W);
            value = (((Boolean) cl2Var.a("gads:pc:enable_cache_fill_on_cellular", Boolean.TRUE, yr.b)).booleanValue() || this.j.n.get() != 0) ? null : ik2.FILL_DISABLED_REASON_CELLULAR_NETWORK;
        }
        if (value == null) {
            return value;
        }
        g83 g83Var = this.f;
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILL_CHECK;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                rr3 rr3VarA = hs3.a();
                uj2 uj2VarE = rr3VarA.e();
                hk2 builder = kk2.v();
                Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder.a(value);
                vz0 vz0VarB = builder.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                uj2VarE.N = (kk2) vz0VarB;
                rr3VarA.a.a.c = j53Var;
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
                return value;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
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
        } else {
            rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                rr3 rr3VarA3 = hs3.a();
                uj2 uj2VarE2 = rr3VarA3.e();
                hk2 builder2 = kk2.v();
                Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder2, "builder");
                Intrinsics.checkNotNullParameter(value, "value");
                builder2.a(value);
                vz0 vz0VarB2 = builder2.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                uj2VarE2.N = (kk2) vz0VarB2;
                rr3VarA3.a.a.c = j53Var;
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA2, null);
                return value;
            } catch (Throwable th2) {
                try {
                    rr3VarA2.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA2.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
    }

    public final Unit a(rk2 rk2Var, ac3 ac3Var, String str, int i, bs0 bs0Var) {
        if (ac3Var != null) {
            a(ac3Var.b.m, (i2) null, new ec3(new wb3(rk2Var.a()), ac3Var), i, l33.a((i2) CollectionsKt___CollectionsKt.firstOrNull(ac3Var.a), bs0Var, Duration.Companion.m2911getZEROUwyO8pc(), null));
        }
        if (rk2Var.b() < rk2Var.c()) {
            xs3.a(str, null, 6);
        } else {
            xs3.a("Terminal failure after " + rk2Var.c() + " attempts: " + str, null, 6);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0309 A[Catch: all -> 0x0315, TryCatch #2 {all -> 0x0315, blocks: (B:107:0x0302, B:109:0x0309, B:111:0x030d, B:113:0x0311, B:116:0x0318, B:118:0x031c, B:120:0x0320, B:122:0x0324, B:123:0x0325, B:124:0x032a, B:125:0x032b, B:126:0x0332, B:127:0x0333, B:128:0x033a, B:129:0x033b), top: B:140:0x0302 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x033b A[Catch: all -> 0x0315, TRY_LEAVE, TryCatch #2 {all -> 0x0315, blocks: (B:107:0x0302, B:109:0x0309, B:111:0x030d, B:113:0x0311, B:116:0x0318, B:118:0x031c, B:120:0x0320, B:122:0x0324, B:123:0x0325, B:124:0x032a, B:125:0x032b, B:126:0x0332, B:127:0x0333, B:128:0x033a, B:129:0x033b), top: B:140:0x0302 }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x017b A[Catch: all -> 0x0187, TryCatch #3 {all -> 0x0187, blocks: (B:46:0x0174, B:48:0x017b, B:50:0x017f, B:52:0x0183, B:55:0x018a, B:57:0x018e, B:59:0x0192, B:61:0x0196, B:62:0x0197, B:63:0x019c, B:64:0x019d, B:65:0x01a4, B:66:0x01a5, B:67:0x01ac, B:68:0x01ad), top: B:141:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01ad A[Catch: all -> 0x0187, TRY_LEAVE, TryCatch #3 {all -> 0x0187, blocks: (B:46:0x0174, B:48:0x017b, B:50:0x017f, B:52:0x0183, B:55:0x018a, B:57:0x018e, B:59:0x0192, B:61:0x0196, B:62:0x0197, B:63:0x019c, B:64:0x019d, B:65:0x01a4, B:66:0x01a5, B:67:0x01ac, B:68:0x01ad), top: B:141:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x021a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x02f5 -> B:99:0x02ef). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x0223 -> B:98:0x02ec). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x02de -> B:97:0x02e5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest r26, ads_mobile_sdk.j53 r27, java.lang.String r28, int r29, ads_mobile_sdk.om2 r30, kotlin.coroutines.Continuation r31) {
        /*
            Method dump skipped, instruction units count: 837
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.al2.a(com.google.android.libraries.ads.mobile.sdk.common.AdRequest, ads_mobile_sdk.j53, java.lang.String, int, ads_mobile_sdk.om2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(List list, i2 i2Var, ec3 ec3Var, int i, String str) {
        CoroutineScope coroutineScope = this.a;
        xk2 block = new xk2(this, list, ec3Var, i2Var, i, str, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a(AdRequest adRequest, j53 requestType, int i, om2 om2Var) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        if (this.b.b(adRequest, requestType) && a(adRequest, requestType) == null) {
            CoroutineScope coroutineScope = this.a;
            zk2 block = new zk2(this, requestType, om2Var, adRequest, i, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }
}
