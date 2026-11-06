package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import com.google.gson.JsonObject;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class ix1 {
    public final Context a;
    public final f0 b;
    public final ao0 c;

    public ix1(Context context, f0 activityTracker, ao0 displayUtil) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        this.a = context;
        this.b = activityTracker;
        this.c = displayUtil;
    }

    public static Object a(r31 r31Var, String str, String str2, Continuation continuation) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("action", str2);
        jsonObject.addProperty("message", str);
        Object objA = r31Var.a(jsonObject, "onError", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public final Object a(r31 r31Var, Continuation continuation) {
        Context contextC = this.c.c(this.a);
        Display displayA = this.c.a(this.a);
        if (displayA == null) {
            f01.b("Unable to get Display in MraidAfmaDispatcher", null);
            return Unit.INSTANCE;
        }
        int rotation = displayA.getRotation();
        DisplayMetrics displayMetricsA = zn0.a(contextC);
        float f = displayMetricsA.density;
        int i = displayMetricsA.widthPixels;
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        DisplayMetrics displayMetrics = contextC.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(i / displayMetrics.density);
        int i2 = displayMetricsA.heightPixels;
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        DisplayMetrics displayMetrics2 = contextC.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(i2 / displayMetrics2.density);
        Activity activityG = this.b.g();
        Pair pairB = activityG != null ? zn0.b(activityG) : new Pair(Boxing.boxInt(iRoundToInt), Boxing.boxInt(iRoundToInt2));
        int iIntValue = ((Number) pairB.component1()).intValue();
        int iIntValue2 = ((Number) pairB.component2()).intValue();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("width", Boxing.boxInt(iRoundToInt));
        jsonObject.addProperty("height", Boxing.boxInt(iRoundToInt2));
        jsonObject.addProperty("maxSizeWidth", Boxing.boxInt(iIntValue));
        jsonObject.addProperty("maxSizeHeight", Boxing.boxInt(iIntValue2));
        jsonObject.addProperty("density", Boxing.boxDouble(f));
        jsonObject.addProperty("rotation", Boxing.boxInt(rotation));
        Object objA = r31Var.a(jsonObject, "onScreenInfoChanged", continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public static Object a(r31 r31Var, int i, int i2, int i3, int i4, xy1 xy1Var) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("x", Boxing.boxInt(i));
        jsonObject.addProperty("y", Boxing.boxInt(i2));
        jsonObject.addProperty("width", Boxing.boxInt(i3));
        jsonObject.addProperty("height", Boxing.boxInt(i4));
        Object objA = r31Var.a(jsonObject, "onSizeChanged", xy1Var);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    public static Object a(r31 r31Var, String str, ContinuationImpl continuationImpl) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("state", str);
        Object objA = r31Var.a(jsonObject, "onStateChanged", continuationImpl);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
