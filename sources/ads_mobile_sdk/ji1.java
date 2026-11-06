package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.Yf;
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
public final class ji1 extends kq0 implements li1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ji1(CoroutineScope backgroundScope, Map listeners, ub3 serialEventQueue) {
        super(backgroundScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                hi1 task = new hi1(Yf.j, str, mq0Var, null, ec3Var, i2Var, responseInfo);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            ii1 block = new ii1(Yf.j, str2, mq0Var2, null, ec3Var, i2Var, responseInfo);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(i01 i01Var, ResponseInfo responseInfo, Continuation continuation) {
        Pair pair = new Pair(MapsKt__MapsKt.emptyMap(), this.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = this.c;
                i01 i01Var2 = i01Var;
                fi1 task = new fi1("onAdFailedToLoad", str, mq0Var, null, i01Var2, responseInfo);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo2951trySendJP2dKIU(task);
                i01Var = i01Var2;
            }
        }
        i01 i01Var3 = i01Var;
        ResponseInfo responseInfo2 = responseInfo;
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = this.a;
            gi1 block = new gi1("onAdFailedToLoad", str2, mq0Var2, null, i01Var3, responseInfo2);
            i01 i01Var4 = i01Var3;
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            i01Var3 = i01Var4;
            responseInfo2 = responseInfo2;
        }
        return Unit.INSTANCE;
    }
}
