package ads_mobile_sdk;

import android.content.Context;
import android.util.DisplayMetrics;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class rw0 {
    public final Context a;
    public final int b;
    public final String c;
    public final String d;
    public final int e;
    public final ja1 f;
    public final String g;
    public final String h;
    public final an0 i;
    public final kd2 j;
    public final cn0 k;

    public rw0(Context applicationContext, int i, String afmaVersion, String gmaVersion, int i2, ja1 initializationConfigWrapper, String osBuildFingerprint, String osHost, an0 deviceProperties, kd2 omid, cn0 deviceTierManager) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(gmaVersion, "gmaVersion");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        Intrinsics.checkNotNullParameter(osBuildFingerprint, "osBuildFingerprint");
        Intrinsics.checkNotNullParameter(osHost, "osHost");
        Intrinsics.checkNotNullParameter(deviceProperties, "deviceProperties");
        Intrinsics.checkNotNullParameter(omid, "omid");
        Intrinsics.checkNotNullParameter(deviceTierManager, "deviceTierManager");
        this.a = applicationContext;
        this.b = i;
        this.c = afmaVersion;
        this.d = gmaVersion;
        this.e = i2;
        this.f = initializationConfigWrapper;
        this.g = osBuildFingerprint;
        this.h = osHost;
        this.i = deviceProperties;
        this.j = omid;
        this.k = deviceTierManager;
    }

    public final JsonObject a(JsonObject consentStrings) {
        String applicationId;
        Intrinsics.checkNotNullParameter(consentStrings, "consentStrings");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("pn", this.a.getPackageName());
        jsonObject.addProperty("vc", Integer.valueOf(this.e));
        jsonObject.addProperty(dt.LANGUAGE_CODE.e(), Locale.getDefault().getLanguage());
        jsonObject.addProperty(dt.GEO_COUNTRY.e(), Locale.getDefault().getCountry());
        InitializationConfig initializationConfigA = this.f.a();
        if (initializationConfigA == null || (applicationId = initializationConfigA.getApplicationId()) == null) {
            applicationId = "";
        }
        jsonObject.addProperty("app_id", applicationId);
        jsonObject.addProperty("js", this.c);
        jsonObject.addProperty("mf", Boolean.FALSE);
        jsonObject.addProperty("os_build_fp", this.g);
        jsonObject.addProperty("os_host", this.h);
        jsonObject.addProperty("mv", (String) this.i.i.getValue());
        jsonObject.addProperty("is_decagon", Boolean.TRUE);
        jsonObject.addProperty("sdk_version", this.d);
        jsonObject.addProperty("dynamite_version", Integer.valueOf(this.b));
        jsonObject.addProperty(C3522b4.i.V, this.a.getPackageName());
        jsonObject.addProperty("omid_v", this.j.g());
        jsonObject.add("shared_pref", consentStrings);
        jsonObject.addProperty(dt.AD_MEM_TIER.e(), Integer.valueOf(((mm0) this.k.b.get()).getNumber()));
        DisplayMetrics displayMetrics = this.a.getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        jsonObject.addProperty(dt.SCREEN_WIDTH.e(), Integer.valueOf(MathKt__MathJVMKt.roundToInt(i / f)));
        jsonObject.addProperty(dt.SCREEN_HEIGHT.e(), Integer.valueOf(MathKt__MathJVMKt.roundToInt(i2 / f)));
        return jsonObject;
    }
}
