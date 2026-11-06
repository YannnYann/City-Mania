package com.ironsource;

import android.app.Activity;
import com.ironsource.E0;
import com.ironsource.Ff;
import com.ironsource.InterfaceC3803qb;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.Z4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: renamed from: com.ironsource.u6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class C3871u6 implements InterfaceC3740n6 {
    private final Pb a;
    private final T0 b;
    private final AbstractC3919x0 c;
    private InterfaceC3925x6 d;
    private final C3563d9 e;
    private final Function2<B, H, C3722m6> f;
    private final Ff g;
    private final InterfaceC3851t4 h;
    private C3758o6 i;
    private b j;
    private a k;
    private final Hg l;
    private Ff.a m;
    private Long n;

    /* JADX INFO: renamed from: com.ironsource.u6$a */
    public interface a {
        void a(C3871u6 c3871u6, IronSourceError ironSourceError);

        void a(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);
    }

    /* JADX INFO: renamed from: com.ironsource.u6$b */
    public interface b {
        void a(C3871u6 c3871u6);

        void b(C3871u6 c3871u6, IronSourceError ironSourceError);

        void b(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);

        void c(C3871u6 c3871u6, LevelPlayAdInfo levelPlayAdInfo);
    }

    /* JADX INFO: renamed from: com.ironsource.u6$c */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            try {
                iArr[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.u6$e */
    public /* synthetic */ class e extends FunctionReferenceImpl implements Function2<B, H, C3722m6> {
        public e(Object obj) {
            super(2, obj, C3871u6.class, "createAdInstance", "createAdInstance(Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/AdInstanceData;Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/AdInstancePayload;)Lcom/unity3d/mediation/internal/ads/controllers/adunits/adinstances/FullscreenAdInstance;", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C3722m6 invoke(B p0, H p1) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            Intrinsics.checkNotNullParameter(p1, "p1");
            return ((C3871u6) this.receiver).a(p0, p1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3871u6(Pb mediationServices, T0 adUnitTools, AbstractC3919x0 adUnitData, InterfaceC3925x6 fullscreenListener, C3563d9 impressionDataListenerHolder, Jg jg, Function2<? super B, ? super H, C3722m6> function2, Ff taskScheduler, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(mediationServices, "mediationServices");
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(fullscreenListener, "fullscreenListener");
        Intrinsics.checkNotNullParameter(impressionDataListenerHolder, "impressionDataListenerHolder");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = mediationServices;
        this.b = adUnitTools;
        this.c = adUnitData;
        this.d = fullscreenListener;
        this.e = impressionDataListenerHolder;
        this.f = function2;
        this.g = taskScheduler;
        this.h = currentTimeProvider;
        this.l = a(jg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h() {
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
        final long jB = this.b.b(b());
        IronLog.INTERNAL.verbose(C3770p0.a(this.b, "scheduling load expiration for " + b() + " in " + jB + " ms", (String) null, 2, (Object) null));
        Ff ff = this.g;
        Duration.Companion companion = Duration.Companion;
        this.m = ff.a(this, DurationKt.toDuration(jB, DurationUnit.MILLISECONDS), new Function1() { // from class: com.ironsource.u6$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3871u6.a(jB, (C3871u6) obj);
            }
        });
    }

    private final void i() {
        String strC = c();
        if (strC.length() > 0) {
            this.a.b().b(strC, b());
            L3 l3A = this.a.p().a(strC, b());
            if (l3A.d()) {
                this.b.f().a().b(strC, l3A.e());
            }
        }
    }

    public final void finalize() {
        IronLog.INTERNAL.verbose(C3770p0.a(this.b, "finalizing ad unit", (String) null, 2, (Object) null));
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final A b(C3871u6 c3871u6, B instanceData, H adInstancePayload) {
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
        Function2 eVar = c3871u6.f;
        if (eVar == null) {
            eVar = new e(c3871u6);
        }
        C3722m6 c3722m6 = (C3722m6) eVar.invoke(instanceData, adInstancePayload);
        c3722m6.a(c3871u6);
        return c3722m6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        return this.c.m();
    }

    private final Dd f() {
        int i = c.a[b().ordinal()];
        if (i == 1) {
            return this.a.C();
        }
        if (i != 2) {
            return null;
        }
        return this.a.H();
    }

    private final InterfaceC3803qb<Unit> g() {
        if (!this.l.g()) {
            return new InterfaceC3803qb.a(new IronSourceError(509, "show called while ad unit is not ready to show"));
        }
        if (this.a.p().a(c(), b()).d()) {
            return new InterfaceC3803qb.a(new IronSourceError(IronSourceError.ERROR_PLACEMENT_CAPPED, "placement " + c() + " is capped"));
        }
        if (!this.a.g().a(this.c.b().c()).d()) {
            return new InterfaceC3803qb.b(Unit.INSTANCE);
        }
        return new InterfaceC3803qb.a(new IronSourceError(IronSourceError.ERROR_AD_UNIT_CAPPED, "adUnitId " + this.c.b().c() + " is capped"));
    }

    public final InterfaceC3925x6 d() {
        return this.d;
    }

    public final LevelPlayAdInfo e() {
        A aD = this.l.d();
        if (aD != null) {
            return aD.e();
        }
        return null;
    }

    public final void a(InterfaceC3925x6 interfaceC3925x6) {
        Intrinsics.checkNotNullParameter(interfaceC3925x6, "<set-?>");
        this.d = interfaceC3925x6;
    }

    public final void a(b loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        IronLog.INTERNAL.verbose(C3770p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.j = loadListener;
        this.n = Long.valueOf(this.h.a());
        this.b.a(new C3827s0(this.c.b()));
        D d2 = new D() { // from class: com.ironsource.u6$$ExternalSyntheticLambda0
            @Override // com.ironsource.D
            public final A a(B b2, H h) {
                return C3871u6.b(this.f$0, b2, h);
            }
        };
        this.b.f().e().a(this.c.v());
        this.l.a(d2);
    }

    @Override // com.ironsource.E
    public void b(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.l.d(instance);
        this.e.a(instance.e());
        this.b.f().a().g(c());
        this.a.i().b(com.unity3d.mediation.a.a(b()));
    }

    /* JADX INFO: renamed from: com.ironsource.u6$d */
    public static final class d implements Pg {
        public d() {
        }

        @Override // com.ironsource.Pg
        public void a(int i, String errorReason) {
            Long lValueOf;
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            Long l = C3871u6.this.n;
            if (l != null) {
                lValueOf = Long.valueOf(C3871u6.this.h.a() - l.longValue());
            } else {
                lValueOf = null;
            }
            C3871u6.this.b.f().e().a(lValueOf != null ? lValueOf.longValue() : 0L, i, errorReason, C3871u6.this.c.v());
            b bVar = C3871u6.this.j;
            if (bVar != null) {
                bVar.b(C3871u6.this, new IronSourceError(i, errorReason));
            }
        }

        @Override // com.ironsource.Pg
        public void b(A instance) {
            Long lValueOf;
            Intrinsics.checkNotNullParameter(instance, "instance");
            Long l = C3871u6.this.n;
            if (l != null) {
                lValueOf = Long.valueOf(C3871u6.this.h.a() - l.longValue());
            } else {
                lValueOf = null;
            }
            C3871u6.this.b.f().e().a(lValueOf != null ? lValueOf.longValue() : 0L, C3871u6.this.c.v());
            C3871u6.this.h();
            b bVar = C3871u6.this.j;
            if (bVar != null) {
                bVar.b(C3871u6.this, instance.e());
            }
        }

        @Override // com.ironsource.Pg
        public void a(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            C3871u6.this.b.f().a().e(C3871u6.this.c());
            C3871u6.this.h();
            b bVar = C3871u6.this.j;
            if (bVar != null) {
                bVar.c(C3871u6.this, instance.e());
            }
        }
    }

    @Override // com.ironsource.InterfaceC3740n6
    public void b(C3722m6 fullscreenInstance) {
        Dd ddF;
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        if (fullscreenInstance.A() && (ddF = f()) != null) {
            ddF.a(this.c.b().c(), true);
        }
        this.b.f().a().b(c());
        this.l.b();
        this.i = null;
        this.d.onClosed();
    }

    public /* synthetic */ C3871u6(Pb pb, T0 t0, AbstractC3919x0 abstractC3919x0, InterfaceC3925x6 interfaceC3925x6, C3563d9 c3563d9, Jg jg, Function2 function2, Ff ff, InterfaceC3851t4 interfaceC3851t4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(pb, t0, abstractC3919x0, interfaceC3925x6, c3563d9, (i & 32) != 0 ? null : jg, (i & 64) != 0 ? null : function2, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? new Ef(null, null, null, 7, null) : ff, (i & 256) != 0 ? new InterfaceC3851t4.a() : interfaceC3851t4);
    }

    private final LevelPlay.AdFormat b() {
        return this.c.b().e();
    }

    public final void a(Activity activity, a displayListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(C3770p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.k = displayListener;
        this.b.f().a().a(activity, c());
        InterfaceC3803qb<Unit> interfaceC3803qbG = g();
        if (interfaceC3803qbG instanceof InterfaceC3803qb.a) {
            IronSourceError ironSourceErrorB = ((InterfaceC3803qb.a) interfaceC3803qbG).b();
            ironLog.verbose(C3770p0.a(this.b, ironSourceErrorB.getErrorMessage(), (String) null, 2, (Object) null));
            this.b.f().a().a(c(), ironSourceErrorB.getErrorCode(), ironSourceErrorB.getErrorMessage(), this.l.f());
            displayListener.a(this, ironSourceErrorB);
            return;
        }
        Ff.a aVar = this.m;
        if (aVar != null) {
            aVar.a();
        }
        C3758o6 c3758o6 = new C3758o6(activity);
        this.i = c3758o6;
        this.l.a((J) c3758o6, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C3722m6 a(B b2, H h) {
        return new C3722m6(new T0(this.b, E0.b.PROVIDER), b2, h);
    }

    private final Hg a(Jg jg) {
        Pg pgA = a();
        if (jg != null) {
            return jg.a(pgA, this);
        }
        return new Hg(this.b, this.c, Pb.w.c().h().x(), pgA, f(), this);
    }

    private final Pg a() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(long j, C3871u6 weakScheduleOnLevelPlay) {
        Intrinsics.checkNotNullParameter(weakScheduleOnLevelPlay, "$this$weakScheduleOnLevelPlay");
        b bVar = weakScheduleOnLevelPlay.j;
        if (bVar != null) {
            bVar.a(weakScheduleOnLevelPlay);
        }
        weakScheduleOnLevelPlay.l.a(new Z4.a(j));
        return Unit.INSTANCE;
    }

    @Override // com.ironsource.InterfaceC3740n6
    public void a(C3722m6 fullscreenInstance) {
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        this.l.b();
        this.i = null;
        a aVar = this.k;
        if (aVar != null) {
            aVar.a(this, fullscreenInstance.e());
        }
        i();
        this.a.l().b(this.c.b().c());
    }

    @Override // com.ironsource.E
    public void a(A instance, IronSourceError error) {
        Dd ddF;
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog.INTERNAL.verbose(C3770p0.a(this.b, error.toString(), (String) null, 2, (Object) null));
        if (instance.A() && (ddF = f()) != null) {
            ddF.a(this.c.b().c(), true);
        }
        C3758o6 c3758o6 = this.i;
        Pd pdF = this.l.f();
        a(pdF);
        if (pdF == Pd.b && c3758o6 != null) {
            this.l.a((J) c3758o6, true);
            return;
        }
        this.l.b();
        this.i = null;
        this.b.f().a().a(c(), error.getErrorCode(), error.getErrorMessage(), pdF);
        a aVar = this.k;
        if (aVar != null) {
            aVar.a(this, error);
        }
    }

    private final void a(Pd pd) {
        if (pd == Pd.b || pd == Pd.c) {
            this.b.f().h().a(pd);
        }
    }

    @Override // com.ironsource.InterfaceC3740n6
    public void a(C3722m6 fullscreenInstance, LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(fullscreenInstance, "fullscreenInstance");
        Intrinsics.checkNotNullParameter(reward, "reward");
        IronLog.INTERNAL.verbose(C3770p0.a(this.b, fullscreenInstance.q(), (String) null, 2, (Object) null));
        this.d.a(reward);
    }

    @Override // com.ironsource.E
    public void a(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.b.f().a().a(c());
        this.d.e();
    }
}
