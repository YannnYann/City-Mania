package io.bidmachine.ads.networks.gam;

import io.bidmachine.AdsFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class GAMTypeConfigFactory {
    public static GAMTypeConfig create(JSONObject json) {
        try {
            AdsFormat adsFormatByRemoteName = AdsFormat.byRemoteName(json.getString("format"));
            if (adsFormatByRemoteName == null) {
                return null;
            }
            String string = json.getString("ad_unit_id");
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = json.getJSONArray("units");
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(GAMUnitDataFactory.create(string, jSONArray.getJSONObject(i)));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new GAMTypeConfig(adsFormatByRemoteName, arrayList, json.optInt("cache_size", 2));
        } catch (Throwable unused) {
            return null;
        }
    }
}
