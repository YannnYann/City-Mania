package ads_mobile_sdk;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
public abstract class nd2 extends AsyncTask {
    public ld2 a;
    public final md2 b;

    public nd2(gl3 gl3Var) {
        this.b = gl3Var;
    }

    public final void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        ld2 ld2Var = this.a;
        if (ld2Var != null) {
            od2 od2Var = (od2) ld2Var;
            od2Var.c = null;
            od2Var.a();
        }
    }
}
