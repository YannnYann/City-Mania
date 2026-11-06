package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sr3 {
    public static ur3 a;

    public static void a(String message) {
        ur3 ur3Var;
        Intrinsics.checkNotNullParameter(message, "message");
        f01.b(message, null);
        IllegalStateException illegalStateException = new IllegalStateException(message);
        illegalStateException.printStackTrace();
        bu buVar = au.a;
        if (buVar == bu.b || buVar == bu.c) {
            throw illegalStateException;
        }
        if (buVar != bu.a || (ur3Var = a) == null) {
            return;
        }
        ((as3) ur3Var).a(message, (Throwable) illegalStateException);
    }
}
