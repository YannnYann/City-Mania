package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import okhttp3.Call;

/* JADX INFO: loaded from: classes.dex */
public final class u71 extends Lambda implements Function1 {
    public final /* synthetic */ Call a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u71(Call call) {
        super(1);
        this.a = call;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        try {
            this.a.cancel();
        } catch (Throwable unused) {
        }
        return Unit.INSTANCE;
    }
}
