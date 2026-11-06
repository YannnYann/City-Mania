package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.Layout;
import android.transition.AutoTransition;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3111qc {
    public static byte[] A00;
    public static String[] A01 = {"T9yeGAB86XK0vsZmNpfh4sIozppRZOgX", "Zi2TG3AXo50avc5D0Zq9wx", "JqBKj5K49VPZ3Gy9qBscEl", "4Ni4MdhmG8L", "r65r3", "RNCTQQIFlAbprT7c08Eivsd0jPtRWtbK", "BqjiC5lxzxq0feSMCCnGMnwMzT1DFPOJ", "3asmvLId1fZdr9gBLrqbDNcfpMudytXC"};
    public static final int A02;
    public static final int A03;
    public static final ConcurrentHashMap<Integer, Integer> A04;
    public static final AtomicInteger A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static int A03(TextView textView) {
        Layout layout;
        int lineCount;
        if (textView == null || textView.getLayout() == null || (lineCount = (layout = textView.getLayout()).getLineCount()) <= 0) {
            return 0;
        }
        double ellipsisCount = layout.getEllipsisCount(lineCount - 1);
        return (int) Math.ceil(ellipsisCount / (((double) textView.getText().length()) - ellipsisCount));
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        A00 = new byte[]{-26, -15, -11, -19, -26, 20, 36, 33, 41, 37, 23, 36, 17, 38, 43, 34, 23, 55, 53, 64, 64, 57, 70, 40, 77, 68, 57, 40, 40, 57, 36, 57, 62, 53, 42, 27, 36, 33, 27, 35, 23, 43, 39, 45, 42, 27, 29, -23, -20, -17, -9, -24, -11, -24, -25, -30, -26, -17, -20, -26, -18, -30, -25, -24, -17, -28, -4, -30, -16, -10, -18, -13, -7, -22, -9, -8, -7, -18, -7, -18, -26, -15, -64, -54, -74, -70, -72, -70, -74, -67, -64, -61, -53, -68, -55, -74, -70, -61, -64, -70, -62, -54, -74, -58, -59, -74, -70, -53, -72, -45, -35, -55, -51, -36, -49, -53, -34, -45, -32, -49, -55, -53, -35, -55, -51, -34, -53, -55, -32, -100, 46, 33, 51, 29, 46, 32, 33, 32, 27, 50, 37, 32, 33, 43, 35, 32, 19, 32, 37, 32, -34, 30, 22, 21, 26, 38, 30, 33, 15, 28, 33, -37, 33, 19, 32, 23, 20, -37, 27, 19, 18, 23, 35, 27, 60, 53, 48, 56, 60, 44, 16, 43, 45, 43, 29, 42, 27, 36, 33, 27, 35};
    }

    static {
        A0E();
        A03 = AbstractC2526gx.A02(-1, 0);
        A02 = AbstractC2526gx.A02(-16777216, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE);
        A05 = new AtomicInteger(1);
        A04 = new ConcurrentHashMap<>();
    }

    public static int A00() {
        int i;
        int newValue;
        do {
            i = A05.get();
            newValue = i + 1;
            if (newValue > 16777215) {
                newValue = 1;
            }
        } while (!A05.compareAndSet(i, newValue));
        return i;
    }

    public static int A01(int i) {
        return (int) TypedValue.applyDimension(2, i, AbstractC3070px.A04);
    }

    public static int A02(int i) {
        if (A0f(i)) {
            return AbstractC2526gx.A05(i, -1, 0.4f);
        }
        return AbstractC2526gx.A05(i, -16777216, 0.2f);
    }

    public static int A04(TextView textView, int i) {
        int lineHeightTitle = A03(textView);
        int lines = 0;
        int extraLinesRequired = textView.getLineHeight();
        while (i > extraLinesRequired && lines < lineHeightTitle) {
            lines++;
            i -= extraLinesRequired;
        }
        return lines;
    }

    public static Drawable A05(int i, int i2) {
        return A08(i, A02(i), i2);
    }

    public static Drawable A06(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(i2);
        return gradientDrawable;
    }

    public static Drawable A07(int i, int i2) {
        float[] fArr = new float[8];
        Arrays.fill(fArr, i2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    public static Drawable A08(int i, int i2, int i3) {
        return A09(i, i2, i, i3);
    }

    public static Drawable A09(int i, int i2, int i3, int i4) {
        return new RippleDrawable(ColorStateList.valueOf(i2), A06(i, i4), A07(i3, i4));
    }

    public static Drawable A0A(int i, float[] fArr) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(fArr);
        return gradientDrawable;
    }

    public static View A0B(Context context, int[] iArr) {
        View view = new View(context);
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, iArr));
        return view;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.widget.TextView A0C(android.view.ViewGroup r3) {
        /*
            r2 = 0
        L1:
            int r0 = r3.getChildCount()
            if (r2 >= r0) goto L1e
            android.view.View r1 = r3.getChildAt(r2)
            boolean r0 = r1 instanceof android.widget.TextView
            if (r0 == 0) goto L12
            android.widget.TextView r1 = (android.widget.TextView) r1
            return r1
        L12:
            boolean r0 = r1 instanceof android.view.ViewGroup
            if (r0 == 0) goto L1b
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            A0C(r1)
        L1b:
            int r2 = r2 + 1
            goto L1
        L1e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC3111qc.A0C(android.view.ViewGroup):android.widget.TextView");
    }

    public static void A0F(float f, LinearLayout linearLayout) {
        linearLayout.setOutlineProvider(new C3109qa(f));
        linearLayout.setClipToOutline(true);
    }

    public static void A0G(int i, View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i / 3);
        scaleAnimation.setInterpolator(new AccelerateInterpolator());
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration((i / 3) * 2);
        scaleAnimation2.setInterpolator(new BounceInterpolator());
        scaleAnimation.setAnimationListener(new G3(view, scaleAnimation2));
        view.startAnimation(scaleAnimation);
    }

    public static void A0H(int i, View view) {
        Integer viewId = A04.get(Integer.valueOf(i));
        if (viewId != null) {
            view.setId(viewId.intValue());
        } else {
            A0L(view);
        }
    }

    public static void A0I(View view) {
        A0P(view, 8);
    }

    public static void A0J(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            A0X((ViewGroup) parent);
        }
    }

    public static void A0K(View view) {
        ViewGroup parent;
        if (view != null && (parent = (ViewGroup) view.getParent()) != null) {
            parent.removeView(view);
        }
    }

    public static void A0L(View view) {
        if (view == null) {
            return;
        }
        view.setId(View.generateViewId());
    }

    public static void A0M(View view) {
        A0P(view, 0);
    }

    public static void A0N(View view, float f, float f2, int i) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, A0D(0, 5, 46), f, f2);
        objectAnimatorOfFloat.setDuration(i);
        objectAnimatorOfFloat.start();
    }

    public static void A0O(View view, int i) {
        view.setBackground(new ColorDrawable(i));
    }

    public static void A0P(View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    public static void A0Q(View view, int i, int i2) {
        A0W(view, A06(i, i2));
    }

    public static void A0R(View view, int i, int i2) {
        A0W(view, A08(i, A02(i), i2));
    }

    public static void A0S(View view, int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(i);
        gradientDrawable.setStroke(i2, i3);
        A0W(view, gradientDrawable);
    }

    public static void A0T(View view, int i, int i2, int i3) {
        A0W(view, A09(i, A02(i), i2, i3));
    }

    public static void A0U(View view, int i, float[] fArr) {
        A0W(view, A0A(i, fArr));
    }

    public static void A0V(View view, Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        A0W(view, gradientDrawable);
    }

    public static void A0W(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void A0X(ViewGroup viewGroup) {
        A0Y(viewGroup, 200);
    }

    public static void A0Y(ViewGroup viewGroup, int i) {
        A0Z(viewGroup, new AutoTransition(), i);
    }

    public static void A0Z(ViewGroup viewGroup, Transition transition, int i) {
        transition.setDuration(i);
        transition.setInterpolator(new AccelerateDecelerateInterpolator());
        TransitionManager.beginDelayedTransition(viewGroup, transition);
    }

    public static void A0a(Button button) {
        Typeface typeface = Typeface.create(A0D(144, 13, 90), 0);
        button.setTypeface(typeface);
    }

    public static void A0b(TextView textView, boolean z, int i) {
        Typeface typeface;
        if (z) {
            typeface = Typeface.create(A0D(157, 17, 87), 0);
        } else {
            Typeface typeface2 = Typeface.SANS_SERIF;
            typeface = Typeface.create(typeface2, 0);
        }
        textView.setTypeface(typeface);
        textView.setTextSize(2, i);
    }

    public static void A0c(Toast toast, String str, int i, int i2, int i3) {
        if (toast == null) {
            return;
        }
        toast.setGravity(i, i2, i3);
        TextView textViewA0C = A0C((ViewGroup) toast.getView());
        if (textViewA0C != null) {
            textViewA0C.setText(str);
            textViewA0C.setGravity(17);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A0d(java.util.Map<java.lang.String, java.lang.String> r6, com.facebook.ads.redexgen.X.LA r7) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC3111qc.A0d(java.util.Map, com.facebook.ads.redexgen.X.LA):void");
    }

    public static void A0e(View... viewArr) {
        for (View view : viewArr) {
            A0K(view);
        }
    }

    public static boolean A0f(int i) {
        return AbstractC2526gx.A00(i) < 0.5d;
    }

    public static boolean A0g(EnumC2383ec enumC2383ec, Map<String, String> extraData) {
        boolean nonIabDestination = !A0D(182, 9, 97).equals(extraData.get(A0D(35, 12, 97)));
        boolean nonCtaClick = enumC2383ec != EnumC2383ec.A07;
        return nonIabDestination && nonCtaClick;
    }

    public static boolean A0h(EnumC2383ec enumC2383ec, Map<String, String> extraData) {
        boolean zEquals = A0D(182, 9, 97).equals(extraData.get(A0D(35, 12, 97)));
        boolean ctaClick = enumC2383ec != EnumC2383ec.A07;
        return zEquals && ctaClick;
    }

    public static boolean A0i(C1643Hi c1643Hi, EnumC2383ec enumC2383ec) {
        return enumC2383ec == EnumC2383ec.A07 && C2888mv.A2z(c1643Hi);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0j(com.facebook.ads.redexgen.X.C1643Hi r7, com.facebook.ads.redexgen.X.EnumC2383ec r8, java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            r2 = 109(0x6d, float:1.53E-43)
            r1 = 21
            r0 = 19
            java.lang.String r0 = A0D(r2, r1, r0)
            java.lang.Object r1 = r9.get(r0)
            java.lang.String r1 = (java.lang.String) r1
            r6 = 0
            r5 = 1
            if (r1 == 0) goto L50
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            java.lang.String r0 = r0.toString()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L50
            r4 = 1
        L21:
            if (r4 == 0) goto L52
            boolean r3 = A0i(r7, r8)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC3111qc.A01
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r2 = r2[r0]
            r0 = 11
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L8a
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC3111qc.A01
            java.lang.String r1 = "u8VsnBmPWVphPllKxtlQdK"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "HE77zV2Ng27gpeh0j3drVs"
            r0 = 2
            r2[r0] = r1
            if (r3 != 0) goto L4f
            boolean r0 = A0g(r8, r9)
            if (r0 == 0) goto L52
        L4f:
            return r5
        L50:
            r4 = 0
            goto L21
        L52:
            r2 = 82
            r1 = 27
            r0 = 0
            java.lang.String r0 = A0D(r2, r1, r0)
            java.lang.Object r1 = r9.get(r0)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto L90
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            java.lang.String r0 = r0.toString()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L90
            r0 = 1
        L70:
            if (r4 == 0) goto L9c
            if (r0 == 0) goto L9c
            boolean r3 = A0h(r8, r9)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC3111qc.A01
            r0 = 1
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L92
        L8a:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L90:
            r0 = 0
            goto L70
        L92:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC3111qc.A01
            java.lang.String r1 = "KnygK"
            r0 = 4
            r2[r0] = r1
            if (r3 == 0) goto L9c
            return r5
        L9c:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC3111qc.A0j(com.facebook.ads.redexgen.X.Hi, com.facebook.ads.redexgen.X.ec, java.util.Map):boolean");
    }
}
