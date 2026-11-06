package io.bidmachine.ads.networks.gam;

import android.text.TextUtils;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public class GAMParams extends UnifiedParams {
    public final String adUnitId;
    public final String price;
    public final String score;

    public GAMParams(UnifiedMediationParams mediationParams) {
        super(mediationParams);
        this.adUnitId = mediationParams.getStringOrNull("ad_unit_id");
        this.score = mediationParams.getStringOrNull("score");
        this.price = mediationParams.getStringOrNull("price");
    }

    public boolean isValid(UnifiedAdCallback callback) {
        if (TextUtils.isEmpty(this.adUnitId)) {
            callback.onAdLoadFailed(BMError.notFound("ad_unit_id"));
            return false;
        }
        if (TextUtils.isEmpty(this.score)) {
            callback.onAdLoadFailed(BMError.notFound("score"));
            return false;
        }
        if (!TextUtils.isEmpty(this.price)) {
            return true;
        }
        callback.onAdLoadFailed(BMError.notFound("price"));
        return false;
    }
}
