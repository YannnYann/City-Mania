package io.bidmachine.unified;

import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface UnifiedAdCallback {
    static /* synthetic */ void onAdClicked$default(UnifiedAdCallback unifiedAdCallback, SystemComponent systemComponent, ClickData clickData, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAdClicked");
        }
        if ((i & 1) != 0) {
            systemComponent = null;
        }
        if ((i & 2) != 0) {
            clickData = null;
        }
        unifiedAdCallback.onAdClicked(systemComponent, clickData);
    }

    default void onAdClicked() {
        onAdClicked(null, null);
    }

    void onAdClicked(SystemComponent systemComponent, ClickData clickData);

    void onAdExpired();

    void onAdLoadFailed(BMError bMError);

    void onAdShowFailed(BMError bMError);

    void onAdShown();

    void onAdViewabilityEvent(ActionEvent actionEvent, BMError bMError);

    void onBrokenCreativeEvent(Map<String, ? extends Object> map);

    void onEngagedClick(Map<String, ? extends Object> map);

    void setVisibilitySource(VisibilitySource visibilitySource);
}
