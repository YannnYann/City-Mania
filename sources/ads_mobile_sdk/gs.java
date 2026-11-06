package ads_mobile_sdk;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class gs extends eq {
    public final un1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gs(un1 internalRewardedAd) {
        super(internalRewardedAd);
        Intrinsics.checkNotNullParameter(internalRewardedAd, "internalRewardedAd");
        this.b = internalRewardedAd;
    }

    public final void show(Activity context, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        Intrinsics.checkNotNullParameter(context, "activity");
        Intrinsics.checkNotNullParameter(onUserEarnedRewardListener, "onUserEarnedRewardListener");
        un1 un1Var = this.b;
        un1Var.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onUserEarnedRewardListener, "onUserEarnedRewardListener");
        fm0 fm0VarJ = un1Var.j();
        synchronized (fm0VarJ) {
            fm0VarJ.o = onUserEarnedRewardListener;
            Unit unit = Unit.INSTANCE;
        }
        un1Var.a(context);
    }

    public final Bundle getAdMetadata() {
        t4 t4Var = this.b.r;
        Bundle bundle = (Bundle) t4Var.a.getValue(t4Var, t4.b[0]);
        return bundle == null ? new Bundle() : bundle;
    }

    public final RewardItem getRewardItem() {
        RewardItem rewardItem = this.b.b().l0;
        if (rewardItem != null) {
            return rewardItem;
        }
        RewardItem.Companion.getClass();
        return k63.b;
    }
}
