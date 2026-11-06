package ads_mobile_sdk;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class zn0 {
    public static Rect a(Context context, Rect rect) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(rect, "rect");
        int i = rect.left;
        Intrinsics.checkNotNullParameter(context, "<this>");
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(i / a(context).density);
        int i2 = rect.top;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(i2 / displayMetrics.density);
        int i3 = rect.right;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        int iRoundToInt3 = MathKt__MathJVMKt.roundToInt(i3 / displayMetrics2.density);
        int i4 = rect.bottom;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics3 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics3, "getDisplayMetrics(...)");
        return new Rect(iRoundToInt, iRoundToInt2, iRoundToInt3, MathKt__MathJVMKt.roundToInt(i4 / displayMetrics3.density));
    }

    public static Pair b(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Window window = activity.getWindow();
        View viewFindViewById = window != null ? window.findViewById(R.id.content) : null;
        Pair pair = viewFindViewById != null ? new Pair(Integer.valueOf(viewFindViewById.getWidth()), Integer.valueOf(viewFindViewById.getHeight())) : new Pair(0, 0);
        int iIntValue = ((Number) pair.component1()).intValue();
        int iIntValue2 = ((Number) pair.component2()).intValue();
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        Integer numValueOf = Integer.valueOf(MathKt__MathJVMKt.roundToInt(iIntValue / displayMetrics.density));
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        DisplayMetrics displayMetrics2 = activity.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        return new Pair(numValueOf, Integer.valueOf(MathKt__MathJVMKt.roundToInt(iIntValue2 / displayMetrics2.density)));
    }

    public static int a(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (int) Math.ceil(TypedValue.applyDimension(1, i, a(context)));
    }

    public static DisplayMetrics a(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        return displayMetrics;
    }

    public static Pair a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Window window = activity.getWindow();
        View viewFindViewById = window != null ? window.findViewById(R.id.content) : null;
        Pair pair = viewFindViewById != null ? new Pair(Integer.valueOf(viewFindViewById.getTop()), Integer.valueOf(viewFindViewById.getBottom())) : new Pair(0, 0);
        int iIntValue = ((Number) pair.component1()).intValue();
        int iIntValue2 = ((Number) pair.component2()).intValue();
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        Integer numValueOf = Integer.valueOf(MathKt__MathJVMKt.roundToInt(iIntValue / displayMetrics.density));
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(activity, "<this>");
        DisplayMetrics displayMetrics2 = activity.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        return new Pair(numValueOf, Integer.valueOf(MathKt__MathJVMKt.roundToInt(iIntValue2 / displayMetrics2.density)));
    }

    public static int b(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return MathKt__MathJVMKt.roundToInt(i / a(context).density);
    }
}
