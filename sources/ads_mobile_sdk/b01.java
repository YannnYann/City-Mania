package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b01 extends Exception implements v24 {
    public final Throwable a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b01(Throwable wrappedException) {
        super(wrappedException);
        Intrinsics.checkNotNullParameter(wrappedException, "wrappedException");
        this.a = wrappedException;
    }

    @Override // ads_mobile_sdk.v24
    public final Throwable a() {
        return this.a;
    }
}
