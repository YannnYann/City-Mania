package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class d12 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object a;
    public final /* synthetic */ g12 b;
    public final /* synthetic */ s02 c;
    public final /* synthetic */ JsonObject d;
    public final /* synthetic */ eo2 e;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        g12 g12Var = this.b;
        d12 d12Var = new d12(this.e, this.c, g12Var, this.d, continuation);
        d12Var.a = obj;
        return d12Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((d12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.a;
        g12 g12Var = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var.b, null, new v02(this.c, g12Var, this.d, null), 2, null);
        g12 g12Var2 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var2.b, null, new w02(this.c, g12Var2, this.d, null), 2, null);
        g12 g12Var3 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var3.b, null, new x02(this.c, g12Var3, this.d, null), 2, null);
        g12 g12Var4 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var4.b, null, new y02(this.c, g12Var4, this.d, null), 2, null);
        g12 g12Var5 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var5.b, null, new z02(this.e, this.c, g12Var5, this.d, null), 2, null);
        g12 g12Var6 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var6.b, null, new a12(this.c, g12Var6, this.d, null), 2, null);
        g12 g12Var7 = this.b;
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, g12Var7.b, null, new b12(this.c, g12Var7, this.d, null), 2, null);
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, this.b.b, null, new c12(this.d, this.c, null), 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d12(eo2 eo2Var, s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.b = g12Var;
        this.c = s02Var;
        this.d = jsonObject;
        this.e = eo2Var;
    }
}
