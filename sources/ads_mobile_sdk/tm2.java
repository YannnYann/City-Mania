package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tm2 implements r41 {
    public final g30 a;
    public final ex0 b;

    public tm2(g30 consentManager, ex0 flags) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = consentManager;
        this.b = flags;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_PERSISTENT_SDK_CORE_DATA;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3522b4.i.W);
        String str2 = (String) map.get(C3522b4.i.X);
        if (str != null && str.length() != 0) {
            if (Intrinsics.areEqual(str, "cachedMediaIds")) {
                ex0 ex0Var = this.b;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:cached_media_ids_signal:enabled", C3522b4.i.W);
                if (!((Boolean) ex0Var.a("gads:cached_media_ids_signal:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    return Unit.INSTANCE;
                }
            }
            g30 g30Var = this.a;
            g30Var.getClass();
            Object objA = g30.a(g30Var, str, str2, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
