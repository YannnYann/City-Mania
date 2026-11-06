package ads_mobile_sdk;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public final class fc3 extends x93 {
    public final /* synthetic */ TaskCompletionSource b;
    public final /* synthetic */ x93 c;
    public final /* synthetic */ lc3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fc3(lc3 lc3Var, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, gu2 gu2Var) {
        super(taskCompletionSource);
        this.d = lc3Var;
        this.b = taskCompletionSource2;
        this.c = gu2Var;
    }

    @Override // ads_mobile_sdk.x93
    public final void a() {
        synchronized (this.d.f) {
            try {
                TaskCompletionSource taskCompletionSource = this.b;
                if (taskCompletionSource != null) {
                    this.d.a(taskCompletionSource);
                }
                if (this.d.l.getAndIncrement() > 0) {
                    this.d.b.a("Already connected to the service.", new Object[0]);
                }
                this.d.a(this.c);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
