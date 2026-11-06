package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.gradient.GradientDrawable;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum GradientDirection implements KeyHolder {
    LeftRight("right"),
    TopBottom("bottom"),
    RightLeft("left"),
    BottomTop("top");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GradientDirection get(String str) {
            return (GradientDirection) UtilsKt.find(GradientDirection.values(), str);
        }

        public Companion() {
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GradientDirection.values().length];
            try {
                iArr[GradientDirection.LeftRight.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GradientDirection.TopBottom.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GradientDirection.RightLeft.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GradientDirection.BottomTop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    GradientDirection(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }

    public final GradientDrawable.Orientation toDrawableGradientOrientation() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
        if (i == 2) {
            return GradientDrawable.Orientation.TOP_BOTTOM;
        }
        if (i == 3) {
            return GradientDrawable.Orientation.RIGHT_LEFT;
        }
        if (i == 4) {
            return GradientDrawable.Orientation.BOTTOM_TOP;
        }
        throw new NoWhenBranchMatchedException();
    }
}
