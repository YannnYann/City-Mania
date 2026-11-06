package ads_mobile_sdk;

import android.view.View;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class re2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ ze2 a;
    public final /* synthetic */ aq1 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ tx0 d;
    public final /* synthetic */ String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public re2(ze2 ze2Var, aq1 aq1Var, View view, tx0 tx0Var, String str, Continuation continuation) {
        super(1, continuation);
        this.a = ze2Var;
        this.b = aq1Var;
        this.c = view;
        this.d = tx0Var;
        this.e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new re2(this.a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((re2) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        kd2 kd2Var = this.a.c;
        aq1 javaScriptSessionService = this.b;
        View friendlyObstructionView = this.c;
        tx0 purpose = this.d;
        String str = this.e;
        kd2Var.getClass();
        Intrinsics.checkNotNullParameter(javaScriptSessionService, "javaScriptSessionService");
        Intrinsics.checkNotNullParameter(friendlyObstructionView, "friendlyObstructionView");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return (Unit) kd2Var.f.a("AddFriendlyObstructionToJavaScriptSessionService", new tc2(javaScriptSessionService, friendlyObstructionView, purpose, str));
    }
}
