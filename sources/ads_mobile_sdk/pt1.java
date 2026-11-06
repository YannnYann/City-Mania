package ads_mobile_sdk;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.C3522b4;
import java.util.IllegalFormatException;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class pt1 {
    public final String a;

    public final void b(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            Log.w("PlayCore", a(this.a, str, objArr));
        }
    }

    public pt1(String str) {
        this.a = ("UID: [" + Process.myUid() + "]  PID: [" + Process.myPid() + "] ") + str;
    }

    public static String a(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format " + str2, e);
                str2 = str2 + " [" + TextUtils.join(", ", objArr) + C3522b4.j.e;
            }
        }
        return str + " : " + str2;
    }

    public final void a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", a(this.a, str, objArr));
        }
    }
}
