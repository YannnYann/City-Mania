package ads_mobile_sdk;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public abstract class jj3 implements cf3 {
    public final String a;
    public final String b;
    public final yw1 c;
    public final xf d;
    public final qr3 e;

    public abstract void a(Method method, xf xfVar);

    @Override // java.util.concurrent.Callable
    public final Object call() {
        try {
            this.e.b();
            Method methodA = ((zw1) this.c).a(this.a, this.b);
            if (methodA != null) {
                a(methodA, this.d);
            }
            this.e.a();
            return null;
        } catch (Throwable th) {
            try {
                this.e.a(th);
                throw th;
            } catch (Throwable th2) {
                this.e.a();
                throw th2;
            }
        }
    }

    public jj3(String str, String str2, xf xfVar, yw1 yw1Var, qr3 qr3Var) {
        this.a = str;
        this.b = str2;
        this.d = xfVar;
        this.c = yw1Var;
        this.e = qr3Var;
    }
}
