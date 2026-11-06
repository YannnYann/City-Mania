package ads_mobile_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.common.base.Splitter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends nc1 implements Application.ActivityLifecycleCallbacks {
    public final Application c;
    public final WeakReference d;
    public final CoroutineScope e;
    public final ex0 f;
    public final tx g;
    public final LinkedHashSet h;
    public final LinkedHashSet i;
    public r j;
    public Activity k;
    public boolean l;
    public Job m;
    public boolean n;
    public boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(Context applicationContext, Application application, WeakReference firstContextReference, CoroutineScope backgroundScope, ex0 flags, tx clock) {
        super(s11.CUI_NAME_SDKINIT_ACTIVITY_TRACKER, 2);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(firstContextReference, "firstContextReference");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.c = application;
        this.d = firstContextReference;
        this.e = backgroundScope;
        this.f = flags;
        this.g = clock;
        this.h = new LinkedHashSet();
        this.i = new LinkedHashSet();
        this.j = r.b;
        this.o = s.a(applicationContext);
    }

    public final void a(n listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this) {
            this.i.add(new WeakReference(listener));
        }
    }

    public final void b(n listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this) {
            try {
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    if (weakReference.get() == null || Intrinsics.areEqual(weakReference.get(), listener)) {
                        it.remove();
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a(activity, r.e);
        a(new x(activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        synchronized (this) {
            try {
                if (Intrinsics.areEqual(activity, this.k)) {
                    this.k = null;
                    this.j = r.b;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        a(new y(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a(activity, r.d);
        a(new z(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a(activity, r.h);
        a(new a0(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
        a(new b0(activity, outState));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a(activity, r.g);
        a(new c0(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a(activity, r.c);
        a(new d0(activity));
    }

    @Override // ads_mobile_sdk.nc1
    public final Object u(Continuation continuation) {
        return a(this);
    }

    public final boolean i() {
        boolean z;
        synchronized (this) {
            z = this.o;
        }
        return z;
    }

    public final Activity g() {
        Activity activity;
        synchronized (this) {
            activity = this.k;
        }
        return activity;
    }

    public final void a(Function1 function1) {
        synchronized (this) {
            Iterator it = CollectionsKt___CollectionsKt.toList(this.i).iterator();
            while (it.hasNext()) {
                n nVar = (n) ((WeakReference) it.next()).get();
                if (nVar != null) {
                    try {
                        function1.invoke(nVar);
                    } catch (Exception e) {
                        Splitter splitter = f01.a;
                        f01.c("Failed to dispatch Activity lifecycle event", e);
                    }
                }
            }
            CollectionsKt__MutableCollectionsKt.removeAll(this.i, t.a);
        }
    }

    public final void a(Activity activity, r activityState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(activityState, "activityState");
        synchronized (this) {
            try {
                if (Intrinsics.areEqual(activity, this.k)) {
                    this.j = activityState;
                } else {
                    if (activityState.a < this.j.a) {
                        return;
                    }
                    this.k = activity;
                    this.j = activityState;
                }
                if (activityState == r.h) {
                    this.l = false;
                    if (i()) {
                        f01.b("App is now foregrounded", null);
                        this.o = false;
                        Job job = this.m;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, null, 1, null);
                        }
                        this.m = null;
                        this.n = true;
                        Duration.Companion companion = Duration.Companion;
                        this.g.getClass();
                        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                        for (ox0 ox0Var : this.h) {
                            CoroutineScope coroutineScope = this.e;
                            u block = new u(ox0Var, duration, null);
                            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                            Intrinsics.checkNotNullParameter(context, "context");
                            Intrinsics.checkNotNullParameter(block, "block");
                            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                        }
                    }
                } else if (activityState == r.c) {
                    this.l = true;
                    CoroutineScope coroutineScope2 = this.e;
                    w block2 = new w(this, null);
                    EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "context");
                    Intrinsics.checkNotNullParameter(block2, "block");
                    this.m = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(ox0 listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this) {
            this.h.remove(listener);
        }
    }

    public static /* synthetic */ q01 a(f0 f0Var) {
        Unit unit;
        synchronized (f0Var) {
            try {
                Context context = (Context) f0Var.d.get();
                if (context != null && (context instanceof Activity)) {
                    f0Var.k = (Activity) context;
                    f0Var.j = r.f;
                }
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        f0Var.c.registerActivityLifecycleCallbacks(f0Var);
        boolean zI = f0Var.i();
        Splitter splitter = f01.a;
        f01.b("App is initially " + (zI ? "backgrounded" : "foregrounded"), null);
        Duration.Companion companion = Duration.Companion;
        f0Var.g.getClass();
        long duration = DurationKt.toDuration(tx.b(), DurationUnit.MILLISECONDS);
        synchronized (f0Var) {
            try {
                Iterator it = f0Var.h.iterator();
                while (it.hasNext()) {
                    xs3.a(f0Var.e, new e0(zI, (ox0) it.next(), duration, null));
                }
                unit = Unit.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new q01(unit);
    }
}
