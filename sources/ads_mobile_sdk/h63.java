package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.common.base.Splitter;
import com.ironsource.C3844t;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h63 implements r41 {
    public final f73 a;
    public final i2 b;

    public h63(f73 rewardedEventEmitter, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(rewardedEventEmitter, "rewardedEventEmitter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = rewardedEventEmitter;
        this.b = adConfiguration;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_REWARD;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return true;
    }

    public final Unit a(Map map, Continuation continuation) {
        RewardItem rewardItem = this.b.l0;
        if (rewardItem != null) {
            Object objA = this.a.a(rewardItem, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? (Unit) objA : Unit.INSTANCE;
        }
        int i = 1;
        try {
            String str = (String) map.get(C3844t.l);
            if (str != null) {
                i = Integer.parseInt(str);
            } else {
                RewardItem.Companion.getClass();
            }
        } catch (NumberFormatException e) {
            Splitter splitter = f01.a;
            f01.c("Unable to parse reward amount: " + e, null);
            RewardItem.Companion.getClass();
        }
        String str2 = (String) map.get("type");
        if (str2 == null) {
            RewardItem.Companion.getClass();
            str2 = "";
        }
        Object objA2 = this.a.a(new g63(i, str2), continuation);
        return objA2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? (Unit) objA2 : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("action");
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != 98615580) {
                if (iHashCode != 1385608094) {
                    if (iHashCode == 2098866301 && str.equals("video_complete")) {
                        Object objG = this.a.g(continuation);
                        return objG == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objG : Unit.INSTANCE;
                    }
                } else if (str.equals("video_start")) {
                    Object objL = this.a.l(continuation);
                    return objL == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objL : Unit.INSTANCE;
                }
            } else if (str.equals("grant")) {
                Unit unitA = a(map, continuation);
                return unitA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }
}
