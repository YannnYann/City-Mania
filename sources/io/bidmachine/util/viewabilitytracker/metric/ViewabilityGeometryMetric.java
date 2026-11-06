package io.bidmachine.util.viewabilitytracker.metric;

import android.view.View;
import io.bidmachine.util.ViewUtilsKt;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityGeometryMetric.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityGeometryMetric implements Metric {
    public static final Companion Companion = new Companion(null);
    public static final TagLogger LOGGER = new TagLogger("GeometryMetric", null, 2, null);
    public final boolean isVisible;
    public final Float minAlpha;
    public final Float minHeightDp;
    public final Float minWidthDp;

    public ViewabilityGeometryMetric(boolean z, Float f, Float f2, Float f3) {
        this.isVisible = z;
        this.minAlpha = f;
        this.minWidthDp = f2;
        this.minHeightDp = f3;
    }

    public final Float getMinAlpha() {
        return this.minAlpha;
    }

    public final Float getMinWidthDp() {
        return this.minWidthDp;
    }

    public final Float getMinHeightDp() {
        return this.minHeightDp;
    }

    @Override // io.bidmachine.util.viewabilitytracker.metric.Metric
    public boolean check(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        boolean zIsShown = view.isShown();
        if (this.isVisible && !zIsShown) {
            LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.check.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Check failed: view visibility (false), must be true - " + view;
                }
            }, 1, null);
            return false;
        }
        final float alpha = view.getAlpha();
        Float f = this.minAlpha;
        if (f != null && alpha < f.floatValue()) {
            LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.check.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Check failed: view alpha (" + alpha + "), must be more then " + this.getMinAlpha() + " - " + view;
                }
            }, 1, null);
            return false;
        }
        final int widthDp = ViewUtilsKt.getWidthDp(view);
        Float f2 = this.minWidthDp;
        if (f2 != null && widthDp < f2.floatValue()) {
            LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.check.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Check failed: view width (" + widthDp + "), must be more then " + this.getMinWidthDp() + " - " + view;
                }
            }, 1, null);
            return false;
        }
        final int heightDp = ViewUtilsKt.getHeightDp(view);
        Float f3 = this.minHeightDp;
        if (f3 == null || heightDp >= f3.floatValue()) {
            return true;
        }
        LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric.check.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return "Check failed: view height (" + heightDp + "), must be more then " + this.getMinHeightDp() + " - " + view;
            }
        }, 1, null);
        return false;
    }

    /* JADX INFO: compiled from: ViewabilityGeometryMetric.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
