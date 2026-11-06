package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class kg3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        bu3 trustlessTokenSignalSource = (bu3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        SignalRequest signalRequest = (SignalRequest) this.c.get();
        Intrinsics.checkNotNullParameter(trustlessTokenSignalSource, "trustlessTokenSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        trustlessTokenSignalSource.getClass();
        return new pu(trustlessTokenSignalSource, qf3Var, ph3Var, fk3.a(flags, y11.TRUSTLESS_TOKEN), new hg3(flags, signalRequest));
    }

    public kg3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
    }
}
