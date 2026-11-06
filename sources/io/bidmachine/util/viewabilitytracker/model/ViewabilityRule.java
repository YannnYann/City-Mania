package io.bidmachine.util.viewabilitytracker.model;

import io.bidmachine.util.viewabilitytracker.metric.Metric;
import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityRule.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityRule {
    public final ActionEvent actionEvent;
    public final Collection<Metric> metrics;
    public final ViewabilityMeasurement viewabilityMeasurement;

    /* JADX WARN: Multi-variable type inference failed */
    public ViewabilityRule(ActionEvent actionEvent, ViewabilityMeasurement viewabilityMeasurement, Collection<? extends Metric> metrics) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        Intrinsics.checkNotNullParameter(viewabilityMeasurement, "viewabilityMeasurement");
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        this.actionEvent = actionEvent;
        this.viewabilityMeasurement = viewabilityMeasurement;
        this.metrics = metrics;
    }

    public final ActionEvent getActionEvent() {
        return this.actionEvent;
    }

    public final ViewabilityMeasurement getViewabilityMeasurement() {
        return this.viewabilityMeasurement;
    }

    public final Collection<Metric> getMetrics() {
        return this.metrics;
    }
}
