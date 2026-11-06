package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qk1 extends ei1 {
    public final AdLoadCallback a;
    public final Function1 b;

    public qk1(AdLoadCallback loadCallback, Function1 wrap) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        Intrinsics.checkNotNullParameter(wrap, "wrap");
        this.a = loadCallback;
        this.b = wrap;
    }

    @Override // ads_mobile_sdk.ei1
    public final void a() {
    }

    @Override // ads_mobile_sdk.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }

    @Override // ads_mobile_sdk.ei1
    public final Object a(zh1 zh1Var, Continuation continuation) {
        this.a.onAdLoaded(this.b.invoke((pk1) zh1Var));
        return Unit.INSTANCE;
    }
}
