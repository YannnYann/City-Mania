package ads_mobile_sdk;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.ironsource.C3522b4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class z71 extends Lambda implements Function0 {
    public final /* synthetic */ a81 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z71(a81 a81Var) {
        super(0);
        this.a = a81Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Bundle extras;
        InitializationConfig initializationConfigA = this.a.d.a();
        boolean z = true;
        if (initializationConfigA == null || (extras = initializationConfigA.getExtras()) == null || !extras.getBoolean("force_use_cronet")) {
            ex0 ex0Var = this.a.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:use_cronet_for_http_client:enabled", C3522b4.i.W);
            if (!((Boolean) ex0Var.a("gads:use_cronet_for_http_client:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
