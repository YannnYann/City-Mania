package com.ironsource;

import android.content.Context;
import com.ironsource.C3623ge;
import com.ironsource.C3912wb;
import com.ironsource.E0;
import com.ironsource.J9;
import com.ironsource.M8;
import com.ironsource.O7;
import com.ironsource.Pb;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import com.unity3d.mediation.LevelPlayInitListener;
import com.unity3d.mediation.LevelPlayInitRequest;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.segment.LevelPlaySegment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.wb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3912wb {
    public static final C3912wb a = new C3912wb();
    private static final C3948yb b = new C3948yb();

    /* JADX INFO: renamed from: com.ironsource.wb$a */
    public static final class a implements InterfaceC3933xe {
        final /* synthetic */ LevelPlayInitRequest a;
        final /* synthetic */ Context b;
        final /* synthetic */ C3703l5 c;
        final /* synthetic */ LevelPlayInitListener d;

        public a(LevelPlayInitRequest levelPlayInitRequest, Context context, C3703l5 c3703l5, LevelPlayInitListener levelPlayInitListener) {
            this.a = levelPlayInitRequest;
            this.b = context;
            this.c = c3703l5;
            this.d = levelPlayInitListener;
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3806qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            C3948yb c3948yb = C3912wb.b;
            final LevelPlayInitRequest levelPlayInitRequest = this.a;
            final Context context = this.b;
            final C3703l5 c3703l5 = this.c;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            c3948yb.a(new Runnable() { // from class: com.ironsource.wb$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C3912wb.a.a(levelPlayInitRequest, sdkConfig, context, c3703l5, levelPlayInitListener);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitRequest levelPlayInitRequest, C3806qe c3806qe, Context context, C3703l5 c3703l5, LevelPlayInitListener levelPlayInitListener) {
            C3912wb.a.a(levelPlayInitRequest, c3806qe, context, c3703l5, levelPlayInitListener);
        }

        @Override // com.ironsource.InterfaceC3933xe
        public void a(final C3841se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            C3948yb c3948yb = C3912wb.b;
            final LevelPlayInitListener levelPlayInitListener = this.d;
            final C3703l5 c3703l5 = this.c;
            c3948yb.a(new Runnable() { // from class: com.ironsource.wb$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3912wb.a.a(levelPlayInitListener, c3703l5, error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(LevelPlayInitListener levelPlayInitListener, C3703l5 c3703l5, C3841se c3841se) {
            C3912wb.a.a(levelPlayInitListener, c3703l5, c3841se);
        }
    }

    private C3912wb() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener) {
        a.c(context, levelPlayInitRequest, levelPlayInitListener);
    }

    public final void c(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Pb.a aVar = Pb.w;
        if (aVar.d().h().e()) {
            aVar.d().D().a(listener);
        } else {
            b(listener);
        }
    }

    public final void b(LevelPlaySegment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        com.ironsource.mediationsdk.p.g().a(a(segment));
    }

    public final void b(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        com.ironsource.mediationsdk.p.g().a(new C3584eb(listener));
    }

    public static /* synthetic */ void a(C3912wb c3912wb, Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener, int i, Object obj) {
        if ((i & 4) != 0) {
            levelPlayInitListener = null;
        }
        c3912wb.a(context, levelPlayInitRequest, levelPlayInitListener);
    }

    public final void a(final Context context, final LevelPlayInitRequest initRequest, final LevelPlayInitListener levelPlayInitListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        b.a(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                C3912wb.b(context, initRequest, levelPlayInitListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Class cls) throws JSONException {
        JSONObject jSONObjectB = IronSourceUtils.b(false);
        jSONObjectB.put(IronSourceConstants.EVENTS_EXT1, cls.getName());
        Pb.w.d().q().a(new C5(D5.K3, jSONObjectB));
    }

    @InterfaceC3930xb
    private final void c(Context context, LevelPlayInitRequest levelPlayInitRequest, LevelPlayInitListener levelPlayInitListener) {
        IronLog.API.info("LevelPlay.init() appkey: " + levelPlayInitRequest.getAppKey() + ", userId: " + levelPlayInitRequest.getUserId() + ", legacyAdFormats: " + levelPlayInitRequest.getLegacyAdFormats() + ", context: " + context.getClass().getSimpleName());
        C3703l5 c3703l5 = new C3703l5();
        C3948yb c3948yb = b;
        LevelPlay.AdFormat[] adFormatArr = (LevelPlay.AdFormat[]) levelPlayInitRequest.getLegacyAdFormats().toArray(new LevelPlay.AdFormat[0]);
        Ge.a.a(context, new C3969ze(levelPlayInitRequest.getAppKey(), levelPlayInitRequest.getUserId(), ArraysKt___ArraysKt.toMutableList(c3948yb.a((LevelPlay.AdFormat[]) Arrays.copyOf(adFormatArr, adFormatArr.length)))), new a(levelPlayInitRequest, context, c3703l5, levelPlayInitListener));
    }

    public final void a(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        com.ironsource.mediationsdk.p.g().b(new C3584eb(listener));
        a(listener.getClass());
    }

    public final void a(LevelPlayImpressionDataListener listener, String subscriberId) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        Pb.a aVar = Pb.w;
        if (!aVar.d().h().e()) {
            a(listener);
        } else {
            aVar.d().D().a(subscriberId, listener);
        }
    }

    private final void b(final C3468ab c3468ab, C3703l5 c3703l5, long j, final LevelPlayInitListener levelPlayInitListener) {
        Pb.w.a().G().d();
        long jA = C3703l5.a(c3703l5);
        C3948yb c3948yb = b;
        C3948yb.a(c3948yb, jA, c3468ab.f(), j, null, 8, null);
        c3948yb.b(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3912wb.a(levelPlayInitListener, c3468ab);
            }
        });
    }

    private final void a(final Class<?> cls) {
        b.a(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() throws JSONException {
                C3912wb.b(cls);
            }
        });
    }

    private final C3655ia a(LevelPlaySegment levelPlaySegment) {
        C3655ia c3655ia = new C3655ia();
        c3655ia.a(levelPlaySegment.getLevel());
        c3655ia.a(levelPlaySegment.getIapTotal());
        c3655ia.a(levelPlaySegment.isPaying());
        c3655ia.a(levelPlaySegment.getUserCreationDate());
        c3655ia.a(levelPlaySegment.getSegmentName());
        Iterator<T> it = levelPlaySegment.getCustoms$mediationsdk_release().iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            c3655ia.a((String) pair.getFirst(), (String) pair.getSecond());
        }
        return c3655ia;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(String str, List list) {
        com.ironsource.mediationsdk.p.g().a(str, (List<String>) list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(C3468ab c3468ab, C3703l5 c3703l5, long j, LevelPlayInitListener levelPlayInitListener) {
        a.b(c3468ab, c3703l5, j, levelPlayInitListener);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @InterfaceC3930xb
    public final void a(LevelPlayInitRequest levelPlayInitRequest, C3806qe c3806qe, Context context, final C3703l5 c3703l5, final LevelPlayInitListener levelPlayInitListener) {
        Pb.a aVar = Pb.w;
        M8.a aVarG = aVar.a().G();
        final C3468ab c3468ab = new C3468ab(c3806qe);
        if (c3468ab.m()) {
            b.a(context);
        }
        O7.a aVarB = aVar.a().b();
        C3948yb c3948yb = b;
        c3468ab.b(c3948yb).a(aVarB);
        c3468ab.a(c3948yb).a(aVar.a().l());
        c3468ab.c(c3948yb).a(aVar.a().w());
        C3912wb c3912wb = a;
        c3912wb.a(levelPlayInitRequest, c3468ab);
        aVar.d().C().a(c3468ab);
        aVar.d().H().a(c3468ab);
        if (aVar.d().h().e()) {
            aVar.d().D().a(c3468ab.i());
        }
        final long jP = aVar.d().h().p();
        ContextProvider.getInstance().updateStrategyIfNeeded();
        com.ironsource.mediationsdk.c.c().h();
        c3912wb.a(jP, new Function0() { // from class: com.ironsource.wb$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3912wb.a(c3468ab, c3703l5, jP, levelPlayInitListener);
            }
        });
        aVarG.a(c3468ab);
        if (c3806qe.a().f()) {
            new Qd(null, null, null, IronSourceThreadManager.INSTANCE.getThreadPoolExecutor(), 7, null).c(context);
        }
    }

    private final void a(long j, final Function0<Unit> function0) {
        if (!Pb.w.d().f().c() && j > 0) {
            Ef ef = new Ef(null, null, null, 7, null);
            Runnable runnable = new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3912wb.a(function0);
                }
            };
            Duration.Companion companion = Duration.Companion;
            ef.b(runnable, DurationKt.toDuration(j, DurationUnit.MILLISECONDS));
            return;
        }
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayInitListener levelPlayInitListener, C3468ab c3468ab) {
        IronLog.CALLBACK.info("LevelPlayInitListener.onInitSuccess()");
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitSuccess(new LevelPlayConfiguration(c3468ab.l(), c3468ab.h()));
        }
    }

    private final void a(LevelPlayInitRequest levelPlayInitRequest, C3468ab c3468ab) {
        LevelPlay.AdFormat adFormat = LevelPlay.AdFormat.REWARDED;
        if (a(levelPlayInitRequest, adFormat) && c3468ab.d().c().f() != null) {
            C3623ge.a aVar = C3623ge.A;
            IronSource.a aVar2 = IronSource.a.REWARDED_VIDEO;
            C3623ge c3623geA = aVar.a(new C3609g0(aVar2, C3962z7.a.a(), "", null, null, null, 56, null), c3468ab, true);
            List<Ec> listD = c3468ab.d(adFormat);
            E0.b bVar = E0.b.MEDIATION;
            new Id(new T0(new C3770p0(aVar2, bVar), c3623geA, bVar), adFormat, listD, c3623geA).a();
        }
        LevelPlay.AdFormat adFormat2 = LevelPlay.AdFormat.INTERSTITIAL;
        if (a(levelPlayInitRequest, adFormat2) && c3468ab.d().c().d() != null) {
            J9.a aVar3 = J9.A;
            IronSource.a aVar4 = IronSource.a.INTERSTITIAL;
            J9 j9A = aVar3.a(new C3609g0(aVar4, C3962z7.a.a(), "", null, null, null, 56, null), c3468ab, true);
            List<Ec> listD2 = c3468ab.d(adFormat2);
            E0.b bVar2 = E0.b.MEDIATION;
            new Id(new T0(new C3770p0(aVar4, bVar2), j9A, bVar2), adFormat2, listD2, j9A).a();
        }
        LevelPlay.AdFormat adFormat3 = LevelPlay.AdFormat.BANNER;
        if (!a(levelPlayInitRequest, adFormat3) || c3468ab.d().c().c() == null) {
            return;
        }
        T2 t2A = T2.A.a(new Q2(), c3468ab, true);
        List<Ec> listD3 = c3468ab.d(adFormat3);
        IronSource.a aVar5 = IronSource.a.BANNER;
        E0.b bVar3 = E0.b.MEDIATION;
        new Id(new T0(new C3770p0(aVar5, bVar3), t2A, bVar3), adFormat3, listD3, t2A).a();
    }

    private final boolean a(LevelPlayInitRequest levelPlayInitRequest, LevelPlay.AdFormat adFormat) {
        return !levelPlayInitRequest.getLegacyAdFormats().contains(adFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final LevelPlayInitListener levelPlayInitListener, C3703l5 c3703l5, final C3841se c3841se) {
        long jA = C3703l5.a(c3703l5);
        C3948yb c3948yb = b;
        final C3841se c3841seB = c3948yb.b(c3841se);
        C3948yb.a(c3948yb, c3841seB, jA, null, 4, null);
        c3948yb.b(new Runnable() { // from class: com.ironsource.wb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3912wb.a(c3841se, levelPlayInitListener, c3841seB);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3841se c3841se, LevelPlayInitListener levelPlayInitListener, C3841se c3841se2) {
        IronLog.CALLBACK.info("LevelPlayInitListener.LevelPlayInitError() error: " + c3841se);
        if (levelPlayInitListener != null) {
            levelPlayInitListener.onInitFailed(new LevelPlayInitError(b.a(c3841se2)));
        }
    }

    public final void a(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        ArrayList arrayList = new ArrayList();
        arrayList.add(value);
        a(key, arrayList);
    }

    public final void a(final String key, final List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronSourceThreadManager.postMediationBackgroundTask$default(IronSourceThreadManager.INSTANCE, com.ironsource.environment.thread.a.a.a(new Function0() { // from class: com.ironsource.wb$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3912wb.b(key, values);
            }
        }), 0L, 2, null);
    }
}
