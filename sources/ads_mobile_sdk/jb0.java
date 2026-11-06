package ads_mobile_sdk;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class jb0 extends Lambda implements Function1 {
    public static final jb0 a = new jb0();

    public jb0() {
        super(1);
    }

    public static String a(eb0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        long jM2896minusLRDsOJo = Duration.m2896minusLRDsOJo(it.a(), it.b.a());
        return it.a + "." + Duration.m2881getInWholeMillisecondsimpl(jM2896minusLRDsOJo);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return a((eb0) obj);
    }
}
