package ads_mobile_sdk;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: loaded from: classes.dex */
public abstract class i40 {
    public static final void a(CoroutineScope coroutineScope, f40 coroutineSequence, Function2 block) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(coroutineSequence, "coroutineSequence");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt.launch(coroutineScope, EmptyCoroutineContext.INSTANCE, CoroutineStart.UNDISPATCHED, new h40(coroutineSequence, block, null));
    }
}
