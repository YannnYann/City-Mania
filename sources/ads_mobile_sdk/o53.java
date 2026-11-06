package ads_mobile_sdk;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes.dex */
public class o53 extends FrameLayout {
    public AdSize a;

    public final void a(AdSize newSize) {
        Intrinsics.checkNotNullParameter(newSize, "newSize");
        this.a = newSize;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int height = newSize.getHeight();
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
        setMinimumHeight((int) Math.ceil(TypedValue.applyDimension(1, height, r0)));
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        int width = newSize.getWidth();
        Intrinsics.checkNotNullParameter(context2, "<this>");
        Intrinsics.checkNotNullParameter(context2, "<this>");
        Intrinsics.checkNotNullExpressionValue(context2.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
        setMinimumWidth((int) Math.ceil(TypedValue.applyDimension(1, width, r0)));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o53(Context context, AdSize adSize) {
        super(context);
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = adSize;
        setMinimumHeight(zn0.a(context, adSize.getHeight()));
        setMinimumWidth(zn0.a(context, this.a.getWidth()));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int widthInPixels;
        int heightInPixels;
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            measureChild(childAt, i, i2);
            widthInPixels = childAt.getMeasuredWidth();
            heightInPixels = childAt.getMeasuredHeight();
        } else {
            Context context = getContext();
            AdSize adSize = this.a;
            Intrinsics.checkNotNull(context);
            widthInPixels = adSize.getWidthInPixels(context);
            heightInPixels = this.a.getHeightInPixels(context);
        }
        setMeasuredDimension(View.resolveSize(RangesKt___RangesKt.coerceAtLeast(widthInPixels, getSuggestedMinimumWidth()), i), View.resolveSize(RangesKt___RangesKt.coerceAtLeast(heightInPixels, getSuggestedMinimumHeight()), i2));
    }
}
