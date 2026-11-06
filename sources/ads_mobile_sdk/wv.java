package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wv implements oe3 {
    public final String a;
    public final String b;
    public final JsonObject c;
    public final long d;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        JsonArray jsonArray;
        Intrinsics.checkNotNullParameter(signals, "signals");
        String str = this.a;
        signals.adUnitRequestSignals = str;
        signals.commonCldSignals = this.b;
        signals.commonCldSignalsObject = this.c;
        signals.timeSinceCldUpdate = this.d;
        if (str != null) {
            ds1 ds1Var = ds1.a;
            try {
                JsonObject jsonObject = (JsonObject) new Gson().fromJson(this.a, JsonObject.class);
                jsonArray = new JsonArray();
                jsonArray.add(jsonObject);
            } catch (Exception e) {
                List list = a2.a(e, "t", e).s;
                String message = e.getMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                Intrinsics.checkNotNull(message);
                list.add(message);
                jsonArray = null;
            }
            signals.adUnitRequestSignalsObject = jsonArray;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wv)) {
            return false;
        }
        wv wvVar = (wv) obj;
        return Intrinsics.areEqual(this.a, wvVar.a) && Intrinsics.areEqual(this.b, wvVar.b) && Intrinsics.areEqual(this.c, wvVar.c) && this.d == wvVar.d;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        JsonObject jsonObject = this.c;
        return Long.hashCode(this.d) + ((iHashCode2 + (jsonObject != null ? jsonObject.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "CldSignal(adUnitRequestSignals=" + this.a + ", commonCldSignals=" + this.b + ", commonCldObject=" + this.c + ", timeSinceCldUpdateInMs=" + this.d + ")";
    }

    public wv(String str, String str2, JsonObject jsonObject, long j) {
        this.a = str;
        this.b = str2;
        this.c = jsonObject;
        this.d = j;
    }
}
