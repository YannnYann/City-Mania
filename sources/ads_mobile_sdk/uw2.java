package ads_mobile_sdk;

import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
public final class uw2 implements FlowCollector {
    public final /* synthetic */ Job a;

    public uw2(Job job) {
        this.a = job;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        this.a.cancel(new dz2(new CancellationException("Ad request cancelled by publisher action.")));
        return Unit.INSTANCE;
    }
}
