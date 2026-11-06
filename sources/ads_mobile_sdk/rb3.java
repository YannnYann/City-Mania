package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rb3 implements r41 {
    public final q52 a;

    public rb3(q52 nativeJavascriptEngine) {
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        this.a = nativeJavascriptEngine;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_SEND_MESSAGE_TO_NATIVE_JS;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        JsonObject jsonObject = new JsonObject();
        for (Map.Entry entry : map.entrySet()) {
            jsonObject.addProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Object objA = this.a.a(jsonObject, "sendMessageToNativeJs", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
