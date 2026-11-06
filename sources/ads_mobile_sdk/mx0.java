package ads_mobile_sdk;

import android.util.Log;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class mx0 implements r41 {
    public final CoroutineScope a;

    public mx0(CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = uiScope;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_FLUID_HEIGHT;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("height");
        Integer intOrNull = str != null ? StringsKt__StringNumberConversionsKt.toIntOrNull(str) : null;
        if (intOrNull != null && r31Var.a() != intOrNull.intValue()) {
            r31Var.a(intOrNull.intValue());
            Log.v("GoogleMobileAds", "New fluid height: " + intOrNull);
            xs3.a(this.a, new lx0(r31Var, null));
        }
        return Unit.INSTANCE;
    }
}
