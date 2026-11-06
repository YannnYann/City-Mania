package io.bidmachine.rendering.model;

import io.bidmachine.util.KeyHolder;
import io.bidmachine.util.UtilsKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public enum GradientType implements KeyHolder {
    Linear("linear"),
    Radial("radial"),
    Bilinear("bilinear");

    public static final Companion Companion = new Companion(null);
    public final String a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GradientType get(String str) {
            return (GradientType) UtilsKt.find(GradientType.values(), str);
        }

        public Companion() {
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GradientType.values().length];
            try {
                iArr[GradientType.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GradientType.Radial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GradientType.Bilinear.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    GradientType(String str) {
        this.a = str;
    }

    @Override // io.bidmachine.util.KeyHolder
    public String getKey() {
        return this.a;
    }

    public final int toDrawableGradientType() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 3;
        }
        throw new NoWhenBranchMatchedException();
    }
}
