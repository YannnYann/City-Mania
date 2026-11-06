package io.bidmachine;

import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class SimpleAdProcessCallback implements AdProcessCallback {
    @Override // io.bidmachine.AdProcessCallback
    public void onBrokenCreativeEvent(Map<String, ? extends Object> map) {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onNetworkViewabilityEvent(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onVisibilityTrackerViewabilityEvent(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClickVerified(SystemComponent systemComponent, ClickData clickData) {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClicked(SystemComponent systemComponent, ClickData clickData) {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClosed() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processDestroy() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processExpired() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processFillAd() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processFinished() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processLoadFail(BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processLoadSuccess() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processShowFail(BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processShown() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processVisibilityTrackerShown() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void setVisibilitySource(VisibilitySource visibilitySource) {
        Intrinsics.checkNotNullParameter(visibilitySource, "visibilitySource");
    }
}
