package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes.dex */
public final class o60 extends Lambda implements Function1 {
    public final /* synthetic */ UrlRequest a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o60(UrlRequest urlRequest) {
        super(1);
        this.a = urlRequest;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        this.a.cancel();
        return Unit.INSTANCE;
    }
}
