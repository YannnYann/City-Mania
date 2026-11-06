package io.bidmachine.rendering.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.model.WatermarkParams;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt___StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class SdkWatermarkView extends View {
    public Bitmap a;
    public final Paint b;
    public int c;
    public WatermarkParams.Location d;
    public Function1 e;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WatermarkParams.Location.values().length];
            try {
                iArr[WatermarkParams.Location.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WatermarkParams.Location.TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WatermarkParams.Location.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WatermarkParams.Location.BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WatermarkParams.Location.BOTTOM_CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WatermarkParams.Location.BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        public final String a(int i) {
            return "";
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return a(((Number) obj).intValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SdkWatermarkView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Paint paint = new Paint();
        paint.setColor(-16777216);
        this.b = paint;
        this.c = -16777216;
        this.d = WatermarkParams.Location.TOP_LEFT;
        this.e = a.a;
        setClickable(false);
        setFocusable(false);
    }

    public final Bitmap a() {
        Bitmap bitmap = this.a;
        if (bitmap != null) {
            return bitmap;
        }
        int measuredWidth = getMeasuredWidth() - 8;
        if (measuredWidth < 0) {
            this.a = null;
            return null;
        }
        String string = (String) this.e.invoke(Integer.valueOf(measuredWidth));
        if (string.length() > measuredWidth) {
            string = StringsKt___StringsKt.reversed(StringsKt___StringsKt.take(StringsKt___StringsKt.reversed(string).toString(), measuredWidth)).toString();
        }
        String str = "bmc:" + string + ":cmb";
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(str.length(), 1, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(watermark.l… Bitmap.Config.ARGB_8888)");
        int iRed = Color.red(this.c);
        int iGreen = Color.green(this.c);
        int iBlue = Color.blue(this.c);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            bitmapCreateBitmap.setPixel(i, 0, a(str.charAt(i), iRed, iGreen, iBlue));
        }
        this.a = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    public final void clearCache() {
        this.a = null;
    }

    public final int getBaseColor() {
        return this.c;
    }

    public final WatermarkParams.Location getLocation() {
        return this.d;
    }

    public final Function1<Integer, String> getPayloadProvider() {
        return this.e;
    }

    public final void invalidateWatermark() {
        clearCache();
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Bitmap bitmapA = a();
        if (bitmapA == null) {
            return;
        }
        canvas.save();
        int i = WhenMappings.$EnumSwitchMapping$0[this.d.ordinal()];
        if (i == 2) {
            canvas.translate((canvas.getWidth() - bitmapA.getWidth()) / 2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        } else if (i == 3) {
            canvas.translate(canvas.getWidth() - bitmapA.getWidth(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        } else if (i == 4) {
            canvas.translate(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, getMeasuredHeight() - 1);
        } else if (i == 5) {
            canvas.translate((canvas.getWidth() - bitmapA.getWidth()) / 2, getMeasuredHeight() - 1);
        } else if (i == 6) {
            canvas.translate(canvas.getWidth() - bitmapA.getWidth(), getMeasuredHeight() - 1);
        }
        canvas.drawBitmap(bitmapA, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (Paint) null);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            invalidateWatermark();
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View changedView, int i) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        if (i != 0) {
            clearCache();
        }
    }

    public final void setBaseColor(int i) {
        int iRgb = Color.rgb(RangesKt___RangesKt.coerceIn(Color.red(i), 0, 245), RangesKt___RangesKt.coerceIn(Color.green(i), 0, 245), RangesKt___RangesKt.coerceIn(Color.blue(i), 0, 245));
        if (this.c != iRgb) {
            invalidateWatermark();
        }
        this.b.setColor(iRgb);
        this.c = iRgb;
    }

    public final void setLocation(WatermarkParams.Location value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.d = value;
        invalidate();
    }

    public final void setPayloadProvider(Function1<? super Integer, String> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (!Intrinsics.areEqual(this.e, value)) {
            invalidateWatermark();
        }
        this.e = value;
    }

    public final int a(char c, int i, int i2, int i3) {
        if (c < 0 || c >= 256) {
            return -16777216;
        }
        return Color.rgb(i + (c % 9), i2 + ((c / 9) % 9), i3 + ((c / 81) % 9));
    }
}
