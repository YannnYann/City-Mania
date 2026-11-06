package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u30 implements jr0 {
    public final dw2 a;

    public u30(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        PackageInfo packageInfo;
        Context context = (Context) this.a.get();
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        return Integer.valueOf((packageManager == null || (packageInfo = packageManager.getPackageInfo(context.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE)) == null) ? 0 : packageInfo.versionCode);
    }
}
