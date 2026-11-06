package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class gn extends Lambda implements Function1 {
    public static final gn a = new gn();

    public gn() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        j53 it = (j53) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new AtomicInteger(0);
    }
}
