package ads_mobile_sdk;

import com.ironsource.C3647i2;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class td1 implements r41 {
    public final lo a;

    public td1(lo backButtonStateDelegate) {
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        this.a = backButtonStateDelegate;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_BACK_BUTTON;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3647i2.e);
        ((mo) this.a).a.set(!(str != null && Boolean.parseBoolean(str)));
        return Unit.INSTANCE;
    }
}
