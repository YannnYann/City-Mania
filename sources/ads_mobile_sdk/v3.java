package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.ironsource.Yf;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
public final class v3 extends kq0 implements ai1, by1 {
    public final i2 d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v3(CoroutineScope backgroundScope, Map listeners, i2 adConfiguration, ub3 serialEventQueue) {
        super(backgroundScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.d = adConfiguration;
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.ai1
    public final Object j(Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new o3(this, "onAdWillBeReturned", null), continuation);
        return objCoroutineScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        if (!this.g.getAndSet(true)) {
            Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
            Map map = (Map) pair.component1();
            Map map2 = (Map) pair.component2();
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    mq0 mq0Var = (mq0) entry.getValue();
                    ub3 ub3Var = this.c;
                    t2 task = new t2("onAdDestroyed", str, mq0Var, null);
                    ub3Var.getClass();
                    Intrinsics.checkNotNullParameter(task, "task");
                    ub3Var.b.mo2951trySendJP2dKIU(task);
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                String str2 = (String) entry2.getKey();
                mq0 mq0Var2 = (mq0) entry2.getValue();
                CoroutineScope coroutineScope = this.a;
                u2 block = new u2("onAdDestroyed", str2, mq0Var2, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.by1
    public final Unit e(Continuation continuation) {
        Object objP = p(continuation);
        if (objP != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objP = Unit.INSTANCE;
        }
        return (Unit) objP;
    }

    @Override // ads_mobile_sdk.by1
    public final Unit i(Continuation continuation) {
        Object objH = h(continuation);
        if (objH != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objH = Unit.INSTANCE;
        }
        return (Unit) objH;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        Unit unitA;
        if (!this.d.H0 && !this.e.getAndSet(true)) {
            Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
            Map map = (Map) pair.component1();
            Map map2 = (Map) pair.component2();
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    mq0 mq0Var = (mq0) entry.getValue();
                    ub3 ub3Var = this.c;
                    b3 task = new b3("onAdImpression", str, mq0Var, null);
                    ub3Var.getClass();
                    Intrinsics.checkNotNullParameter(task, "task");
                    ub3Var.b.mo2951trySendJP2dKIU(task);
                }
            }
            for (Map.Entry entry2 : map2.entrySet()) {
                String str2 = (String) entry2.getKey();
                mq0 mq0Var2 = (mq0) entry2.getValue();
                CoroutineScope coroutineScope = this.a;
                c3 block = new c3("onAdImpression", str2, mq0Var2, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
            xc xcVar = this.d.m;
            return xcVar == null ? Unit.INSTANCE : (xcVar.a == zc.g && !this.f.getAndSet(true) && (unitA = a(new AdValue(xcVar.c, xcVar.b, xcVar.d), continuation)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? unitA : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object h(Continuation continuation) {
        Pair pairA = kq0.a(this.b, jq0.a);
        Map map = (Map) pairA.component1();
        Map map2 = (Map) pairA.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                x2 task = new x2("onAdDismissedFullscreenContent", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            y2 block = new y2("onAdDismissedFullscreenContent", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object p(Continuation continuation) {
        Pair pairA = kq0.a(this.b, jq0.a);
        Map map = (Map) pairA.component1();
        Map map2 = (Map) pairA.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                j3 task = new j3("onAdShowedFullscreenContent", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            k3 block = new k3("onAdShowedFullscreenContent", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object o(Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                r2 task = new r2(Yf.f, str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            s2 block = new s2(Yf.f, str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit f(Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                l3 task = new l3("onAdSwipeGestureClicked", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            m3 block = new m3("onAdSwipeGestureClicked", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object k(Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                h3 task = new h3("onAdPresentation", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            i3 block = new i3("onAdPresentation", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit e() {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                f3 task = new f3("onAdPolled", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            g3 block = new g3("onAdPolled", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    public final Unit a(AdValue adValue, w53 w53Var) {
        if (this.f.getAndSet(true)) {
            return Unit.INSTANCE;
        }
        Unit unitA = a(adValue, (Continuation) w53Var);
        return unitA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(String str, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                String str3 = str;
                r3 task = new r3("onCustomClick", str2, mq0Var, null, str3);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                str = str3;
            }
        }
        String str4 = str;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str5 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            s3 block = new s3("onCustomClick", str5, mq0Var2, null, str4);
            String str6 = str4;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            str4 = str6;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                FullScreenContentError fullScreenContentError2 = fullScreenContentError;
                z2 task = new z2("onAdFailedToShowFullScreenContent", str, mq0Var, null, fullScreenContentError2);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                fullScreenContentError = fullScreenContentError2;
            }
        }
        FullScreenContentError fullScreenContentError3 = fullScreenContentError;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            a3 block = new a3("onAdFailedToShowFullScreenContent", str2, mq0Var2, null, fullScreenContentError3);
            FullScreenContentError fullScreenContentError4 = fullScreenContentError3;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            fullScreenContentError3 = fullScreenContentError4;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(AdValue adValue, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                AdValue adValue2 = adValue;
                d3 task = new d3("onAdPaid", str, mq0Var, null, adValue2);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                adValue = adValue2;
            }
        }
        AdValue adValue3 = adValue;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            e3 block = new e3("onAdPaid", str2, mq0Var2, null, adValue3);
            AdValue adValue4 = adValue3;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            adValue3 = adValue4;
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(String str, String str2, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                String str4 = str;
                p3 task = new p3("onAppEvent", str3, mq0Var, null, str4, str2);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                str = str4;
            }
        }
        String str5 = str;
        String str6 = str2;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str7 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            q3 block = new q3("onAppEvent", str7, mq0Var2, null, str5, str6);
            String str8 = str5;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            str5 = str8;
            str6 = str6;
        }
        return Unit.INSTANCE;
    }
}
