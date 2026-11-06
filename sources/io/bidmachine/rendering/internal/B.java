package io.bidmachine.rendering.internal;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.unity3d.services.UnityAdsConstants;
import java.util.HashSet;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class B extends Drawable {
    public static final a u = new a(null);
    public static final ImageView.ScaleType v = ImageView.ScaleType.FIT_CENTER;
    public final Bitmap a;
    public final RectF b;
    public final RectF c;
    public final int d;
    public final int e;
    public final RectF f;
    public final Paint g;
    public final RectF h;
    public final Paint i;
    public final Matrix j;
    public final RectF k;
    public Shader.TileMode l;
    public Shader.TileMode m;
    public boolean n;
    public float o;
    public final boolean[] p;
    public boolean q;
    public float r;
    public ColorStateList s;
    public ImageView.ScaleType t;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public B(Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.a = bitmap;
        this.b = new RectF();
        this.c = new RectF();
        int width = bitmap.getWidth();
        this.d = width;
        int height = bitmap.getHeight();
        this.e = height;
        RectF rectF = new RectF();
        rectF.set(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, width, height);
        this.f = rectF;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.g = paint;
        this.h = new RectF();
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.i = paint2;
        this.j = new Matrix();
        this.k = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.l = tileMode;
        this.m = tileMode;
        this.n = true;
        this.p = new boolean[]{true, true, true, true};
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(colorStateListValueOf, "valueOf(DEFAULT_BORDER_COLOR)");
        this.s = colorStateListValueOf;
        this.t = v;
        paint2.setColor(colorStateListValueOf.getColorForState(getState(), 0));
        paint2.setStrokeWidth(this.r);
    }

    public final void a() {
        float fWidth;
        float fWidth2;
        switch (b.$EnumSwitchMapping$0[this.t.ordinal()]) {
            case 1:
                this.h.set(this.b);
                RectF rectF = this.h;
                float f = this.r / 2;
                rectF.inset(f, f);
                this.j.reset();
                this.j.setTranslate(((this.h.width() - this.d) * 0.5f) + 0.5f, ((this.h.height() - this.e) * 0.5f) + 0.5f);
                break;
            case 2:
                this.h.set(this.b);
                RectF rectF2 = this.h;
                float f2 = 2;
                float f3 = this.r / f2;
                rectF2.inset(f3, f3);
                this.j.reset();
                float fHeight = this.d * this.h.height();
                float fWidth3 = this.h.width() * this.e;
                float fHeight2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                if (fHeight > fWidth3) {
                    fWidth = this.h.height() / this.e;
                    fWidth2 = (this.h.width() - (this.d * fWidth)) * 0.5f;
                } else {
                    fWidth = this.h.width() / this.d;
                    fWidth2 = 0.0f;
                    fHeight2 = (this.h.height() - (this.e * fWidth)) * 0.5f;
                }
                this.j.setScale(fWidth, fWidth);
                Matrix matrix = this.j;
                float f4 = this.r / f2;
                matrix.postTranslate(((int) (fWidth2 + 0.5f)) + f4, ((int) (fHeight2 + 0.5f)) + f4);
                break;
            case 3:
                this.j.reset();
                float fMin = (((float) this.d) > this.b.width() || ((float) this.e) > this.b.height()) ? Math.min(this.b.width() / this.d, this.b.height() / this.e) : 1.0f;
                float fWidth4 = ((this.b.width() - (this.d * fMin)) * 0.5f) + 0.5f;
                float fHeight3 = ((this.b.height() - (this.e * fMin)) * 0.5f) + 0.5f;
                this.j.setScale(fMin, fMin);
                this.j.postTranslate(fWidth4, fHeight3);
                this.h.set(this.f);
                this.j.mapRect(this.h);
                RectF rectF3 = this.h;
                float f5 = this.r / 2;
                rectF3.inset(f5, f5);
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
            case 4:
                this.h.set(this.f);
                this.j.setRectToRect(this.f, this.b, Matrix.ScaleToFit.CENTER);
                this.j.mapRect(this.h);
                RectF rectF4 = this.h;
                float f6 = this.r / 2;
                rectF4.inset(f6, f6);
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
            case 5:
                this.h.set(this.f);
                this.j.setRectToRect(this.f, this.b, Matrix.ScaleToFit.END);
                this.j.mapRect(this.h);
                RectF rectF5 = this.h;
                float f7 = this.r / 2;
                rectF5.inset(f7, f7);
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
            case 6:
                this.h.set(this.f);
                this.j.setRectToRect(this.f, this.b, Matrix.ScaleToFit.START);
                this.j.mapRect(this.h);
                RectF rectF6 = this.h;
                float f8 = this.r / 2;
                rectF6.inset(f8, f8);
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
            case 7:
                this.h.set(this.b);
                RectF rectF7 = this.h;
                float f9 = this.r / 2;
                rectF7.inset(f9, f9);
                this.j.reset();
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
            default:
                this.h.set(this.f);
                this.j.setRectToRect(this.f, this.b, Matrix.ScaleToFit.CENTER);
                this.j.mapRect(this.h);
                RectF rectF8 = this.h;
                float f10 = this.r / 2;
                rectF8.inset(f10, f10);
                this.j.setRectToRect(this.f, this.h, Matrix.ScaleToFit.FILL);
                break;
        }
        this.c.set(this.h);
        this.n = true;
    }

    public final void b(Canvas canvas) {
        float f;
        float f2;
        if (a(this.p) || this.o == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        RectF rectF = this.c;
        float f3 = rectF.left;
        float f4 = rectF.top;
        float fWidth = rectF.width() + f3;
        float fHeight = f4 + this.c.height();
        float f5 = this.o;
        float f6 = this.r / 2;
        if (this.p[0]) {
            f = f4;
        } else {
            f = f4;
            canvas.drawLine(f3 - f6, f4, f3 + f5, f, this.i);
            canvas.drawLine(f3, f - f6, f3, f + f5, this.i);
        }
        if (!this.p[1]) {
            float f7 = f;
            canvas.drawLine((fWidth - f5) - f6, f7, fWidth, f, this.i);
            canvas.drawLine(fWidth, f7 - f6, fWidth, f7 + f5, this.i);
            fWidth = fWidth;
        }
        if (this.p[2]) {
            f2 = fHeight;
        } else {
            canvas.drawLine((fWidth - f5) - f6, fHeight, fWidth + f6, fHeight, this.i);
            canvas.drawLine(fWidth, fHeight - f5, fWidth, fHeight, this.i);
            f2 = fHeight;
        }
        if (this.p[3]) {
            return;
        }
        canvas.drawLine(f3 - f6, f2, f3 + f5, f2, this.i);
        canvas.drawLine(f3, f2 - f5, f3, f2, this.i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.n) {
            BitmapShader bitmapShader = new BitmapShader(this.a, this.l, this.m);
            Shader.TileMode tileMode = this.l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.m == tileMode2) {
                bitmapShader.setLocalMatrix(this.j);
            }
            this.g.setShader(bitmapShader);
            this.n = false;
        }
        if (this.q) {
            if (this.r <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                canvas.drawOval(this.c, this.g);
                return;
            } else {
                canvas.drawOval(this.c, this.g);
                canvas.drawOval(this.h, this.i);
                return;
            }
        }
        if (!b(this.p)) {
            canvas.drawRect(this.c, this.g);
            if (this.r > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                canvas.drawRect(this.h, this.i);
                return;
            }
            return;
        }
        float f = this.o;
        if (this.r <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            canvas.drawRoundRect(this.c, f, f, this.g);
            a(canvas);
        } else {
            canvas.drawRoundRect(this.c, f, f, this.g);
            canvas.drawRoundRect(this.h, f, f, this.i);
            a(canvas);
            b(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.g.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.g.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.s.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        super.onBoundsChange(bounds);
        this.b.set(bounds);
        a();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] state) {
        Intrinsics.checkNotNullParameter(state, "state");
        int colorForState = this.s.getColorForState(state, 0);
        if (this.i.getColor() == colorForState) {
            return super.onStateChange(state);
        }
        this.i.setColor(colorForState);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.g.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.g.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.g.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.g.setFilterBitmap(z);
        invalidateSelf();
    }

    public final B b(float f) {
        a(f, f, f, f);
        return this;
    }

    public final boolean b(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final void a(Canvas canvas) {
        if (a(this.p) || this.o == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return;
        }
        RectF rectF = this.c;
        float f = rectF.left;
        float f2 = rectF.top;
        float fWidth = rectF.width() + f;
        float fHeight = this.c.height() + f2;
        float f3 = this.o;
        if (!this.p[0]) {
            this.k.set(f, f2, f + f3, f2 + f3);
            canvas.drawRect(this.k, this.g);
        }
        if (!this.p[1]) {
            this.k.set(fWidth - f3, f2, fWidth, f3);
            canvas.drawRect(this.k, this.g);
        }
        if (!this.p[2]) {
            this.k.set(fWidth - f3, fHeight - f3, fWidth, fHeight);
            canvas.drawRect(this.k, this.g);
        }
        if (this.p[3]) {
            return;
        }
        this.k.set(f, fHeight - f3, f3 + f, fHeight);
        canvas.drawRect(this.k, this.g);
    }

    public final B a(float f, float f2, float f3, float f4) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f));
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.remove(Float.valueOf(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float fFloatValue = ((Number) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(fFloatValue) && !Float.isNaN(fFloatValue) && fFloatValue >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    this.o = fFloatValue;
                }
            } else {
                this.o = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
            boolean[] zArr = this.p;
            zArr[0] = f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            zArr[1] = f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            zArr[2] = f3 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            zArr[3] = f4 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            return this;
        }
        return this;
    }

    public final B a(float f) {
        this.r = f;
        this.i.setStrokeWidth(f);
        return this;
    }

    public final B a(int i) {
        return a(ColorStateList.valueOf(i));
    }

    public final B a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
            Intrinsics.checkNotNullExpressionValue(colorStateList, "valueOf(0)");
        }
        this.s = colorStateList;
        this.i.setColor(colorStateList.getColorForState(getState(), 0));
        return this;
    }

    public final B a(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = v;
        }
        if (this.t != scaleType) {
            this.t = scaleType;
            a();
        }
        return this;
    }

    public final boolean a(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }
}
