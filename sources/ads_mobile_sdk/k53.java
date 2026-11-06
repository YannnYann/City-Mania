package ads_mobile_sdk;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class k53 {
    public static final nt1 a(j53 j53Var) {
        Intrinsics.checkNotNullParameter(j53Var, "<this>");
        switch (j53Var.ordinal()) {
            case 0:
                return nt1.FORMAT_UNKNOWN;
            case 1:
                return nt1.FORMAT_APP_OPEN;
            case 2:
                return nt1.FORMAT_BANNER;
            case 3:
                return nt1.FORMAT_ICON;
            case 4:
                return nt1.FORMAT_INTERSTITIAL;
            case 5:
                return nt1.FORMAT_NATIVE;
            case 6:
                return nt1.FORMAT_REWARDED;
            case 7:
                return nt1.FORMAT_REWARDED_INTERSTITIAL;
            case 8:
                return nt1.FORMAT_SWIPEABLE_INTERSTITIAL;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
