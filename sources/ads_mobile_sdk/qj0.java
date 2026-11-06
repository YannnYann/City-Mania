package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class qj0 extends Lambda implements Function1 {
    public final /* synthetic */ ok0 a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qj0(ok0 ok0Var, boolean z) {
        super(1);
        this.a = ok0Var;
        this.b = z;
    }

    @Override // kotlin.jvm.functions.Function1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke(Map.Entry it) {
        String str;
        Intrinsics.checkNotNullParameter(it, "it");
        if (this.a.f.M0() && this.b && (str = (String) it.getValue()) != null && str.length() > 500) {
            return it.getKey() + " = [Debug dialog string omitted from screen due to length limit. Please use the Share option or Copy button to retrieve it.]";
        }
        return it.getKey() + " = " + it.getValue();
    }
}
