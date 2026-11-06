package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import com.google.android.material.R$attr;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes3.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public AccessibilityManager accessibilityManager;
    public int additionalHiddenOffset;
    public ViewPropertyAnimator currentAnimator;
    public int currentState;
    public boolean disableOnTouchExploration;
    public int enterAnimDuration;
    public TimeInterpolator enterAnimInterpolator;
    public int exitAnimDuration;
    public TimeInterpolator exitAnimInterpolator;
    public HideViewOnScrollDelegate hideOnScrollViewDelegate;
    public final LinkedHashSet<OnScrollStateChangedListener> onScrollStateChangedListeners;
    public int savedImportantForAccessibility;
    public int savedVisibility;
    public int size;
    public AccessibilityManager.TouchExplorationStateChangeListener touchExplorationListener;
    public boolean viewEdgeOverride;
    public static final int ENTER_ANIM_DURATION_ATTR = R$attr.motionDurationLong2;
    public static final int EXIT_ANIM_DURATION_ATTR = R$attr.motionDurationMedium4;
    public static final int ENTER_EXIT_ANIM_EASING_ATTR = R$attr.motionEasingEmphasizedInterpolator;

    public interface OnScrollStateChangedListener {
        void onStateChanged(View view, int i);
    }

    public final boolean isGravityBottom(int i) {
        return i == 80 || i == 81;
    }

    public final boolean isGravityLeft(int i) {
        return i == 3 || i == 19;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    public HideViewOnScrollBehavior() {
        this.disableOnTouchExploration = true;
        this.onScrollStateChangedListeners = new LinkedHashSet<>();
        this.size = 0;
        this.currentState = 2;
        this.additionalHiddenOffset = 0;
        this.savedImportantForAccessibility = 0;
        this.savedVisibility = 0;
        this.viewEdgeOverride = false;
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.disableOnTouchExploration = true;
        this.onScrollStateChangedListeners = new LinkedHashSet<>();
        this.size = 0;
        this.currentState = 2;
        this.additionalHiddenOffset = 0;
        this.savedImportantForAccessibility = 0;
        this.savedVisibility = 0;
        this.viewEdgeOverride = false;
    }

    public final void setViewEdge(V v, int i) {
        if (this.viewEdgeOverride) {
            return;
        }
        int i2 = ((CoordinatorLayout.LayoutParams) v.getLayoutParams()).gravity;
        if (isGravityBottom(i2)) {
            setViewEdgeInternal(1);
        } else {
            setViewEdgeInternal(isGravityLeft(Gravity.getAbsoluteGravity(i2, i)) ? 2 : 0);
        }
    }

    public final void setViewEdgeInternal(int i) {
        HideViewOnScrollDelegate hideViewOnScrollDelegate = this.hideOnScrollViewDelegate;
        if (hideViewOnScrollDelegate == null || hideViewOnScrollDelegate.getViewEdge() != i) {
            if (i == 0) {
                this.hideOnScrollViewDelegate = new HideRightViewOnScrollDelegate();
                return;
            }
            if (i == 1) {
                this.hideOnScrollViewDelegate = new HideBottomViewOnScrollDelegate();
                return;
            }
            if (i == 2) {
                this.hideOnScrollViewDelegate = new HideLeftViewOnScrollDelegate();
                return;
            }
            throw new IllegalArgumentException("Invalid view edge position value: " + i + ". Must be 0, 1 or 2.");
        }
    }

    private void disableIfTouchExplorationEnabled(final V v) {
        if (this.accessibilityManager == null) {
            this.accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(v.getContext(), AccessibilityManager.class);
        }
        if (this.accessibilityManager == null || this.touchExplorationListener != null) {
            return;
        }
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.google.android.material.behavior.HideViewOnScrollBehavior$$ExternalSyntheticLambda0
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                HideViewOnScrollBehavior.$r8$lambda$O4yxcwWX0oqhtqJeVevJwrB8hK4(this.f$0, v, z);
            }
        };
        this.touchExplorationListener = touchExplorationStateChangeListener;
        this.accessibilityManager.addTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        v.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.behavior.HideViewOnScrollBehavior.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (HideViewOnScrollBehavior.this.touchExplorationListener == null || HideViewOnScrollBehavior.this.accessibilityManager == null) {
                    return;
                }
                HideViewOnScrollBehavior.this.accessibilityManager.removeTouchExplorationStateChangeListener(HideViewOnScrollBehavior.this.touchExplorationListener);
                HideViewOnScrollBehavior.this.touchExplorationListener = null;
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$O4yxcwWX0oqhtqJeVevJwrB8hK4(HideViewOnScrollBehavior hideViewOnScrollBehavior, View view, boolean z) {
        if (hideViewOnScrollBehavior.disableOnTouchExploration && z && hideViewOnScrollBehavior.isScrolledOut()) {
            hideViewOnScrollBehavior.slideIn(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        disableIfTouchExplorationEnabled(v);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        setViewEdge(v, i);
        this.size = this.hideOnScrollViewDelegate.getSize(v, marginLayoutParams);
        this.enterAnimDuration = MotionUtils.resolveThemeDuration(v.getContext(), ENTER_ANIM_DURATION_ATTR, Sdk.SDKError.Reason.AD_LOAD_FAIL_PLACEMENT_ID_MISMATCH_VALUE);
        this.exitAnimDuration = MotionUtils.resolveThemeDuration(v.getContext(), EXIT_ANIM_DURATION_ATTR, 175);
        Context context = v.getContext();
        int i2 = ENTER_EXIT_ANIM_EASING_ATTR;
        this.enterAnimInterpolator = MotionUtils.resolveThemeInterpolator(context, i2, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        this.exitAnimInterpolator = MotionUtils.resolveThemeInterpolator(v.getContext(), i2, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            slideOut(v);
        } else if (i2 < 0) {
            slideIn(v);
        }
    }

    public boolean isScrolledIn() {
        return this.currentState == 2;
    }

    public void slideIn(V v) {
        slideIn(v, true);
    }

    public void slideIn(V v, boolean z) {
        if (isScrolledIn()) {
            return;
        }
        updateCurrentState(v, 2);
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        int targetTranslation = this.hideOnScrollViewDelegate.getTargetTranslation();
        if (z) {
            animateChildTo(v, targetTranslation, this.enterAnimDuration, this.enterAnimInterpolator);
        } else {
            this.hideOnScrollViewDelegate.setViewTranslation(v, targetTranslation);
        }
    }

    public boolean isScrolledOut() {
        return this.currentState == 1;
    }

    public void slideOut(V v) {
        slideOut(v, true);
    }

    public void slideOut(V v, boolean z) {
        AccessibilityManager accessibilityManager;
        if (isScrolledOut() || (this.disableOnTouchExploration && (accessibilityManager = this.accessibilityManager) != null && accessibilityManager.isTouchExplorationEnabled())) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        updateCurrentState(v, 1);
        int i = this.size + this.additionalHiddenOffset;
        if (z) {
            animateChildTo(v, i, this.exitAnimDuration, this.exitAnimInterpolator);
            return;
        }
        this.hideOnScrollViewDelegate.setViewTranslation(v, i);
        if (v.getVisibility() == 0) {
            v.setVisibility(4);
        }
    }

    private void updateCurrentState(V v, int i) {
        this.currentState = i;
        updateViewPropertiesForState(v, i);
        Iterator<OnScrollStateChangedListener> it = this.onScrollStateChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onStateChanged(v, this.currentState);
        }
    }

    private void updateViewPropertiesForState(V v, int i) {
        if (i == 1) {
            if (v.hasFocus()) {
                v.clearFocus();
            }
            if (v.getImportantForAccessibility() != 4) {
                this.savedImportantForAccessibility = v.getImportantForAccessibility();
            }
            if (v.getVisibility() != 4) {
                this.savedVisibility = v.getVisibility();
            }
            v.setImportantForAccessibility(4);
            return;
        }
        if (i == 2) {
            if (v.getImportantForAccessibility() == 4) {
                v.setImportantForAccessibility(this.savedImportantForAccessibility);
            }
            if (v.getVisibility() == 4) {
                v.setVisibility(this.savedVisibility);
            }
        }
    }

    private void animateChildTo(final V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.currentAnimator = this.hideOnScrollViewDelegate.getViewTranslationAnimator(v, i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideViewOnScrollBehavior.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideViewOnScrollBehavior.this.currentAnimator = null;
                if (HideViewOnScrollBehavior.this.currentState == 1 && v.getVisibility() == 0) {
                    v.setVisibility(4);
                }
            }
        });
    }
}
