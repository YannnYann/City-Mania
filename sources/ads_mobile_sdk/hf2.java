package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class hf2 extends SuspendLambda implements Function2 {
    public k9 a;
    public int b;
    public final /* synthetic */ vf2 c;
    public final /* synthetic */ r31 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ Ref$ObjectRef f;
    public final /* synthetic */ x91 g;
    public final /* synthetic */ Ref$ObjectRef h;
    public final /* synthetic */ boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hf2(vf2 vf2Var, r31 r31Var, String str, Ref$ObjectRef ref$ObjectRef, x91 x91Var, Ref$ObjectRef ref$ObjectRef2, boolean z, Continuation continuation) {
        super(2, continuation);
        this.c = vf2Var;
        this.d = r31Var;
        this.e = str;
        this.f = ref$ObjectRef;
        this.g = x91Var;
        this.h = ref$ObjectRef2;
        this.i = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new hf2(this.c, this.d, this.e, this.f, this.g, this.h, this.i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((hf2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        l40 l40Var;
        xh2 xh2Var;
        hf2 hf2Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            vf2 vf2Var = this.c;
            kd2 kd2Var = vf2Var.f;
            r31 r31Var = this.d;
            String str = this.e;
            String str2 = vf2Var.e.x;
            T t = this.f.element;
            if (t == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("creativeType");
                l40Var = null;
            } else {
                l40Var = (l40) t;
            }
            x91 x91Var = this.g;
            xh2 xh2Var2 = xh2.c;
            T t2 = this.h.element;
            if (t2 == 0) {
                Intrinsics.throwUninitializedPropertyAccessException("videoEventsOwner");
                xh2Var = null;
            } else {
                xh2Var = (xh2) t2;
            }
            this.b = 1;
            kd2Var.getClass();
            hf2Var = this;
            obj = kd2.a(kd2Var, r31Var, str, str2, l40Var, x91Var, xh2Var2, xh2Var, hf2Var);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            k9 k9Var = this.a;
            ResultKt.throwOnFailure(obj);
            return k9Var;
        }
        ResultKt.throwOnFailure(obj);
        hf2Var = this;
        k9 adSession = (k9) obj;
        if (adSession == null) {
            return null;
        }
        vf2 vf2Var2 = hf2Var.c;
        r31 r31Var2 = hf2Var.d;
        boolean z = hf2Var.i;
        if (vf2Var2.m) {
            vf2Var2.f.a(adSession, r31Var2);
        }
        if (z) {
            kd2 kd2Var2 = vf2Var2.f;
            kd2Var2.getClass();
            Intrinsics.checkNotNullParameter(adSession, "adSession");
            JsonObject jsonObject = new JsonObject();
            hf2Var.a = adSession;
            hf2Var.b = 2;
            if (r31Var2.a(jsonObject, "onSdkLoaded", this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return adSession;
    }
}
