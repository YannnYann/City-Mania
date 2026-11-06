package io.bidmachine.util.gradient;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.unity3d.services.UnityAdsConstants;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GradientDrawable.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class GradientDrawable extends Drawable {
    public static final Companion Companion = new Companion(null);
    public static final Orientation DEFAULT_ORIENTATION = Orientation.TOP_BOTTOM;
    public int alpha;
    public BlendModeColorFilter blendModeColorFilter;
    public ColorFilter colorFilter;
    public final Paint fillPaint;
    public boolean gradientIsDirty;
    public float gradientRadiusPx;
    public GradientState gradientState;
    public Paint layerPaint;
    public Rect padding;
    public final Path path;
    public boolean pathIsDirty;
    public final RectF rect;
    public Path ringPath;
    public ShaderHolder shaderHolder;
    public Paint strokePaint;

    /* JADX INFO: compiled from: GradientDrawable.kt */
    public enum Orientation {
        TOP_BOTTOM,
        TR_BL,
        RIGHT_LEFT,
        BR_TL,
        BOTTOM_TOP,
        BL_TR,
        LEFT_RIGHT,
        TL_BR
    }

    /* JADX INFO: compiled from: GradientDrawable.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.TOP_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.TR_BL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Orientation.RIGHT_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Orientation.BR_TL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Orientation.BOTTOM_TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Orientation.BL_TR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Orientation.LEFT_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ GradientDrawable(GradientState gradientState, DefaultConstructorMarker defaultConstructorMarker) {
        this(gradientState);
    }

    public GradientDrawable() {
        this(new GradientState(DEFAULT_ORIENTATION, null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GradientDrawable(Orientation orientation, int[] iArr) {
        this(new GradientState(orientation, iArr));
        Intrinsics.checkNotNullParameter(orientation, "orientation");
    }

    public GradientDrawable(GradientState gradientState) {
        this.path = new Path();
        this.rect = new RectF();
        this.fillPaint = new Paint(1);
        this.alpha = 255;
        this.pathIsDirty = true;
        this.gradientState = gradientState;
        updateLocalState();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect padding) {
        Intrinsics.checkNotNullParameter(padding, "padding");
        Rect rect = this.padding;
        if (rect != null) {
            padding.set(rect);
            return true;
        }
        return super.getPadding(padding);
    }

    public final void setCornerRadius(float f) {
        this.gradientState.setCornerRadiusInternal(f);
        this.pathIsDirty = true;
        invalidateSelf();
    }

    public static /* synthetic */ void setStroke$default(GradientDrawable gradientDrawable, int i, int i2, float f, float f2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            f = 0.0f;
        }
        if ((i3 & 8) != 0) {
            f2 = 0.0f;
        }
        gradientDrawable.setStroke(i, i2, f, f2);
    }

    public final void setStroke(int i, int i2, float f, float f2) {
        this.gradientState.setStrokeInternal(i, ColorStateList.valueOf(i2), f, f2);
        setStrokeInternal(i, i2, f, f2);
    }

    public final void setStrokeInternal(int i, int i2, float f, float f2) {
        Paint paint = this.strokePaint;
        if (paint == null) {
            paint = new Paint(1);
            this.strokePaint = paint;
            paint.setStyle(Paint.Style.STROKE);
        }
        paint.setStrokeWidth(i);
        paint.setColor(i2);
        paint.setPathEffect(f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? new DashPathEffect(new float[]{f, f2}, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) : null);
        this.gradientIsDirty = true;
        invalidateSelf();
    }

    public final void setGradientType(int i) {
        this.gradientState.setGradientTypeInternal(i);
        this.gradientIsDirty = true;
        invalidateSelf();
    }

    public static /* synthetic */ void setGradientRadius$default(GradientDrawable gradientDrawable, float f, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = 0.5f;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        gradientDrawable.setGradientRadius(f, i);
    }

    public final void setGradientRadius(float f, int i) {
        this.gradientState.setGradientRadiusInternal(f, i);
        this.gradientIsDirty = true;
        invalidateSelf();
    }

    public final int modulateAlpha(int i) {
        int i2 = this.alpha;
        return (i * (i2 + (i2 >> 7))) >> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        Paint paint;
        Paint paint2;
        Paint paint3;
        Paint paint4;
        Paint paint5;
        Paint paint6;
        Paint paint7;
        Paint paint8;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (ensureValidRect()) {
            Paint paint9 = this.fillPaint;
            ShaderHolder shaderHolder = this.shaderHolder;
            paint9.setShader(shaderHolder != null ? shaderHolder.getShader(canvas.isHardwareAccelerated()) : null);
            int alpha = this.fillPaint.getAlpha();
            Paint paint10 = this.strokePaint;
            int alpha2 = paint10 != null ? paint10.getAlpha() : 0;
            int iModulateAlpha = modulateAlpha(alpha);
            int iModulateAlpha2 = modulateAlpha(alpha2);
            Paint paint11 = this.strokePaint;
            float strokeWidth = paint11 != null ? paint11.getStrokeWidth() : 0.0f;
            boolean z = iModulateAlpha2 > 0 && strokeWidth > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            boolean z2 = iModulateAlpha > 0;
            GradientState gradientState = this.gradientState;
            ColorFilter colorFilter = this.colorFilter;
            if (colorFilter == null) {
                colorFilter = this.blendModeColorFilter;
            }
            boolean z3 = z && z2 && gradientState.getShape() != 2 && iModulateAlpha2 < 255 && (this.alpha < 255 || colorFilter != null);
            if (z3) {
                Paint paint12 = this.layerPaint;
                if (paint12 == null) {
                    paint12 = new Paint();
                    this.layerPaint = paint12;
                }
                Paint paint13 = paint12;
                paint13.setDither(gradientState.getDither());
                paint13.setAlpha(this.alpha);
                paint13.setColorFilter(colorFilter);
                RectF rectF = this.rect;
                f = 0.0f;
                canvas.saveLayer(rectF.left - strokeWidth, rectF.top - strokeWidth, rectF.right + strokeWidth, strokeWidth + rectF.bottom, paint13);
                this.fillPaint.setColorFilter(null);
                Paint paint14 = this.strokePaint;
                if (paint14 != null) {
                    paint14.setColorFilter(null);
                }
            } else {
                f = 0.0f;
                this.fillPaint.setAlpha(iModulateAlpha);
                this.fillPaint.setDither(gradientState.getDither());
                this.fillPaint.setColorFilter(colorFilter);
                if (colorFilter != null && gradientState.getSolidColors() == null) {
                    this.fillPaint.setColor(this.alpha << 24);
                }
                if (z && (paint = this.strokePaint) != null) {
                    paint.setAlpha(iModulateAlpha2);
                    paint.setDither(gradientState.getDither());
                    paint.setColorFilter(colorFilter);
                }
            }
            int shape = gradientState.getShape();
            if (shape != 0) {
                if (shape == 1) {
                    canvas.drawOval(this.rect, this.fillPaint);
                    if (z && (paint6 = this.strokePaint) != null) {
                        canvas.drawOval(this.rect, paint6);
                    }
                } else if (shape == 2) {
                    RectF rectF2 = this.rect;
                    float fCenterY = rectF2.centerY();
                    if (z && (paint7 = this.strokePaint) != null) {
                        canvas.drawLine(rectF2.left, fCenterY, rectF2.right, fCenterY, paint7);
                    }
                } else if (shape == 3) {
                    Path pathBuildRing = buildRing(gradientState);
                    canvas.drawPath(pathBuildRing, this.fillPaint);
                    if (z && (paint8 = this.strokePaint) != null) {
                        canvas.drawPath(pathBuildRing, paint8);
                    }
                }
            } else if (gradientState.getRadiusPxArray() != null) {
                buildPathIfDirty();
                canvas.drawPath(this.path, this.fillPaint);
                if (z && (paint4 = this.strokePaint) != null) {
                    canvas.drawPath(this.path, paint4);
                }
            } else if (gradientState.getRadiusPx() > f) {
                float fMin = (float) Math.min(gradientState.getRadiusPx(), Math.min(this.rect.width(), this.rect.height()) * ((double) 0.5f));
                canvas.drawRoundRect(this.rect, fMin, fMin, this.fillPaint);
                if (z && (paint3 = this.strokePaint) != null) {
                    canvas.drawRoundRect(this.rect, fMin, fMin, paint3);
                }
            } else {
                if (this.fillPaint.getColor() != 0 || colorFilter != null || this.fillPaint.getShader() != null) {
                    canvas.drawRect(this.rect, this.fillPaint);
                }
                if (z && (paint2 = this.strokePaint) != null) {
                    canvas.drawRect(this.rect, paint2);
                }
            }
            if (z3) {
                canvas.restore();
                return;
            }
            this.fillPaint.setAlpha(alpha);
            if (!z || (paint5 = this.strokePaint) == null) {
                return;
            }
            paint5.setAlpha(alpha2);
        }
    }

    public final void buildPathIfDirty() {
        GradientState gradientState = this.gradientState;
        if (this.pathIsDirty) {
            ensureValidRect();
            this.path.reset();
            float[] radiusPxArray = gradientState.getRadiusPxArray();
            if (radiusPxArray != null) {
                this.path.addRoundRect(this.rect, radiusPxArray, Path.Direction.CW);
            }
            this.pathIsDirty = false;
        }
    }

    public final Path buildRing(GradientState gradientState) {
        float fWidth;
        float fWidth2;
        Path path = this.ringPath;
        if (path != null && !this.pathIsDirty) {
            return path;
        }
        this.pathIsDirty = false;
        float level = (getLevel() * 360.0f) / 10000.0f;
        RectF rectF = new RectF(this.rect);
        float fWidth3 = rectF.width() / 2.0f;
        float fHeight = rectF.height() / 2.0f;
        if (gradientState.getThicknessPx() != -1) {
            fWidth = gradientState.getThicknessPx();
        } else {
            fWidth = rectF.width() / gradientState.getThicknessRatio();
        }
        if (gradientState.getInnerRadiusPx() != -1) {
            fWidth2 = gradientState.getInnerRadiusPx();
        } else {
            fWidth2 = rectF.width() / gradientState.getInnerRadiusRatio();
        }
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(fWidth3 - fWidth2, fHeight - fWidth2);
        RectF rectF3 = new RectF(rectF2);
        float f = -fWidth;
        rectF3.inset(f, f);
        Path path2 = this.ringPath;
        if (path2 != null) {
            path2.reset();
        } else {
            path2 = new Path();
            this.ringPath = path2;
        }
        if (level < 360.0f && level > -360.0f) {
            path2.setFillType(Path.FillType.EVEN_ODD);
            float f2 = fWidth3 + fWidth2;
            path2.moveTo(f2, fHeight);
            path2.lineTo(f2 + fWidth, fHeight);
            path2.arcTo(rectF3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, level, false);
            path2.arcTo(rectF2, level, -level, false);
            path2.close();
        } else {
            path2.addOval(rectF3, Path.Direction.CW);
            path2.addOval(rectF2, Path.Direction.CCW);
        }
        path2.addOval(rectF3, Path.Direction.CW);
        path2.addOval(rectF2, Path.Direction.CCW);
        return path2;
    }

    public final void setColor(int i) {
        this.gradientState.setSolidColorsInternal(ColorStateList.valueOf(i));
        this.fillPaint.setColor(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] stateSet) {
        boolean z;
        ColorStateList strokeColors;
        int colorForState;
        int colorForState2;
        Intrinsics.checkNotNullParameter(stateSet, "stateSet");
        GradientState gradientState = this.gradientState;
        ColorStateList solidColors = gradientState.getSolidColors();
        if (solidColors == null || this.fillPaint.getColor() == (colorForState2 = solidColors.getColorForState(stateSet, 0))) {
            z = false;
        } else {
            this.fillPaint.setColor(colorForState2);
            z = true;
        }
        Paint paint = this.strokePaint;
        if (paint != null && (strokeColors = gradientState.getStrokeColors()) != null && paint.getColor() != (colorForState = strokeColors.getColorForState(stateSet, 0))) {
            paint.setColor(colorForState);
            z = true;
        }
        if (gradientState.getTint() != null && gradientState.getBlendMode() != null) {
            this.blendModeColorFilter = updateBlendModeFilter(this.blendModeColorFilter, gradientState.getTint(), gradientState.getBlendMode());
            z = true;
        }
        if (!z) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList solidColors;
        ColorStateList strokeColors;
        ColorStateList tint;
        GradientState gradientState = this.gradientState;
        return super.isStateful() || ((solidColors = gradientState.getSolidColors()) != null && solidColors.isStateful()) || (((strokeColors = gradientState.getStrokeColors()) != null && strokeColors.isStateful()) || ((tint = gradientState.getTint()) != null && tint.isStateful()));
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.gradientState.getChangingConfigurationsParam();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.alpha != i) {
            this.alpha = i;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.colorFilter != colorFilter) {
            this.colorFilter = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.gradientState.setTint(colorStateList);
        this.blendModeColorFilter = updateBlendModeFilter(this.blendModeColorFilter, colorStateList, this.gradientState.getBlendMode());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintBlendMode(BlendMode blendMode) {
        this.gradientState.setBlendMode(blendMode);
        this.blendModeColorFilter = updateBlendModeFilter(this.blendModeColorFilter, this.gradientState.getTint(), blendMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        super.onBoundsChange(rect);
        this.ringPath = null;
        this.pathIsDirty = true;
        this.gradientIsDirty = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        super.onLevelChange(i);
        this.gradientIsDirty = true;
        this.pathIsDirty = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.gradientState.getDither() != z) {
            this.gradientState.setDither(z);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return (this.alpha == 255 && this.gradientState.getOpaqueOverBounds() && isOpaqueForState()) ? -1 : -3;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0057. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean ensureValidRect() {
        /*
            Method dump skipped, instruction units count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.util.gradient.GradientDrawable.ensureValidRect():boolean");
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.gradientState.getWidthPx();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.gradientState.getHeightPx();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        GradientState gradientState = this.gradientState;
        gradientState.setChangingConfigurationsParam(getChangingConfigurations());
        return gradientState;
    }

    public final boolean isOpaqueForState() {
        Paint paint = this.strokePaint;
        if (this.gradientState.getStrokeWidthPx() < 0 || paint == null || GradientDrawableKt.isOpaque(paint.getColor())) {
            return this.gradientState.getGradientColors() != null || GradientDrawableKt.isOpaque(this.fillPaint.getColor());
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        GradientState gradientState = this.gradientState;
        Paint paint = this.strokePaint;
        Rect bounds = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds()");
        boolean opaqueOverShape = gradientState.getOpaqueOverShape();
        float fMin = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        outline.setAlpha((opaqueOverShape && (this.gradientState.getStrokeWidthPx() <= 0 || paint == null || paint.getAlpha() == this.fillPaint.getAlpha())) ? modulateAlpha(this.fillPaint.getAlpha()) / 255.0f : 0.0f);
        int shape = gradientState.getShape();
        if (shape != 0) {
            if (shape == 1) {
                outline.setOval(bounds);
                return;
            } else {
                if (shape != 2) {
                    return;
                }
                float strokeWidth = paint != null ? paint.getStrokeWidth() * 0.5f : 1.0E-4f;
                float fCenterY = bounds.centerY();
                outline.setRect(bounds.left, (int) Math.floor(fCenterY - strokeWidth), bounds.right, (int) Math.ceil(fCenterY + strokeWidth));
                return;
            }
        }
        float[] radiusPxArray = gradientState.getRadiusPxArray();
        if (radiusPxArray != null) {
            buildPathIfDirty();
            if (Build.VERSION.SDK_INT >= 30) {
                outline.setPath(this.path);
                return;
            } else {
                outline.setRoundRect(bounds, ArraysKt___ArraysKt.sum(radiusPxArray));
                return;
            }
        }
        if (gradientState.getRadiusPx() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            fMin = (float) Math.min(gradientState.getRadiusPx(), Math.min(bounds.width(), bounds.height()) * ((double) 0.5f));
        }
        outline.setRoundRect(bounds, fMin);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (super.mutate() == this) {
            this.gradientState = new GradientState(this.gradientState);
            updateLocalState();
        }
        return this;
    }

    public final void updateLocalState() {
        GradientState gradientState = this.gradientState;
        ColorStateList solidColors = gradientState.getSolidColors();
        if (solidColors != null) {
            this.fillPaint.setColor(solidColors.getColorForState(getState(), 0));
        } else if (gradientState.getGradientColors() == null) {
            this.fillPaint.setColor(0);
        } else {
            this.fillPaint.setColor(-16777216);
        }
        this.padding = gradientState.getPadding();
        int strokeWidthPx = gradientState.getStrokeWidthPx();
        if (strokeWidthPx >= 0) {
            Paint paint = this.strokePaint;
            if (paint == null) {
                paint = new Paint(1);
                this.strokePaint = paint;
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(strokeWidthPx);
            }
            ColorStateList strokeColors = gradientState.getStrokeColors();
            if (strokeColors != null) {
                paint.setColor(strokeColors.getColorForState(getState(), 0));
            }
            float strokeDashWidthPx = gradientState.getStrokeDashWidthPx();
            if (strokeDashWidthPx != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                paint.setPathEffect(new DashPathEffect(new float[]{strokeDashWidthPx, gradientState.getStrokeDashGapPx()}, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
            }
        }
        this.blendModeColorFilter = updateBlendModeFilter(this.blendModeColorFilter, gradientState.getTint(), gradientState.getBlendMode());
        this.gradientIsDirty = true;
        gradientState.computeOpacity();
    }

    public final BlendModeColorFilter updateBlendModeFilter(BlendModeColorFilter blendModeColorFilter, ColorStateList colorStateList, BlendMode blendMode) {
        if (colorStateList == null || blendMode == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 29) {
            return blendModeColorFilter;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        return (blendModeColorFilter != null && blendModeColorFilter.getColor() == colorForState && blendModeColorFilter.getMode() == blendMode) ? blendModeColorFilter : GradientDrawable$$ExternalSyntheticApiModelOutline2.m(colorForState, blendMode);
    }

    /* JADX INFO: compiled from: GradientDrawable.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: compiled from: GradientDrawable.kt */
    public static final class GradientState extends Drawable.ConstantState {
        public int angle;
        public BlendMode blendMode;
        public float centerX;
        public float centerY;
        public int changingConfigurationsParam;
        public boolean dither;
        public ColorStateList[] gradientColors;
        public float gradientRadius;
        public int gradientRadiusType;
        public int gradientType;
        public int heightPx;
        public int innerRadiusPx;
        public float innerRadiusRatio;
        public boolean opaqueOverBounds;
        public boolean opaqueOverShape;
        public Orientation orientation;
        public Rect padding;
        public float[] positions;
        public float radiusPx;
        public float[] radiusPxArray;
        public int shape;
        public ColorStateList solidColors;
        public ColorStateList strokeColors;
        public float strokeDashGapPx;
        public float strokeDashWidthPx;
        public int strokeWidthPx;
        public int thicknessPx;
        public float thicknessRatio;
        public ColorStateList tint;
        public int widthPx;

        public final int getChangingConfigurationsParam() {
            return this.changingConfigurationsParam;
        }

        public final void setChangingConfigurationsParam(int i) {
            this.changingConfigurationsParam = i;
        }

        public final int getShape() {
            return this.shape;
        }

        public final int getGradientType() {
            return this.gradientType;
        }

        public final Orientation getOrientation() {
            return this.orientation;
        }

        public final ColorStateList getSolidColors() {
            return this.solidColors;
        }

        public final ColorStateList getStrokeColors() {
            return this.strokeColors;
        }

        public final ColorStateList[] getGradientColors() {
            return this.gradientColors;
        }

        public final float[] getPositions() {
            return this.positions;
        }

        public final int getStrokeWidthPx() {
            return this.strokeWidthPx;
        }

        public final float getStrokeDashWidthPx() {
            return this.strokeDashWidthPx;
        }

        public final float getStrokeDashGapPx() {
            return this.strokeDashGapPx;
        }

        public final float getRadiusPx() {
            return this.radiusPx;
        }

        public final float[] getRadiusPxArray() {
            return this.radiusPxArray;
        }

        public final Rect getPadding() {
            return this.padding;
        }

        public final int getWidthPx() {
            return this.widthPx;
        }

        public final int getHeightPx() {
            return this.heightPx;
        }

        public final float getInnerRadiusRatio() {
            return this.innerRadiusRatio;
        }

        public final float getThicknessRatio() {
            return this.thicknessRatio;
        }

        public final int getInnerRadiusPx() {
            return this.innerRadiusPx;
        }

        public final int getThicknessPx() {
            return this.thicknessPx;
        }

        public final boolean getDither() {
            return this.dither;
        }

        public final void setDither(boolean z) {
            this.dither = z;
        }

        public final float getCenterX() {
            return this.centerX;
        }

        public final float getCenterY() {
            return this.centerY;
        }

        public final float getGradientRadius() {
            return this.gradientRadius;
        }

        public final int getGradientRadiusType() {
            return this.gradientRadiusType;
        }

        public final boolean getOpaqueOverBounds() {
            return this.opaqueOverBounds;
        }

        public final boolean getOpaqueOverShape() {
            return this.opaqueOverShape;
        }

        public final ColorStateList getTint() {
            return this.tint;
        }

        public final void setTint(ColorStateList colorStateList) {
            this.tint = colorStateList;
        }

        public final BlendMode getBlendMode() {
            return this.blendMode;
        }

        public final void setBlendMode(BlendMode blendMode) {
            this.blendMode = blendMode;
        }

        public GradientState(Orientation orientation, int[] iArr) {
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            this.strokeWidthPx = -1;
            this.widthPx = -1;
            this.heightPx = -1;
            this.innerRadiusRatio = 3.0f;
            this.thicknessRatio = 9.0f;
            this.innerRadiusPx = -1;
            this.thicknessPx = -1;
            this.centerX = 0.5f;
            this.centerY = 0.5f;
            this.gradientRadius = 0.5f;
            this.blendMode = Build.VERSION.SDK_INT >= 29 ? BlendMode.SRC_IN : null;
            this.orientation = orientation;
            setGradientColorsInternal(iArr);
        }

        public GradientState(GradientState originalGradientState) {
            Intrinsics.checkNotNullParameter(originalGradientState, "originalGradientState");
            this.strokeWidthPx = -1;
            this.widthPx = -1;
            this.heightPx = -1;
            this.innerRadiusRatio = 3.0f;
            this.thicknessRatio = 9.0f;
            this.innerRadiusPx = -1;
            this.thicknessPx = -1;
            this.centerX = 0.5f;
            this.centerY = 0.5f;
            this.gradientRadius = 0.5f;
            this.blendMode = Build.VERSION.SDK_INT >= 29 ? BlendMode.SRC_IN : null;
            this.changingConfigurationsParam = originalGradientState.changingConfigurationsParam;
            this.shape = originalGradientState.shape;
            this.gradientType = originalGradientState.gradientType;
            this.angle = originalGradientState.angle;
            this.orientation = originalGradientState.orientation;
            this.solidColors = originalGradientState.solidColors;
            this.strokeColors = originalGradientState.strokeColors;
            ColorStateList[] colorStateListArr = originalGradientState.gradientColors;
            if (colorStateListArr != null) {
                this.gradientColors = (ColorStateList[]) colorStateListArr.clone();
            }
            float[] fArr = originalGradientState.positions;
            if (fArr != null) {
                this.positions = (float[]) fArr.clone();
            }
            this.strokeWidthPx = originalGradientState.strokeWidthPx;
            this.strokeDashWidthPx = originalGradientState.strokeDashWidthPx;
            this.strokeDashGapPx = originalGradientState.strokeDashGapPx;
            this.radiusPx = originalGradientState.radiusPx;
            float[] fArr2 = originalGradientState.radiusPxArray;
            if (fArr2 != null) {
                this.radiusPxArray = (float[]) fArr2.clone();
            }
            Rect rect = originalGradientState.padding;
            if (rect != null) {
                this.padding = new Rect(rect);
            }
            this.widthPx = originalGradientState.widthPx;
            this.heightPx = originalGradientState.heightPx;
            this.innerRadiusRatio = originalGradientState.innerRadiusRatio;
            this.thicknessRatio = originalGradientState.thicknessRatio;
            this.innerRadiusPx = originalGradientState.innerRadiusPx;
            this.thicknessPx = originalGradientState.thicknessPx;
            this.dither = originalGradientState.dither;
            this.centerX = originalGradientState.centerX;
            this.centerY = originalGradientState.centerY;
            this.gradientRadius = originalGradientState.gradientRadius;
            this.gradientRadiusType = originalGradientState.gradientRadiusType;
            this.opaqueOverBounds = originalGradientState.opaqueOverBounds;
            this.opaqueOverShape = originalGradientState.opaqueOverShape;
            this.tint = originalGradientState.tint;
            this.blendMode = originalGradientState.blendMode;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new GradientDrawable(this, (DefaultConstructorMarker) null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i = this.changingConfigurationsParam;
            ColorStateList colorStateList = this.strokeColors;
            int changingConfigurations = i | (colorStateList != null ? colorStateList.getChangingConfigurations() : 0);
            ColorStateList colorStateList2 = this.solidColors;
            int changingConfigurations2 = changingConfigurations | (colorStateList2 != null ? colorStateList2.getChangingConfigurations() : 0);
            ColorStateList colorStateList3 = this.tint;
            return changingConfigurations2 | (colorStateList3 != null ? colorStateList3.getChangingConfigurations() : 0);
        }

        public final int[] getColors() {
            ColorStateList[] colorStateListArr = this.gradientColors;
            if (colorStateListArr != null) {
                return GradientDrawableKt.mapToIntArray(colorStateListArr, new Function1<ColorStateList, Integer>() { // from class: io.bidmachine.util.gradient.GradientDrawable$GradientState$getColors$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Integer invoke(ColorStateList colorStateList) {
                        if (colorStateList != null) {
                            return Integer.valueOf(colorStateList.getDefaultColor());
                        }
                        return null;
                    }
                });
            }
            return null;
        }

        public final void setGradientTypeInternal(int i) {
            this.gradientType = i;
        }

        public final void setGradientColorsInternal(int[] iArr) {
            ColorStateList[] colorStateListArr;
            if (iArr != null) {
                colorStateListArr = this.gradientColors;
                if (colorStateListArr == null || colorStateListArr.length != iArr.length) {
                    colorStateListArr = new ColorStateList[iArr.length];
                }
                int length = iArr.length;
                for (int i = 0; i < length; i++) {
                    ColorStateList colorStateListValueOf = ColorStateList.valueOf(iArr[i]);
                    Intrinsics.checkNotNullExpressionValue(colorStateListValueOf, "valueOf(it)");
                    colorStateListArr[i] = colorStateListValueOf;
                }
            } else {
                colorStateListArr = null;
            }
            this.gradientColors = colorStateListArr;
            this.solidColors = null;
            computeOpacity();
        }

        public final void setSolidColorsInternal(ColorStateList colorStateList) {
            this.gradientColors = null;
            this.solidColors = colorStateList;
            computeOpacity();
        }

        public final void setStrokeInternal(int i, ColorStateList colorStateList, float f, float f2) {
            this.strokeWidthPx = i;
            this.strokeColors = colorStateList;
            this.strokeDashWidthPx = f;
            this.strokeDashGapPx = f2;
            computeOpacity();
        }

        public final void setCornerRadiusInternal(float f) {
            if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                f = 0.0f;
            }
            this.radiusPx = f;
            this.radiusPxArray = null;
            computeOpacity();
        }

        public final void setGradientRadiusInternal(float f, int i) {
            this.gradientRadius = f;
            this.gradientRadiusType = i;
        }

        public final void computeOpacity() {
            Boolean boolValueOf;
            boolean z;
            boolean z2 = false;
            this.opaqueOverBounds = false;
            this.opaqueOverShape = false;
            ColorStateList[] colorStateListArr = this.gradientColors;
            if (colorStateListArr == null && this.solidColors == null) {
                return;
            }
            if (colorStateListArr != null) {
                int length = colorStateListArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        ColorStateList colorStateList = colorStateListArr[i];
                        if (colorStateList != null && !GradientDrawableKt.isOpaque(colorStateList.getDefaultColor())) {
                            z = true;
                            break;
                        }
                        i++;
                    } else {
                        z = false;
                        break;
                    }
                }
                boolValueOf = Boolean.valueOf(z);
            } else {
                boolValueOf = null;
            }
            if (Intrinsics.areEqual(boolValueOf, Boolean.TRUE)) {
                return;
            }
            this.opaqueOverShape = true;
            if (this.shape == 0 && this.radiusPx <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && this.radiusPxArray == null) {
                z2 = true;
            }
            this.opaqueOverBounds = z2;
        }
    }
}
