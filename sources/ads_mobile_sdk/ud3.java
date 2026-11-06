package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ud3 extends Lambda implements Function1 {
    public final /* synthetic */ xp0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ud3(xp0 xp0Var) {
        super(1);
        this.a = xp0Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        be3 update = (be3) obj;
        Intrinsics.checkNotNullParameter(update, "$this$update");
        xp0 value = this.a;
        update.getClass();
        Intrinsics.checkNotNullParameter(value, "value");
        update.a.a(value);
        return Unit.INSTANCE;
    }
}
