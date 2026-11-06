package ads_mobile_sdk;

import androidx.webkit.Profile;
import androidx.webkit.ProfileStore;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o14 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r14 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o14(r14 r14Var, String str, Continuation continuation) {
        super(2, continuation);
        this.a = r14Var;
        this.b = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new o14(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new o14(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            r14 r14Var = this.a;
            t04 t04Var = r14Var.j;
            String name = this.b;
            t04Var.getClass();
            Intrinsics.checkNotNullParameter(name, "name");
            Profile orCreateProfile = ProfileStore.getInstance().getOrCreateProfile(name);
            Intrinsics.checkNotNullExpressionValue(orCreateProfile, "getOrCreateProfile(...)");
            r14Var.m = orCreateProfile;
        } catch (Throwable unused) {
        }
        return Unit.INSTANCE;
    }
}
