package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ga3 implements rh3 {
    public final SignalRequest a;

    public ga3(SignalRequest signalRequest) {
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        this.a = signalRequest;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.SCAR_SIGNAL_TYPE;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return new q01(new fa3(this.a.getSignalType()));
    }
}
