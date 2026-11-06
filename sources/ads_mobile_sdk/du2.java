package ads_mobile_sdk;

import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public final class du2 implements cu2 {
    public final iu2 a;

    public du2(iu2 iu2Var) {
        this.a = iu2Var;
    }

    public final void a(mq2 mq2Var) {
        iu2 iu2Var = this.a;
        pt1 pt1Var = iu2.c;
        pt1Var.a("prewarm(%s)", iu2Var.b);
        if (iu2Var.a == null) {
            Object[] objArr = {"Play Store not found."};
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", pt1.a(pt1Var.a, "error: %s", objArr));
                return;
            }
            return;
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        lc3 lc3Var = iu2Var.a;
        gu2 gu2Var = new gu2(iu2Var, taskCompletionSource, mq2Var, taskCompletionSource);
        lc3Var.getClass();
        lc3Var.b(new fc3(lc3Var, taskCompletionSource, taskCompletionSource, gu2Var));
    }
}
