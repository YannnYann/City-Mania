package io.bidmachine;

import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface AdProcessCallback {
    void onBrokenCreativeEvent(Map<String, ? extends Object> map);

    default void onEngagedClick(Map<String, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
    }

    void onNetworkViewabilityEvent(ActionEvent actionEvent, BMError bMError);

    void onVisibilityTrackerViewabilityEvent(ActionEvent actionEvent, BMError bMError);

    void processClickVerified(SystemComponent systemComponent, ClickData clickData);

    void processClicked(SystemComponent systemComponent, ClickData clickData);

    void processClosed();

    void processDestroy();

    void processExpired();

    void processFillAd();

    void processFinished();

    void processLoadFail(BMError bMError);

    void processLoadSuccess();

    void processShowFail(BMError bMError);

    void processShown();

    void processVisibilityTrackerShown();

    void setVisibilitySource(VisibilitySource visibilitySource);
}
