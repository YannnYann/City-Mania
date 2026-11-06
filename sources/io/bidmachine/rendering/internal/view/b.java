package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.SystemClock;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.internal.InterfaceC4251g;
import io.bidmachine.rendering.internal.k;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.model.AppearanceParams;
import io.bidmachine.rendering.model.FontStyleType;
import io.bidmachine.util.UiUtils;
import io.bidmachine.util.UtilsKt;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends View implements InterfaceC4251g {
    public static final a s = new a(null);
    public final Paint a;
    public final Paint b;
    public final Paint c;
    public final long d;
    public final RectF e;
    public final RectF f;
    public final c g;
    public final AtomicBoolean h;
    public final AtomicBoolean i;
    public d j;
    public Runnable k;
    public float l;
    public float m;
    public float n;
    public float o;
    public int p;
    public byte q;
    public boolean r;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.view.b$b, reason: collision with other inner class name */
    public final class C1206b implements s {
        public C1206b() {
        }

        @Override // io.bidmachine.util.SafeRunnable
        public void onRun() {
            boolean z = !b.this.r || b.this.isShown();
            if (z) {
                b.this.g.i();
            } else {
                b.this.g.h();
            }
            long jB = b.this.g.b();
            long jC = b.this.g.c();
            if (z) {
                b.this.a((jC * 100.0f) / jB, (int) Math.ceil((jB - jC) / ((double) 1000)));
            }
            if (b.this.g.d()) {
                b.this.c();
            } else {
                UiUtils.onUiThread(this, b.this.d);
            }
        }
    }

    public interface d {
        void a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint(1);
        paint.setColor(k.d);
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.a = paint;
        Paint paint2 = new Paint(1);
        int i = k.c;
        paint2.setColor(i);
        paint2.setStyle(Paint.Style.STROKE);
        this.b = paint2;
        Paint paint3 = new Paint(1);
        paint3.setColor(i);
        paint3.setStyle(style);
        paint3.setAntiAlias(true);
        paint3.setTextAlign(Paint.Align.CENTER);
        paint3.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
        this.c = paint3;
        this.d = 16L;
        this.e = new RectF();
        this.f = new RectF();
        this.g = new c();
        this.h = new AtomicBoolean(false);
        this.i = new AtomicBoolean(false);
        this.o = 100.0f;
        this.q = (byte) -1;
        a(context);
    }

    public final void e() {
        d();
        if (this.i.get() && !this.h.get()) {
            this.g.g();
            C1206b c1206b = new C1206b();
            this.k = c1206b;
            UiUtils.onUiThread(c1206b, this.d);
        }
    }

    public final void f() {
        this.i.set(true);
        this.h.set(false);
        this.g.f();
        e();
    }

    public final Paint getBackgroundArcPaint$bidmachine_android_sdk_bb_3_8_0() {
        return this.a;
    }

    public final d getListener() {
        return this.j;
    }

    public final Paint getMainArcPaint$bidmachine_android_sdk_bb_3_8_0() {
        return this.b;
    }

    public final Paint getTextPaint$bidmachine_android_sdk_bb_3_8_0() {
        return this.c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (getWidth() == 0 || getHeight() == 0 || this.p == 0) {
            return;
        }
        a(canvas);
        b(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public final void setDurationMs(long j) {
        this.g.a(j);
    }

    public final void setListener(d dVar) {
        this.j = dVar;
    }

    public static class c {
        public boolean a;
        public long b;
        public long c;
        public long d;

        public final void a(long j) {
            this.b = j;
            f();
        }

        public final long b() {
            return this.b;
        }

        public final long c() {
            return this.c;
        }

        public final boolean d() {
            return this.c >= this.b;
        }

        public final void e() {
            this.a = false;
        }

        public final void f() {
            this.c = 0L;
            this.d = a();
        }

        public final void g() {
            this.a = true;
            this.d = a();
        }

        public final void h() {
            this.d = a();
        }

        public final void i() {
            if (this.a) {
                long jA = a();
                this.c = Math.min(this.b, this.c + (jA - this.d));
                this.d = jA;
            }
        }

        public long a() {
            return SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c() {
        d dVar;
        if (this.i.get() && this.h.compareAndSet(false, true) && (dVar = this.j) != null) {
            dVar.a();
        }
    }

    public final void a(Context context) {
        setLayerType(1, null);
        this.l = UtilsKt.dpToPx(context, 54.0f);
        this.m = UtilsKt.dpToPx(context, 54.0f);
        float fDpToPx = UtilsKt.dpToPx(context, 3.0f);
        this.n = fDpToPx;
        this.b.setStrokeWidth(fDpToPx);
        a();
    }

    public final void b() {
        d();
        this.j = null;
    }

    public final void d() {
        this.g.e();
        Runnable runnable = this.k;
        if (runnable != null) {
            UiUtils.cancelOnUiThread(runnable);
        }
        this.k = null;
    }

    public final void b(Canvas canvas) {
        canvas.drawText(String.valueOf(this.p), this.l, this.m - ((this.c.descent() + this.c.ascent()) / 2), this.c);
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4251g
    public void a(AppearanceParams appearanceParams) {
        Intrinsics.checkNotNullParameter(appearanceParams, "appearanceParams");
        FontStyleType fontStyleType = appearanceParams.getFontStyleType();
        if (fontStyleType != null) {
            this.c.setTypeface(Typeface.create(Typeface.DEFAULT, fontStyleType.getTypeface()));
        }
        Integer fillColor = appearanceParams.getFillColor();
        if (fillColor != null) {
            this.a.setColor(fillColor.intValue());
        }
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        Integer strokeWidthPx = appearanceParams.getStrokeWidthPx(context);
        if (strokeWidthPx != null) {
            float fIntValue = strokeWidthPx.intValue();
            this.n = fIntValue;
            this.b.setStrokeWidth(fIntValue);
        }
        Integer strokeColor = appearanceParams.getStrokeColor();
        if (strokeColor != null) {
            this.b.setColor(strokeColor.intValue());
        }
        a();
    }

    public final void a(float f, int i) {
        this.o = RangesKt___RangesKt.coerceIn(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 100.0f);
        this.p = i;
        postInvalidate();
    }

    public final void a() {
        float width = (getWidth() - r0) / 2.0f;
        float height = (getHeight() - r0) / 2.0f;
        float fMin = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        this.e.set(width, height, width + fMin, fMin + height);
        this.l = this.e.centerX();
        this.m = this.e.centerY();
        float f = this.n / 2;
        RectF rectF = this.f;
        RectF rectF2 = this.e;
        rectF.set(rectF2.left + f, rectF2.top + f, rectF2.right - f, rectF2.bottom - f);
        this.c.setTextSize(a(this.e, true));
    }

    public final float a(RectF rect, boolean z) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        float fWidth = rect.width();
        if (z) {
            fWidth -= this.n * 2;
        }
        return fWidth * 0.70710677f * 0.9f;
    }

    public final void a(Canvas canvas) {
        float f = 360;
        float f2 = this.q * (f - ((this.o * f) * 0.01f));
        canvas.drawArc(this.e, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 360.0f, false, this.a);
        canvas.drawArc(this.f, 270.0f, f2, false, this.b);
    }
}
