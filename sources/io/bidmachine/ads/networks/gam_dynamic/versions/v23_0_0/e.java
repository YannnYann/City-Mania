package io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0;

import android.text.TextUtils;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import io.bidmachine.protobuf.Waterfall;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {
    public static AdManagerAdRequest a(Waterfall.Configuration.AdUnit adUnit) {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        String requestAgent = adUnit.getRequestAgent();
        if (!TextUtils.isEmpty(requestAgent)) {
            builder.setRequestAgent(requestAgent);
        }
        for (Map.Entry<String, String> entry : adUnit.getCustomTargetingMap().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                builder.addCustomTargeting(key, value);
            }
        }
        return builder.build();
    }
}
