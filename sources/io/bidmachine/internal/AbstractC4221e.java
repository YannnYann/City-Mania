package io.bidmachine.internal;

import io.bidmachine.AdProcessCallback;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4221e implements UnifiedAdCallback {
    public final AdProcessCallback a;

    public AbstractC4221e(AdProcessCallback adProcessCallback) {
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        this.a = adProcessCallback;
    }

    public final AdProcessCallback a() {
        return this.a;
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdClicked(SystemComponent systemComponent, ClickData clickData) {
        this.a.processClicked(systemComponent, clickData);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdExpired() {
        this.a.processExpired();
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdLoadFailed(BMError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.processLoadFail(error);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdShowFailed(BMError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.processShowFail(error);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdShown() {
        this.a.processShown();
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onAdViewabilityEvent(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        this.a.onNetworkViewabilityEvent(actionEvent, bMError);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onBrokenCreativeEvent(Map map) {
        this.a.onBrokenCreativeEvent(map);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void onEngagedClick(Map params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.a.onEngagedClick(params);
    }

    @Override // io.bidmachine.unified.UnifiedAdCallback
    public void setVisibilitySource(VisibilitySource visibilitySource) {
        Intrinsics.checkNotNullParameter(visibilitySource, "visibilitySource");
        this.a.setVisibilitySource(visibilitySource);
    }
}
