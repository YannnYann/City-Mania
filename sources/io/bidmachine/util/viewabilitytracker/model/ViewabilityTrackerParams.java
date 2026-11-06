package io.bidmachine.util.viewabilitytracker.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityTrackerParams.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityTrackerParams {
    public final List<ViewabilityRule> viewabilityRuleList;

    public ViewabilityTrackerParams(List<ViewabilityRule> viewabilityRuleList) {
        Intrinsics.checkNotNullParameter(viewabilityRuleList, "viewabilityRuleList");
        this.viewabilityRuleList = viewabilityRuleList;
    }

    public final List<ViewabilityRule> getViewabilityRuleList() {
        return this.viewabilityRuleList;
    }
}
