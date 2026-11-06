package com.ironsource;

import com.ironsource.C3459a2;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public class C2 {
    private final T0 a;
    private final AbstractC3919x0 b;
    private final com.ironsource.mediationsdk.e c;
    private final C3772p2 d;

    public /* synthetic */ class a {
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

    public static final class b implements C3459a2.d {
        final /* synthetic */ D2 b;

        public b(D2 d2) {
            this.b = d2;
        }

        @Override // com.ironsource.C3459a2.d
        public void a(C3459a2 auction) {
            Intrinsics.checkNotNullParameter(auction, "auction");
            C2.this.b(auction, this.b);
        }

        @Override // com.ironsource.C3459a2.d
        public void a(C3459a2 auction, String error) {
            Intrinsics.checkNotNullParameter(auction, "auction");
            Intrinsics.checkNotNullParameter(error, "error");
            C2.this.b(auction, this.b);
        }
    }

    public C2(T0 adTools, AbstractC3919x0 adUnitData) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.a = adTools;
        this.b = adUnitData;
        A2 a2E = adUnitData.e();
        String strD = IronSourceUtils.d();
        Intrinsics.checkNotNullExpressionValue(strD, "getSessionId(...)");
        com.ironsource.mediationsdk.e eVar = new com.ironsource.mediationsdk.e(new com.ironsource.mediationsdk.f(a2E, strD));
        this.c = eVar;
        this.d = new C3772p2(adTools, eVar);
    }

    private final Dd c() {
        int i = a.a[this.b.b().e().ordinal()];
        if (i == 1) {
            return Pb.w.d().C();
        }
        if (i != 2) {
            return null;
        }
        return Pb.w.d().H();
    }

    private final C3722m6 d() {
        Dd ddC = c();
        if (ddC != null) {
            return ddC.a(this.b.b().c());
        }
        return null;
    }

    public final C3772p2 b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(C3459a2 c3459a2, D2 d2) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("auction waterfallString = " + ((Object) c3459a2.d().d())));
        if (!c3459a2.g()) {
            ironLog.verbose(a("auction failed - no candidates"));
            this.a.f().b().a(1005, "No candidates available for auctioning");
            d2.a(A0.e(this.b.b().a()), "no available ad to load");
        } else {
            this.a.f().b().b(c3459a2.d().d().toString());
            this.c.a(ContextProvider.getInstance().getApplicationContext(), a(c3459a2, this.a.g()), new c(d2, c3459a2, c3459a2.d().c()));
        }
    }

    public void a(D2 completionListener) {
        Intrinsics.checkNotNullParameter(completionListener, "completionListener");
        IronLog.INTERNAL.verbose(a());
        this.a.f().b().a(this.b.b().d());
        a(new C3459a2(this.a, this.b, d()), completionListener);
    }

    private final void a(C3459a2 c3459a2, D2 d2) {
        if (!c3459a2.f()) {
            b(c3459a2, d2);
        } else {
            c3459a2.a(new b(d2));
        }
    }

    public static final class c implements InterfaceC3538c2 {
        final /* synthetic */ D2 a;
        final /* synthetic */ C3459a2 b;
        final /* synthetic */ A c;

        public c(D2 d2, C3459a2 c3459a2, A a) {
            this.a = d2;
            this.b = c3459a2;
            this.c = a;
        }

        @Override // com.ironsource.InterfaceC3538c2
        public void a(List<C3939y2> newWaterfall, String auctionId, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str) {
            Intrinsics.checkNotNullParameter(newWaterfall, "newWaterfall");
            Intrinsics.checkNotNullParameter(auctionId, "auctionId");
            this.a.a(newWaterfall, this.b.c(), auctionId, c3939y2, jSONObject, jSONObject2, i, j, i2, str, this.c);
        }

        @Override // com.ironsource.InterfaceC3538c2
        public void a(int i, String str, int i2, String auctionFallback, long j) {
            Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
            this.a.a(i, str, i2, auctionFallback, j, this.c);
        }
    }

    private final com.ironsource.mediationsdk.h a(C3459a2 c3459a2, int i) {
        com.ironsource.mediationsdk.h hVar = new com.ironsource.mediationsdk.h(this.b.b().a());
        hVar.b(IronSourceUtils.g());
        hVar.a(c3459a2.d().a());
        hVar.a(c3459a2.d().b());
        hVar.a(this.a.h());
        hVar.a(i);
        hVar.a(this.a.k());
        Tf tfG = this.b.b().g();
        hVar.e(tfG != null ? tfG.c() : false);
        hVar.a(this.b.b().d());
        A aC = c3459a2.d().c();
        hVar.d(aC != null ? aC.p() : null);
        InterfaceC3829s2 interfaceC3829s2I = this.a.i();
        if (interfaceC3829s2I != null) {
            interfaceC3829s2I.a(hVar);
        }
        return hVar;
    }

    private final String a(String str) {
        return C3770p0.a(this.a, str, (String) null, 2, (Object) null);
    }

    private final String a() {
        return C3770p0.a(this.a, (String) null, (String) null, 2, (Object) null);
    }
}
