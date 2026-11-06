package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class zm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        try {
            Context applicationContext = this.a.c.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = this.a.c;
            }
            PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo("com.android.vending", Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionCode + "." + packageInfo.packageName;
        } catch (Exception unused) {
            return null;
        }
    }
}
