package com.ironsource;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.C3809r0;
import com.ironsource.Ff;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class A implements AdapterAdListener, NetworkInitializationListener {
    static final /* synthetic */ KProperty<Object>[] z = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(A.class, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "getListener()Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/listeners/AdInstanceListener;", 0))};
    private final T0 a;
    private final B b;
    private final H c;
    private final Ff d;
    private final ReadWriteProperty e;
    private F f;
    private final BaseAdAdapter<?, ?> g;
    private C3703l5 h;
    private Ff.a i;
    private final Map<String, Object> j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private final AdData p;
    private final C3939y2 q;
    private final boolean r;
    private final String s;
    private final int t;
    private final String u;
    private final IronSource.a v;
    private final int w;
    private final I x;
    private final boolean y;

    public A(T0 adTools, B instanceData, H adInstancePayload, Ff taskScheduler, E e) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        this.a = adTools;
        this.b = instanceData;
        this.c = adInstancePayload;
        this.d = taskScheduler;
        this.e = C3598f7.a(e);
        this.j = new LinkedHashMap();
        this.p = instanceData.h();
        this.q = instanceData.q();
        this.r = instanceData.k().j();
        this.s = instanceData.s();
        this.t = instanceData.t();
        this.u = instanceData.x();
        this.v = instanceData.i();
        this.w = instanceData.w();
        this.x = instanceData.u();
        this.y = instanceData.y();
        BaseAdAdapter<?, ?> baseAdAdapterA = a(instanceData);
        this.g = baseAdAdapterA;
        adTools.f().a(new C(adTools, instanceData, baseAdAdapterA));
        adTools.f().a(new C3575e2(instanceData.l()));
    }

    @InterfaceC3930xb
    private final void E() {
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        J();
        a(new Function0() { // from class: com.ironsource.A$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return A.d(this.f$0);
            }
        });
    }

    @InterfaceC3930xb
    private final void F() {
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        this.a.f().a().a(k());
        E eS = s();
        if (eS != null) {
            eS.a(this);
        }
    }

    @InterfaceC3930xb
    private final void G() {
        IronLog ironLog = IronLog.INTERNAL;
        F f = null;
        ironLog.verbose(a(this, (String) null, 1, (Object) null));
        K();
        this.k = false;
        if (this.n) {
            c();
            this.a.f().h().f("instance load success after it was already failed");
            return;
        }
        if (this.l) {
            this.a.f().h().f("instance load success after it was already loaded");
            return;
        }
        this.l = true;
        long jA = C3703l5.a(this.h);
        ironLog.verbose(a("Load duration = " + jA));
        this.a.f().e().a(jA, false, this.y);
        a(C3809r0.a.c);
        F f2 = this.f;
        if (f2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadListener");
        } else {
            f = f2;
        }
        f.b(this);
    }

    @InterfaceC3930xb
    private final void H() {
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        if (this.m) {
            this.a.f().h().f("instance opened after it was already opened");
            return;
        }
        this.m = true;
        this.a.f().a().a(k(), this.o);
        a(C3809r0.a.e);
        E eS = s();
        if (eS != null) {
            eS.b(this);
        }
    }

    @InterfaceC3930xb
    private final void I() {
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        K();
        if (this.n) {
            return;
        }
        E();
    }

    @InterfaceC3930xb
    private final void J() {
        K();
        Ff ff = this.d;
        com.ironsource.environment.thread.a aVarA = a();
        Duration.Companion companion = Duration.Companion;
        this.i = ff.b(aVarA, DurationKt.toDuration(o(), DurationUnit.SECONDS));
    }

    private final void K() {
        Ff.a aVar = this.i;
        if (aVar != null) {
            aVar.a();
        }
        this.i = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(A a) {
        String str = "loadAd - network adapter not available " + a.u;
        IronLog.INTERNAL.error(a.a(str));
        a.b(A0.c(a.b.i()), str);
    }

    private final int o() {
        Integer numF = h().f();
        return (numF == null || numF.intValue() <= 0) ? this.b.j().h() : numF.intValue();
    }

    public final boolean A() {
        return this.y;
    }

    public boolean B() {
        return this.l;
    }

    public final boolean C() {
        return this.o;
    }

    public abstract void D();

    public final void a(E e) {
        this.e.setValue(this, z[0], e);
    }

    @InterfaceC3930xb
    public abstract void a(J j);

    public final void b(boolean z2) {
        this.o = z2;
    }

    public void c() {
    }

    public final IronSource.a d() {
        return this.v;
    }

    public LevelPlayAdInfo e() {
        String string = this.b.j().b().b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strC = this.b.j().b().c();
        String string2 = this.b.i().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return new LevelPlayAdInfo(string, strC, string2, h(), null, this.b.j().m(), MapsKt__MapsKt.toMap(this.j));
    }

    public final T0 f() {
        return this.a;
    }

    public final BaseAdAdapter<?, ?> g() {
        return this.g;
    }

    public final C3939y2 h() {
        return this.b.o();
    }

    public final AdData i() {
        return this.p;
    }

    public final C3729md j() {
        return this.b.j().b().f();
    }

    public final String k() {
        return this.b.j().m();
    }

    public final Map<String, Object> l() {
        return this.j;
    }

    public final C3939y2 m() {
        return this.q;
    }

    public final B n() {
        return this.b;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdClicked() {
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                A.e(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadFailed(final AdapterErrorType adapterErrorType, final int i, final String errorMessage) {
        Intrinsics.checkNotNullParameter(adapterErrorType, "adapterErrorType");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                A.a(this.f$0, adapterErrorType, i, errorMessage);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadSuccess() {
        onAdLoadSuccess(new LinkedHashMap());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        onAdOpened(new LinkedHashMap());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdShowFailed(final int i, final String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                A.a(this.f$0, i, errorMessage);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitFailed(final int i, final String str) {
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                A.b(this.f$0, i, str);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener
    public void onInitSuccess() {
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                A.f(this.f$0);
            }
        });
    }

    public final String p() {
        return this.s;
    }

    public final String q() {
        return this.u;
    }

    public final int r() {
        return this.t;
    }

    public final E s() {
        return (E) this.e.getValue(this, z[0]);
    }

    public final I t() {
        return this.x;
    }

    public final int u() {
        return this.w;
    }

    public final boolean v() {
        return this.r;
    }

    public final boolean w() {
        return this.n;
    }

    public final boolean x() {
        return this.l;
    }

    public final boolean y() {
        return this.k;
    }

    public final boolean z() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(final A a) {
        try {
            BaseAdAdapter<?, ?> baseAdAdapter = a.g;
            Intrinsics.checkNotNull(baseAdAdapter);
            AdapterBaseInterface networkAdapter = baseAdAdapter.getNetworkAdapter();
            if (networkAdapter != null) {
                networkAdapter.init(a.b.h(), ContextProvider.getInstance().getApplicationContext(), a);
            } else {
                a.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        A.c(this.f$0);
                    }
                });
            }
        } catch (Throwable th) {
            a.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    A.a(th, a);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(final A a) {
        try {
            a.D();
        } catch (Throwable th) {
            a.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    A.b(th, a);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(A a) {
        a.I();
    }

    public final void a(C3939y2 value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.a(value);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdLoadSuccess(final Map<String, Object> extraData) {
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                A.a(this.f$0, extraData);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened(final Map<String, Object> extraData) {
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        this.a.a(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                A.b(this.f$0, extraData);
            }
        });
    }

    public final void a(C3809r0.a performance) {
        Intrinsics.checkNotNullParameter(performance, "performance");
        this.b.a(performance);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Function0 function0) {
        function0.invoke();
    }

    public final void a(boolean z2) {
        this.a.f().a().a(z2);
    }

    private final BaseAdAdapter<?, ?> a(B b) {
        if (b.j().e().q()) {
            return this.c.b();
        }
        return this.a.a(b);
    }

    @InterfaceC3930xb
    public final void a(F listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        this.f = listener;
        this.k = true;
        this.a.f().e().a(false, this.y);
        this.h = new C3703l5();
        J();
        a(new Function0() { // from class: com.ironsource.A$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return A.b(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(A a) {
        a.F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Throwable th, A a) {
        C3813r4.d().a(th);
        String str = "loadAd - exception = " + th.getLocalizedMessage();
        IronLog.INTERNAL.error(a.a(str));
        a.a.f().h().g(str);
        a.b(A0.c(a.b.i()), str);
    }

    public final void a(final Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        D7 d7H = Pb.w.d().h();
        if (d7H.m()) {
            IronSourceThreadManager.postAdapterBackgroundTask$default(IronSourceThreadManager.INSTANCE, com.ironsource.environment.thread.a.a.a(new Function0() { // from class: com.ironsource.A$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return A.b(block);
                }
            }), 0L, 2, null);
        } else if (d7H.F()) {
            Jf.a.b(new Runnable() { // from class: com.ironsource.A$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    A.c(block);
                }
            });
        } else {
            block.invoke();
        }
    }

    @InterfaceC3930xb
    public void b() {
        IronLog.INTERNAL.verbose(a(this, (String) null, 1, (Object) null));
        K();
        this.a.f().e().a(this.w);
    }

    public static /* synthetic */ String a(A a, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createLogMessage");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        return a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(Function0 function0) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    public final String a(String str) {
        return this.a.a(str, this.u);
    }

    @InterfaceC3930xb
    private final com.ironsource.environment.thread.a a() {
        return com.ironsource.environment.thread.a.a.a(new Function0() { // from class: com.ironsource.A$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return A.a(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Throwable th, A a) {
        C3813r4.d().a(th);
        String str = "unexpected error while calling adapter.loadAd() - " + th.getMessage();
        IronLog.INTERNAL.error(a.a(str));
        a.a.f().h().g(str);
        a.a(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 510, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(A a) {
        long jA = C3703l5.a(a.h);
        IronLog.INTERNAL.verbose(a.a("Load duration = " + jA + ", isBidder = " + a.r));
        a.n = true;
        a.a.f().e().a(jA, IronSourceError.ERROR_LOAD_FAILED_TIMEOUT, false, a.y);
        a.a.f().e().a(jA, IronSourceError.ERROR_LOAD_FAILED_TIMEOUT, "time out", false, a.y);
        IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("time out");
        Intrinsics.checkNotNullExpressionValue(ironSourceErrorBuildLoadFailedError, "buildLoadFailedError(...)");
        a.a(ironSourceErrorBuildLoadFailedError);
        return Unit.INSTANCE;
    }

    @InterfaceC3930xb
    private final void b(int i, String str) {
        IronLog.INTERNAL.verbose(a("error = " + i + ", " + str));
        K();
        this.n = true;
        a(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, i, str, C3703l5.a(this.h));
        a(new IronSourceError(i, str));
    }

    @InterfaceC3930xb
    private final void a(IronSourceError ironSourceError) {
        a(C3809r0.a.b);
        F f = this.f;
        if (f == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadListener");
            f = null;
        }
        f.a(ironSourceError, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(A a, Map map) {
        a.j.putAll(map);
        a.H();
    }

    @InterfaceC3930xb
    private final void a(AdapterErrorType adapterErrorType, int i, String str) {
        long jA = C3703l5.a(this.h);
        IronLog.INTERNAL.verbose(a("Load duration = " + jA + ", error = " + i + ", " + str));
        K();
        this.k = false;
        if (this.n) {
            c();
            a(adapterErrorType, i, str, jA);
        } else {
            if (this.l) {
                a(adapterErrorType);
                return;
            }
            this.n = true;
            c();
            a(adapterErrorType, i, str, jA);
            a(new IronSourceError(i, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(A a, int i, String str) {
        a.b(i, str);
    }

    public /* synthetic */ A(T0 t0, B b, H h, Ff ff, E e, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(t0, b, h, (i & 8) != 0 ? new Ef(null, null, null, 7, null) : ff, (i & 16) != 0 ? null : e);
    }

    @InterfaceC3930xb
    public final void a(int i, String errorMessage) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        IronLog.INTERNAL.verbose(a("Show error = " + i + ", " + errorMessage));
        this.n = true;
        this.a.f().a().a(k(), i, errorMessage, null);
        a(C3809r0.a.d);
        E eS = s();
        if (eS != null) {
            eS.a(this, new IronSourceError(i, errorMessage));
        }
        c();
    }

    private final void a(AdapterErrorType adapterErrorType) {
        if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED) {
            this.a.f().h().a("");
        } else {
            this.a.f().h().f("instance load failed after it was already loaded");
        }
    }

    private final void a(AdapterErrorType adapterErrorType, int i, String str, long j) {
        if (adapterErrorType == AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL) {
            this.a.f().e().b(j, i, this.y);
        } else if (str != null && str.length() != 0) {
            this.a.f().e().a(j, i, str, false, this.y);
        } else {
            this.a.f().e().a(j, i, false, this.y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(A a, Map map) {
        a.j.putAll(map);
        a.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(A a, AdapterErrorType adapterErrorType, int i, String str) {
        a.a(adapterErrorType, i, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(A a, int i, String str) {
        a.a(i, str);
    }
}
