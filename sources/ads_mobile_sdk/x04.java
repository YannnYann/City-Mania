package ads_mobile_sdk;

import androidx.webkit.Profile;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x04 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Profile a;
    public final /* synthetic */ r14 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x04(Profile profile, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.a = profile;
        this.b = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new x04(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new x04(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = az3.a;
        Profile profile = this.a;
        ex0 ex0Var = this.b.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"https://fonts.googleapis.com", "https://googleads.g.doubleclick.net", "https://lh3.googleusercontent.com", "https://pagead2.googlesyndication.com", "https://pubads.g.doubleclick.net", "https://redirector.gvt1.com", "https://redirector.gvt1-cn.com", "https://static.doubleclick.net", "https://s0.2mdn.net", "https://s1.2mdn.net", "https://tpc.googlesyndication.com", "https://www.googletagservices.com", "https://www.gstatic.com"});
        Intrinsics.checkNotNullParameter("gads:webview_quic_hints_domain_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Set<String> hosts = CollectionsKt___CollectionsKt.toSet((List) ex0Var.a("gads:webview_quic_hints_domain_list", defaultValue, yr.g));
        Intrinsics.checkNotNullParameter(profile, "profile");
        Intrinsics.checkNotNullParameter(hosts, "hosts");
        if (az3.b.get()) {
            try {
                profile.addQuicHints(hosts);
            } catch (Throwable unused) {
                az3.b.set(false);
            }
        }
        return Unit.INSTANCE;
    }
}
