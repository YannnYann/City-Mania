package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.OkHttpClient;
import okhttp3.Request;

/* JADX INFO: loaded from: classes.dex */
public final class j71 extends Lambda implements Function0 {
    public final /* synthetic */ Ref$ObjectRef a;
    public final /* synthetic */ Request b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j71(Ref$ObjectRef ref$ObjectRef, Request request) {
        super(0);
        this.a = ref$ObjectRef;
        this.b = request;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "HttpClient " + ((OkHttpClient) this.a.element).connectionPool().connectionCount() + " connections before: " + this.b.url().uri();
    }
}
