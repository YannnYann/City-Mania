package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class sh3 {
    public final lg3 a;
    public final qf3 b;
    public final ph3 c;
    public final long d;
    public final Function0 e;

    public sh3(rh3 source, lg3 importance, qf3 executionType, ph3 scope, long j, Function0 function0) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(importance, "importance");
        Intrinsics.checkNotNullParameter(executionType, "executionType");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = importance;
        this.b = executionType;
        this.c = scope;
        this.d = j;
        this.e = function0;
    }

    public abstract rh3 b();

    public final lg3 a() {
        return this.a;
    }

    public final long c() {
        return this.d;
    }

    public /* synthetic */ sh3(rh3 rh3Var, lg3 lg3Var, qf3 qf3Var, ph3 ph3Var, long j, Function0 function0, int i) {
        this(rh3Var, lg3Var, qf3Var, ph3Var, j, function0);
    }
}
