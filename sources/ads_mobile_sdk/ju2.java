package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes.dex */
public final class ju2 implements qj3 {
    public final ks1 a;
    public final ks1 b;
    public final ks1 c;
    public final boolean d;
    public final long e;
    public final boolean f;
    public final boolean g;

    public ju2(ks1 ks1Var, ks1 ks1Var2, ks1 ks1Var3, boolean z, long j, boolean z2, boolean z3) {
        this.a = ks1Var;
        this.b = ks1Var2;
        this.c = ks1Var3;
        this.d = z;
        this.e = j;
        this.f = z2;
        this.g = z3;
    }

    public final /* synthetic */ ListenableFuture c(Boolean bool) {
        return ((hf3) this.b.get()).a();
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture b(Context context, String str, View view, Activity activity) {
        return ((hf3) this.b.get()).b(context, str, view, activity);
    }

    @Override // ads_mobile_sdk.qj3
    public final void a(InputEvent inputEvent) {
        ((hf3) this.b.get()).a(inputEvent);
    }

    @Override // ads_mobile_sdk.qj3
    public final String b() {
        return ((hf3) this.b.get()).b();
    }

    public final /* synthetic */ void c() {
        ((rw3) this.a.get()).a(this.e);
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a(Context context) {
        return ((hf3) this.b.get()).a(context);
    }

    public final /* synthetic */ ListenableFuture b(Boolean bool) {
        return ((hf3) this.b.get()).a();
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a(Context context, String str, View view, Activity activity) {
        return ((hf3) this.b.get()).a(context, str, view, activity);
    }

    @Override // ads_mobile_sdk.qj3
    public final ListenableFuture a() {
        if (((hf3) this.b.get()).c() == kb.ADSHIELD_VERSION_3 && this.f && this.g) {
            return FluentFuture.from(((wl3) this.c.get()).c()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Boolean.FALSE;
                }
            }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda1
                @Override // com.google.common.util.concurrent.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    return this.f$0.a((Boolean) obj);
                }
            }, MoreExecutors.directExecutor());
        }
        if (this.d) {
            return FluentFuture.from(((rw3) this.a.get()).a()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda2
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return qw3.RESULT_UNKNOWN;
                }
            }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda3
                @Override // com.google.common.util.concurrent.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    return this.f$0.a((qw3) obj);
                }
            }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda4
                @Override // com.google.common.util.concurrent.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    return this.f$0.b((Boolean) obj);
                }
            }, MoreExecutors.directExecutor());
        }
        FluentFuture fluentFutureTransformAsync = FluentFuture.from(((wl3) this.c.get()).c()).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Boolean.FALSE;
            }
        }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda6
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.c((Boolean) obj);
            }
        }, MoreExecutors.directExecutor());
        fluentFutureTransformAsync.addListener(new Runnable() { // from class: ads_mobile_sdk.ju2$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c();
            }
        }, MoreExecutors.directExecutor());
        return fluentFutureTransformAsync;
    }

    public final /* synthetic */ ListenableFuture a(Boolean bool) {
        return ((hf3) this.b.get()).a();
    }

    public final /* synthetic */ ListenableFuture a(qw3 qw3Var) {
        return ((wl3) this.c.get()).c();
    }
}
