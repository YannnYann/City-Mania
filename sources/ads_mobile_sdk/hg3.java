package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class hg3 extends Lambda implements Function0 {
    public final /* synthetic */ ex0 a;
    public final /* synthetic */ SignalRequest b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hg3(ex0 ex0Var, SignalRequest signalRequest) {
        super(0);
        this.a = ex0Var;
        this.b = signalRequest;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return Boolean.valueOf(this.a.U().contains(String.valueOf(this.b.a().getNumber())));
    }
}
