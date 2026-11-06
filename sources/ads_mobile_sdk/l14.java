package ads_mobile_sdk;

import androidx.webkit.Profile;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class l14 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Profile a;
    public final /* synthetic */ String b;
    public final /* synthetic */ r14 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l14(Profile profile, String str, r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.a = profile;
        this.b = str;
        this.c = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new l14(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((l14) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = az3.a;
        Profile profile = this.a;
        String url = this.b;
        rz executor = this.c.g.d;
        Intrinsics.checkNotNullParameter(profile, "profile");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (az3.d.get()) {
            try {
                profile.prefetchUrlAsync(url, null, executor, new wy3());
            } catch (Throwable unused) {
                az3.d.set(false);
            }
        }
        return Unit.INSTANCE;
    }
}
