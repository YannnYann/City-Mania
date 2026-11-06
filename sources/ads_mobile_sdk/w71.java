package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Call;

/* JADX INFO: loaded from: classes.dex */
public final class w71 extends Lambda implements Function3 {
    public final /* synthetic */ Call a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w71(Call call) {
        super(3);
        this.a = call;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Intrinsics.checkNotNullParameter((Throwable) obj, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter((q01) obj2, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter((CoroutineContext) obj3, "<anonymous parameter 2>");
        this.a.cancel();
        return Unit.INSTANCE;
    }
}
