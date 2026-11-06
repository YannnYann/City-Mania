package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ja1 {
    public volatile InitializationConfig a;

    public final InitializationConfig a() {
        ur3 ur3Var;
        InitializationConfig initializationConfig = this.a;
        if (initializationConfig == null) {
            Intrinsics.checkNotNullParameter("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", "message");
            f01.b("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", null);
            IllegalStateException illegalStateException = new IllegalStateException("InitializationConfig is requested but null. MobileAds.initialize() must be called first.");
            illegalStateException.printStackTrace();
            bu buVar = au.a;
            if (buVar != bu.b && buVar != bu.c) {
                if (buVar == bu.a && (ur3Var = sr3.a) != null) {
                    ((as3) ur3Var).a("InitializationConfig is requested but null. MobileAds.initialize() must be called first.", (Throwable) illegalStateException);
                    return initializationConfig;
                }
            } else {
                throw illegalStateException;
            }
        }
        return initializationConfig;
    }
}
