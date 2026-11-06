package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class ls0 {
    public final Context a;
    public final ur3 b;
    public final g83 c;
    public final ex0 d;
    public final Lazy e;
    public final Mutex f;
    public String g;

    public ls0(Context applicationContext, ur3 traceLogger, g83 rootTraceCreator, ex0 flags) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = applicationContext;
        this.b = traceLogger;
        this.c = rootTraceCreator;
        this.d = flags;
        this.e = LazyKt__LazyJVMKt.lazy(new js0(this));
        this.f = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.ls0 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof ads_mobile_sdk.ks0
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.ks0 r0 = (ads_mobile_sdk.ks0) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.ks0 r0 = new ads_mobile_sdk.ks0
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlinx.coroutines.sync.Mutex r5 = r0.b
            ads_mobile_sdk.ls0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
            r5 = r0
            goto L4a
        L30:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L38:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.f
            r0.a = r5
            r0.b = r6
            r0.e = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4a
            return r1
        L4a:
            java.lang.String r0 = r5.g     // Catch: java.lang.Throwable -> L5c
            if (r0 == 0) goto L4f
            goto L61
        L4f:
            java.lang.String r0 = "getGmpAppId"
            java.lang.Object r0 = r5.a(r0)     // Catch: java.lang.Throwable -> L5c
            if (r0 == 0) goto L5e
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L5c
            goto L5f
        L5c:
            r5 = move-exception
            goto L65
        L5e:
            r0 = r4
        L5f:
            r5.g = r0     // Catch: java.lang.Throwable -> L5c
        L61:
            r6.unlock(r4)
            return r0
        L65:
            r6.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ls0.a(ads_mobile_sdk.ls0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object a(String str) {
        try {
            if (this.e.getValue() != null) {
                return Class.forName(this.d.Q()).getMethod(str, new Class[0]).invoke(this.e.getValue(), new Object[0]);
            }
            return null;
        } catch (Exception e) {
            xs3.a("Exception while calling Firebase Analytics SDK method", e, 4);
            ((as3) this.b).a("FirebaseAnalyticsAdapter.invokeMethod " + str, (Throwable) e);
            return null;
        }
    }

    public static Unit a(ls0 ls0Var, is0 is0Var, Bundle bundle, String str) {
        g83 g83Var = ls0Var.c;
        s11 s11Var = s11.CUI_NAME_LOG_EVENT_TO_FIREBASE_ANALYTICS;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3VarA = js3.a();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                try {
                    if (ls0Var.e.getValue() != null) {
                        Method method = Class.forName(ls0Var.d.Q()).getMethod("logEvent", String.class, String.class, Bundle.class);
                        Bundle bundle2 = bundle.getBundle(is0Var.d());
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        Intrinsics.checkNotNull(bundle2);
                        bundle2.putLong("_aeid", Long.parseLong(str));
                        String str2 = is0Var.a;
                        is0 is0Var2 = is0.b;
                        if (Intrinsics.areEqual(str2, "_ac")) {
                            bundle2.putInt("_r", 1);
                        }
                        method.invoke(ls0Var.e.getValue(), "am", is0Var.d(), bundle2);
                    }
                } catch (Exception e) {
                    xs3.a("Exception while calling Firebase Analytics SDK logEvent method", e, 4);
                    ((as3) ls0Var.b).a("FirebaseAnalyticsAdapter.invokeMethod logEvent for " + is0Var, (Throwable) e);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
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
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                try {
                    if (ls0Var.e.getValue() != null) {
                        Method method2 = Class.forName(ls0Var.d.Q()).getMethod("logEvent", String.class, String.class, Bundle.class);
                        Bundle bundle3 = bundle.getBundle(is0Var.d());
                        if (bundle3 == null) {
                            bundle3 = new Bundle();
                        }
                        Intrinsics.checkNotNull(bundle3);
                        bundle3.putLong("_aeid", Long.parseLong(str));
                        String str3 = is0Var.a;
                        is0 is0Var3 = is0.b;
                        if (Intrinsics.areEqual(str3, "_ac")) {
                            bundle3.putInt("_r", 1);
                        }
                        method2.invoke(ls0Var.e.getValue(), "am", is0Var.d(), bundle3);
                    }
                } catch (Throwable th2) {
                    try {
                        rr3VarA.b(th2);
                        if (!(th2 instanceof v24)) {
                            if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                                rr3VarA.a(th2);
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
            } catch (Exception e2) {
                xs3.a("Exception while calling Firebase Analytics SDK logEvent method", e2, 4);
                ((as3) ls0Var.b).a("FirebaseAnalyticsAdapter.invokeMethod logEvent for " + is0Var, (Throwable) e2);
            }
            Unit unit2 = Unit.INSTANCE;
            CloseableKt.closeFinally(rr3VarA, null);
        }
        return Unit.INSTANCE;
    }
}
