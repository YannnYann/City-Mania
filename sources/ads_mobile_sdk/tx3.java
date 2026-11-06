package ads_mobile_sdk;

import com.google.common.base.Splitter;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class tx3 implements r41 {
    public final CoroutineContext a;

    public tx3(CoroutineContext backgroundContext) {
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        this.a = backgroundContext;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_VIDEO;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return true;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("action");
        if (str != null && !StringsKt__StringsKt.isBlank(str)) {
            Splitter splitter = f01.a;
            f01.b("Handling \"" + str + "\" video GMSG", null);
            q41 q41VarD = r31Var.d();
            if (q41VarD == null) {
                return Unit.INSTANCE;
            }
            int iHashCode = str.hashCode();
            if (iHashCode != 114148) {
                if (iHashCode != 3532159) {
                    if (iHashCode == 1762557398 && str.equals("timeupdate")) {
                        Object objWithContext = BuildersKt.withContext(this.a, new qx3(map, q41VarD, null), continuation);
                        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
                    }
                } else if (str.equals("skip")) {
                    Object objWithContext2 = BuildersKt.withContext(this.a, new rx3(q41VarD, null), continuation);
                    return objWithContext2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext2 : Unit.INSTANCE;
                }
            } else if (str.equals("src")) {
                Object objWithContext3 = BuildersKt.withContext(this.a, new sx3(map, q41VarD, null), continuation);
                return objWithContext3 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext3 : Unit.INSTANCE;
            }
            xs3.a("Unhandled video GMSG: " + map, null, 6);
            return Unit.INSTANCE;
        }
        xs3.a("Action is missing from a video GMSG: " + map, null, 6);
        return Unit.INSTANCE;
    }
}
