package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jb2 extends sh3 {
    public final rh3 f;

    public /* synthetic */ jb2(rh3 rh3Var, lg3 lg3Var, qf3 qf3Var, long j) {
        this(rh3Var, lg3Var, qf3Var, ph3.a, j, null, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jb2(rh3 source, lg3 importance, qf3 executionType, ph3 scope, long j, Function0 function0) {
        super(source, importance, executionType, scope, j, function0, 0);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(importance, "importance");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f = source;
    }

    @Override // ads_mobile_sdk.sh3
    public final rh3 b() {
        return this.f;
    }

    public /* synthetic */ jb2(rh3 rh3Var, lg3 lg3Var, qf3 qf3Var, ph3 ph3Var, long j, Function0 function0, int i) {
        this(rh3Var, lg3Var, qf3Var, ph3Var, j, function0);
    }
}
