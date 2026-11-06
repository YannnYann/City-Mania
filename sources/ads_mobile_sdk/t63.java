package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class t63 extends Lambda implements Function1 {
    public final /* synthetic */ un1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t63(un1 un1Var) {
        super(1);
        this.a = un1Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Unit unit;
        RewardedAdEventCallback rewardedAdEventCallback = (RewardedAdEventCallback) obj;
        fm0 fm0VarJ = this.a.j();
        synchronized (fm0VarJ) {
            fm0VarJ.i = rewardedAdEventCallback;
            fm0VarJ.a((AdEventCallback) rewardedAdEventCallback);
            fm0VarJ.a((OnAdMetadataChangedListener) rewardedAdEventCallback);
            unit = Unit.INSTANCE;
        }
        return unit;
    }
}
