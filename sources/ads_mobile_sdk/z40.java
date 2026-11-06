package ads_mobile_sdk;

import android.view.MotionEvent;
import android.view.View;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class z40 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ s93 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z40(s93 s93Var, Continuation continuation) {
        super(2, continuation);
        this.b = s93Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        z40 z40Var = new z40(this.b, continuation);
        z40Var.a = obj;
        return z40Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        z40 z40Var = new z40(this.b, (Continuation) obj2);
        z40Var.a = (r31) obj;
        return z40Var.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        r31 r31Var = (r31) this.a;
        r31Var.b().u = this.b;
        final s93 s93Var = this.b;
        r31Var.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.z40$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                z40.a(s93Var, view);
            }
        });
        final s93 s93Var2 = this.b;
        r31Var.setOnTouchListener(new View.OnTouchListener() { // from class: ads_mobile_sdk.z40$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return z40.a(s93Var2, view, motionEvent);
            }
        });
        return Unit.INSTANCE;
    }

    public static final void a(s93 s93Var, View view) {
        s93Var.g.set(true);
    }

    public static final boolean a(s93 s93Var, View view, MotionEvent motionEvent) {
        s93Var.g.set(true);
        view.performClick();
        return false;
    }
}
