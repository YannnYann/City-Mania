package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class ot3 implements Runnable {
    public final /* synthetic */ rt3 a;

    public ot3(rt3 rt3Var) {
        this.a = rt3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        gl3 gl3Var = this.a.e;
        gl3Var.b.a(new rd2(gl3Var));
    }
}
