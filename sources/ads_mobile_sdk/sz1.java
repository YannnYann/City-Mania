package ads_mobile_sdk;

import android.graphics.Rect;
import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class sz1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ tz1 b;
    public final /* synthetic */ r31 c;
    public final /* synthetic */ Rect d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sz1(tz1 tz1Var, r31 r31Var, Rect rect, Continuation continuation) {
        super(2, continuation);
        this.b = tz1Var;
        this.c = r31Var;
        this.d = rect;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sz1(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((sz1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ix1 ix1Var = this.b.a;
            r31 r31Var = this.c;
            Rect rect = this.d;
            int i2 = rect.left;
            int i3 = rect.top;
            int iWidth = rect.width();
            int iHeight = this.d.height();
            this.a = 1;
            ix1Var.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("x", Boxing.boxInt(i2));
            jsonObject.addProperty("y", Boxing.boxInt(i3));
            jsonObject.addProperty("width", Boxing.boxInt(iWidth));
            jsonObject.addProperty("height", Boxing.boxInt(iHeight));
            Object objA = r31Var.a(jsonObject, "onDefaultPositionReceived", this);
            if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
