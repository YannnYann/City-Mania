package ads_mobile_sdk;

import android.app.Activity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends Lambda implements Function1 {
    public final /* synthetic */ Activity a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(Activity activity) {
        super(1);
        this.a = activity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        n it = (n) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        it.onActivityStopped(this.a);
        return Unit.INSTANCE;
    }
}
