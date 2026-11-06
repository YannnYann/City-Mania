package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class b12 extends SuspendLambda implements Function2 {
    public final /* synthetic */ g12 a;
    public final /* synthetic */ JsonObject b;
    public final /* synthetic */ s02 c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new b12(this.c, this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((b12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? EmptyList;
        JsonObject jsonObjectA;
        JsonArray jsonArrayE;
        String strA;
        String strA2;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        g52 g52Var = this.a.d;
        JsonObject adJson = this.b;
        g52Var.getClass();
        Intrinsics.checkNotNullParameter(adJson, "adJson");
        hm1 hm1Var = null;
        JsonObject jsonObjectA2 = ds1.a(adJson, "mute", (JsonObject) null);
        if (jsonObjectA2 == null || (jsonArrayE = ds1.e(jsonObjectA2, "reasons")) == null) {
            EmptyList = CollectionsKt__CollectionsKt.emptyList();
        } else {
            EmptyList = new ArrayList();
            Iterator<JsonElement> it = jsonArrayE.iterator();
            while (it.hasNext()) {
                try {
                    JsonObject asJsonObject = it.next().getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                    strA = ds1.a(asJsonObject, "reason", "");
                    strA2 = ds1.a(asJsonObject, "ping_url", "");
                } catch (Exception unused) {
                }
                hm1 hm1Var2 = (StringsKt__StringsKt.isBlank(strA) || StringsKt__StringsKt.isBlank(strA2)) ? null : new hm1(strA, strA2);
                if (hm1Var2 != null) {
                    EmptyList.add(hm1Var2);
                }
            }
        }
        Iterator it2 = EmptyList.iterator();
        while (it2.hasNext()) {
            this.c.p.add((hm1) it2.next());
        }
        s02 s02Var = this.c;
        g52 g52Var2 = this.a.d;
        JsonObject adJson2 = this.b;
        g52Var2.getClass();
        Intrinsics.checkNotNullParameter(adJson2, "adJson");
        JsonObject jsonObjectA3 = ds1.a(adJson2, "mute", (JsonObject) null);
        if (jsonObjectA3 != null && (jsonObjectA = ds1.a(jsonObjectA3, "default_reason", (JsonObject) null)) != null) {
            String strA3 = ds1.a(jsonObjectA, "reason", "");
            String strA4 = ds1.a(jsonObjectA, "ping_url", "");
            if (!StringsKt__StringsKt.isBlank(strA3) && !StringsKt__StringsKt.isBlank(strA4)) {
                hm1Var = new hm1(strA3, strA4);
            }
        }
        s02Var.q = hm1Var;
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b12(s02 s02Var, g12 g12Var, JsonObject jsonObject, Continuation continuation) {
        super(2, continuation);
        this.a = g12Var;
        this.b = jsonObject;
        this.c = s02Var;
    }
}
