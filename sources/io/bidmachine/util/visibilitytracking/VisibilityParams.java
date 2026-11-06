package io.bidmachine.util.visibilitytracking;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: VisibilityParams.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class VisibilityParams {
    public static final Companion Companion = new Companion(null);
    public static final Lazy<VisibilityParams> DEFAULT_VISIBILITY_PARAMS$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<VisibilityParams>() { // from class: io.bidmachine.util.visibilitytracking.VisibilityParams$Companion$DEFAULT_VISIBILITY_PARAMS$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final VisibilityParams invoke() {
            return VisibilityParams.Companion.createDefaultBuilder().build();
        }
    });
    public final boolean isIgnoreOverlap;
    public final boolean isIgnoreWindowFocus;
    public final float minVisiblePercentage;

    public VisibilityParams(float f, boolean z, boolean z2) {
        this.minVisiblePercentage = f;
        this.isIgnoreWindowFocus = z;
        this.isIgnoreOverlap = z2;
    }

    public final float getMinVisiblePercentage() {
        return this.minVisiblePercentage;
    }

    public final boolean isIgnoreWindowFocus() {
        return this.isIgnoreWindowFocus;
    }

    public final boolean isIgnoreOverlap() {
        return this.isIgnoreOverlap;
    }

    /* JADX INFO: compiled from: VisibilityParams.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final VisibilityParams getDEFAULT_VISIBILITY_PARAMS() {
            return (VisibilityParams) VisibilityParams.DEFAULT_VISIBILITY_PARAMS$delegate.getValue();
        }

        public final Builder createDefaultBuilder() {
            return new Builder().setMinVisiblePercentage(50.0f).setIgnoreWindowFocus(true).setIgnoreOverlap(true);
        }

        public final VisibilityParams getDefault() {
            return getDEFAULT_VISIBILITY_PARAMS();
        }
    }

    /* JADX INFO: compiled from: VisibilityParams.kt */
    public static final class Builder {
        public boolean isIgnoreOverlap;
        public boolean isIgnoreWindowFocus;
        public float minVisiblePercentage = 50.0f;

        public final Builder setMinVisiblePercentage(float f) {
            this.minVisiblePercentage = f;
            return this;
        }

        public final Builder setIgnoreWindowFocus(boolean z) {
            this.isIgnoreWindowFocus = z;
            return this;
        }

        public final Builder setIgnoreOverlap(boolean z) {
            this.isIgnoreOverlap = z;
            return this;
        }

        public final VisibilityParams build() {
            return new VisibilityParams(this.minVisiblePercentage, this.isIgnoreWindowFocus, this.isIgnoreOverlap);
        }
    }
}
