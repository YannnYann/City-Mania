package io.bidmachine.rendering.model.animation.effect;

import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.utils.UiUtilsKt;
import io.bidmachine.util.ViewUtilsKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class SlideAnimationEffect implements AnimationEffect {
    public final AnimationDirection a;
    public final AnimationBase b;
    public final boolean c;
    public final boolean d;
    public float e;
    public float f;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnimationDirection.values().length];
            try {
                iArr[AnimationDirection.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationDirection.Right.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationDirection.Up.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnimationDirection.Down.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SlideAnimationEffect(AnimationDirection animationDirection, AnimationBase animationBase) {
        Intrinsics.checkNotNullParameter(animationDirection, "animationDirection");
        Intrinsics.checkNotNullParameter(animationBase, "animationBase");
        this.a = animationDirection;
        this.b = animationBase;
        this.c = true;
        this.d = true;
    }

    public final float a(View view) {
        View viewFindAdView;
        return (this.b != AnimationBase.Screen || (viewFindAdView = UiUtilsKt.findAdView(view)) == null) ? view.getHeight() : viewFindAdView.getHeight() - ViewUtilsKt.getLocationInWindow(view).top;
    }

    public final float b(View view) {
        return this.b == AnimationBase.Screen ? (-view.getWidth()) - ViewUtilsKt.getLocationInWindow(view).left : -view.getWidth();
    }

    public final float c(View view) {
        View viewFindAdView;
        return (this.b != AnimationBase.Screen || (viewFindAdView = UiUtilsKt.findAdView(view)) == null) ? view.getWidth() : viewFindAdView.getWidth() - ViewUtilsKt.getLocationInWindow(view).left;
    }

    public final float d(View view) {
        return this.b == AnimationBase.Screen ? (-view.getHeight()) - ViewUtilsKt.getLocationInWindow(view).top : -view.getHeight();
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isApplicableWithLayers() {
        return this.c;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isLayoutSensitive() {
        return this.d;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void onAnimationEnd(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int i = WhenMappings.$EnumSwitchMapping$0[this.a.ordinal()];
        if (i == 1 || i == 2) {
            view.setTranslationX(this.e);
        } else if (i == 3 || i == 4) {
            view.setTranslationY(this.f);
        }
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void onSaveViewState(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.e = view.getTranslationX();
        this.f = view.getTranslationY();
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void prepareView(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        int i = WhenMappings.$EnumSwitchMapping$0[this.a.ordinal()];
        float fC = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (i == 1) {
            float f = this.e;
            if (z) {
                fC = c(view);
            }
            view.setTranslationX(f + fC);
            return;
        }
        if (i == 2) {
            float f2 = this.e;
            if (z) {
                fC = b(view);
            }
            view.setTranslationX(f2 + fC);
            return;
        }
        if (i == 3) {
            float f3 = this.f;
            if (z) {
                fC = a(view);
            }
            view.setTranslationY(f3 + fC);
            return;
        }
        if (i != 4) {
            return;
        }
        float f4 = this.f;
        if (z) {
            fC = d(view);
        }
        view.setTranslationY(f4 + fC);
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public ObjectAnimator buildAnimator(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        int i = WhenMappings.$EnumSwitchMapping$0[this.a.ordinal()];
        float fB = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (i == 1) {
            Property property = View.TRANSLATION_X;
            float f = this.e;
            if (!z) {
                fB = b(view);
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f + fB);
            Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat, "{\n                Object…          )\n            }");
            return objectAnimatorOfFloat;
        }
        if (i == 2) {
            Property property2 = View.TRANSLATION_X;
            float f2 = this.e;
            if (!z) {
                fB = c(view);
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, f2 + fB);
            Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat2, "{\n                Object…          )\n            }");
            return objectAnimatorOfFloat2;
        }
        if (i == 3) {
            Property property3 = View.TRANSLATION_Y;
            float f3 = this.f;
            if (!z) {
                fB = d(view);
            }
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property3, f3 + fB);
            Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat3, "{\n                Object…          )\n            }");
            return objectAnimatorOfFloat3;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        Property property4 = View.TRANSLATION_Y;
        float f4 = this.f;
        if (!z) {
            fB = a(view);
        }
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property4, f4 + fB);
        Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat4, "{\n                Object…          )\n            }");
        return objectAnimatorOfFloat4;
    }
}
