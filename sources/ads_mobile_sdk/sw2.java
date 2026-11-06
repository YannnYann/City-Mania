package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class sw2 extends Lambda implements Function1 {
    public final /* synthetic */ Job a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sw2(Job job) {
        super(1);
        this.a = job;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Job.DefaultImpls.cancel$default(this.a, null, 1, null);
        return Unit.INSTANCE;
    }
}
