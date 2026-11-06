package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ao3 implements m {
    public final if1 a;

    public ao3(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // ads_mobile_sdk.m
    public final Object a(JsonObject jsonObject, j jVar) throws Throwable {
        String strA = ds1.a(jsonObject, "test_mode_enabled", "");
        if (StringsKt__StringsKt.isBlank(strA)) {
            return Unit.INSTANCE;
        }
        if1 if1Var = this.a;
        boolean z = Boolean.parseBoolean(strA);
        if1Var.getClass();
        Object objB = if1.b(if1Var, z, jVar);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }
}
