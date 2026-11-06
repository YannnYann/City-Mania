package ads_mobile_sdk;

import android.os.Build;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class td2 {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        pe2.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        pe2.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        pe2.a(jSONObject, R6.F, C3522b4.d);
        return jSONObject;
    }
}
