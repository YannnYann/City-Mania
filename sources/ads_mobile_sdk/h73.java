package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface h73 extends mq0 {
    Object a(RewardItem rewardItem, Continuation continuation);

    default Object g(Continuation continuation) {
        return Unit.INSTANCE;
    }

    default Object l(Continuation continuation) {
        return Unit.INSTANCE;
    }
}
