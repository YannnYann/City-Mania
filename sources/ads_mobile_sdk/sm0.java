package ads_mobile_sdk;

import android.os.Build;
import android.os.ext.SdkExtensions;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class sm0 extends Lambda implements Function0 {
    public final /* synthetic */ an0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sm0(an0 an0Var) {
        super(0);
        this.a = an0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i;
        try {
            i = Build.VERSION.SDK_INT;
        } catch (Exception e) {
            ((as3) this.a.d).a("DeviceProperties.adServicesExtensionVersion", (Throwable) e);
        }
        if (i >= 33 && SdkExtensions.getExtensionVersion(33) >= 5) {
            return Integer.valueOf(SdkExtensions.getExtensionVersion(1000000));
        }
        if (i >= 31 && SdkExtensions.getExtensionVersion(31) >= 9) {
            return Integer.valueOf(SdkExtensions.getExtensionVersion(31));
        }
        return 0;
    }
}
