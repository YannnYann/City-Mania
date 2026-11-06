package io.bidmachine.rendering.model;

import android.content.Context;
import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class AppearanceParams {
    public static final Companion Companion = new Companion(null);
    public static final HorizontalGravity q = HorizontalGravity.Center;
    public final Background a;
    public final Boolean b;
    public final Boolean c;
    public final Float d;
    public final Float e;
    public final FontStyleType f;
    public final Boolean g;
    public final Float h;
    public final Integer i;
    public final Integer j;
    public final Integer k;
    public final Padding l;
    public final Float m;
    public final Integer n;
    public final Float o;
    public final HorizontalGravity p;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static /* synthetic */ int getCornerRadiusPxOrDefault$default(AppearanceParams appearanceParams, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return appearanceParams.getCornerRadiusPxOrDefault(context, i);
    }

    public final Background getBackground() {
        return this.a;
    }

    public final Border getBorder(Context context) {
        Integer strokeWidthPx;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!Intrinsics.areEqual(this.g, Boolean.TRUE) || this.i == null || (strokeWidthPx = getStrokeWidthPx(context)) == null || strokeWidthPx.intValue() <= 0) {
            return null;
        }
        return new Border(strokeWidthPx.intValue(), this.i.intValue());
    }

    public final Boolean getClickable() {
        return this.c;
    }

    public final int getCornerRadiusPxOrDefault(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f = this.m;
        return f != null ? UtilsKt.dpToPx(context, f.floatValue()) : i;
    }

    public final Integer getFillColor() {
        return this.j;
    }

    public final Float getFontSize() {
        return this.e;
    }

    public final FontStyleType getFontStyleType() {
        return this.f;
    }

    public final Float getOpacity() {
        return this.d;
    }

    public final Padding getPadding() {
        return this.l;
    }

    public final Integer getShadowColor() {
        return this.k;
    }

    public final Integer getStrokeColor() {
        return this.i;
    }

    public final Integer getStrokeWidthPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f = this.h;
        if (f != null) {
            return Integer.valueOf(UtilsKt.dpToPx(context, f.floatValue()));
        }
        return null;
    }

    public final HorizontalGravity getTextHorizontalGravity() {
        return this.p;
    }

    public final Integer getTextLineSpacingPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Float f = this.o;
        if (f != null) {
            return Integer.valueOf(UtilsKt.dpToPx(context, f.floatValue()));
        }
        return null;
    }

    public final Integer getTextMaxLines() {
        return this.n;
    }

    public final Boolean getVisible() {
        return this.b;
    }

    public AppearanceParams(Background background, Boolean bool, Boolean bool2, Float f, Float f2, FontStyleType fontStyleType, Boolean bool3, Float f3, Integer num, Integer num2, Integer num3, Padding padding, Float f4, Integer num4, Float f5, HorizontalGravity textHorizontalGravity) {
        Intrinsics.checkNotNullParameter(textHorizontalGravity, "textHorizontalGravity");
        this.a = background;
        this.b = bool;
        this.c = bool2;
        this.d = f;
        this.e = f2;
        this.f = fontStyleType;
        this.g = bool3;
        this.h = f3;
        this.i = num;
        this.j = num2;
        this.k = num3;
        this.l = padding;
        this.m = f4;
        this.n = num4;
        this.o = f5;
        this.p = textHorizontalGravity;
    }

    public /* synthetic */ AppearanceParams(Background background, Boolean bool, Boolean bool2, Float f, Float f2, FontStyleType fontStyleType, Boolean bool3, Float f3, Integer num, Integer num2, Integer num3, Padding padding, Float f4, Integer num4, Float f5, HorizontalGravity horizontalGravity, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : background, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : bool2, (i & 8) != 0 ? null : f, (i & 16) != 0 ? null : f2, (i & 32) != 0 ? null : fontStyleType, (i & 64) != 0 ? null : bool3, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : f3, (i & 256) != 0 ? null : num, (i & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? null : num2, (i & 1024) != 0 ? null : num3, (i & a.o) != 0 ? null : padding, (i & 4096) != 0 ? null : f4, (i & 8192) != 0 ? null : num4, (i & 16384) != 0 ? null : f5, (i & 32768) != 0 ? q : horizontalGravity);
    }
}
