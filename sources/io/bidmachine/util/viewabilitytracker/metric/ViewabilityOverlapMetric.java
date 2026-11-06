package io.bidmachine.util.viewabilitytracker.metric;

import io.bidmachine.util.log.TagLogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ViewabilityOverlapMetric.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ViewabilityOverlapMetric implements Metric {
    public static final Companion Companion = new Companion(null);
    public static final TagLogger LOGGER = new TagLogger("OverlapMetric", null, 2, null);
    public final float maxOverlapPercentage;
    public final float minVisiblePercent;
    public final Scope scope;

    /* JADX INFO: compiled from: ViewabilityOverlapMetric.kt */
    public enum Scope {
        VIEW_SIBLINGS,
        ALL_VIEWS,
        WINDOWS
    }

    /* JADX INFO: compiled from: ViewabilityOverlapMetric.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Scope.values().length];
            try {
                iArr[Scope.VIEW_SIBLINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scope.ALL_VIEWS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Scope.WINDOWS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ViewabilityOverlapMetric(Scope scope, float f) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.maxOverlapPercentage = f;
        this.minVisiblePercent = 100 - f;
    }

    public final Scope getScope() {
        return this.scope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Type inference failed for: r12v0, types: [T, android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [T, android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.ViewGroup] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c4 -> B:22:0x0073). Please report as a decompilation issue!!! */
    @Override // io.bidmachine.util.viewabilitytracker.metric.Metric
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean check(android.view.View r12) {
        /*
            r11 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            kotlin.jvm.internal.Ref$ObjectRef r0 = new kotlin.jvm.internal.Ref$ObjectRef
            r0.<init>()
            r0.element = r12
            io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$Scope r12 = r11.scope
            int[] r1 = io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.WhenMappings.$EnumSwitchMapping$0
            int r12 = r12.ordinal()
            r12 = r1[r12]
            r1 = 1
            r2 = 0
            if (r12 == r1) goto L3a
            r0 = 2
            if (r12 == r0) goto L2e
            r0 = 3
            if (r12 == r0) goto L22
            goto Lc6
        L22:
            io.bidmachine.util.log.TagLogger r12 = io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.LOGGER
            io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$4 r0 = new io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$4
            r0.<init>()
            io.bidmachine.util.log.LoggerInstance.e$default(r12, r2, r0, r1, r2)
            goto Lc6
        L2e:
            io.bidmachine.util.log.TagLogger r12 = io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.LOGGER
            io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$3 r0 = new io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$3
            r0.<init>()
            io.bidmachine.util.log.LoggerInstance.e$default(r12, r2, r0, r1, r2)
            goto Lc6
        L3a:
            android.graphics.Rect r12 = new android.graphics.Rect
            r12.<init>()
            T r3 = r0.element
            android.view.View r3 = (android.view.View) r3
            boolean r3 = r3.getGlobalVisibleRect(r12)
            r4 = 0
            if (r3 != 0) goto L55
            io.bidmachine.util.log.TagLogger r12 = io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.LOGGER
            io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$1 r3 = new io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$1
            r3.<init>()
            io.bidmachine.util.log.LoggerInstance.d$default(r12, r2, r3, r1, r2)
            return r4
        L55:
            T r3 = r0.element
            android.view.View r3 = (android.view.View) r3
            android.view.View r3 = r3.getRootView()
            boolean r5 = r3 instanceof android.view.ViewGroup
            if (r5 == 0) goto L64
            android.view.ViewGroup r3 = (android.view.ViewGroup) r3
            goto L65
        L64:
            r3 = r2
        L65:
            T r5 = r0.element
            android.view.View r5 = (android.view.View) r5
            android.view.ViewParent r5 = r5.getParent()
            boolean r6 = r5 instanceof android.view.ViewGroup
            if (r6 == 0) goto Lc4
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
        L73:
            if (r5 == 0) goto Lc6
            T r6 = r0.element
            android.view.View r6 = (android.view.View) r6
            int r6 = r5.indexOfChild(r6)
            int r6 = r6 + r1
            int r7 = r5.getChildCount()
        L82:
            if (r6 >= r7) goto Lb5
            android.view.View r8 = r5.getChildAt(r6)
            java.lang.String r9 = "parent.getChildAt(i)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)
            boolean r9 = io.bidmachine.util.ViewUtilsKt.isViewVisible(r8)
            if (r9 == 0) goto Lb2
            android.graphics.Rect r9 = io.bidmachine.util.ViewUtilsKt.getLocationInWindow(r8)
            boolean r10 = android.graphics.Rect.intersects(r12, r9)
            if (r10 == 0) goto Lb2
            float r9 = io.bidmachine.util.Utils.getNotOverlappedAreaPercent(r12, r9)
            float r10 = r11.minVisiblePercent
            int r10 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r10 >= 0) goto Lb2
            io.bidmachine.util.log.TagLogger r12 = io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.LOGGER
            io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$2 r3 = new io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric$check$2
            r3.<init>()
            io.bidmachine.util.log.LoggerInstance.d$default(r12, r2, r3, r1, r2)
            return r4
        Lb2:
            int r6 = r6 + 1
            goto L82
        Lb5:
            if (r5 == r3) goto Lc4
            r0.element = r5
            android.view.ViewParent r5 = r5.getParent()
            boolean r6 = r5 instanceof android.view.ViewGroup
            if (r6 == 0) goto Lc4
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            goto L73
        Lc4:
            r5 = r2
            goto L73
        Lc6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric.check(android.view.View):boolean");
    }

    /* JADX INFO: compiled from: ViewabilityOverlapMetric.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
