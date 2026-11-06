package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y91 implements r41 {
    public final qn a;

    public y91(qn appState) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = appState;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_IN_MEMORY_SDK_CORE_DATA;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3522b4.i.W);
        String str2 = (String) map.get(C3522b4.i.X);
        if (str != null && str.length() != 0) {
            qn qnVar = this.a;
            qnVar.getClass();
            Object objA = qn.a(qnVar, str, str2, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
