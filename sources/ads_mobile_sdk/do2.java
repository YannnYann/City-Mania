package ads_mobile_sdk;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.libraries.ads.mobile.sdk.R$drawable;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class do2 extends o53 {
    public final qn2 b;
    public final Function1 c;
    public PictureInPictureAdPosition d;
    public float e;
    public float f;
    public float g;
    public float h;
    public sn2 i;
    public sn2 j;
    public TextView k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public do2(AdSize adSize, Context context, qn2 pipAdConfig, xz2 onSnapRequestedListener) {
        super(context, adSize);
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pipAdConfig, "pipAdConfig");
        Intrinsics.checkNotNullParameter(onSnapRequestedListener, "onSnapRequestedListener");
        this.b = pipAdConfig;
        this.c = onSnapRequestedListener;
        this.d = PictureInPictureAdPosition.DEFAULT;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(a(pipAdConfig.e()));
        gradientDrawable.setColor(Color.rgb(Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE));
        setBackground(gradientDrawable);
        setPadding(a(pipAdConfig.f()), a(pipAdConfig.f()), a(pipAdConfig.f()), a(pipAdConfig.b()));
        setClipChildren(false);
        setClipToPadding(false);
        setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        float rawX = ev.getRawX();
        float rawY = ev.getRawY();
        int actionMasked = ev.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 2) {
                return false;
            }
            float fAbs = Math.abs(rawX - this.e);
            float f = 50;
            return fAbs > f || Math.abs(rawY - this.f) > f;
        }
        this.e = rawX;
        this.f = rawY;
        this.g = getX() - this.e;
        this.h = getY() - this.f;
        return false;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Object parent = getParent();
        if ((parent instanceof View ? (View) parent : null) == null) {
            return false;
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                return false;
            }
            float rawX = event.getRawX() + this.g;
            float rawY = event.getRawY() + this.h;
            float fCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(r0.getWidth() - getWidth(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            float fCoerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(r0.getHeight() - getHeight(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            setX(RangesKt___RangesKt.coerceIn(rawX, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fCoerceAtLeast));
            setY(RangesKt___RangesKt.coerceIn(rawY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, fCoerceAtLeast2));
            return true;
        }
        float fMax = Math.max(Math.abs(event.getRawX() - this.e), Math.abs(event.getRawY() - this.f));
        ex0 ex0Var = this.b.a;
        if (fMax > ((Number) ex0Var.a("gads:picture_in_picture:drag_threshold_px", by0.a(ex0Var, "gads:picture_in_picture:drag_threshold_px", C3522b4.i.W, 10), yr.f)).intValue()) {
            Object parent2 = getParent();
            View view = parent2 instanceof View ? (View) parent2 : null;
            if (view != null) {
                float width = (getWidth() / 2.0f) + getX();
                this.c.invoke(((double) ((((float) getHeight()) / 2.0f) + getY())) < ((double) view.getHeight()) / 2.0d ? ((double) width) < ((double) view.getWidth()) / 2.0d ? PictureInPictureAdPosition.TOP_LEFT : PictureInPictureAdPosition.TOP_RIGHT : ((double) width) < ((double) view.getWidth()) / 2.0d ? PictureInPictureAdPosition.BOTTOM_LEFT : PictureInPictureAdPosition.BOTTOM_RIGHT);
            }
        } else {
            super.performClick();
        }
        return true;
    }

    @Override // ads_mobile_sdk.o53, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                childAt = null;
                break;
            }
            childAt = getChildAt(i5);
            if (!(childAt instanceof sn2)) {
                break;
            } else {
                i5++;
            }
        }
        if (childAt != null && childAt.getVisibility() != 8) {
            AdSize adSize = this.a;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int widthInPixels = adSize.getWidthInPixels(context);
            AdSize adSize2 = this.a;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            int heightInPixels = adSize2.getHeightInPixels(context2);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            ex0 ex0Var = this.b.a;
            childAt.setOutlineProvider(new co2(widthInPixels, heightInPixels, a(((Number) ex0Var.a("gads:picture_in_picture:inner_clipping_radius_dp", by0.a(ex0Var, "gads:picture_in_picture:inner_clipping_radius_dp", C3522b4.i.W, 8), yr.f)).intValue())));
            childAt.setClipToOutline(true);
            childAt.layout(paddingLeft, paddingTop, widthInPixels + paddingLeft, heightInPixels + paddingTop);
        }
        sn2 sn2Var = this.i;
        if (sn2Var != null && sn2Var.getVisibility() != 8) {
            int measuredWidth = sn2Var.getMeasuredWidth();
            int measuredHeight = sn2Var.getMeasuredHeight();
            int paddingLeft2 = getPaddingLeft();
            int i6 = (i4 - i2) - measuredHeight;
            sn2Var.layout(paddingLeft2, i6, measuredWidth + paddingLeft2, measuredHeight + i6);
        }
        sn2 sn2Var2 = this.j;
        if (sn2Var2 == null || sn2Var2.getVisibility() == 8) {
            return;
        }
        int measuredWidth2 = sn2Var2.getMeasuredWidth();
        int measuredHeight2 = sn2Var2.getMeasuredHeight();
        int paddingLeft3 = getPaddingLeft();
        int i7 = (i4 - i2) - measuredHeight2;
        sn2Var2.layout(paddingLeft3, i7, measuredWidth2 + paddingLeft3, measuredHeight2 + i7);
    }

    @Override // ads_mobile_sdk.o53, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        View childAt;
        int childCount = getChildCount();
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                childAt = null;
                break;
            }
            childAt = getChildAt(i3);
            if (!(childAt instanceof sn2)) {
                break;
            } else {
                i3++;
            }
        }
        AdSize adSize = this.a;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int widthInPixels = adSize.getWidthInPixels(context);
        AdSize adSize2 = this.a;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        int heightInPixels = adSize2.getHeightInPixels(context2);
        if (childAt != null && childAt.getVisibility() != 8) {
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null && (layoutParams2.width != widthInPixels || layoutParams2.height != heightInPixels)) {
                layoutParams2.width = widthInPixels;
                layoutParams2.height = heightInPixels;
                childAt.setLayoutParams(layoutParams2);
            }
            measureChild(childAt, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + widthInPixels;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + heightInPixels;
        ex0 ex0Var = this.b.a;
        Integer numA = by0.a(ex0Var, "gads:picture_in_picture:close_button_container_size_dp", C3522b4.i.W, 48);
        nr nrVar = yr.f;
        int iA = a(((Number) ex0Var.a("gads:picture_in_picture:close_button_container_size_dp", numA, nrVar)).intValue());
        ex0 ex0Var2 = this.b.a;
        int iA2 = a(((Number) ex0Var2.a("gads:picture_in_picture:close_button_icon_size_dp", by0.a(ex0Var2, "gads:picture_in_picture:close_button_icon_size_dp", C3522b4.i.W, 20), nrVar)).intValue());
        sn2 sn2Var = this.i;
        if (sn2Var != null) {
            a(sn2Var, iA, iA2, i, i2);
        }
        sn2 sn2Var2 = this.j;
        if (sn2Var2 != null) {
            a(sn2Var2, iA, iA2, i, i2);
        }
        setMeasuredDimension(View.resolveSize(RangesKt___RangesKt.coerceAtLeast(paddingRight, getSuggestedMinimumWidth()), i), View.resolveSize(RangesKt___RangesKt.coerceAtLeast(paddingBottom, getSuggestedMinimumHeight()), i2));
    }

    public final boolean b() {
        return getWidth() == 0 || getHeight() == 0 || !isLaidOut();
    }

    public final void b(int i) {
        if (this.j == null) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(1000.0f);
            gradientDrawable.setColor(Color.argb(204, 255, 255, 255));
            frameLayout.setBackground(gradientDrawable);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-16777216);
            textView.setIncludeFontPadding(false);
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            textView.setGravity(17);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            this.j = a(frameLayout);
            this.k = textView;
            requestLayout();
        }
        TextView textView2 = this.k;
        if (textView2 == null) {
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(Locale.getDefault(), "%d", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        textView2.setText(str);
    }

    @Override // android.view.View
    public final boolean performClick() {
        super.performClick();
        return true;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view != null && !(view instanceof sn2)) {
            AdSize adSize = this.a;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int widthInPixels = adSize.getWidthInPixels(context);
            AdSize adSize2 = this.a;
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            int heightInPixels = adSize2.getHeightInPixels(context2);
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 == null) {
                layoutParams2 = new FrameLayout.LayoutParams(widthInPixels, heightInPixels);
            }
            layoutParams2.width = widthInPixels;
            layoutParams2.height = heightInPixels;
            super.addView(view, i, layoutParams2);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (!(childAt instanceof sn2)) {
                Intrinsics.checkNotNull(childAt);
                arrayList.add(childAt);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeView((View) it.next());
        }
    }

    public final int a(int i) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
        return (int) Math.ceil(TypedValue.applyDimension(1, i, r0));
    }

    public final PictureInPictureAdPosition a() {
        return this.d;
    }

    public final void a(sn2 sn2Var, int i, int i2, int i3, int i4) {
        if (sn2Var.getVisibility() == 8) {
            return;
        }
        View childAt = sn2Var.getChildAt(0);
        if (childAt != null) {
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null && (layoutParams2.width != i2 || layoutParams2.height != i2)) {
                layoutParams2.width = i2;
                layoutParams2.height = i2;
                childAt.setLayoutParams(layoutParams2);
            }
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
            childAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            if (childAt instanceof FrameLayout) {
                View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                TextView textView = childAt2 instanceof TextView ? (TextView) childAt2 : null;
                if (textView != null) {
                    textView.setTextSize(0, i2 * 0.6f);
                    measureChild(textView, i3, i4);
                }
            }
        }
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        sn2Var.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
    }

    public final void a(PictureInPictureAdPosition pictureInPictureAdPosition) {
        Intrinsics.checkNotNullParameter(pictureInPictureAdPosition, "<set-?>");
        this.d = pictureInPictureAdPosition;
    }

    public final void a(final xn2 onClose) {
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        View view = this.j;
        if (view != null) {
            removeView(view);
            this.j = null;
            this.k = null;
        }
        if (this.i != null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(R$drawable.admob_close_button_white_circle_black_cross);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        sn2 sn2VarA = a(imageView);
        sn2VarA.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.do2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                do2.a(onClose, view2);
            }
        });
        this.i = sn2VarA;
    }

    public static final void a(Function0 onClose, View view) {
        Intrinsics.checkNotNullParameter(onClose, "$onClose");
        onClose.invoke();
    }

    public final void a(float f, float f2, float f3) {
        setY(f3);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        valueAnimatorOfFloat.setDuration(Duration.m2881getInWholeMillisecondsimpl(this.b.a()));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ads_mobile_sdk.do2$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                do2.a(this.f$0, valueAnimator);
            }
        });
        setVisibility(0);
        valueAnimatorOfFloat.start();
    }

    public static final void a(do2 this$0, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animation, "animation");
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.setX(((Float) animatedValue).floatValue());
        this$0.requestLayout();
    }

    public final sn2 a(View view) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        sn2 sn2Var = new sn2(context);
        sn2Var.setElevation(a(10));
        sn2Var.addView(view, new FrameLayout.LayoutParams(-2, -2, 8388691));
        view.setTranslationX(a(this.b.f()));
        int iB = this.b.b();
        ex0 ex0Var = this.b.a;
        view.setTranslationY(-a((iB - ((Number) ex0Var.a("gads:picture_in_picture:close_button_icon_size_dp", by0.a(ex0Var, "gads:picture_in_picture:close_button_icon_size_dp", C3522b4.i.W, 20), yr.f)).intValue()) / 2));
        addView(sn2Var, new FrameLayout.LayoutParams(-2, -2, 8388691));
        sn2Var.bringToFront();
        return sn2Var;
    }
}
