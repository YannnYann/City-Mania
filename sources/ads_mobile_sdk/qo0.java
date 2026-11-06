package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qo0 implements q52 {
    public final fl1 a;

    public qo0(fl1 internalJavascriptEngine) {
        Intrinsics.checkNotNullParameter(internalJavascriptEngine, "internalJavascriptEngine");
        this.a = internalJavascriptEngine;
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(String str, String str2, Continuation continuation) {
        return this.a.a(str, str2, continuation);
    }

    @Override // ads_mobile_sdk.eq1
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        Object objA = this.a.a(jsonObject, "sendMessageToNativeJs", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.q52
    public final nr1 a() {
        r31 r31Var = this.a.a;
        Intrinsics.checkNotNull(r31Var);
        return r31Var.c();
    }

    @Override // ads_mobile_sdk.q52
    public final Object a(Continuation continuation) {
        Object objC = this.a.c(continuation);
        return objC == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : Unit.INSTANCE;
    }
}
