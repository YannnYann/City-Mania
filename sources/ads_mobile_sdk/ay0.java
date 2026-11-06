package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface ay0 {
    default Object a(boolean z, hl0 hl0Var) {
        return Unit.INSTANCE;
    }

    void a(ky kyVar);

    default Unit a(Continuation continuation) {
        return Unit.INSTANCE;
    }
}
