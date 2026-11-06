package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class go1 extends Lambda implements Function1 {
    public static final go1 a = new go1();

    public go1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        pk1 it = (pk1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new mo1(it);
    }
}
