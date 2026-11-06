package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class lb3 extends fp2 {
    public final CoroutineScope c;
    public final ex0 d;
    public final jb3 e;

    public lb3(CoroutineScope backgroundScope, ex0 flags, jb3 sdkCore) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(sdkCore, "sdkCore");
        this.c = backgroundScope;
        this.d = flags;
        this.e = sdkCore;
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        eb3 eb3Var = this.d.s;
        eb3Var.getClass();
        Intrinsics.checkNotNullParameter("gads:initialize_sdk_core_post_init:enabled", C3522b4.i.W);
        if (((Boolean) eb3Var.a("gads:initialize_sdk_core_post_init:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            CoroutineScope coroutineScope = this.c;
            kb3 block = new kb3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
        return new q01(Unit.INSTANCE);
    }
}
