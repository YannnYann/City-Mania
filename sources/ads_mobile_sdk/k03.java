package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ShareKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* JADX INFO: loaded from: classes.dex */
public final class k03 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public k03(ol0 ol0Var, dw2 dw2Var) {
        this.a = ol0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineScope backgroundScope = (CoroutineScope) this.a.get();
        Channel cancellationChannel = (Channel) this.b.get();
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(cancellationChannel, "cancellationChannel");
        return (SharedFlow) kq2.b(FlowKt__ShareKt.shareIn$default(FlowKt.receiveAsFlow(cancellationChannel), backgroundScope, SharingStarted.Companion.getLazily(), 0, 4, null));
    }
}
