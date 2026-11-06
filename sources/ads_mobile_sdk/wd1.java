package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wd1 implements m {
    public final if1 a;

    public wd1(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // ads_mobile_sdk.m
    public final Object a(JsonObject jsonObject, j jVar) throws Throwable {
        String strA = ds1.a(jsonObject, "gesture", "");
        if (Intrinsics.areEqual(strA, "shake")) {
            if1 if1Var = this.a;
            vd1 vd1Var = vd1.SHAKE;
            if1Var.getClass();
            Object objA = if1.a(if1Var, vd1Var, jVar);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(strA, "flick")) {
            if1 if1Var2 = this.a;
            vd1 vd1Var2 = vd1.FLICK;
            if1Var2.getClass();
            Object objA2 = if1.a(if1Var2, vd1Var2, jVar);
            return objA2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA2 : Unit.INSTANCE;
        }
        if1 if1Var3 = this.a;
        vd1 vd1Var3 = vd1.NONE;
        if1Var3.getClass();
        Object objA3 = if1.a(if1Var3, vd1Var3, jVar);
        return objA3 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA3 : Unit.INSTANCE;
    }
}
