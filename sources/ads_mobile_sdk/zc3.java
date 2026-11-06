package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zc3 implements m {
    public final g30 a;

    public zc3(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // ads_mobile_sdk.m
    public final Object a(JsonObject jsonObject, j jVar) {
        if (ds1.a(jsonObject, "clear", "").length() > 0) {
            Object objB = this.a.B(jVar);
            return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
        }
        String strA = ds1.a(jsonObject, "cookie", "");
        if (strA.length() > 0) {
            Object objB2 = this.a.b(strA, jVar);
            return objB2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
