package ads_mobile_sdk;

import android.content.Context;
import com.ironsource.C3522b4;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class mo2 implements ai1 {
    public final i2 a;
    public final ro2 b;
    public final ex0 c;
    public final g83 d;
    public final p61 e;
    public final ur3 f;
    public final CoroutineScope g;
    public final f0 h;

    public mo2(Context context, i2 adConfiguration, ro2 playPrewarmManager, ex0 flags, g83 rootTraceCreator, p61 hsdpDeepLinkServiceWrapper, ur3 traceLogger, CoroutineScope backgroundScope, f0 activityTracker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(playPrewarmManager, "playPrewarmManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(hsdpDeepLinkServiceWrapper, "hsdpDeepLinkServiceWrapper");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.a = adConfiguration;
        this.b = playPrewarmManager;
        this.c = flags;
        this.d = rootTraceCreator;
        this.e = hsdpDeepLinkServiceWrapper;
        this.f = traceLogger;
        this.g = backgroundScope;
        this.h = activityTracker;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object a(ads_mobile_sdk.mo2 r11, boolean r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.mo2.a(ads_mobile_sdk.mo2, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ai1
    public final Object j(Continuation continuation) {
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return Unit.INSTANCE;
        }
        if (f()) {
            if (!a(1)) {
                return Unit.INSTANCE;
            }
            boolean zA = a(2);
            CoroutineScope coroutineScope = this.g;
            lo2 block = new lo2(this, zA, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return Unit.INSTANCE;
        }
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:play_prewarm:enabled", C3522b4.i.W);
        if (!((Boolean) ex0Var.a("gads:play_prewarm:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            return Unit.INSTANCE;
        }
        if (uo2Var.a) {
            ro2 ro2Var = this.b;
            String str = uo2Var.b;
            CoroutineScope coroutineScope2 = ro2Var.a;
            qo2 block2 = new qo2(ro2Var, str, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block2, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
            Unit unit = Unit.INSTANCE;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return unit;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        String str;
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return Unit.INSTANCE;
        }
        if (f()) {
            if (!a(4)) {
                return Unit.INSTANCE;
            }
            boolean zA = a(8);
            s11 s11Var = s11.CUI_NAME_HSDP_SERVICE;
            CoroutineScope coroutineScope = this.g;
            ko2 block = new ko2(this, s11Var, zA, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return Unit.INSTANCE;
        }
        if (a(256)) {
            if (a(EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE)) {
                str = uo2Var.b;
            } else {
                str = "";
            }
            ro2 ro2Var = this.b;
            CoroutineScope coroutineScope2 = ro2Var.a;
            qo2 block2 = new qo2(ro2Var, str, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block2, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
            Unit unit = Unit.INSTANCE;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return unit;
        }
        return Unit.INSTANCE;
    }

    public final boolean f() {
        uo2 uo2Var;
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:hsdp_service:enabled", C3522b4.i.W);
        return ((Boolean) ex0Var.a("gads:hsdp_service:enabled", Boolean.FALSE, yr.b)).booleanValue() && (uo2Var = this.a.w0) != null && uo2Var.d;
    }

    public final boolean a(int i) {
        uo2 uo2Var = this.a.w0;
        return (i & (uo2Var != null ? uo2Var.f : 0)) != 0;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        uo2 uo2Var = this.a.w0;
        if (uo2Var == null) {
            return Unit.INSTANCE;
        }
        String str = uo2Var.e;
        if (f()) {
            ex0 ex0Var = this.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:hsdp_service_end_session:enabled", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:hsdp_service_end_session:enabled", Boolean.FALSE, yr.b)).booleanValue() && str.length() > 0) {
                g83 g83Var = this.d;
                s11 s11Var = s11.CUI_NAME_HSDP_SERVICE;
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                String str2 = "";
                if (hs3.b().a == null) {
                    tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                    try {
                        try {
                            rr3 rr3Var = hs3.b().a;
                            uj2 uj2VarE = rr3Var != null ? rr3Var.e() : null;
                            if (uj2VarE != null) {
                                uj2VarE.I = (u61) u61.v().a(t61.DESTROY).b();
                            }
                            this.e.a(str);
                        } catch (Exception exception) {
                            rr3 rr3Var2 = hs3.b().a;
                            uj2 uj2VarE2 = rr3Var2 != null ? rr3Var2.e() : null;
                            if (uj2VarE2 != null) {
                                s61 s61VarA = u61.v().a(t61.DESTROY);
                                String message = exception.getMessage();
                                if (message != null) {
                                    str2 = message;
                                }
                                uj2VarE2.I = (u61) s61VarA.a(str2).b();
                            }
                            Intrinsics.checkNotNullParameter(exception, "exception");
                            rr3 rr3VarA = hs3.a();
                            rr3VarA.e().m = false;
                            rr3VarA.a(exception);
                            ex0 ex0Var2 = this.c;
                            ex0Var2.getClass();
                            Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3522b4.i.W);
                            if (((Boolean) ex0Var2.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                                ((as3) this.f).a("HsdpServiceUnsampled.endSession", exception);
                            } else {
                                ((as3) this.f).a("HsdpService.endSession", (Throwable) exception);
                            }
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
                    rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                    try {
                        try {
                            rr3 rr3Var3 = hs3.b().a;
                            uj2 uj2VarE3 = rr3Var3 != null ? rr3Var3.e() : null;
                            if (uj2VarE3 != null) {
                                uj2VarE3.I = (u61) u61.v().a(t61.DESTROY).b();
                            }
                            this.e.a(str);
                        } catch (Exception exception2) {
                            rr3 rr3Var4 = hs3.b().a;
                            uj2 uj2VarE4 = rr3Var4 != null ? rr3Var4.e() : null;
                            if (uj2VarE4 != null) {
                                s61 s61VarA2 = u61.v().a(t61.DESTROY);
                                String message2 = exception2.getMessage();
                                if (message2 != null) {
                                    str2 = message2;
                                }
                                uj2VarE4.I = (u61) s61VarA2.a(str2).b();
                            }
                            Intrinsics.checkNotNullParameter(exception2, "exception");
                            rr3 rr3VarA3 = hs3.a();
                            rr3VarA3.e().m = false;
                            rr3VarA3.a(exception2);
                            ex0 ex0Var3 = this.c;
                            ex0Var3.getClass();
                            Intrinsics.checkNotNullParameter("gads:hsdp_unsampled_crash_reporting:enabled", C3522b4.i.W);
                            if (((Boolean) ex0Var3.a("gads:hsdp_unsampled_crash_reporting:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                                ((as3) this.f).a("HsdpServiceUnsampled.endSession", exception2);
                            } else {
                                ((as3) this.f).a("HsdpService.endSession", (Throwable) exception2);
                            }
                        }
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA2, null);
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
        }
        return Unit.INSTANCE;
    }
}
