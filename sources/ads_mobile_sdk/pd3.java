package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class pd3 extends Lambda implements Function1 {
    public static final pd3 a = new pd3();

    public pd3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        be3 update = (be3) obj;
        Intrinsics.checkNotNullParameter(update, "$this$update");
        update.a.h();
        return Unit.INSTANCE;
    }
}
