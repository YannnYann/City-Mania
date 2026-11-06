package io.bidmachine.rendering.model;

import android.widget.ImageView;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes5.dex */
public final class ScaleTypeKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ScaleType.values().length];
            try {
                iArr[ScaleType.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScaleType.ToFill.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScaleType.AspectFill.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ScaleType.AspectFit.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ImageView.ScaleType toImageViewScaleType(ScaleType scaleType) {
        int i = scaleType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[scaleType.ordinal()];
        if (i == -1 || i == 1) {
            return null;
        }
        if (i == 2) {
            return ImageView.ScaleType.FIT_XY;
        }
        if (i == 3) {
            return ImageView.ScaleType.CENTER_CROP;
        }
        if (i == 4) {
            return ImageView.ScaleType.CENTER_INSIDE;
        }
        throw new NoWhenBranchMatchedException();
    }
}
