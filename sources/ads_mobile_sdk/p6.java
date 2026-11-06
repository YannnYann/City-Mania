package ads_mobile_sdk;

import android.app.Activity;
import android.net.Uri;
import com.ironsource.C3522b4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p6 implements ai1, n {
    public final r6 a;
    public final ec3 b;
    public final i2 c;
    public final j53 d;
    public final ex0 e;
    public final Class f;
    public final AtomicBoolean g;

    public p6(r6 adQualityDataManager, ec3 serverTransaction, i2 adConfiguration, Set requestTypes, j53 requestType, ex0 flags, f0 activityTracker, Class adActivityClass) {
        Intrinsics.checkNotNullParameter(adQualityDataManager, "adQualityDataManager");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(requestTypes, "requestTypes");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(adActivityClass, "adActivityClass");
        this.a = adQualityDataManager;
        this.b = serverTransaction;
        this.c = adConfiguration;
        this.d = requestType;
        this.e = flags;
        this.f = adActivityClass;
        this.g = new AtomicBoolean(false);
        activityTracker.a(this);
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.f.isInstance(activity) && this.g.compareAndSet(true, false)) {
            q7 q7Var = (q7) this.a;
            i40.a(q7Var.d, q7Var.e, new k7(q7Var, null));
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.g.get()) {
            q7 q7Var = (q7) this.a;
            i40.a(q7Var.d, q7Var.e, new y6(q7Var, null));
        }
    }

    @Override // ads_mobile_sdk.n
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (this.g.get()) {
            q7 q7Var = (q7) this.a;
            i40.a(q7Var.d, q7Var.e, new m7(q7Var, null));
        }
    }

    @Override // ads_mobile_sdk.ai1
    public final Object p(Continuation continuation) {
        ex0 ex0Var = this.e;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:ad_quality_metrics:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:ad_quality_metrics:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            switch (this.d.ordinal()) {
                case 0:
                case 2:
                case 3:
                case 5:
                    break;
                case 1:
                case 4:
                case 6:
                case 7:
                case 8:
                    if (this.c.E.isEmpty()) {
                        return Unit.INSTANCE;
                    }
                    this.g.set(true);
                    r6 r6Var = this.a;
                    String gwsQueryId = this.b.b.b.h;
                    List list = this.c.E;
                    ArrayList urls = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String string = ((Uri) it.next()).toString();
                        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        urls.add(string);
                    }
                    q7 q7Var = (q7) r6Var;
                    q7Var.getClass();
                    Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
                    Intrinsics.checkNotNullParameter(urls, "urls");
                    i40.a(q7Var.d, q7Var.e, new c7(q7Var, gwsQueryId, urls, null));
                    return Unit.INSTANCE;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object o(Continuation continuation) {
        if (this.g.get()) {
            q7 q7Var = (q7) this.a;
            i40.a(q7Var.d, q7Var.e, new e7(q7Var, null));
        }
        return Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object h(Continuation continuation) {
        if (this.g.compareAndSet(true, false)) {
            q7 q7Var = (q7) this.a;
            i40.a(q7Var.d, q7Var.e, new g7(q7Var, null));
        }
        return Unit.INSTANCE;
    }
}
