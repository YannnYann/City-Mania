package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yd2 extends SuspendLambda implements Function2 {
    public Object a;
    public int b;
    public final /* synthetic */ h41 c;
    public final /* synthetic */ je2 d;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new yd2(this.d, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        h41 h41Var = this.c;
        return new yd2(this.d, h41Var, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        yd2 yd2Var;
        r31 r31Var;
        k9 k9Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            r31 r31Var2 = this.c.a;
            je2 je2Var = this.d;
            i2 i2Var = je2Var.d;
            dg2 dg2Var = i2Var.T;
            cg2 cg2Var = dg2Var.a;
            xh2 xh2Var = dg2Var.b;
            cg2 cg2Var2 = cg2.a;
            x91 x91Var = cg2Var == cg2Var2 ? x91.b : i2Var.H == e2.e ? x91.e : x91.d;
            l40 l40Var = cg2Var == cg2Var2 ? l40.e : l40.c;
            kd2 kd2Var = je2Var.e;
            xh2 xh2Var2 = xh2.c;
            String str = i2Var.x;
            this.a = r31Var2;
            this.b = 1;
            kd2Var.getClass();
            yd2Var = this;
            obj = kd2.a(kd2Var, r31Var2, xh2Var2, x91Var, l40Var, xh2Var, str, yd2Var);
            if (obj != coroutine_suspended) {
                r31Var = r31Var2;
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k9Var = (k9) this.a;
            ResultKt.throwOnFailure(obj);
            yd2Var = this;
            yd2Var.d.i = k9Var;
            return Unit.INSTANCE;
        }
        r31Var = (r31) this.a;
        ResultKt.throwOnFailure(obj);
        yd2Var = this;
        k9 adSession = (k9) obj;
        if (adSession == null) {
            return Unit.INSTANCE;
        }
        yd2Var.d.e.a(adSession, yd2Var.c);
        kd2 kd2Var2 = yd2Var.d.e;
        kd2Var2.getClass();
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        JsonObject jsonObject = new JsonObject();
        yd2Var.a = adSession;
        yd2Var.b = 2;
        if (r31Var.a(jsonObject, "onSdkLoaded", this) != coroutine_suspended) {
            k9Var = adSession;
            yd2Var.d.i = k9Var;
            return Unit.INSTANCE;
        }
        return coroutine_suspended;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yd2(je2 je2Var, h41 h41Var, Continuation continuation) {
        super(2, continuation);
        this.c = h41Var;
        this.d = je2Var;
    }
}
