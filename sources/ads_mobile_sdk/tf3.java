package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tf3 {
    public final long a;
    public final SignalRequest b;
    public final Signals c;
    public final String d;
    public final LinkedHashSet e;

    public tf3(long j, String requestId, SignalRequest signalRequest, Signals signals, String signalBlob) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        Intrinsics.checkNotNullParameter(signals, "signals");
        Intrinsics.checkNotNullParameter(signalBlob, "signalBlob");
        this.a = j;
        this.b = signalRequest;
        this.c = signals;
        this.d = signalBlob;
        this.e = new LinkedHashSet();
    }
}
