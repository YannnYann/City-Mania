package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w01 extends RuntimeException {
    public final i01 a;

    public w01(i01 resultError) {
        Intrinsics.checkNotNullParameter(resultError, "resultError");
        this.a = resultError;
    }
}
