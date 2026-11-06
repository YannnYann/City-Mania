package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

/* JADX INFO: loaded from: classes.dex */
public final class mn1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        f13 randomGenerator = (f13) this.a.get();
        Intrinsics.checkNotNullParameter(randomGenerator, "randomGenerator");
        randomGenerator.getClass();
        return (String) kq2.b(String.valueOf(Random.Default.nextInt(Api.BaseClientBuilder.API_PRIORITY_OTHER)));
    }

    public mn1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
