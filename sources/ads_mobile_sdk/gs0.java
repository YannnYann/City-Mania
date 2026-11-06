package ads_mobile_sdk;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class gs0 implements xd, h73 {
    public final BaseRequest a;
    public final ls0 b;
    public final i2 c;
    public final CoroutineScope d;

    public gs0(BaseRequest baseRequest, ls0 firebaseAnalyticsAdapter, i2 adConfiguration, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = baseRequest;
        this.b = firebaseAnalyticsAdapter;
        this.c = adConfiguration;
        this.d = backgroundScope;
    }

    @Override // ads_mobile_sdk.xd
    public final Object b(boolean z, Continuation continuation) {
        String adUnitId = this.a.getAdUnitId();
        if (adUnitId == null) {
            return Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.d;
        es0 block = new es0(this, adUnitId, z, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        Object objA = this.b.a("generateEventId");
        String string = objA != null ? objA.toString() : null;
        if (string == null) {
            return Unit.INSTANCE;
        }
        String adUnitId = this.a.getAdUnitId();
        if (adUnitId == null) {
            return Unit.INSTANCE;
        }
        Bundle bundleBundleOf = BundleKt.bundleOf(TuplesKt.to("_ai", adUnitId), TuplesKt.to("reward_type", rewardItem.getType()), TuplesKt.to("reward_value", Boxing.boxInt(rewardItem.getAmount())));
        Bundle bundle = this.c.q;
        is0 is0Var = is0.b;
        bundle.putBundle("_ar", bundleBundleOf);
        CoroutineScope coroutineScope = this.d;
        fs0 block = new fs0(this, bundle, string, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }
}
