package io.bidmachine.rendering.internal;

import android.text.TextUtils;
import android.util.Log;
import com.ironsource.C3522b4;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t {
    public static boolean a = false;

    public static void a(boolean z) {
        a = z;
    }

    public static boolean b() {
        return a;
    }

    public static void a(Object obj, String str, Object... objArr) {
        a(obj, str, true, objArr);
    }

    public static void b(Object obj, String str, Object... objArr) {
        a(obj, str, false, objArr);
    }

    public static void a(String str, Object... objArr) {
        a(null, str, true, objArr);
    }

    public static void b(String str, Object... objArr) {
        a(null, str, false, objArr);
    }

    public static void a(Object obj, String str, boolean z, Object... objArr) {
        if (a()) {
            if (objArr != null && objArr.length != 0) {
                try {
                    str = String.format(str, objArr);
                } catch (Throwable unused) {
                }
            }
            if (obj != null) {
                String string = obj.toString();
                if (!TextUtils.isEmpty(string)) {
                    str = C3522b4.j.d + string + "] " + str;
                }
            }
            if (z) {
                Log.e("AdaptiveRendering", str);
            } else {
                Log.d("AdaptiveRendering", str);
            }
        }
    }

    public static void b(Throwable th) {
        a(th);
    }

    public static void a(Throwable th) {
        if (a()) {
            if (th instanceof UnknownHostException) {
                th.printStackTrace();
            } else {
                Log.w("AdaptiveRendering", th);
            }
        }
    }

    public static boolean a() {
        return b();
    }
}
