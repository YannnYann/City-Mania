package com.ironsource;

import android.content.Context;
import android.os.Bundle;
import com.ironsource.C3522b4;
import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3660ig;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.ironsourceads.AdSize;
import com.unity3d.ironsourceads.banner.BannerAdRequest;
import com.unity3d.ironsourceads.banner.BannerAdView;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3630h3 implements Gb, L2 {
    private final BannerAdRequest a;
    private final AdSize b;
    private final InterfaceC3921x2 c;
    private final Hb d;
    private final Ac e;
    private final InterfaceC3810r1 f;
    private final U<BannerAdView> g;
    private final O2 h;
    private final InterfaceC3660ig.c i;
    private final Executor j;
    private C3703l5 k;
    private InterfaceC3660ig l;
    private C3611g2 m;
    private boolean n;

    /* JADX INFO: renamed from: com.ironsource.h3$a */
    public static final class a implements InterfaceC3660ig.a {
        public a() {
        }

        @Override // com.ironsource.InterfaceC3660ig.a
        public void a() {
            C3630h3.this.a(C3960z5.a.s());
        }
    }

    public C3630h3(BannerAdRequest adRequest, AdSize size, InterfaceC3921x2 auctionResponseFetcher, Hb loadTaskConfig, Ac networkLoadApi, InterfaceC3810r1 analytics, U<BannerAdView> adLoadTaskListener, O2 adLayoutFactory, InterfaceC3660ig.c timerFactory, Executor taskFinishedExecutor) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(auctionResponseFetcher, "auctionResponseFetcher");
        Intrinsics.checkNotNullParameter(loadTaskConfig, "loadTaskConfig");
        Intrinsics.checkNotNullParameter(networkLoadApi, "networkLoadApi");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(adLayoutFactory, "adLayoutFactory");
        Intrinsics.checkNotNullParameter(timerFactory, "timerFactory");
        Intrinsics.checkNotNullParameter(taskFinishedExecutor, "taskFinishedExecutor");
        this.a = adRequest;
        this.b = size;
        this.c = auctionResponseFetcher;
        this.d = loadTaskConfig;
        this.e = networkLoadApi;
        this.f = analytics;
        this.g = adLoadTaskListener;
        this.h = adLayoutFactory;
        this.i = timerFactory;
        this.j = taskFinishedExecutor;
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

    @Override // com.ironsource.L2
    public void onBannerLoadFail(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        a(C3960z5.a.c(description));
    }

    @Override // com.ironsource.L2
    public void onBannerLoadSuccess(final R9 adInstance, final C3688k8 adContainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        try {
            this.j.execute(new Runnable() { // from class: com.ironsource.h3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3630h3.a(this.f$0, adInstance, adContainer);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    @Override // com.ironsource.Gb
    public void start() {
        this.k = new C3703l5();
        this.f.a(new C3735n1.s(this.d.f()), new C3735n1.n(this.d.g().c()), new C3735n1.c(this.b), new C3735n1.b(this.a.getAdId$mediationsdk_release()));
        InterfaceC3681k1.c.a.a().a(this.f);
        a(this.a.getExtraParams());
        long jH = this.d.h();
        InterfaceC3660ig.c cVar = this.i;
        InterfaceC3660ig.b bVar = new InterfaceC3660ig.b();
        bVar.b(jH);
        Unit unit = Unit.INSTANCE;
        InterfaceC3660ig interfaceC3660igA = cVar.a(bVar);
        this.l = interfaceC3660igA;
        if (interfaceC3660igA != null) {
            interfaceC3660igA.a(new a());
        }
        Object objA = this.c.a();
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
        EnumC3928x9 enumC3928x9G = this.d.g();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        C3653i8 c3653i8 = new C3653i8(AdapterUtils.dpToPixels(applicationContext, this.b.getWidth()), AdapterUtils.dpToPixels(applicationContext, this.b.getHeight()), this.b.getSizeDescription());
        Qc qc = new Qc();
        qc.a(this);
        R9 r9A = new S9(this.a.getProviderName$mediationsdk_release().value(), qc).a(enumC3928x9G.b(EnumC3928x9.d)).a(c3653i8).b(this.d.i()).a(this.a.getAdId$mediationsdk_release()).a(MapsKt__MapsKt.plus(new C3859tc().a(), V5.a.a(this.a.getExtraParams()))).a();
        Cc cc = new Cc(c3867u2, this.d.j());
        this.m = new C3611g2(new C3910w9(this.a.getInstanceId(), enumC3928x9G.c(), c3867u2.a()), new com.ironsource.mediationsdk.d(), c3867u2.c());
        InterfaceC3681k1.d.a.c().a(this.f);
        Ac ac = this.e;
        Intrinsics.checkNotNull(r9A);
        ac.a(r9A, cc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3630h3 c3630h3, R9 r9, C3688k8 c3688k8) {
        if (c3630h3.n) {
            return;
        }
        c3630h3.n = true;
        InterfaceC3660ig interfaceC3660ig = c3630h3.l;
        if (interfaceC3660ig != null) {
            interfaceC3660ig.cancel();
        }
        C3703l5 c3703l5 = c3630h3.k;
        if (c3703l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3703l5 = null;
        }
        InterfaceC3681k1.c.a.a(new C3735n1.f(C3703l5.a(c3703l5))).a(c3630h3.f);
        C3611g2 c3611g2 = c3630h3.m;
        if (c3611g2 != null) {
            c3611g2.c("onBannerLoadSuccess");
        }
        O2 o2 = c3630h3.h;
        C3611g2 c3611g22 = c3630h3.m;
        Intrinsics.checkNotNull(c3611g22);
        c3630h3.g.a(o2.a(r9, c3688k8, c3611g22));
    }

    public /* synthetic */ C3630h3(BannerAdRequest bannerAdRequest, AdSize adSize, InterfaceC3921x2 interfaceC3921x2, Hb hb, Ac ac, InterfaceC3810r1 interfaceC3810r1, U u, O2 o2, InterfaceC3660ig.c cVar, Executor executor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bannerAdRequest, adSize, interfaceC3921x2, hb, ac, interfaceC3810r1, u, o2, (i & 256) != 0 ? new InterfaceC3660ig.d() : cVar, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? V7.a.e() : executor);
    }

    public final void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        try {
            this.j.execute(new Runnable() { // from class: com.ironsource.h3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3630h3.a(this.f$0, error);
                }
            });
        } catch (Exception e) {
            a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3630h3 c3630h3, IronSourceError ironSourceError) {
        if (c3630h3.n) {
            return;
        }
        c3630h3.n = true;
        InterfaceC3660ig interfaceC3660ig = c3630h3.l;
        if (interfaceC3660ig != null) {
            interfaceC3660ig.cancel();
        }
        InterfaceC3681k1.c.a aVar = InterfaceC3681k1.c.a;
        C3735n1.j jVar = new C3735n1.j(ironSourceError.getErrorCode());
        C3735n1.k kVar = new C3735n1.k(ironSourceError.getErrorMessage());
        C3703l5 c3703l5 = c3630h3.k;
        if (c3703l5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskStartedTime");
            c3703l5 = null;
        }
        aVar.a(jVar, kVar, new C3735n1.f(C3703l5.a(c3703l5))).a(c3630h3.f);
        C3611g2 c3611g2 = c3630h3.m;
        if (c3611g2 != null) {
            c3611g2.a("onBannerLoadFail");
        }
        c3630h3.g.a(ironSourceError);
    }

    private final void a(Exception exc) {
        IronSourceError ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError(exc.getMessage());
        InterfaceC3681k1.d.a.a(new C3735n1.k(ironSourceErrorBuildLoadFailedError.getErrorMessage())).a(this.f);
        IronLog.CALLBACK.error(ironSourceErrorBuildLoadFailedError.getErrorMessage());
    }
}
