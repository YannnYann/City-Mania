package io.bidmachine.rendering.model;

import android.content.Context;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import vm2.Lua;

/* JADX INFO: loaded from: classes5.dex */
public final class ElementLayoutParams {
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final SideBindParams e;
    public final SideBindParams f;
    public final SideBindParams g;
    public final SideBindParams h;
    public final SideBindParams i;
    public final SideBindParams j;
    public final float k;
    public final float l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final int q;

    public static final class Builder {
        public float a;
        public float b;
        public float c;
        public float d;
        public SideBindParams e;
        public SideBindParams f;
        public SideBindParams g;
        public SideBindParams h;
        public SideBindParams i;
        public SideBindParams j;
        public float k;
        public float l;
        public float m;
        public float n;
        public float o;
        public float p;
        public int q;

        public final ElementLayoutParams build() {
            return new ElementLayoutParams(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q);
        }

        public final Builder setBottomSideBindParams(SideBindParams sideBindParams) {
            this.h = sideBindParams;
            return this;
        }

        public final void setCenterXSideBindParams(SideBindParams sideBindParams) {
            this.i = sideBindParams;
        }

        public final void setCenterYSideBindParams(SideBindParams sideBindParams) {
            this.j = sideBindParams;
        }

        public final Builder setHeight(float f) {
            this.b = f;
            return this;
        }

        public final Builder setHeightPercent(float f) {
            this.d = f;
            return this;
        }

        public final Builder setLeftSideBindParams(SideBindParams sideBindParams) {
            this.e = sideBindParams;
            return this;
        }

        public final Builder setMarginBottom(float f) {
            this.n = f;
            return this;
        }

        public final Builder setMarginLeft(float f) {
            this.k = f;
            return this;
        }

        public final Builder setMarginRight(float f) {
            this.m = f;
            return this;
        }

        public final Builder setMarginTop(float f) {
            this.l = f;
            return this;
        }

        public final Builder setRightSideBindParams(SideBindParams sideBindParams) {
            this.g = sideBindParams;
            return this;
        }

        public final Builder setTopSideBindParams(SideBindParams sideBindParams) {
            this.f = sideBindParams;
            return this;
        }

        public final Builder setTranslationX(float f) {
            this.o = f;
            return this;
        }

        public final Builder setTranslationY(float f) {
            this.p = f;
            return this;
        }

        public final Builder setWidth(float f) {
            this.a = f;
            return this;
        }

        public final Builder setWidthPercent(float f) {
            this.c = f;
            return this;
        }

        public final Builder setZIndex(int i) {
            this.q = i;
            return this;
        }
    }

