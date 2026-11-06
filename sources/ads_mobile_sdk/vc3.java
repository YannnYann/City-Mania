package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vc3 implements m {
    public final zd3 a;

    public vc3(zd3 sharedSettingsDataStore) {
        Intrinsics.checkNotNullParameter(sharedSettingsDataStore, "sharedSettingsDataStore");
        this.a = sharedSettingsDataStore;
    }

    @Override // ads_mobile_sdk.m
    public final Object a(JsonObject jsonObject, j jVar) {
        if (!jsonObject.has("sga")) {
            return Unit.INSTANCE;
        }
        boolean zA = ds1.a(jsonObject, "sga", false);
        zd3 zd3Var = this.a;
        zd3Var.getClass();
        Object objA = zd3.a(zd3Var, new vd3(zA), jVar);
        if (objA != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objA = Unit.INSTANCE;
        }
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
