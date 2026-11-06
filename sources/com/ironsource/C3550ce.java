package com.ironsource;

import android.os.Bundle;
import com.ironsource.C3522b4;
import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3660ig;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.ironsourceads.rewarded.RewardedAd;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.ce, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3550ce implements Gb, InterfaceC3615g6 {
    private final RewardedAdRequest a;
    private final Hb b;
    private final U<RewardedAd> c;
    private final InterfaceC3921x2 d;
    private final Ac e;
    private final InterfaceC3810r1 f;
    private final InterfaceC3554d0<RewardedAd> g;
    private final InterfaceC3660ig.c h;
    private final Executor i;
    private C3703l5 j;
    private InterfaceC3660ig k;
    private C3611g2 l;
    private boolean m;

    /* JADX INFO: renamed from: com.ironsource.ce$a */
    public static final class a implements InterfaceC3660ig.a {
        public a() {
        }

        @Override // com.ironsource.InterfaceC3660ig.a
        public void a() {
            C3550ce.this.a(C3960z5.a.s());
        }
    }

    public C3550ce(RewardedAdRequest adRequest, Hb loadTaskConfig, U<RewardedAd> adLoadTaskListener, InterfaceC3921x2 auctionResponseFetcher, Ac networkLoadApi, InterfaceC3810r1 analytics, InterfaceC3554d0<RewardedAd> adObjectFactory, InterfaceC3660ig.c timerFactory, Executor taskFinishedExecutor) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(loadTaskConfig, "loadTaskConfig");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(auctionResponseFetcher, "auctionResponseFetcher");
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adObjectFactory, "adObjectFactory");
        Intrinsics.checkNotNullParameter(timerFactory, "timerFactory");
        Intrinsics.checkNotNullParameter(taskFinishedExecutor, "taskFinishedExecutor");
        this.a = adRequest;
        this.b = loadTaskConfig;
        this.c = adLoadTaskListener;
        this.d = auctionResponseFetcher;
        this.e = networkLoadApi;
        this.f = analytics;
        this.g = adObjectFactory;
        this.h = timerFactory;
        this.i = taskFinishedExecutor;
    }

    @Override // com.ironsource.InterfaceC3615g6
    public void a(final R9 adInstance) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        try {
            this.i.execute(new Runnable() { // from class: com.ironsource.ce$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3550ce.a(this.f$0, adInstance);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    @Override // com.ironsource.Gb
    public void start() {
        this.j = new C3703l5();
        this.f.a(new C3735n1.s(this.b.f()), new C3735n1.n(this.b.g().c()), new C3735n1.b(this.a.getAdId$mediationsdk_release()));
        InterfaceC3681k1.c.a.a().a(this.f);
        a(this.a.getExtraParams());
        long jH = this.b.h();
        InterfaceC3660ig.c cVar = this.h;
        InterfaceC3660ig.b bVar = new InterfaceC3660ig.b();
        bVar.b(jH);
        Unit unit = Unit.INSTANCE;
        InterfaceC3660ig interfaceC3660igA = cVar.a(bVar);
        this.k = interfaceC3660igA;
        if (interfaceC3660igA != null) {
            interfaceC3660igA.a(new a());
        }
        Object objA = this.d.a();
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
        if (thM2763exceptionOrNullimpl != null) {
            Intrinsics.checkNotNull(thM2763exceptionOrNullimpl, "null cannot be cast to non-null type com.unity3d.ironsourceads.internal.error.ISException");
            a(((C3599f8) thM2763exceptionOrNullimpl).a());
            objA = null;
        }
        C3867u2 c3867u2 = (C3867u2) objA;
        if (c3867u2 == null) {
            return;
        }
        InterfaceC3810r1 interfaceC3810r1 = this.f;
        String strB = c3867u2.b();
        if (strB != null) {
            interfaceC3810r1.a(new C3735n1.d(strB));
        }
        JSONObject jSONObjectF = c3867u2.f();
        if (jSONObjectF != null) {
            interfaceC3810r1.a(new C3735n1.m(jSONObjectF));
        }
        String strA = c3867u2.a();
        if (strA != null) {
            interfaceC3810r1.a(new C3735n1.g(strA));
        }
        EnumC3928x9 enumC3928x9G = this.b.g();
        C3597f6 c3597f6 = new C3597f6();
        c3597f6.a(this);
        R9 r9A = new S9(this.a.getProviderName$mediationsdk_release().value(), c3597f6).a(enumC3928x9G.b(EnumC3928x9.d)).b(this.b.i()).c().a(this.a.getAdId$mediationsdk_release()).a(MapsKt__MapsKt.plus(new C3859tc().a(), V5.a.a(this.a.getExtraParams()))).a();
        InterfaceC3810r1 interfaceC3810r12 = this.f;
        String strE = r9A.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        interfaceC3810r12.a(new C3735n1.b(strE));
        Cc cc = new Cc(c3867u2, this.b.j());
        this.l = new C3611g2(new C3910w9(this.a.getInstanceId(), enumC3928x9G.c(), c3867u2.a()), new com.ironsource.mediationsdk.d(), c3867u2.c());
        InterfaceC3681k1.d.a.c().a(this.f);
        Ac ac = this.e;
        Intrinsics.checkNotNull(r9A);
        ac.a(r9A, cc);
    }

    public /* synthetic */ C3550ce(RewardedAdRequest rewardedAdRequest, Hb hb, U u, InterfaceC3921x2 interfaceC3921x2, Ac ac, InterfaceC3810r1 interfaceC3810r1, InterfaceC3554d0 interfaceC3554d0, InterfaceC3660ig.c cVar, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(rewardedAdRequest, hb, u, interfaceC3921x2, ac, interfaceC3810r1, interfaceC3554d0, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? new InterfaceC3660ig.d() : cVar, (i & 256) != 0 ? V7.a.e() : executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3550ce c3550ce, R9 r9) {
        if (c3550ce.m) {
            return;
        }
        c3550ce.m = true;
        InterfaceC3660ig interfaceC3660ig = c3550ce.k;
        if (interfaceC3660ig != null) {
            interfaceC3660ig.cancel();
        }
        C3703l5 c3703l5 = c3550ce.j;
        if (c3703l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3703l5 = null;
        }
        InterfaceC3681k1.c.a.a(new C3735n1.f(C3703l5.a(c3703l5))).a(c3550ce.f);
        C3611g2 c3611g2 = c3550ce.l;
        if (c3611g2 != null) {
            c3611g2.c("onAdInstanceLoadSuccess");
        }
        InterfaceC3554d0<RewardedAd> interfaceC3554d0 = c3550ce.g;
        C3611g2 c3611g22 = c3550ce.l;
        Intrinsics.checkNotNull(c3611g22);
        c3550ce.c.a(interfaceC3554d0.a(r9, c3611g22));
    }

    private final void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        Map<String, String> mapA = V5.a.a(bundle);
        for (String str : mapA.keySet()) {
            String strValueOf = String.valueOf(mapA.get(str));
            InterfaceC3681k1.c.a.a(new C3735n1.l(str + C3522b4.j.b + strValueOf)).a(this.f);
        }
    }

    @Override // com.ironsource.InterfaceC3615g6
    public void a(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        a(C3960z5.a.c(description));
    }

    public final void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        try {
            this.i.execute(new Runnable() { // from class: com.ironsource.ce$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3550ce.a(this.f$0, error);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3550ce c3550ce, IronSourceError ironSourceError) {
        if (c3550ce.m) {
            return;
        }
        c3550ce.m = true;
        InterfaceC3660ig interfaceC3660ig = c3550ce.k;
        if (interfaceC3660ig != null) {
            interfaceC3660ig.cancel();
        }
        InterfaceC3681k1.c.a aVar = InterfaceC3681k1.c.a;
        C3735n1.j jVar = new C3735n1.j(ironSourceError.getErrorCode());
        C3735n1.k kVar = new C3735n1.k(ironSourceError.getErrorMessage());
        C3703l5 c3703l5 = c3550ce.j;
        if (c3703l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3703l5 = null;
        }
        aVar.a(jVar, kVar, new C3735n1.f(C3703l5.a(c3703l5))).a(c3550ce.f);
        C3611g2 c3611g2 = c3550ce.l;
        if (c3611g2 != null) {
            c3611g2.a("onAdInstanceLoadFail");
        }
        c3550ce.c.a(ironSourceError);
    }

    private final void a(Exception exc) {
        IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError(exc.getMessage());
        InterfaceC3681k1.d.a.a(new C3735n1.k(ironSourceErrorBuildLoadFailedError.getErrorMessage())).a(this.f);
        IronLog.CALLBACK.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
    }
}
