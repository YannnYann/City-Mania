package ads_mobile_sdk;

import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface r41 {
    Object a(r31 r31Var, Map map, Continuation continuation);

    default void a(String adKey) {
        Intrinsics.checkNotNullParameter(adKey, "adKey");
    }

    default r41 f() {
        return this;
    }

    u11 g();

    default boolean i() {
        return false;
    }

    default String k() {
        return null;
    }
}
