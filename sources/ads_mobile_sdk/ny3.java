package ads_mobile_sdk;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ny3 {
    public static final HashMap h = new HashMap();
    public final Context a;
    public final oy3 b;
    public final x9 c;
    public final jy3 d;
    public final boolean e;
    public dt1 f;
    public final Object g = new Object();

    public final dt1 a() {
        dt1 dt1Var;
        synchronized (this.g) {
            dt1Var = this.f;
        }
        return dt1Var;
    }

    public ny3(Context context, oy3 oy3Var, x9 x9Var, jy3 jy3Var, boolean z) {
        this.a = context;
        this.b = oy3Var;
        this.c = x9Var;
        this.d = jy3Var;
        this.e = z;
    }

    public final dt1 a(uu2 uu2Var) throws ly3 {
        Class<?> clsLoadClass;
        synchronized (this) {
            try {
                jv2 jv2Var = uu2Var.a;
                if (jv2Var != null) {
                    String strY = jv2Var.y();
                    HashMap map = h;
                    clsLoadClass = (Class) map.get(strY);
                    if (clsLoadClass == null) {
                        try {
                            jy3 jy3Var = this.d;
                            File file = uu2Var.b;
                            jy3Var.getClass();
                            if (jy3.a(file)) {
                                try {
                                    File file2 = uu2Var.c;
                                    if (!file2.exists()) {
                                        file2.mkdirs();
                                    }
                                    clsLoadClass = new DexClassLoader(uu2Var.b.getAbsolutePath(), file2.getAbsolutePath(), null, this.a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                                    map.put(strY, clsLoadClass);
                                } catch (ClassNotFoundException e) {
                                    e = e;
                                    throw new ly3(2008, e);
                                } catch (IllegalArgumentException e2) {
                                    e = e2;
                                    throw new ly3(2008, e);
                                } catch (SecurityException e3) {
                                    e = e3;
                                    throw new ly3(2008, e);
                                }
                            } else {
                                throw new ly3(2026, "VM did not pass signature verification");
                            }
                        } catch (GeneralSecurityException e4) {
                            throw new ly3(2026, e4);
                        }
                    }
                } else {
                    throw new ly3(4010, "mc");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            dt1 dt1Var = new dt1(clsLoadClass.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.a, "msa-r", uu2Var.a(), null, new Bundle(), 2), this.b, this.c, this.e);
            if (dt1Var.c()) {
                int iB = dt1Var.b();
                if (iB == 0) {
                    return dt1Var;
                }
                throw new ly3(4001, uj.a("ci: ", iB));
            }
            throw new ly3(Sdk.SDKError.Reason.VUNGLE_OIT_CREATION_ERROR_VALUE, "init failed");
        } catch (Exception e5) {
            throw new ly3(2004, e5);
        }
    }

    public final void a(dt1 dt1Var) {
        synchronized (this.g) {
            dt1 dt1Var2 = this.f;
            if (dt1Var2 != null) {
                try {
                    dt1Var2.a();
                } catch (ly3 e) {
                    this.c.a(e.a, -1L, e);
                }
                this.f = dt1Var;
            } else {
                this.f = dt1Var;
            }
        }
    }
}
