package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class id2 extends Lambda implements Function0 {
    public final /* synthetic */ k9 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public id2(k9 k9Var) {
        super(0);
        this.a = k9Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.a.b();
        return Unit.INSTANCE;
    }
}
