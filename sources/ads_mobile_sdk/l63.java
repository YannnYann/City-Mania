package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l63 implements RewardItem {
    public final int a;
    public final String b;

    public l63(int i, String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.a = i;
        this.b = type;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l63)) {
            return false;
        }
        l63 l63Var = (l63) obj;
        return this.a == l63Var.a && Intrinsics.areEqual(this.b, l63Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "RewardItemImpl(amount=" + this.a + ", type=" + this.b + ")";
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final int getAmount() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem
    public final String getType() {
        return this.b;
    }
}
