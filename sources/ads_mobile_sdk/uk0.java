package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class uk0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public uk0(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var2, vh1 vh1Var3, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = vh1Var2;
        this.f = vh1Var3;
        this.g = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        CoroutineScope backgroundScope = (CoroutineScope) this.b.get();
        ok0 debugDialogManager = (ok0) this.c.get();
        ex0 flags = (ex0) this.d.get();
        BaseRequest baseRequest = (BaseRequest) this.e.get();
        i2 adConfiguration = (i2) this.f.get();
        ks3 traceMetaSet = (ks3) this.g.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        return new tk0(context, backgroundScope, debugDialogManager, flags, baseRequest.getAdUnitId(), adConfiguration.z, adConfiguration.A, traceMetaSet);
    }
}
