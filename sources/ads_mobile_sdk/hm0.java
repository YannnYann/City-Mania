package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class hm0 {
    public static final /* synthetic */ KProperty[] b = {kk.a(hm0.class, "thirdPartyEventEmitter", "getThirdPartyEventEmitter()Lcom/google/android/libraries/ads/mobile/sdk/internal/event/ThirdPartyEventEmitter;", 0)};
    public final tn3 a = new tn3(null);

    public final no3 a() {
        return (no3) this.a.getValue(this, b[0]);
    }

    public final void a(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        no3 no3VarA = a();
        if (no3VarA != null) {
            gp3 gp3Var = (gp3) no3VarA;
            Intrinsics.checkNotNullParameter(adError, "adError");
            Job job = gp3Var.g;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, null, 1, null);
            }
            CoroutineScope coroutineScope = gp3Var.a;
            po3 block = new po3(gp3Var, adError, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public final void b() throws InterruptedException {
        no3 no3VarA = a();
        if (no3VarA != null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new oo3((gp3) no3VarA, null), 1, null);
        }
    }

    public final void c() throws InterruptedException {
        no3 no3VarA = a();
        if (no3VarA != null) {
            gp3 gp3Var = (gp3) no3VarA;
            BuildersKt__BuildersKt.runBlocking$default(null, new qo3(gp3Var, null), 1, null);
            h2 h2Var = gp3Var.b.q0;
            if (h2Var == h2.d || h2Var == h2.e) {
                CoroutineScope coroutineScope = gp3Var.a;
                ro3 block = new ro3(gp3Var, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        }
    }

    public final void d() {
        no3 no3VarA = a();
        if (no3VarA != null) {
            gp3 gp3Var = (gp3) no3VarA;
            CoroutineScope coroutineScope = gp3Var.a;
            so3 block = new so3(gp3Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public final void e() {
        no3 no3VarA = a();
        if (no3VarA != null) {
            ((gp3) no3VarA).a();
        }
    }

    public final void f() {
        no3 no3VarA = a();
        if (no3VarA != null) {
            gp3 gp3Var = (gp3) no3VarA;
            CoroutineScope coroutineScope = gp3Var.a;
            bp3 block = new bp3(gp3Var, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }
}
