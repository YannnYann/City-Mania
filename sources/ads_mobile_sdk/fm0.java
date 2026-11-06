package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdValue;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.OnCustomClickListener;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class fm0 implements ai1, h73, q4 {
    public final CoroutineScope a;
    public final ks3 b;
    public final g83 c;
    public AdEventCallback d;
    public OnAppEventListener e;
    public OnAdMetadataChangedListener f;
    public BannerAdEventCallback g;
    public InterstitialAdEventCallback h;
    public RewardedAdEventCallback i;
    public NativeAdEventCallback l;
    public OnCustomClickListener n;
    public OnUserEarnedRewardListener o;
    public final ArrayBlockingQueue r;
    public final AtomicBoolean s;

    public fm0(CoroutineScope backgroundScope, ex0 flags, ks3 traceMetaSet, g83 rootTraceCreator) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = backgroundScope;
        this.b = traceMetaSet;
        this.c = rootTraceCreator;
        this.r = new ArrayBlockingQueue(flags.q());
        this.s = new AtomicBoolean(true);
    }

    @Override // ads_mobile_sdk.mq0
    public final boolean h() {
        return true;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object o(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new ql0(this, null), 3, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object p(Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key), new yl0(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object r(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new ul0(this, null), 3, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(String str, String str2, Continuation continuation) {
        if (!this.s.get()) {
            m21 m21Var = o21.f;
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new bm0(null, this, str, str2), 3, null);
            return Unit.INSTANCE;
        }
        if (!this.r.offer(new Pair(str, str2))) {
            f01.b("The queue for app events is full, dropping the new event.", null);
            g83 g83Var = this.c;
            s11 s11Var = s11.CUI_NAME_UNKNOWN;
            List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            ks3 ks3Var = this.b;
            if (hs3.c() == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    xs3.a("App events queue overflow. name: " + str + ", data: " + str2, null, 6);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(tu2VarA, null);
                } catch (Throwable th) {
                    try {
                        tu2VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } finally {
                    }
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
                try {
                    xs3.a("App events queue overflow. name: " + str + ", data: " + str2, null, 6);
                    Unit unit2 = Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                } catch (Throwable th2) {
                    try {
                        rr3VarA.b(th2);
                        if (th2 instanceof v24) {
                            throw th2;
                        }
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (th2 instanceof TimeoutCancellationException) {
                            throw new i21(th2);
                        }
                        if (th2 instanceof CancellationException) {
                            throw new wz0(th2);
                        }
                        if (th2 instanceof w01) {
                            throw th2;
                        }
                        throw new b01(th2);
                    } finally {
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object h(Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key), new rl0(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    public final AdEventCallback f() {
        AdEventCallback adEventCallback;
        synchronized (this) {
            adEventCallback = this.d;
        }
        return adEventCallback;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit f(Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new am0(this, null), 3, null);
        return Unit.INSTANCE;
    }

    public final OnCustomClickListener g() {
        OnCustomClickListener onCustomClickListener;
        synchronized (this) {
            onCustomClickListener = this.n;
        }
        return onCustomClickListener;
    }

    public final void a(AdEventCallback adEventCallback) {
        synchronized (this) {
            this.d = adEventCallback;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void a(BannerAdEventCallback bannerAdEventCallback) {
        synchronized (this) {
            this.g = bannerAdEventCallback;
            a((AdEventCallback) bannerAdEventCallback);
            a((OnAppEventListener) bannerAdEventCallback);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void a(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        synchronized (this) {
            this.f = onAdMetadataChangedListener;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void a(OnAppEventListener onAppEventListener) {
        synchronized (this) {
            this.e = onAppEventListener;
            Unit unit = Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.a;
        cm0 block = new cm0(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a(PictureInPictureAdEventCallback pictureInPictureAdEventCallback) {
        synchronized (this) {
            a((AdEventCallback) pictureInPictureAdEventCallback);
            a((OnAppEventListener) pictureInPictureAdEventCallback);
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(String str, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new dm0(null, this, str), 3, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new sl0(null, this, fullScreenContentError), 3, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Unit a(AdValue adValue, Continuation continuation) {
        m21 m21Var = o21.f;
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key)), null, null, new xl0(null, this, adValue), 3, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        m21 m21Var = o21.f;
        Object objWithContext = BuildersKt.withContext(NonCancellable.INSTANCE.plus(continuation.getContext()).minusKey(rs3.b).minusKey(CoroutineExceptionHandler.Key).minusKey(Job.Key), new em0(null, this, rewardItem), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.q4
    public final Object a(Bundle bundle, Continuation continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new wl0(this, null), continuation);
        return objCoroutineScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }
}
