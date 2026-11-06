package ads_mobile_sdk;

import android.os.Bundle;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class o4 extends kq0 implements q4 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o4(CoroutineScope backgroundScope, Map listeners, ub3 serialEventQueue) {
        super(backgroundScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
    }

    @Override // ads_mobile_sdk.q4
    public final Object a(Bundle bundle, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                Bundle bundle2 = bundle;
                m4 task = new m4("onAdMetadataChanged", str, mq0Var, null, bundle2);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                bundle = bundle2;
            }
        }
        Bundle bundle3 = bundle;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            n4 block = new n4("onAdMetadataChanged", str2, mq0Var2, null, bundle3);
            Bundle bundle4 = bundle3;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            bundle3 = bundle4;
        }
        return Unit.INSTANCE;
    }
}
