package ads_mobile_sdk;

import android.content.Intent;
import android.net.Uri;
import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hy1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ jy1 b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hy1(jy1 jy1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = jy1Var;
        this.c = r31Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hy1(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new hy1(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
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
            an0 an0Var = jy1Var.f;
            an0Var.getClass();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("sms:"));
            boolean zA = an0Var.a(intent);
            an0 an0Var2 = jy1Var.f;
            an0Var2.getClass();
            Intent intent2 = new Intent("android.intent.action.DIAL");
            intent2.setData(Uri.parse("tel:"));
            boolean zA2 = an0Var2.a(intent2);
            an0 an0Var3 = jy1Var.f;
            an0Var3.getClass();
            Intent type = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event");
            Intrinsics.checkNotNullExpressionValue(type, "setType(...)");
            boolean zA3 = an0Var3.a(type);
            boolean zI = jy1Var.f.i();
            jy1Var.c.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("sms", Boxing.boxBoolean(zA));
            jsonObject.addProperty("tel", Boxing.boxBoolean(zA2));
            jsonObject.addProperty("calendar", Boxing.boxBoolean(zA3));
            jsonObject.addProperty("storePicture", Boxing.boxBoolean(zI));
            jsonObject.addProperty("inlineVideo", Boxing.boxBoolean(true));
            Object objA = r31Var.a(jsonObject, "onDeviceFeaturesReceived", this);
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
