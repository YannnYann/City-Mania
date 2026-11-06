package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ql2 extends Lambda implements Function1 {
    public static final ql2 a = new ql2();

    public ql2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Intrinsics.checkNotNullParameter((o1) obj, "<anonymous parameter 0>");
        o1 o1VarX = o1.x();
        Intrinsics.checkNotNullExpressionValue(o1VarX, "getDefaultInstance(...)");
        return o1VarX;
    }
}
