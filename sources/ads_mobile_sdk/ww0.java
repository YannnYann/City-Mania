package ads_mobile_sdk;

import android.os.Build;
import com.google.gson.JsonObject;
import com.ironsource.Nc;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;

/* JADX INFO: loaded from: classes.dex */
public final class ww0 {
    public static final /* synthetic */ ww0 a = new ww0();
    public static final JsonObject b;

    static {
        JsonObject jsonObject = new JsonObject();
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            jsonObject.addProperty("4", (Number) 1);
            jsonObject.addProperty("5", (Number) 1);
            jsonObject.addProperty("6", Double.valueOf(0.5d));
            jsonObject.addProperty("9", Double.valueOf(0.5d));
            jsonObject.addProperty("0", (Number) 0);
            jsonObject.addProperty(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION, (Number) 0);
            jsonObject.addProperty("3", (Number) 0);
            jsonObject.addProperty(Nc.e, (Number) 0);
            jsonObject.addProperty("12", (Number) (-1));
            jsonObject.addProperty("1", (Number) (-1));
            if (i >= 33) {
                jsonObject.addProperty("14", (Number) (-1));
            }
            jsonObject.addProperty("13", (Number) (-1));
            if (i >= 35) {
                jsonObject.addProperty("15", (Number) (-1));
                jsonObject.addProperty("16", (Number) (-1));
            }
            jsonObject.addProperty("8", (Number) (-1));
            jsonObject.addProperty("10", (Number) (-1));
            jsonObject.addProperty("11", (Number) (-1));
        }
        b = jsonObject;
    }
}
