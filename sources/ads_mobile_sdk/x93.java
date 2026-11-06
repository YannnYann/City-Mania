package ads_mobile_sdk;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public abstract class x93 implements Runnable {
    public final TaskCompletionSource a;

    public abstract void a();

    public x93() {
        this.a = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e) {
            TaskCompletionSource taskCompletionSource = this.a;
            if (taskCompletionSource != null) {
                taskCompletionSource.trySetException(e);
            }
        }
    }

    public x93(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }
}
