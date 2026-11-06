package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ul implements oe3 {
    public final List a;

    public ul(List grantedPermissionsList) {
        Intrinsics.checkNotNullParameter(grantedPermissionsList, "grantedPermissionsList");
        this.a = grantedPermissionsList;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.grantedPermissions.addAll(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ul) && Intrinsics.areEqual(this.a, ((ul) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "AppPermissionsSignal(grantedPermissionsList=" + this.a + ")";
    }
}
