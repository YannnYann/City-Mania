package ads_mobile_sdk;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class pp implements rh3 {
    public final boolean a;

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.BANNER_REFRESH;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return new q01(new op(this.a));
    }

    public pp(boolean z) {
        this.a = z;
    }
}
