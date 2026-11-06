package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class nr2 extends Lambda implements Function1 {
    public final /* synthetic */ pt2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nr2(pt2 pt2Var) {
        super(1);
        this.a = pt2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        j53 it = (j53) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it == j53.e && this.a.u);
    }
}
