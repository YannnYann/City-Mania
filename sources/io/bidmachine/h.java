package io.bidmachine;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.h;
import io.bidmachine.util.TopActivityHolder;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class h {
    public static final AtomicBoolean a = new AtomicBoolean(false);

    public static class b implements Application.ActivityLifecycleCallbacks {
        public b() {
        }

        public static /* synthetic */ void a() {
            try {
                SessionManager.get().pause();
            } catch (Throwable unused) {
            }
        }

        public static /* synthetic */ void b() {
            try {
                SessionManager.get().resume();
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            try {
                Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.h$b$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.a();
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                h.a(activity);
                Utils.onBackgroundThread(new Runnable() { // from class: io.bidmachine.h$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.b.b();
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            try {
                h.a(activity);
            } catch (Throwable unused) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public static void a(Context context) {
        if (a.compareAndSet(false, true)) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(new b());
                }
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
    }

    public static Activity a() {
        return TopActivityHolder.INSTANCE.getTopActivity();
    }

    public static void a(Activity activity) {
        TopActivityHolder.INSTANCE.setTopActivity(activity);
    }
}
