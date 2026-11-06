package ads_mobile_sdk;

import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g01 extends PhantomReference {
    public final vm2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g01(vm2 task, Object a, ReferenceQueue queue) {
        super(a, queue);
        Intrinsics.checkNotNullParameter(task, "task");
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(queue, "queue");
        this.a = task;
    }
}
