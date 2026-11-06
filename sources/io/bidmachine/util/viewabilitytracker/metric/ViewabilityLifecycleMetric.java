package io.bidmachine.util.viewabilitytracker.metric;

import android.view.View;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityLifecycleMetric.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityLifecycleMetric implements Metric {
    public static final Companion Companion = new Companion(null);
    public static final TagLogger LOGGER = new TagLogger("LifecycleMetric", null, 2, null);
    public final List<State> states;

    /* JADX INFO: compiled from: ViewabilityLifecycleMetric.kt */
    public enum State {
        HAS_WINDOW_FOCUS
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ViewabilityLifecycleMetric(List<? extends State> states) {
        Intrinsics.checkNotNullParameter(states, "states");
        this.states = states;
    }

    @Override // io.bidmachine.util.viewabilitytracker.metric.Metric
    public boolean check(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!this.states.contains(State.HAS_WINDOW_FOCUS) || view.hasWindowFocus()) {
            return true;
        }
        LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric.check.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Check failed: view window focus (false), must be true - " + view;
            }
        }, 1, null);
        return false;
    }

    /* JADX INFO: compiled from: ViewabilityLifecycleMetric.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
