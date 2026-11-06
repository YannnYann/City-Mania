package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.Locale;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class fz1 {
    public final ix1 a;
    public final CoroutineScope b;

    public fz1(ix1 mraidAfmaDispatcher, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = mraidAfmaDispatcher;
        this.b = uiScope;
    }

    public final Unit a(Map map, r31 r31Var) {
        String lowerCase;
        Boolean booleanStrictOrNull;
        ay0 ay0Var = r31Var.p;
        if (ay0Var == null) {
            BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new dz1(this, r31Var, null), 3, null);
            return Unit.INSTANCE;
        }
        String str = (String) map.get("forceOrientation");
        String str2 = (String) map.get("allowOrientationChange");
        boolean zBooleanValue = (str2 == null || (booleanStrictOrNull = StringsKt__StringsKt.toBooleanStrictOrNull(str2)) == null) ? true : booleanStrictOrNull.booleanValue();
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ez1(ay0Var, Intrinsics.areEqual(lowerCase, C3522b4.i.C) ? 6 : Intrinsics.areEqual(lowerCase, C3522b4.i.D) ? 7 : zBooleanValue ? -1 : 14, null), 3, null);
        return Unit.INSTANCE;
    }
}
