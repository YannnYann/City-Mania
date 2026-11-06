package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class zg1 implements r41 {
    public final if1 a;

    public zg1(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_INSPECTOR_UI_STORAGE;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) throws Throwable {
        String str = (String) map.get("persistentData");
        if (str == null) {
            return Unit.INSTANCE;
        }
        if (!StringsKt__StringsKt.isBlank(str)) {
            if1 if1Var = this.a;
            if1Var.getClass();
            Object objB = if1.b(if1Var, str, continuation);
            return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
