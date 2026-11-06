package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class g02 extends Lambda implements Function1 {
    public static final g02 a = new g02();

    public g02() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ck1 ad = (ck1) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        return new vz1(ad);
    }
}
