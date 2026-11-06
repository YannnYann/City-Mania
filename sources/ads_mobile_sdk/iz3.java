package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class iz3 {
    public final oz3 a;

    public iz3(oz3 webViewFactoryImpl) {
        Intrinsics.checkNotNullParameter(webViewFactoryImpl, "webViewFactoryImpl");
        this.a = webViewFactoryImpl;
    }

    public final Object a(v14 v14Var, v52 v52Var, boolean z, Continuation continuation) {
        return this.a.a(v14Var, v52Var, false, null, null, z, continuation);
    }

    public static Object a(iz3 iz3Var, v14 v14Var, ar1 ar1Var, boolean z, eo2 eo2Var, boolean z2, Continuation continuation, int i) {
        if ((i & 8) != 0) {
            eo2Var = null;
        }
        eo2 eo2Var2 = eo2Var;
        if ((i & 32) != 0) {
            z2 = false;
        }
        return iz3Var.a.a(v14Var, ar1Var, z, eo2Var2, null, z2, continuation);
    }

    public static Object a(iz3 iz3Var, v14 v14Var, ks3 ks3Var, mb0 mb0Var, eo2 eo2Var, t91 t91Var, ContinuationImpl continuationImpl, int i) {
        if ((i & 8) != 0) {
            eo2Var = null;
        }
        if ((i & 16) != 0) {
            t91Var = null;
        }
        return iz3Var.a.a(v14Var, ks3Var, mb0Var, eo2Var, t91Var, continuationImpl);
    }
}
