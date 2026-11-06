package io.bidmachine.util.viewabilitytracker.metric;

import android.graphics.Rect;
import android.view.View;
import io.bidmachine.util.ViewUtilsKt;
import io.bidmachine.util.log.LoggerInstance;
import io.bidmachine.util.log.TagLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityVisibilityMetric.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityVisibilityMetric implements Metric {
    public static final Companion Companion = new Companion(null);
    public static final TagLogger LOGGER = new TagLogger("VisibilityMetric", null, 2, null);
    public final float minVisiblePercentage;
    public final Scope scope;

    /* JADX INFO: compiled from: ViewabilityVisibilityMetric.kt */
    public enum Scope {
        PARENT_VIEW,
        SCREEN,
        SAFE_AREA
    }

    /* JADX INFO: compiled from: ViewabilityVisibilityMetric.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Scope.values().length];
            try {
                iArr[Scope.PARENT_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scope.SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Scope.SAFE_AREA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ViewabilityVisibilityMetric(Scope scope, float f) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.minVisiblePercentage = f;
    }

    public final Scope getScope() {
        return this.scope;
    }

    public final float getMinVisiblePercentage() {
        return this.minVisiblePercentage;
    }

    @Override // io.bidmachine.util.viewabilitytracker.metric.Metric
    public boolean check(final View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int i = WhenMappings.$EnumSwitchMapping$0[this.scope.ordinal()];
        if (i == 1) {
            Rect rect = new Rect();
            if (!view.getGlobalVisibleRect(rect)) {
                LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Check failed: view is completely clipped - " + view;
                    }
                }, 1, null);
                return false;
            }
            final float fWidth = ((rect.width() * rect.height()) / (view.getWidth() * view.getHeight())) * 100;
            if (fWidth < this.minVisiblePercentage) {
                LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Check failed: view not completely visible (" + fWidth + "%), must be more then " + this.getMinVisiblePercentage() + "% - " + view;
                    }
                }, 1, null);
                return false;
            }
            View viewFindContentOrRootView = ViewUtilsKt.findContentOrRootView(view);
            if (viewFindContentOrRootView == null) {
                LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Check failed: content or root layout not found - " + view;
                    }
                }, 1, null);
                return false;
            }
            Rect rect2 = new Rect();
            viewFindContentOrRootView.getGlobalVisibleRect(rect2);
            if (!Rect.intersects(rect, rect2)) {
                LoggerInstance.d$default(LOGGER, null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final String invoke() {
                        return "Check failed: view is out of current window - " + view;
                    }
                }, 1, null);
                return false;
            }
        } else if (i == 2) {
            LoggerInstance.e$default(LOGGER, (Object) null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.5
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Check not supported (scope - " + ViewabilityVisibilityMetric.this.getScope().name() + ')';
                }
            }, 1, (Object) null);
        } else if (i == 3) {
            LoggerInstance.e$default(LOGGER, (Object) null, new Function0<String>() { // from class: io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric.check.6
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Check not supported (scope - " + ViewabilityVisibilityMetric.this.getScope().name() + ')';
                }
            }, 1, (Object) null);
        }
        return true;
    }

    /* JADX INFO: compiled from: ViewabilityVisibilityMetric.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
