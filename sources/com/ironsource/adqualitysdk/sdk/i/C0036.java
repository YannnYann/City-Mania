package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ć, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0036 extends AbstractC1013 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public WeakReference f402;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public WeakReference f403;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final WeakHashMap f404 = new WeakHashMap();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            synchronized (AbstractC1013.class) {
                try {
                    if (this.f403 == null) {
                        this.f403 = new WeakReference(activity);
                        AbstractC0272.m1214(new C0040(activity));
                        AbstractC1013.class.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            Iterator it = m1595().iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityCreated(activity, bundle);
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("DaTEq9mlKhEsrciw26UDNCO736zWrBQrL7rdoNus\n", "SsirybjJZng=\n"), StringFog.decrypt("BFES3SNp5KphTA7zMj3ksihXGfEjLOywJEc=\n", "QSNgslFJjcQ=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        ArrayList arrayList;
        try {
            synchronized (this) {
                arrayList = new ArrayList(this.f3815);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityDestroyed(activity);
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("ghuRpzUWzmSjEp28NxbnQawEiqA6H/BeoAWIrDcf\n", "xXf+xVR6gg0=\n"), StringFog.decrypt("aIIee+1cUAINnwJV/AhQGkSEFVD6D00eQokJcA==\n", "LfBsFJ98OWw=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ArrayList arrayList;
        try {
            synchronized (this) {
                arrayList = new ArrayList(this.f3815);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityPaused(activity);
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("/oVW6bhUx3nfjFryulTuXNCaTe63XflD3JtP4rpd\n", "uek5i9k4ixA=\n"), StringFog.decrypt("bTUvm4sRgoEIKDO1mkWCmUEzJKSYRJiKTA==\n", "KEdd9Pkx6+8=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        ArrayList arrayList;
        try {
            this.f403 = new WeakReference(activity);
            AbstractC0272.m1214(new C0040(activity));
            synchronized (this) {
                arrayList = new ArrayList(this.f3815);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityResumed(activity);
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("qnYgAAlXBNqLfywbC1ct/4RpOwcGXjrgiGg5Cwte\n", "7RpPYmg7SLM=\n"), StringFog.decrypt("KxNzsSQtNlhODm+fNXk2QAcVeIwzfipbCwU=\n", "bmEB3lYNXzY=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ArrayList arrayList;
        try {
            synchronized (this) {
                arrayList = new ArrayList(this.f3815);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivitySaveInstanceState(activity, bundle);
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("aMLZ8WxpoTZJy9XqbmmIE0bdwvZjYJ8MStzA+m5g\n", "L662kw0F7V8=\n"), StringFog.decrypt("eUBZH6P8tyccXUUxsqi3P1VGUiOwqrsAUkFfEb+/uxpIU18V\n", "PDIrcNHc3kk=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        try {
            if (this.f403 == null) {
                this.f403 = new WeakReference(activity);
                AbstractC0272.m1214(new C0040(activity));
            }
            synchronized (this) {
                this.f404.put(activity, Boolean.TRUE);
            }
            Iterator it = m1595().iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityStarted(activity);
            }
            if (activity.getLocalClassName().equals(StringFog.decrypt("1GJuKDypFTfOPmcoOasdOtJ/LVMnrgg652Fifyy1LDHYdXpHKrMVNd55eg==\n", "tw0DBknHfEM=\n"))) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f404.size() == 1 && !this.f3816) {
                        m1051(activity);
                    }
                } finally {
                }
            }
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("XP4rY66+h5d99yd4rL6usnLhMGSht7mtfuAyaKy3\n", "G5JEAc/Sy/4=\n"), StringFog.decrypt("HV//gTbgCUl4QuOvJ7QJUTFZ9L0woRJTPUk=\n", "WC2N7kTAYCc=\n"), (Throwable) e, false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        int size;
        try {
            Iterator it = m1595().iterator();
            while (it.hasNext()) {
                ((InterfaceC0443) it.next()).onActivityStopped(activity);
            }
            this.f3816 = activity.isChangingConfigurations();
            synchronized (this) {
                try {
                    if (!this.f404.containsKey(activity) || activity.getLocalClassName().equals(StringFog.decrypt("D0KdTPNCc5sVHpRM9kB7lglf3jfoRW6WPEGRG+NeSp0DVYkj5VhzmQVZiQ==\n", "bC3wYoYsGu8=\n"))) {
                        size = -1;
                    } else {
                        this.f404.remove(activity);
                        size = this.f404.size();
                    }
                } finally {
                }
            }
            if (size <= -1 || size != 0 || this.f3816) {
                return;
            }
            m1053(activity);
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("k+sxGq4bfray4j0BrBtXk730Kh2hEkCMsfUoEawS\n", "1IdeeM93Mt8=\n"), StringFog.decrypt("2Om2wBTRb1O99KruBYVvS/TvvfwSnnZN+P8=\n", "nZvEr2bxBj0=\n"), (Throwable) e, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean mo1050() {
        return this.f404.size() > 0;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m1051(Activity activity) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f3815);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0443) it.next()).mo1190(activity);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void mo1054(Application application, Activity activity) {
        try {
            if (this.f402 == null) {
                this.f402 = new WeakReference(application);
                if (activity != null) {
                    this.f403 = new WeakReference(activity);
                    AbstractC0272.m1214(new C0040(activity));
                    synchronized (this) {
                        this.f404.put(activity, Boolean.TRUE);
                    }
                }
                application.registerActivityLifecycleCallbacks(this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1013
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Activity mo1052() {
        WeakReference weakReference = this.f403;
        if (weakReference != null) {
            return (Activity) weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1053(Activity activity) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f3815);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InterfaceC0443) it.next()).mo1191(activity);
        }
    }
}
