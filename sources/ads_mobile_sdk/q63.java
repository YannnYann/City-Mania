package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class q63 extends Lambda implements Function1 {
    public static final q63 a = new q63();

    public q63() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        un1 it = (un1) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new u63(it);
    }
}
