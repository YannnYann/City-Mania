package ads_mobile_sdk;

import android.graphics.Color;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m42 {
    public static final Integer a(JsonObject jsonObject, String str) {
        int i = v42.h;
        try {
            JsonObject jsonObjectA = ds1.a(jsonObject, str, (JsonObject) null);
            if (jsonObjectA != null) {
                Intrinsics.checkNotNullParameter(jsonObjectA, "<this>");
                Intrinsics.checkNotNullParameter(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, C3522b4.i.W);
                int asInt = jsonObjectA.get(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ).getAsInt();
                Intrinsics.checkNotNullParameter(jsonObjectA, "<this>");
                Intrinsics.checkNotNullParameter("g", C3522b4.i.W);
                int asInt2 = jsonObjectA.get("g").getAsInt();
                Intrinsics.checkNotNullParameter(jsonObjectA, "<this>");
                Intrinsics.checkNotNullParameter("b", C3522b4.i.W);
                return Integer.valueOf(Color.rgb(asInt, asInt2, jsonObjectA.get("b").getAsInt()));
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
