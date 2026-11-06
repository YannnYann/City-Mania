package ads_mobile_sdk;

import androidx.webkit.Profile;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i14 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r14 a;
    public final /* synthetic */ Profile b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new i14(this.b, this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        r14 r14Var = this.a;
        return new i14(this.b, r14Var, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ex0 ex0Var = this.a.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"https://fonts.googleapis.com", "https://googleads.g.doubleclick.net", "https://lh3.googleusercontent.com", "https://pagead2.googlesyndication.com", "https://pubads.g.doubleclick.net", "https://redirector.gvt1.com", "https://redirector.gvt1-cn.com", "https://static.doubleclick.net", "https://s0.2mdn.net", "https://s1.2mdn.net", "https://tpc.googlesyndication.com", "https://www.googletagservices.com", "https://www.gstatic.com"});
        Intrinsics.checkNotNullParameter("gads:webview_preconnect_domain_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        for (String url : (List) ex0Var.a("gads:webview_preconnect_domain_list", defaultValue, yr.g)) {
            AtomicBoolean atomicBoolean = az3.a;
            Profile profile = this.b;
            Intrinsics.checkNotNullParameter(profile, "profile");
            Intrinsics.checkNotNullParameter(url, "url");
            if (az3.c.get()) {
                try {
                    profile.preconnect(url);
                } catch (Throwable unused) {
                    az3.c.set(false);
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i14(Profile profile, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.a = r14Var;
        this.b = profile;
    }
}
