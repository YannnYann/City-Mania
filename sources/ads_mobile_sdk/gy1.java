package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import com.google.gson.JsonObject;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class gy1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ jy1 b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy1(jy1 jy1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = jy1Var;
        this.c = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gy1(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gy1(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            jy1 jy1Var = this.b;
            r31 r31Var = this.c;
            this.a = 1;
            jy1Var.getClass();
            int[] iArr = new int[2];
            r31Var.getLocationOnScreen(iArr);
            Activity activityG = jy1Var.b.g();
            int iIntValue = activityG != null ? ((Number) zn0.a(activityG).getFirst()).intValue() : 0;
            int i2 = iArr[0];
            int i3 = iArr[1] - iIntValue;
            Context context = jy1Var.a;
            int width = r31Var.getWidth();
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(context, "<this>");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
            Integer numBoxInt = Boxing.boxInt(MathKt__MathJVMKt.roundToInt(width / displayMetrics.density));
            Context context2 = jy1Var.a;
            int height = r31Var.getHeight();
            Intrinsics.checkNotNullParameter(context2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "<this>");
            DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
            Pair pair = new Pair(numBoxInt, Boxing.boxInt(MathKt__MathJVMKt.roundToInt(height / displayMetrics2.density)));
            int iIntValue2 = ((Number) pair.component1()).intValue();
            int iIntValue3 = ((Number) pair.component2()).intValue();
            jy1Var.c.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("x", Boxing.boxInt(i2));
            jsonObject.addProperty("y", Boxing.boxInt(i3));
            jsonObject.addProperty("width", Boxing.boxInt(iIntValue2));
            jsonObject.addProperty("height", Boxing.boxInt(iIntValue3));
            Object objA = r31Var.a(jsonObject, "onDefaultPositionReceived", this);
            if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = Unit.INSTANCE;
            }
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
