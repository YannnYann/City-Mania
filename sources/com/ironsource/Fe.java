package com.ironsource;

import android.content.Context;
import com.ironsource.Fe;
import com.ironsource.Pb;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class Fe {
    public static final a m = new a(null);
    private static final Lazy<Fe> n = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Fe.f();
        }
    });
    private final Ke a;
    private final Se b;
    private final Ff c;
    private Ye d;
    private final Lazy e;
    private final String f;
    private final List<InterfaceC3933xe> g;
    private C3806qe h;
    private C3841se i;
    private boolean j;
    private long k;
    private Td l;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Fe a() {
            return (Fe) Fe.n.getValue();
        }

        private a() {
        }
    }

    public static final class b implements InterfaceC3933xe {
        final /* synthetic */ Function1<C3806qe, Unit> b;
        final /* synthetic */ Function1<C3841se, Unit> c;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Function1<? super C3806qe, Unit> function1, Function1<? super C3841se, Unit> function12) {
            this.b = function1;
            this.c = function12;
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3806qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            Ke ke = Fe.this.a;
            final Function1<C3806qe, Unit> function1 = this.b;
            ke.c(new Runnable() { // from class: com.ironsource.Fe$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Fe.b.a(function1, sdkConfig);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Function1 function1, C3806qe c3806qe) {
            function1.invoke(c3806qe);
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Ke ke = Fe.this.a;
            final Function1<C3841se, Unit> function1 = this.c;
            ke.c(new Runnable() { // from class: com.ironsource.Fe$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Fe.b.a(function1, error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Function1 function1, C3841se c3841se) {
            function1.invoke(c3841se);
        }
    }

    public Fe() {
        this(null, null, null, 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InterfaceC3759o7 b() {
        return Pb.w.d().k();
    }

    private final He c() {
        return this.h != null ? He.d : this.i != null ? He.c : this.j ? He.b : He.a;
    }

    private final InterfaceC3759o7 d() {
        return (InterfaceC3759o7) this.e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Fe f() {
        return new Fe(null, null, null, 7, null);
    }

    @InterfaceC3930xb
    public final Td e() {
        return this.l;
    }

    public final void g() {
        this.a.c(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Fe.b(this.f$0);
            }
        });
    }

    public Fe(Ke tools, Se serverInit, Ff taskScheduler) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(serverInit, "serverInit");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        this.a = tools;
        this.b = serverInit;
        this.c = taskScheduler;
        this.e = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Fe.b();
            }
        });
        this.f = Fe.class.getSimpleName();
        this.g = new ArrayList();
    }

    @InterfaceC3930xb
    private final void b(final Context context, C3969ze c3969ze) {
        a(context, c3969ze, new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.a(this.f$0, context, (C3806qe) obj);
            }
        }, new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.b(this.f$0, (C3841se) obj);
            }
        }).run();
    }

    private final void a(Context context, C3528ba c3528ba, Ue ue) {
        c3528ba.i(ue.g().h());
        c3528ba.c(ue.g().d());
        K1 k1B = ue.c().b();
        Intrinsics.checkNotNull(k1B);
        c3528ba.a(k1B.a());
        c3528ba.d(k1B.c().b());
        c3528ba.b(k1B.k().b());
        c3528ba.a(Boolean.valueOf(IronSourceUtils.c(context)));
        K1 k1B2 = ue.c().b();
        Intrinsics.checkNotNull(k1B2);
        c3528ba.b(k1B2.f().b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(Fe fe, C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        fe.a(error);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Fe fe) {
        fe.a(true);
    }

    public final void b(final C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.c(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Fe.a(this.f$0, error);
            }
        });
    }

    private final void b(C3806qe c3806qe) {
        this.h = c3806qe;
        a(false);
    }

    public static /* synthetic */ void a(Fe fe, Context context, C3969ze c3969ze, InterfaceC3933xe interfaceC3933xe, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = true;
        }
        fe.a(context, c3969ze, interfaceC3933xe, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(InterfaceC3933xe interfaceC3933xe, C3806qe c3806qe) {
        interfaceC3933xe.a(c3806qe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(InterfaceC3933xe interfaceC3933xe, C3841se c3841se) {
        interfaceC3933xe.a(c3841se);
    }

    public final void a(Context context, final C3969ze initRequest, final InterfaceC3933xe listener, final boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final Context applicationContext = context.getApplicationContext();
        this.a.c(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Fe.a(this.f$0, listener, z, applicationContext, initRequest);
            }
        });
    }

    private final void b(Context context, C3806qe c3806qe) {
        boolean zL;
        String strD;
        boolean z;
        String strD2;
        boolean z2;
        String strD3;
        Context context2;
        R1 r1B;
        Wb wbE;
        R1 r1G;
        C3521b3 c3521b3C;
        R1 r1G2;
        L9 l9D;
        R1 r1I;
        C3659ie c3659ieF;
        R1 r1M;
        R1 r1B2;
        Ue ueD = c3806qe.d();
        K1 k1B = ueD.c().b();
        if (k1B == null || (r1B2 = k1B.b()) == null) {
            zL = false;
            strD = null;
        } else {
            zL = r1B2.l();
            strD = r1B2.d();
        }
        S3 s3C = ueD.c();
        if (s3C == null || (c3659ieF = s3C.f()) == null || (r1M = c3659ieF.m()) == null) {
            z = false;
            strD2 = null;
        } else {
            boolean zL2 = r1M.l();
            strD2 = r1M.d();
            z = zL2;
        }
        S3 s3C2 = ueD.c();
        if (s3C2 == null || (l9D = s3C2.d()) == null || (r1I = l9D.i()) == null) {
            z2 = false;
            strD3 = null;
        } else {
            boolean zL3 = r1I.l();
            strD3 = r1I.d();
            z2 = zL3;
        }
        S3 s3C3 = ueD.c();
        boolean zL4 = (s3C3 == null || (c3521b3C = s3C3.c()) == null || (r1G2 = c3521b3C.g()) == null) ? false : r1G2.l();
        S3 s3C4 = ueD.c();
        boolean zL5 = (s3C4 == null || (wbE = s3C4.e()) == null || (r1G = wbE.g()) == null) ? false : r1G.l();
        Pb.a aVar = Pb.w;
        aVar.d().q().b(strD, context);
        if (zL) {
            K1 k1B2 = ueD.c().b();
            if (k1B2 != null && (r1B = k1B2.b()) != null) {
                a(this, aVar.d().q(), r1B, context, ueD, false, 16, null);
            }
        } else {
            aVar.d().q().a(false);
        }
        C3694ke.i().b(strD2, context);
        if (z) {
            S3 s3C5 = ueD.c();
            C3659ie c3659ieF2 = s3C5 != null ? s3C5.f() : null;
            Intrinsics.checkNotNull(c3659ieF2);
            R1 r1M2 = c3659ieF2.m();
            C3694ke c3694keI = C3694ke.i();
            Intrinsics.checkNotNullExpressionValue(c3694keI, "getInstance(...)");
            Intrinsics.checkNotNull(r1M2);
            a(this, c3694keI, r1M2, context, ueD, false, 16, null);
        } else {
            C3694ke.i().a(false);
        }
        N9.i().b(strD3, context);
        if (z2) {
            S3 s3C6 = ueD.c();
            L9 l9D2 = s3C6 != null ? s3C6.d() : null;
            Intrinsics.checkNotNull(l9D2);
            R1 r1I2 = l9D2.i();
            N9 n9I = N9.i();
            Intrinsics.checkNotNullExpressionValue(n9I, "getInstance(...)");
            Intrinsics.checkNotNull(r1I2);
            a(this, n9I, r1I2, context, ueD, false, 16, null);
            context2 = context;
        } else if (zL4) {
            S3 s3C7 = ueD.c();
            C3521b3 c3521b3C2 = s3C7 != null ? s3C7.c() : null;
            Intrinsics.checkNotNull(c3521b3C2);
            R1 r1G3 = c3521b3C2.g();
            N9 n9I2 = N9.i();
            Intrinsics.checkNotNullExpressionValue(n9I2, "getInstance(...)");
            Intrinsics.checkNotNull(r1G3);
            context2 = context;
            a(this, n9I2, r1G3, context2, ueD, false, 16, null);
        } else if (zL5) {
            S3 s3C8 = ueD.c();
            Wb wbE2 = s3C8 != null ? s3C8.e() : null;
            Intrinsics.checkNotNull(wbE2);
            R1 r1G4 = wbE2.g();
            N9 n9I3 = N9.i();
            Intrinsics.checkNotNullExpressionValue(n9I3, "getInstance(...)");
            context2 = context;
            a(this, n9I3, r1G4, context2, ueD, false, 16, null);
        } else {
            context2 = context;
            N9.i().a(false);
        }
        S3 s3C9 = ueD.c();
        K1 k1B3 = s3C9 != null ? s3C9.b() : null;
        Intrinsics.checkNotNull(k1B3);
        C3693kd c3693kdI = k1B3.i();
        boolean zA = c3693kdI.a();
        String strB = c3693kdI.b();
        boolean zC = c3693kdI.c();
        int iD = c3693kdI.d();
        int[] iArrE = c3693kdI.e();
        int[] iArrF = c3693kdI.f();
        C3675jd c3675jd = C3675jd.P;
        c3675jd.a(zA);
        c3675jd.b(strB, context2);
        if (zA) {
            c3675jd.b(iArrE, context2);
            c3675jd.c(iArrF, context2);
            c3675jd.b(zC);
            c3675jd.c(iD);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Fe fe, InterfaceC3933xe interfaceC3933xe, boolean z, Context context, C3969ze c3969ze) {
        C3806qe c3806qe = fe.h;
        if (c3806qe != null) {
            fe.a(interfaceC3933xe, c3806qe);
            return;
        }
        fe.g.add(interfaceC3933xe);
        if (fe.j) {
            return;
        }
        fe.i = null;
        fe.a(true);
        fe.l = null;
        if (z) {
            Intrinsics.checkNotNull(context);
            fe.a(context, c3969ze);
        } else {
            Intrinsics.checkNotNull(context);
            fe.b(context, c3969ze);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [T, com.ironsource.o9] */
    @InterfaceC3930xb
    private final void a(final Context context, C3969ze c3969ze) {
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? c3761o9 = new C3761o9(context, this.a, a(context, c3969ze, new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.a(ref$ObjectRef, (C3806qe) obj);
            }
        }, new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.a(ref$ObjectRef, (C3841se) obj);
            }
        }), new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.a(this.f$0, ref$ObjectRef, context, (C3806qe) obj);
            }
        }, new Function1() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Fe.a(this.f$0, ref$ObjectRef, (C3841se) obj);
            }
        }, this.c, null, 64, null);
        ref$ObjectRef.element = c3761o9;
        c3761o9.e();
    }

    public /* synthetic */ Fe(Ke ke, Se se, Ff ff, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new Je(null, 1, null) : ke, (i & 2) != 0 ? new Re() : se, (i & 4) != 0 ? new Ef(null, null, null, 7, null) : ff);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a(Ref$ObjectRef ref$ObjectRef, C3806qe sdkConfig) {
        C3761o9 c3761o9;
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        T t = ref$ObjectRef.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("controller");
            c3761o9 = null;
        } else {
            c3761o9 = (C3761o9) t;
        }
        c3761o9.a(sdkConfig);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a(Ref$ObjectRef ref$ObjectRef, C3841se error) {
        C3761o9 c3761o9;
        Intrinsics.checkNotNullParameter(error, "error");
        T t = ref$ObjectRef.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("controller");
            c3761o9 = null;
        } else {
            c3761o9 = (C3761o9) t;
        }
        c3761o9.a(error);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a(Fe fe, Ref$ObjectRef ref$ObjectRef, Context context, C3806qe sdkConfig) throws JSONException {
        C3761o9 c3761o9;
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        T t = ref$ObjectRef.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("controller");
            c3761o9 = null;
        } else {
            c3761o9 = (C3761o9) t;
        }
        fe.a(c3761o9);
        fe.a(context, sdkConfig);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a(Fe fe, Ref$ObjectRef ref$ObjectRef, C3841se error) {
        C3761o9 c3761o9;
        Intrinsics.checkNotNullParameter(error, "error");
        T t = ref$ObjectRef.element;
        if (t == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("controller");
            c3761o9 = null;
        } else {
            c3761o9 = (C3761o9) t;
        }
        fe.a(c3761o9);
        fe.a(error);
        return Unit.INSTANCE;
    }

    @InterfaceC3930xb
    private final void a(C3761o9 c3761o9) {
        this.l = c3761o9.b() ? new Td(c3761o9.d(), Integer.valueOf(c3761o9.a())) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(Fe fe, Context context, C3806qe sdkConfig) throws JSONException {
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        fe.a(context, sdkConfig);
        return Unit.INSTANCE;
    }

    @InterfaceC3930xb
    private final Runnable a(final Context context, final C3969ze c3969ze, @InterfaceC3930xb Function1<? super C3806qe, Unit> function1, @InterfaceC3930xb Function1<? super C3841se, Unit> function12) {
        final b bVar = new b(function1, function12);
        return new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                Fe.a(this.f$0, context, c3969ze, bVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Fe fe, Context context, C3969ze c3969ze, b bVar) {
        fe.k = new Date().getTime();
        fe.b.a(context, c3969ze, fe.a, bVar);
    }

    public final void a(final Ae serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.a.c(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Fe.a(serverResponse, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ae ae, Fe fe) {
        C3806qe c3806qe = new C3806qe(ae);
        fe.b(c3806qe);
        fe.a(c3806qe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Fe fe, C3841se c3841se) {
        fe.a(c3841se);
    }

    private final void a(C3841se c3841se) {
        this.i = c3841se;
        a(false);
        Iterator<InterfaceC3933xe> it = this.g.iterator();
        while (it.hasNext()) {
            a(it.next(), c3841se);
        }
        this.g.clear();
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: " + c3841se, 1);
    }

    private final void a(Context context, C3806qe c3806qe) throws JSONException {
        b(c3806qe);
        U1 u1A = c3806qe.a();
        C3462a5 c3462a5 = C3462a5.a;
        c3462a5.c(u1A.h());
        Pb.a aVar = Pb.w;
        aVar.a().o().a(u1A.c());
        c3462a5.a(u1A.g());
        c3462a5.a(u1A.k());
        IronSourceThreadManager.INSTANCE.setUseSharedExecutorService(u1A.i());
        d().a(u1A);
        a(context, this.a.i(), c3806qe.d());
        this.a.a(new Date().getTime() - this.k, c3806qe.f());
        Ye ye = new Ye();
        this.d = ye;
        ye.a(d());
        IronSourceUtils.e(context, c3806qe.d().toString());
        aVar.d().q().c(true);
        N9.i().c(true);
        C3694ke.i().c(true);
        C3675jd c3675jd = C3675jd.P;
        c3675jd.c(true);
        b(context, c3806qe);
        IronSourceLoggerManager.getLogger(0).setDebugLevel(c3806qe.e().b());
        N1 n1B = c3806qe.b();
        if (n1B.f()) {
            this.a.a(n1B);
        }
        this.a.f();
        a(c3806qe);
        c3675jd.i();
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("parameters for init url: " + We.a());
        ironLog.verbose("parameters for init POST data: " + We.b());
    }

    private final void a(C3806qe c3806qe) {
        Iterator<InterfaceC3933xe> it = this.g.iterator();
        while (it.hasNext()) {
            a(it.next(), c3806qe);
        }
        this.g.clear();
    }

    private final void a(boolean z) {
        this.j = z;
        this.a.a(c());
    }

    private final void a(final InterfaceC3933xe interfaceC3933xe, final C3806qe c3806qe) {
        this.a.a(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                Fe.b(interfaceC3933xe, c3806qe);
            }
        });
    }

    private final void a(final InterfaceC3933xe interfaceC3933xe, final C3841se c3841se) {
        this.a.a(new Runnable() { // from class: com.ironsource.Fe$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Fe.b(interfaceC3933xe, c3841se);
            }
        });
    }

    public static /* synthetic */ void a(Fe fe, AbstractC3812r3 abstractC3812r3, R1 r1, Context context, Ue ue, boolean z, int i, Object obj) {
        if ((i & 16) != 0) {
            z = true;
        }
        fe.a(abstractC3812r3, r1, context, ue, z);
    }

    private final void a(AbstractC3812r3 abstractC3812r3, R1 r1, Context context, Ue ue, boolean z) {
        abstractC3812r3.a(z);
        abstractC3812r3.a(r1.c(), context);
        abstractC3812r3.b(r1.d(), context);
        abstractC3812r3.a(r1.f());
        abstractC3812r3.d(r1.e());
        abstractC3812r3.b(r1.a());
        abstractC3812r3.b(r1.i(), context);
        abstractC3812r3.c(r1.h(), context);
        abstractC3812r3.a(r1.j(), context);
        abstractC3812r3.d(r1.g(), context);
        K1 k1B = ue.c().b();
        Intrinsics.checkNotNull(k1B);
        abstractC3812r3.a(k1B.j());
        abstractC3812r3.b(r1.k());
        abstractC3812r3.c(r1.b());
    }
}