    public ElementLayoutParams() {
        this(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null, null, null, null, null, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, Lua.MAXARG_sBx, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ElementLayoutParams)) {
            return false;
        }
        ElementLayoutParams elementLayoutParams = (ElementLayoutParams) obj;
        return Float.compare(this.a, elementLayoutParams.a) == 0 && Float.compare(this.b, elementLayoutParams.b) == 0 && Float.compare(this.c, elementLayoutParams.c) == 0 && Float.compare(this.d, elementLayoutParams.d) == 0 && Intrinsics.areEqual(this.e, elementLayoutParams.e) && Intrinsics.areEqual(this.f, elementLayoutParams.f) && Intrinsics.areEqual(this.g, elementLayoutParams.g) && Intrinsics.areEqual(this.h, elementLayoutParams.h) && Intrinsics.areEqual(this.i, elementLayoutParams.i) && Intrinsics.areEqual(this.j, elementLayoutParams.j) && Float.compare(this.k, elementLayoutParams.k) == 0 && Float.compare(this.l, elementLayoutParams.l) == 0 && Float.compare(this.m, elementLayoutParams.m) == 0 && Float.compare(this.n, elementLayoutParams.n) == 0 && Float.compare(this.o, elementLayoutParams.o) == 0 && Float.compare(this.p, elementLayoutParams.p) == 0 && this.q == elementLayoutParams.q;
    }

    public final SideBindParams getBottomSideBindParams() {
        return this.h;
    }

    public final SideBindParams getCenterXSideBindParams() {
        return this.i;
    }

    public final SideBindParams getCenterYSideBindParams() {
        return this.j;
    }

    public final float getHeightPercent() {
        return this.d;
    }

    public final int getHeightPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.b);
    }

    public final SideBindParams getLeftSideBindParams() {
        return this.e;
    }

    public final int getMarginBottomPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.n);
    }

    public final int getMarginLeftPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.k);
    }

    public final int getMarginRightPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.m);
    }

    public final int getMarginTopPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.l);
    }

    public final SideBindParams getRightSideBindParams() {
        return this.g;
    }

    public final SideBindParams getTopSideBindParams() {
        return this.f;
    }

    public final float getWidthPercent() {
        return this.c;
    }

    public final int getWidthPx(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return UtilsKt.dpToPx(context, this.a);
    }

    public final int getZIndex() {
        return this.q;
    }

    public int hashCode() {
        int iHashCode = ((((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Float.hashCode(this.d)) * 31;
        SideBindParams sideBindParams = this.e;
        int iHashCode2 = (iHashCode + (sideBindParams == null ? 0 : sideBindParams.hashCode())) * 31;
        SideBindParams sideBindParams2 = this.f;
        int iHashCode3 = (iHashCode2 + (sideBindParams2 == null ? 0 : sideBindParams2.hashCode())) * 31;
        SideBindParams sideBindParams3 = this.g;
        int iHashCode4 = (iHashCode3 + (sideBindParams3 == null ? 0 : sideBindParams3.hashCode())) * 31;
        SideBindParams sideBindParams4 = this.h;
        int iHashCode5 = (iHashCode4 + (sideBindParams4 == null ? 0 : sideBindParams4.hashCode())) * 31;
        SideBindParams sideBindParams5 = this.i;
        int iHashCode6 = (iHashCode5 + (sideBindParams5 == null ? 0 : sideBindParams5.hashCode())) * 31;
        SideBindParams sideBindParams6 = this.j;
        return ((((((((((((((iHashCode6 + (sideBindParams6 != null ? sideBindParams6.hashCode() : 0)) * 31) + Float.hashCode(this.k)) * 31) + Float.hashCode(this.l)) * 31) + Float.hashCode(this.m)) * 31) + Float.hashCode(this.n)) * 31) + Float.hashCode(this.o)) * 31) + Float.hashCode(this.p)) * 31) + Integer.hashCode(this.q);
    }

    public String toString() {
        return "ElementLayoutParams(width=" + this.a + ", height=" + this.b + ", widthPercent=" + this.c + ", heightPercent=" + this.d + ", leftSideBindParams=" + this.e + ", topSideBindParams=" + this.f + ", rightSideBindParams=" + this.g + ", bottomSideBindParams=" + this.h + ", centerXSideBindParams=" + this.i + ", centerYSideBindParams=" + this.j + ", marginLeft=" + this.k + ", marginTop=" + this.l + ", marginRight=" + this.m + ", marginBottom=" + this.n + ", translationX=" + this.o + ", translationY=" + this.p + ", zIndex=" + this.q + ')';
    }

    public ElementLayoutParams(float f, float f2, float f3, float f4, SideBindParams sideBindParams, SideBindParams sideBindParams2, SideBindParams sideBindParams3, SideBindParams sideBindParams4, SideBindParams sideBindParams5, SideBindParams sideBindParams6, float f5, float f6, float f7, float f8, float f9, float f10, int i) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = sideBindParams;
        this.f = sideBindParams2;
        this.g = sideBindParams3;
        this.h = sideBindParams4;
        this.i = sideBindParams5;
        this.j = sideBindParams6;
        this.k = f5;
        this.l = f6;
        this.m = f7;
        this.n = f8;
        this.o = f9;
        this.p = f10;
        this.q = i;
    }

    public /* synthetic */ ElementLayoutParams(float f, float f2, float f3, float f4, SideBindParams sideBindParams, SideBindParams sideBindParams2, SideBindParams sideBindParams3, SideBindParams sideBindParams4, SideBindParams sideBindParams5, SideBindParams sideBindParams6, float f5, float f6, float f7, float f8, float f9, float f10, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f, (i2 & 2) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f2, (i2 & 4) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f3, (i2 & 8) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f4, (i2 & 16) != 0 ? null : sideBindParams, (i2 & 32) != 0 ? null : sideBindParams2, (i2 & 64) != 0 ? null : sideBindParams3, (i2 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : sideBindParams4, (i2 & 256) != 0 ? null : sideBindParams5, (i2 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) == 0 ? sideBindParams6 : null, (i2 & 1024) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f5, (i2 & a.o) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f6, (i2 & 4096) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f7, (i2 & 8192) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f8, (i2 & 16384) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f9, (i2 & 32768) != 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : f10, (i2 & 65536) != 0 ? 0 : i);
    }
}
