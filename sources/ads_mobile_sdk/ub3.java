package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* JADX INFO: loaded from: classes.dex */
public final class ub3 {
    public final ur3 a;
    public final Channel b;

    public final void a(Function1 task) {
        Intrinsics.checkNotNullParameter(task, "task");
        this.b.mo2951trySendJP2dKIU(task);
    }

    public ub3(ur3 traceLogger, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = traceLogger;
        this.b = ChannelKt.Channel$default(Api.BaseClientBuilder.API_PRIORITY_OTHER, null, null, 6, null);
        xs3.a(backgroundScope, new tb3(this, null));
    }
}
