package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public abstract class e40 {
    public static final d40 a(final CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new d40() { // from class: ads_mobile_sdk.e40$$ExternalSyntheticLambda0
            @Override // ads_mobile_sdk.d40
            public final CoroutineScope get() {
                return e40.b(scope);
            }
        };
    }

    public static final CoroutineScope b(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "$scope");
        return scope;
    }
}
