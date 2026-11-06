package io.bidmachine;

import com.explorestack.protobuf.Value;
import io.bidmachine.rendering.model.engagedclick.EngagedClickReport;
import io.bidmachine.rendering.model.engagedclick.EngagedClickTrackingObject;
import io.bidmachine.unified.UnifiedAdCallback;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EngagedClickTrackingObjectImpl implements EngagedClickTrackingObject {
    private final UnifiedAdCallback unifiedAdCallback;

    public EngagedClickTrackingObjectImpl(UnifiedAdCallback unifiedAdCallback) {
        Intrinsics.checkNotNullParameter(unifiedAdCallback, "unifiedAdCallback");
        this.unifiedAdCallback = unifiedAdCallback;
    }

    @Override // io.bidmachine.rendering.model.engagedclick.EngagedClickTrackingObject
    public void reportEngagedClick(EngagedClickReport engagedClickReport) {
        Intrinsics.checkNotNullParameter(engagedClickReport, "engagedClickReport");
        Value contextValue = EngagedClickTrackingObjectImplKt.toContextValue(engagedClickReport);
        if (contextValue == null) {
            return;
        }
        this.unifiedAdCallback.onEngagedClick(MapsKt__MapsJVMKt.mapOf(TuplesKt.to("engaged_click_context", contextValue)));
    }
}
