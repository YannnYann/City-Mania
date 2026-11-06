package ads_mobile_sdk;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.view.ScrollingView;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.ironsource.C3920x1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class k32 {
    public final Context a;
    public final ex0 b;
    public final ur3 c;

    public k32(Context context, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = context;
        this.b = flags;
        this.c = traceLogger;
    }

    public final JsonObject a(String str, Point startingPoint, Point currentPoint) {
        Intrinsics.checkNotNullParameter(startingPoint, "startingPoint");
        Intrinsics.checkNotNullParameter(currentPoint, "currentPoint");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("x", Integer.valueOf(zn0.b(this.a, currentPoint.x)));
        jsonObject.addProperty("y", Integer.valueOf(zn0.b(this.a, currentPoint.y)));
        jsonObject.addProperty("start_x", Integer.valueOf(zn0.b(this.a, startingPoint.x)));
        jsonObject.addProperty("start_y", Integer.valueOf(zn0.b(this.a, startingPoint.y)));
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.add("click_point", jsonObject);
        jsonObject2.addProperty("asset_id", str);
        return jsonObject2;
    }

    public final JsonObject b(FrameLayout frameLayout) {
        i32 i32Var;
        if (frameLayout == null) {
            return new JsonObject();
        }
        ViewParent parent = frameLayout.getParent();
        loop0: while (true) {
            if (parent == null) {
                i32Var = i32.b;
                break;
            }
            if (parent instanceof ScrollView) {
                i32Var = i32.c;
                break;
            }
            if (parent instanceof AbsListView) {
                i32Var = i32.d;
                break;
            }
            if (parent instanceof HorizontalScrollView) {
                i32Var = i32.e;
                break;
            }
            if (parent instanceof ScrollingView) {
                i32Var = i32.f;
                break;
            }
            ex0 ex0Var = this.b;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:native:enable_scroll_view_type_by_keyword", C3522b4.i.W);
            if (((Boolean) ex0Var.a("gads:native:enable_scroll_view_type_by_keyword", Boolean.FALSE, yr.b)).booleanValue()) {
                ex0 ex0Var2 = this.b;
                ex0Var2.getClass();
                List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"recycler", "viewflipper"});
                Intrinsics.checkNotNullParameter("gads:native:scrollable_container_keywords", C3522b4.i.W);
                Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                for (String str : (List) ex0Var2.a("gads:native:scrollable_container_keywords", defaultValue, yr.g)) {
                    String name = parent.getClass().getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String lowerCase = name.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) str, false, 2, (Object) null)) {
                        i32Var = i32.g;
                        break loop0;
                    }
                }
            }
            parent = parent.getParent();
        }
        JsonObject jsonObject = new JsonObject();
        ex0 ex0Var3 = this.b;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gads:native:enable_contained_in_scroll_view_signal", C3522b4.i.W);
        Boolean bool = Boolean.TRUE;
        ir irVar = yr.b;
        if (((Boolean) ex0Var3.a("gads:native:enable_contained_in_scroll_view_signal", bool, irVar)).booleanValue()) {
            jsonObject.addProperty("contained_in_scroll_view", Boolean.valueOf(i32Var != i32.b));
        }
        ex0 ex0Var4 = this.b;
        ex0Var4.getClass();
        Intrinsics.checkNotNullParameter("gads:native:enable_scroll_view_type_signal", C3522b4.i.W);
        if (((Boolean) ex0Var4.a("gads:native:enable_scroll_view_type_signal", bool, irVar)).booleanValue()) {
            jsonObject.addProperty("scroll_view_type", Integer.valueOf(i32Var.a));
        }
        return jsonObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.gson.JsonObject c(android.widget.FrameLayout r15) {
        /*
            Method dump skipped, instruction units count: 500
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k32.c(android.widget.FrameLayout):com.google.gson.JsonObject");
    }

    public static j32 a(int i) {
        if (i == -2) {
            return j32.c;
        }
        if (i != -1) {
            return j32.a;
        }
        return j32.b;
    }

    public final JsonObject a(FrameLayout frameLayout, ImageView.ScaleType mediaViewScaleType, Map assetViews) {
        ViewGroup.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaViewScaleType, "mediaViewScaleType");
        if (frameLayout == null) {
            return new JsonObject();
        }
        JsonObject jsonObject = new JsonObject();
        int i = 2;
        int[] iArr = new int[2];
        frameLayout.getLocationOnScreen(iArr);
        Iterator it = assetViews.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            View view = (View) ((WeakReference) entry.getValue()).get();
            if (view != null) {
                int[] iArr2 = new int[i];
                view.getLocationOnScreen(iArr2);
                JsonObject jsonObject2 = new JsonObject();
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("width", Integer.valueOf(zn0.b(this.a, view.getMeasuredWidth())));
                jsonObject3.addProperty("height", Integer.valueOf(zn0.b(this.a, view.getMeasuredHeight())));
                jsonObject3.addProperty("x", Integer.valueOf(zn0.b(this.a, iArr2[0] - iArr[0])));
                jsonObject3.addProperty("y", Integer.valueOf(zn0.b(this.a, iArr2[1] - iArr[1])));
                jsonObject3.addProperty("relative_to", "ad_view");
                Iterator it2 = it;
                jsonObject2.add("frame", jsonObject3);
                JsonObject jsonObject4 = new JsonObject();
                Rect rect = new Rect();
                if (view.getLocalVisibleRect(rect)) {
                    jsonObject4 = a(this.a, rect);
                } else {
                    jsonObject4.addProperty("width", (Number) 0);
                    jsonObject4.addProperty("height", (Number) 0);
                    jsonObject4.addProperty("x", Integer.valueOf(zn0.b(this.a, iArr2[0] - iArr[0])));
                    jsonObject4.addProperty("y", Integer.valueOf(zn0.b(this.a, iArr2[1] - iArr[1])));
                    jsonObject4.addProperty("relative_to", "ad_view");
                }
                jsonObject2.add("visible_bounds", jsonObject4);
                if (Intrinsics.areEqual(str, "3010")) {
                    jsonObject2.addProperty("mediaview_graphics_matrix", view.getMatrix().toShortString());
                    if (this.b.h0() && (layoutParams = view.getLayoutParams()) != null) {
                        Intrinsics.checkNotNull(layoutParams);
                        jsonObject2.addProperty("view_width_layout_type", Integer.valueOf(a(layoutParams.width).ordinal()));
                        jsonObject2.addProperty("view_height_layout_type", Integer.valueOf(a(layoutParams.height).ordinal()));
                    }
                    ex0 ex0Var = this.b;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:nas_collect_view_path:enabled", C3522b4.i.W);
                    if (((Boolean) ex0Var.a("gads:nas_collect_view_path:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(Integer.valueOf(view.getId()));
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            arrayList.add(Integer.valueOf(((View) parent).getId()));
                        }
                        jsonObject2.addProperty("view_path", CollectionsKt___CollectionsKt.joinToString$default(arrayList, "/", null, null, 0, null, null, 62, null));
                    }
                    jsonObject2.addProperty("mediaview_scale_type", Integer.valueOf(mediaViewScaleType.ordinal()));
                }
                if (view instanceof TextView) {
                    TextView textView = (TextView) view;
                    jsonObject2.addProperty("text_color", Integer.valueOf(textView.getCurrentTextColor()));
                    jsonObject2.addProperty("font_size", Float.valueOf(textView.getTextSize()));
                    jsonObject2.addProperty(C3522b4.i.K0, textView.getText().toString());
                }
                jsonObject2.addProperty("is_clickable", Boolean.valueOf(view.isClickable()));
                if (this.b.g0()) {
                    jsonObject2.addProperty("alpha", Float.valueOf(view.getAlpha()));
                }
                jsonObject.add(str, jsonObject2);
                it = it2;
                i = 2;
            }
        }
        return jsonObject;
    }

    public final JsonObject a(FrameLayout frameLayout) {
        Window window;
        if (frameLayout != null) {
            JsonObject jsonObject = new JsonObject();
            Intrinsics.checkNotNullParameter(frameLayout, "<this>");
            View rootView = frameLayout.getRootView();
            Context context = rootView != null ? rootView.getContext() : null;
            Activity activity = context instanceof Activity ? (Activity) context : null;
            WindowManager.LayoutParams attributes = (activity == null || (window = activity.getWindow()) == null) ? null : window.getAttributes();
            jsonObject.addProperty("can_show_on_lock_screen", Boolean.valueOf((attributes == null || (attributes.flags & 524288) == 0) ? false : true));
            KeyguardManager keyguardManager = (KeyguardManager) this.a.getSystemService(KeyguardManager.class);
            jsonObject.addProperty("is_keyguard_locked", keyguardManager != null ? Boolean.valueOf(keyguardManager.isKeyguardLocked()) : null);
            return jsonObject;
        }
        return new JsonObject();
    }

    public final NativeAd.NativeMediaAspectRatio b(String str) {
        if (str == null) {
            return NativeAd.NativeMediaAspectRatio.UNKNOWN;
        }
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str);
        if (intOrNull == null) {
            ((as3) this.c).a("Failed to parse media aspect ratio.", (Throwable) new NumberFormatException("Media aspect ratio (" + str + ") is not a number."));
            return NativeAd.NativeMediaAspectRatio.UNKNOWN;
        }
        int iIntValue = intOrNull.intValue();
        if (iIntValue == 1) {
            return NativeAd.NativeMediaAspectRatio.ANY;
        }
        if (iIntValue == 2) {
            return NativeAd.NativeMediaAspectRatio.LANDSCAPE;
        }
        if (iIntValue == 3) {
            return NativeAd.NativeMediaAspectRatio.PORTRAIT;
        }
        if (iIntValue != 4) {
            return NativeAd.NativeMediaAspectRatio.UNKNOWN;
        }
        return NativeAd.NativeMediaAspectRatio.SQUARE;
    }

    public final AdChoicesPlacement a(String str) {
        if (str == null) {
            return AdChoicesPlacement.TOP_RIGHT;
        }
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str);
        if (intOrNull == null) {
            ((as3) this.c).a("Failed to parse ad choices position.", (Throwable) new NumberFormatException("Ad choices position (" + str + ") is not a number."));
            return AdChoicesPlacement.TOP_RIGHT;
        }
        int iIntValue = intOrNull.intValue();
        if (iIntValue == 0) {
            return AdChoicesPlacement.TOP_LEFT;
        }
        if (iIntValue == 2) {
            return AdChoicesPlacement.BOTTOM_RIGHT;
        }
        if (iIntValue != 3) {
            return AdChoicesPlacement.TOP_RIGHT;
        }
        return AdChoicesPlacement.BOTTOM_LEFT;
    }

    public final JsonObject a() {
        JsonObject jsonObject = new JsonObject();
        Context context = this.a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        int i = displayMetrics.widthPixels;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        jsonObject.addProperty("width", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i / displayMetrics2.density)));
        Context context2 = this.a;
        Intrinsics.checkNotNullParameter(context2, "<this>");
        DisplayMetrics displayMetrics3 = context2.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics3, "getDisplayMetrics(...)");
        int i2 = displayMetrics3.heightPixels;
        Intrinsics.checkNotNullParameter(context2, "<this>");
        Intrinsics.checkNotNullParameter(context2, "<this>");
        DisplayMetrics displayMetrics4 = context2.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics4, "getDisplayMetrics(...)");
        jsonObject.addProperty("height", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i2 / displayMetrics4.density)));
        return jsonObject;
    }

    public static JsonObject a(Context context, Rect rect) {
        JsonObject jsonObject = new JsonObject();
        int i = rect.right - rect.left;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        jsonObject.addProperty("width", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i / displayMetrics.density)));
        int i2 = rect.bottom - rect.top;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        jsonObject.addProperty("height", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i2 / displayMetrics2.density)));
        int i3 = rect.left;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics3 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics3, "getDisplayMetrics(...)");
        jsonObject.addProperty("x", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i3 / displayMetrics3.density)));
        int i4 = rect.top;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics4 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics4, "getDisplayMetrics(...)");
        jsonObject.addProperty("y", Integer.valueOf(MathKt__MathJVMKt.roundToInt(i4 / displayMetrics4.density)));
        jsonObject.addProperty("relative_to", C3920x1.o);
        return jsonObject;
    }
}
