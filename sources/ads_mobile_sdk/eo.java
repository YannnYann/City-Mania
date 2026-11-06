package ads_mobile_sdk;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class eo {
    public static cs0 a(Context context, String str) {
        if (str == null || context == null) {
            return null;
        }
        try {
            if ("FireTVFOSDAT".equals(str)) {
                return new cs0(context);
            }
            return null;
        } catch (Exception e) {
            Log.e("OMIDLIB", "Error creating attestation mechanism: ".concat(str), e);
            return null;
        }
    }
}
