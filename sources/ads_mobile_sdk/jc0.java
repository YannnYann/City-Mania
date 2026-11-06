package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class jc0 implements r41 {
    public final CoroutineScope a;

    public jc0(CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = uiScope;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CUSTOM_CLOSE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        boolean zAreEqual = Intrinsics.areEqual(map.get("custom_close"), "1");
        CoroutineScope coroutineScope = this.a;
        ic0 block = new ic0(r31Var, zAreEqual, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return Unit.INSTANCE;
    }
}
