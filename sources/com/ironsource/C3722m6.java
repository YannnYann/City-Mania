package com.ironsource;

import android.app.Activity;
import com.ironsource.C3522b4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.m6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3722m6 extends A implements InterstitialAdListener, RewardedVideoAdListener, AdapterAdRewardListener {
    private C3703l5 A;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3722m6(T0 adTools, B instanceData, H adInstancePayload) {
        super(adTools, instanceData, adInstancePayload, null, null, 24, null);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(adInstancePayload, "adInstancePayload");
    }

    private final List<String> L() {
        JSONObject jSONObjectOptJSONObject = new T6().a(new String[]{R6.u}).optJSONObject(R6.u);
        if (jSONObjectOptJSONObject == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Object objOpt = jSONObjectOptJSONObject.opt(R6.C);
        List list = objOpt instanceof List ? (List) objOpt : null;
        if (list == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return arrayList;
    }

    private final InterfaceC3740n6 M() {
        E eS = s();
        if (eS instanceof InterfaceC3740n6) {
            return (InterfaceC3740n6) eS;
        }
        return null;
    }

    private final Map<String, Object> N() {
        Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        for (String str : L()) {
            List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{C3522b4.j.b}, false, 2, 2, (Object) null);
            if (listSplit$default.size() < 2) {
                IronLog.INTERNAL.warning(a("\"" + str + "\" is not a valid key=value format"));
            } else {
                String str2 = (String) listSplit$default.get(0);
                mapCreateMapBuilder.put("custom_" + str2, (String) listSplit$default.get(1));
            }
        }
        return MapsKt__MapsJVMKt.build(mapCreateMapBuilder);
    }

    @InterfaceC3930xb
    private final void O() {
        if (w()) {
            f().f().h().l("closed after failure");
            return;
        }
        if (!z()) {
            a(1000, "ad closed before ad opened");
            return;
        }
        this.A = new C3703l5();
        IronLog.INTERNAL.verbose(A.a(this, (String) null, 1, (Object) null));
        f().f().a().a(k(), "");
        InterfaceC3740n6 interfaceC3740n6M = M();
        if (interfaceC3740n6M != null) {
            interfaceC3740n6M.b(this);
        }
        c();
    }

    private final void P() {
        IronLog.INTERNAL.verbose(A.a(this, (String) null, 1, (Object) null));
        f().f().a().d(k());
    }

    @InterfaceC3930xb
    private final void Q() {
        if (w()) {
            f().f().h().l("rewarded after failure");
            return;
        }
        Map<String, Object> mapN = N();
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA = f().a(jCurrentTimeMillis, p());
        long jA = C3703l5.a(this.A);
        LevelPlayReward levelPlayRewardA = Pb.w.d().E().a(k(), n().j().b().c());
        f().f().a().a(k(), levelPlayRewardA.getName(), levelPlayRewardA.getAmount(), jCurrentTimeMillis, strA, jA, mapN, f().j());
        InterfaceC3740n6 interfaceC3740n6M = M();
        if (interfaceC3740n6M != null) {
            interfaceC3740n6M.a(this, levelPlayRewardA);
        }
    }

    @InterfaceC3930xb
    private final void R() {
        IronLog.INTERNAL.verbose(A.a(this, (String) null, 1, (Object) null));
        InterfaceC3740n6 interfaceC3740n6M = M();
        if (interfaceC3740n6M != null) {
            interfaceC3740n6M.a(this);
        }
    }

    private final void S() {
        IronLog.INTERNAL.verbose(A.a(this, (String) null, 1, (Object) null));
        f().f().a().i(k());
    }

    private final void T() {
        IronLog.INTERNAL.verbose(A.a(this, (String) null, 1, (Object) null));
        f().f().a().k(k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3722m6 c3722m6) {
        c3722m6.O();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(C3722m6 c3722m6) {
        c3722m6.R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(C3722m6 c3722m6) {
        c3722m6.Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(C3722m6 c3722m6) {
        c3722m6.S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(C3722m6 c3722m6) {
        c3722m6.T();
    }

    @Override // com.ironsource.A
    public void D() {
        if (!(g() instanceof AdapterAdFullScreenInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterAdFullScreenInterface"));
            return;
        }
        Object objG = g();
        Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>");
        ((AdapterAdFullScreenInterface) objG).loadAd(n().h(), ContextProvider.getInstance().getActiveContext(), this);
    }

    @Override // com.ironsource.A
    public void a(J adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        adInstancePresenter.a(this);
    }

    @Override // com.ironsource.A
    public void c() {
        if (g() instanceof AdapterAdFullScreenInterface) {
            a(new Function0() { // from class: com.ironsource.m6$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return C3722m6.a(this.f$0);
                }
            });
        } else {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterAdFullScreenInterface"));
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdEnded() {
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.A, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        onAdOpened(new LinkedHashMap());
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener
    public void onAdRewarded() {
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.e(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdStarted() {
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.f(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdVisible() {
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.g(this.f$0);
            }
        });
    }

    @InterfaceC3930xb
    public final void a(final Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IronLog.INTERNAL.verbose(a("placementName = " + k()));
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        f().f().a().a(activity, k());
        a(new Function0() { // from class: com.ironsource.m6$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3722m6.a(this.f$0, activity, ref$ObjectRef);
            }
        });
    }

    @Override // com.ironsource.A, com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened(Map<String, Object> extraData) {
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        super.onAdOpened(extraData);
        f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3722m6.d(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(final C3722m6 c3722m6, Activity activity, final Ref$ObjectRef ref$ObjectRef) {
        try {
            if (c3722m6.g() instanceof AdapterAdFullScreenInterface) {
                Object objG = c3722m6.g();
                Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>");
                ((AdapterAdFullScreenInterface) objG).showAd(c3722m6.i(), activity, c3722m6);
            } else {
                ref$ObjectRef.element = "showAd - adapter not instance of AdapterAdFullScreenInterface";
                IronLog.INTERNAL.error(c3722m6.a("showAd - adapter not instance of AdapterAdFullScreenInterface"));
                c3722m6.f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3722m6.a(this.f$0, ref$ObjectRef);
                    }
                });
            }
        } catch (Throwable th) {
            c3722m6.f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    C3722m6.a(th, ref$ObjectRef, c3722m6);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3722m6 c3722m6) {
        c3722m6.P();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(C3722m6 c3722m6, Ref$ObjectRef ref$ObjectRef) {
        c3722m6.f().f().h().g((String) ref$ObjectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.String] */
    public static final void a(Throwable th, Ref$ObjectRef ref$ObjectRef, C3722m6 c3722m6) {
        C3813r4.d().a(th);
        ?? r2 = "showAd - exception = " + th.getMessage();
        ref$ObjectRef.element = r2;
        IronLog.INTERNAL.error(c3722m6.a((String) r2));
        c3722m6.f().f().h().g((String) ref$ObjectRef.element);
        c3722m6.a(A0.h(c3722m6.n().i()), (String) ref$ObjectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a(final C3722m6 c3722m6) {
        try {
            Object objG = c3722m6.g();
            Intrinsics.checkNotNull(objG, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<*>");
            ((AdapterAdFullScreenInterface) objG).destroyAd(c3722m6.n().h());
        } catch (Throwable th) {
            c3722m6.f().a(new Runnable() { // from class: com.ironsource.m6$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    C3722m6.a(th, c3722m6);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Throwable th, C3722m6 c3722m6) {
        C3813r4.d().a(th);
        String str = "destroyAd - exception = " + th.getLocalizedMessage();
        IronLog.INTERNAL.error(c3722m6.a(str));
        c3722m6.f().f().h().g(str);
    }
}
