package ads_mobile_sdk;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public final class y9 extends x9 {
    public final qt1 a;

    public y9(qt1 qt1Var) {
        new TaskCompletionSource().getTask();
        this.a = qt1Var;
    }

    @Override // ads_mobile_sdk.x9
    public final Task a(int i, long j, Exception exc) {
        ((st1) this.a).a(i, j, exc, null);
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setResult(Boolean.TRUE);
        return taskCompletionSource.getTask();
    }
}
