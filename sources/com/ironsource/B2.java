package com.ironsource;

import android.text.TextUtils;
import com.ironsource.B2;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class B2 extends Kg {
    private final T0 e;
    private final AbstractC3919x0 f;
    private final C2 g;
    private final InterfaceC3549cd h;
    private D2 i;

    public static final class a implements D2 {
        final /* synthetic */ D b;
        final /* synthetic */ Lg c;

        public a(D d, Lg lg) {
            this.b = d;
            this.c = lg;
        }

        @Override // com.ironsource.D2
        public void a(final List<C3939y2> newWaterfall, final Map<String, H> adInstancePayloads, final String auctionId, final C3939y2 c3939y2, final JSONObject jSONObject, final JSONObject jSONObject2, final int i, final long j, final int i2, final String str, final A a) {
            Intrinsics.checkNotNullParameter(newWaterfall, "newWaterfall");
            Intrinsics.checkNotNullParameter(adInstancePayloads, "adInstancePayloads");
            Intrinsics.checkNotNullParameter(auctionId, "auctionId");
            T0 t0 = B2.this.e;
            final B2 b2 = B2.this;
            final D d = this.b;
            final Lg lg = this.c;
            t0.a(new Runnable() { // from class: com.ironsource.B2$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    B2.a.a(b2, d, lg, newWaterfall, adInstancePayloads, auctionId, c3939y2, jSONObject, jSONObject2, i, j, i2, str, a);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(B2 b2, D d, Lg lg, List list, Map map, String str, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2, A a) {
            b2.i = null;
            b2.a(d, lg, list, map, str, c3939y2, jSONObject, jSONObject2, i, j, i2, str2, a);
        }

        @Override // com.ironsource.D2
        public void a(final int i, final String str, final int i2, final String auctionFallback, final long j, final A a) {
            Intrinsics.checkNotNullParameter(auctionFallback, "auctionFallback");
            T0 t0 = B2.this.e;
            final B2 b2 = B2.this;
            final D d = this.b;
            final Lg lg = this.c;
            t0.a(new Runnable() { // from class: com.ironsource.B2$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    B2.a.a(b2, d, lg, i, str, i2, auctionFallback, j, a);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(B2 b2, D d, Lg lg, int i, String str, int i2, String str2, long j, A a) {
            b2.i = null;
            b2.a(d, lg, i, str, i2, str2, j, a);
        }

        @Override // com.ironsource.D2
        public void a(int i, String errorReason) {
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            this.c.a(i, errorReason);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B2(T0 adTools, AbstractC3919x0 adUnitData) {
        super(adTools, adUnitData);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        this.e = adTools;
        this.f = adUnitData;
        C2 c2 = new C2(adTools, adUnitData);
        this.g = c2;
        this.h = c2.b();
    }

    @Override // com.ironsource.Kg
    public InterfaceC3549cd a() {
        return this.h;
    }

    @Override // com.ironsource.Kg
    public void a(D adInstanceFactory, Lg waterfallFetcherListener) {
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        Intrinsics.checkNotNullParameter(waterfallFetcherListener, "waterfallFetcherListener");
        a aVar = new a(adInstanceFactory, waterfallFetcherListener);
        this.g.a(aVar);
        this.i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(D d, Lg lg, List<C3939y2> list, Map<String, H> map, String str, C3939y2 c3939y2, JSONObject jSONObject, JSONObject jSONObject2, int i, long j, int i2, String str2, A a2) {
        IronLog.INTERNAL.verbose(C3770p0.a(this.e, (String) null, (String) null, 3, (Object) null));
        C3885v2 c3885v2 = new C3885v2(str, jSONObject, c3939y2, i, "");
        if (!TextUtils.isEmpty(str2)) {
            this.e.f().h().a(i2, str2);
        }
        a(jSONObject2);
        Mg mgA = a(list, map, c3885v2, d, a2);
        this.e.f().a(new C3575e2(c3885v2));
        this.e.f().b().a(j, this.f.w() + ";wtf=" + mgA.c());
        this.e.f().b().c(mgA.d());
        a(mgA, lg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(D d, Lg lg, int i, String str, int i2, String str2, long j, A a2) {
        IronLog.INTERNAL.verbose(C3770p0.a(this.e, "Auction failed (error " + i + " - " + str + ")", (String) null, 2, (Object) null));
        if (a2 != null) {
            c();
        }
        boolean zN = this.f.e().n();
        String strA = C3647i2.a.a(zN);
        C3885v2 c3885v2 = new C3885v2(strA, null, null, i2, str2);
        E5 e5F = this.e.f();
        e5F.a(new C3575e2(c3885v2));
        e5F.b().a(j, i, str);
        if (zN) {
            a(d, lg, i2, str2, strA);
        } else {
            a(lg);
        }
    }

    private final void a(Mg mg, Lg lg) {
        this.e.h().a(mg);
        lg.a(mg);
    }

    private final void a(JSONObject jSONObject) {
        int i;
        try {
            if (jSONObject == null) {
                this.f.b(false);
                this.f.a((Eb) null);
                IronLog.INTERNAL.verbose(C3770p0.a(this.e, "loading configuration from auction response is null, using the following: " + this.f.w(), (String) null, 2, (Object) null));
                return;
            }
            try {
                this.f.a(Eb.b.a(jSONObject.optJSONObject(com.ironsource.mediationsdk.d.B)));
                if (jSONObject.has(com.ironsource.mediationsdk.d.x) && (i = jSONObject.getInt(com.ironsource.mediationsdk.d.x)) > 0) {
                    this.f.a(i);
                }
                if (jSONObject.has(com.ironsource.mediationsdk.d.y)) {
                    this.f.a(jSONObject.getBoolean(com.ironsource.mediationsdk.d.y));
                } else if (this.f.b().h() && Pb.w.d().h().n()) {
                    AbstractC3919x0 abstractC3919x0 = this.f;
                    abstractC3919x0.a(Math.max(2, abstractC3919x0.l()));
                }
                this.f.b(jSONObject.optBoolean(com.ironsource.mediationsdk.d.z, false));
                IronLog.INTERNAL.verbose(C3770p0.a(this.e, this.f.w(), (String) null, 2, (Object) null));
            } catch (JSONException e) {
                C3813r4.d().a(e);
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.error("failed to update loading configuration for" + this.f.b().a() + " Error: " + e.getMessage());
                ironLog.verbose(C3770p0.a(this.e, this.f.w(), (String) null, 2, (Object) null));
            }
        } catch (Throwable th) {
            IronLog.INTERNAL.verbose(C3770p0.a(this.e, this.f.w(), (String) null, 2, (Object) null));
            throw th;
        }
    }

    private final void a(D d, Lg lg, int i, String str, String str2) {
        IronLog.INTERNAL.verbose(C3770p0.a(this.e, "Moving to fallback waterfall", (String) null, 2, (Object) null));
        new Lc(this.e, this.f).a(lg, i, str, str2, d);
    }

    private final void a(Lg lg) {
        lg.a(509, "Mediation No fill");
    }
}
