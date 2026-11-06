package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class ap2 implements e1 {
    public final i2 a;
    public final tx b;
    public final zy c;
    public final CoroutineScope d;
    public final g83 e;
    public final d63 f;
    public final ex0 g;
    public final du1 h;
    public final ec3 i;
    public final Object j;
    public final dp2 k;
    public boolean l;
    public boolean m;
    public Job n;

    public ap2(i2 adConfig, tx clock, zy commonConfiguration, CoroutineScope backgroundScope, g83 rootTraceCreator, d63 retryingUrlPinger, ex0 flags, du1 macroExpander, ec3 serverTransaction) {
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(macroExpander, "macroExpander");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        this.a = adConfig;
        this.b = clock;
        this.c = commonConfiguration;
        this.d = backgroundScope;
        this.e = rootTraceCreator;
        this.f = retryingUrlPinger;
        this.g = flags;
        this.h = macroExpander;
        this.i = serverTransaction;
        this.j = new Object();
        dp2 dp2VarV = ep2.v();
        Intrinsics.checkNotNullExpressionValue(dp2VarV, "newBuilder(...)");
        this.k = dp2VarV;
    }

    public static final Object a(ap2 ap2Var, Continuation continuation) {
        synchronized (ap2Var.j) {
            if (ap2Var.m) {
                return Unit.INSTANCE;
            }
            ap2Var.m = true;
            Unit unit = Unit.INSTANCE;
            ep2 ep2Var = (ep2) ap2Var.f().b();
            Intrinsics.checkNotNull(ep2Var);
            ex0 ex0Var = ap2Var.g;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_pclm_rcs_logger:enabled", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:enable_pclm_rcs_logger:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                g83 g83Var = ap2Var.e;
                s11 s11Var = s11.CUI_NAME_POST_CLICK_LIFECYCLE_MONITORING;
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        hs3.a().e().H = ep2Var;
                        hs3.a().a.b.b = ap2Var.c.h;
                        CloseableKt.closeFinally(tu2VarA, null);
                    } catch (Throwable th) {
                        try {
                            tu2VarA.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                tu2VarA.a(th);
                            }
                            if (th instanceof TimeoutCancellationException) {
                                throw new i21(th);
                            }
                            if (th instanceof CancellationException) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        } finally {
                        }
                    }
                } else {
                    rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                    try {
                        hs3.a().e().H = ep2Var;
                        hs3.a().a.b.b = ap2Var.c.h;
                        CloseableKt.closeFinally(rr3VarA, null);
                    } catch (Throwable th2) {
                        try {
                            rr3VarA.b(th2);
                            if (th2 instanceof v24) {
                                throw th2;
                            }
                            if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                                rr3VarA.a(th2);
                            }
                            if (th2 instanceof TimeoutCancellationException) {
                                throw new i21(th2);
                            }
                            if (th2 instanceof CancellationException) {
                                throw new wz0(th2);
                            }
                            if (th2 instanceof w01) {
                                throw th2;
                            }
                            throw new b01(th2);
                        } finally {
                        }
                    }
                }
            }
            Object objA = ap2Var.a(ep2Var, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : unit;
        }
    }

    public final dp2 f() {
        dp2 dp2Var;
        synchronized (this.j) {
            dp2Var = this.k;
        }
        return dp2Var;
    }

    @Override // ads_mobile_sdk.e1
    public final void d() {
        a(ki.ON_CREATE);
    }

    @Override // ads_mobile_sdk.e1
    public final void c() {
        a(ki.ON_RESTART);
    }

    @Override // ads_mobile_sdk.e1
    public final void onResume() {
        a(ki.ON_RESUME);
    }

    @Override // ads_mobile_sdk.e1
    public final void b() {
        a(ki.ON_USER_LEAVE_HINT);
    }

    @Override // ads_mobile_sdk.e1
    public final void onPause() {
        a(ki.ON_PAUSE);
    }

    @Override // ads_mobile_sdk.e1
    public final void onStop() {
        a(ki.ON_STOP);
    }

    @Override // ads_mobile_sdk.e1
    public final void onDestroy() {
        a(ki.ON_DESTROY);
    }

    public final void g() {
        synchronized (this.j) {
            if (Duration.m2871compareToLRDsOJo(this.a.C0, Duration.Companion.m2911getZEROUwyO8pc()) > 0 && !this.l && !this.m) {
                dp2 dp2Var = this.k;
                this.b.getClass();
                dp2Var.a(System.currentTimeMillis());
                this.l = true;
                CoroutineScope coroutineScope = this.d;
                zo2 block = new zo2(this, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                this.n = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    public final void a(ki value) {
        synchronized (this.j) {
            try {
                if (!this.m && this.l) {
                    dp2 dp2Var = this.k;
                    ji builder = li.v();
                    Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    Intrinsics.checkNotNullParameter(value, "value");
                    builder.a(value);
                    this.b.getClass();
                    builder.a(System.currentTimeMillis());
                    vz0 vz0VarB = builder.b();
                    Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                    dp2Var.a((li) vz0VarB);
                    if (value == ki.ON_DESTROY) {
                        Job job = this.n;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, null, 1, null);
                        }
                        CoroutineScope coroutineScope = this.d;
                        xo2 block = new xo2(this, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    }
                    Unit unit = Unit.INSTANCE;
                }
            } finally {
            }
        }
    }

    @Override // ads_mobile_sdk.e1
    public final void a() {
        a(ki.ON_START);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0217 A[Catch: all -> 0x0223, TryCatch #2 {all -> 0x0223, blocks: (B:104:0x0210, B:106:0x0217, B:108:0x021b, B:110:0x021f, B:113:0x0226, B:115:0x022a, B:117:0x022e, B:119:0x0232, B:120:0x0233, B:121:0x0238, B:122:0x0239, B:123:0x0240, B:124:0x0241, B:125:0x0248, B:126:0x0249), top: B:136:0x0210 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0249 A[Catch: all -> 0x0223, TRY_LEAVE, TryCatch #2 {all -> 0x0223, blocks: (B:104:0x0210, B:106:0x0217, B:108:0x021b, B:110:0x021f, B:113:0x0226, B:115:0x022a, B:117:0x022e, B:119:0x0232, B:120:0x0233, B:121:0x0238, B:122:0x0239, B:123:0x0240, B:124:0x0241, B:125:0x0248, B:126:0x0249), top: B:136:0x0210 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0147 A[Catch: all -> 0x0153, TryCatch #0 {all -> 0x0153, blocks: (B:59:0x0140, B:61:0x0147, B:63:0x014b, B:65:0x014f, B:68:0x0156, B:70:0x015a, B:72:0x015e, B:74:0x0162, B:75:0x0163, B:76:0x0168, B:77:0x0169, B:78:0x0170, B:79:0x0171, B:80:0x0178, B:81:0x0179), top: B:133:0x0140 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0179 A[Catch: all -> 0x0153, TRY_LEAVE, TryCatch #0 {all -> 0x0153, blocks: (B:59:0x0140, B:61:0x0147, B:63:0x014b, B:65:0x014f, B:68:0x0156, B:70:0x015a, B:72:0x015e, B:74:0x0162, B:75:0x0163, B:76:0x0168, B:77:0x0169, B:78:0x0170, B:79:0x0171, B:80:0x0178, B:81:0x0179), top: B:133:0x0140 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ep2 r21, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ap2.a(ads_mobile_sdk.ep2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
