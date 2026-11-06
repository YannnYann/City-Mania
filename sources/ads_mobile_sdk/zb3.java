package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class zb3 extends Lambda implements Function0 {
    public final /* synthetic */ JsonObject a;
    public final /* synthetic */ ex0 b;
    public final /* synthetic */ Deferred c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zb3(ex0 ex0Var, JsonObject jsonObject, Deferred deferred) {
        super(0);
        this.a = jsonObject;
        this.b = ex0Var;
        this.c = deferred;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        s11 s11Var = s11.CUI_NAME_ADREQUEST_PARSERESPONSE;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        JsonObject jsonObject = this.a;
        ex0 ex0Var = this.b;
        Deferred deferred = this.c;
        rr3 rr3VarA = hs3.a(s11Var, listEmptyList, true);
        try {
            JsonArray asJsonArray = jsonObject.getAsJsonArray("responses");
            int i = 0;
            JsonObject asJsonObject = !asJsonArray.isEmpty() ? asJsonArray.get(0).getAsJsonObject() : null;
            ds1 ds1Var = ds1.a;
            JsonArray asJsonArray2 = asJsonObject != null ? asJsonObject.getAsJsonArray("ad_configs") : null;
            ArrayList arrayList = new ArrayList();
            if (asJsonArray2 != null) {
                int i2 = 0;
                for (JsonElement jsonElement : asJsonArray2) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    List list = i2.J0;
                    JsonObject asJsonObject2 = jsonElement2.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                    i2 i2VarA = c2.a(asJsonObject2, i2, deferred);
                    if (i2VarA != null) {
                        arrayList.add(i2VarA);
                    }
                    i2 = i3;
                }
            }
            zy zyVarA = wy.a(asJsonObject != null ? asJsonObject.getAsJsonObject("common") : null, ex0Var);
            ds1 ds1Var2 = ds1.a;
            JsonElement jsonElement3 = jsonObject.get("actions");
            JsonArray asJsonArray3 = jsonElement3 != null ? jsonElement3.getAsJsonArray() : null;
            ArrayList arrayList2 = new ArrayList();
            if (asJsonArray3 != null) {
                for (JsonElement jsonElement4 : asJsonArray3) {
                    int i4 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement5 = jsonElement4;
                    Intrinsics.checkNotNull(jsonElement5);
                    JsonObject asJsonObject3 = jsonElement5.getAsJsonObject();
                    Intrinsics.checkNotNullExpressionValue(asJsonObject3, "getAsJsonObject(...)");
                    yb3 yb3VarA = xb3.a(asJsonObject3);
                    if (yb3VarA != null) {
                        arrayList2.add(yb3VarA);
                    }
                    i = i4;
                }
            }
            ac3 ac3Var = new ac3(arrayList, zyVarA, arrayList2);
            CloseableKt.closeFinally(rr3VarA, null);
            return ac3Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }
}
