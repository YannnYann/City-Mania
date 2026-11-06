package ads_mobile_sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class lc3 {
    public static final HashMap o = new HashMap();
    public final Context a;
    public final pt1 b;
    public final String c;
    public final ArrayList d;
    public final HashSet e;
    public final Object f;
    public boolean g;
    public final Intent h;
    public final hc3 i;
    public final WeakReference j;
    public final IBinder.DeathRecipient k;
    public final AtomicInteger l;
    public kc3 m;
    public IInterface n;

    public final void b(x93 x93Var) {
        Handler handler;
        HashMap map = o;
        synchronized (map) {
            try {
                if (!map.containsKey(this.c)) {
                    HandlerThread handlerThread = new HandlerThread(this.c, 10);
                    handlerThread.start();
                    map.put(this.c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.c);
            } catch (Throwable th) {
                throw th;
            }
        }
        handler.post(x93Var);
    }

    public lc3(Context context, pt1 pt1Var, Intent intent, hc3 hc3Var) {
        this(context, pt1Var, intent, hc3Var, 0);
    }

    public lc3(Context context, pt1 pt1Var, Intent intent, hc3 hc3Var, int i) {
        this.d = new ArrayList();
        this.e = new HashSet();
        this.f = new Object();
        this.k = new IBinder.DeathRecipient() { // from class: ads_mobile_sdk.lc3$$ExternalSyntheticLambda1
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                this.f$0.a();
            }
        };
        this.l = new AtomicInteger(0);
        this.a = context;
        this.b = pt1Var;
        this.c = "PrewarmService";
        this.h = intent;
        this.i = hc3Var;
        this.j = new WeakReference(null);
    }

    public final void a(final TaskCompletionSource taskCompletionSource) {
        this.e.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: ads_mobile_sdk.lc3$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f$0.a(taskCompletionSource, task);
            }
        });
    }

    public final void a(x93 x93Var) {
        if (this.n == null && !this.g) {
            this.b.a("Initiate binding to the service.", new Object[0]);
            this.d.add(x93Var);
            kc3 kc3Var = new kc3(this);
            this.m = kc3Var;
            this.g = true;
            if (this.a.bindService(this.h, kc3Var, 1)) {
                return;
            }
            this.b.a("Failed to bind to the service.", new Object[0]);
            this.g = false;
            for (x93 x93Var2 : this.d) {
                mc3 mc3Var = new mc3();
                TaskCompletionSource taskCompletionSource = x93Var2.a;
                if (taskCompletionSource != null) {
                    taskCompletionSource.trySetException(mc3Var);
                }
            }
            this.d.clear();
            return;
        }
        if (this.g) {
            this.b.a("Waiting to bind to the service.", new Object[0]);
            this.d.add(x93Var);
        } else {
            x93Var.run();
        }
    }

    public final /* synthetic */ void a(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f) {
            this.e.remove(taskCompletionSource);
        }
    }

    public final void a() {
        this.b.a("reportBinderDeath", new Object[0]);
        if (this.j.get() == null) {
            this.b.a("%s : Binder has died.", this.c);
            for (x93 x93Var : this.d) {
                RemoteException remoteException = new RemoteException(this.c + " : Binder has died.");
                TaskCompletionSource taskCompletionSource = x93Var.a;
                if (taskCompletionSource != null) {
                    taskCompletionSource.trySetException(remoteException);
                }
            }
            this.d.clear();
            synchronized (this.f) {
                try {
                    Iterator it = this.e.iterator();
                    while (it.hasNext()) {
                        ((TaskCompletionSource) it.next()).trySetException(new RemoteException(this.c + " : Binder has died."));
                    }
                    this.e.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new ClassCastException();
    }
}
