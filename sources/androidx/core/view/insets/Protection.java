package androidx.core.view.insets;

import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.Insets;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class Protection {
    public Object mController;
    public Insets mInsets;
    public Insets mInsetsIgnoringVisibility;
    public final int mSide;
    public float mSystemAlpha;
    public float mSystemInsetAmount;
    public float mUserAlpha;
    public float mUserInsetAmount;
    public static final Interpolator DEFAULT_INTERPOLATOR_MOVE_IN = new PathInterpolator(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    public static final Interpolator DEFAULT_INTERPOLATOR_MOVE_OUT = new PathInterpolator(0.6f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f);
    public static final Interpolator DEFAULT_INTERPOLATOR_FADE_IN = new PathInterpolator(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, 1.0f);
    public static final Interpolator DEFAULT_INTERPOLATOR_FADE_OUT = new PathInterpolator(0.4f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f);

    public void dispatchColorHint(int i) {
    }

    public Attributes getAttributes() {
        return null;
    }

    public int getThickness(int i) {
        return i;
    }

    public boolean occupiesCorners() {
        return false;
    }

    public int getSide() {
        return this.mSide;
    }

    public Insets dispatchInsets(Insets insets, Insets insets2, Insets insets3) {
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets2;
        Attributes.access$000(null, insets3);
        return updateLayout();
    }

    public Insets updateLayout() {
        int i;
        Insets insetsOf = Insets.NONE;
        int i2 = this.mSide;
        if (i2 == 1) {
            i = this.mInsets.left;
            Attributes.access$100(null, getThickness(this.mInsetsIgnoringVisibility.left));
            if (occupiesCorners()) {
                insetsOf = Insets.of(getThickness(i), 0, 0, 0);
            }
        } else if (i2 == 2) {
            i = this.mInsets.top;
            Attributes.access$200(null, getThickness(this.mInsetsIgnoringVisibility.top));
            if (occupiesCorners()) {
                insetsOf = Insets.of(0, getThickness(i), 0, 0);
            }
        } else if (i2 == 4) {
            i = this.mInsets.right;
            Attributes.access$100(null, getThickness(this.mInsetsIgnoringVisibility.right));
            if (occupiesCorners()) {
                insetsOf = Insets.of(0, 0, getThickness(i), 0);
            }
        } else if (i2 != 8) {
            i = 0;
        } else {
            i = this.mInsets.bottom;
            Attributes.access$200(null, getThickness(this.mInsetsIgnoringVisibility.bottom));
            if (occupiesCorners()) {
                insetsOf = Insets.of(0, 0, 0, getThickness(i));
            }
        }
        setSystemVisible(i > 0);
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        setSystemAlpha(i > 0 ? 1.0f : 0.0f);
        if (i > 0) {
            f = 1.0f;
        }
        setSystemInsetAmount(f);
        return insetsOf;
    }

    public Object getController() {
        return this.mController;
    }

    public void setController(Object obj) {
        this.mController = obj;
    }

    public void setSystemVisible(boolean z) {
        Attributes.access$300(null, z);
    }

    public void setSystemAlpha(float f) {
        this.mSystemAlpha = f;
        updateAlpha();
    }

    public final void updateAlpha() {
        Attributes.access$400(null, this.mSystemAlpha * this.mUserAlpha);
    }

    public void setSystemInsetAmount(float f) {
        this.mSystemInsetAmount = f;
        updateInsetAmount();
    }

    public final void updateInsetAmount() {
        float f = this.mUserInsetAmount * this.mSystemInsetAmount;
        int i = this.mSide;
        if (i == 1) {
            Attributes.access$600(null, (-(1.0f - f)) * Attributes.access$500(null));
            return;
        }
        if (i == 2) {
            Attributes.access$800(null, (-(1.0f - f)) * Attributes.access$700(null));
        } else if (i == 4) {
            Attributes.access$600(null, (1.0f - f) * Attributes.access$500(null));
        } else {
            if (i != 8) {
                return;
            }
            Attributes.access$800(null, (1.0f - f) * Attributes.access$700(null));
        }
    }

    public static class Attributes {
        public static /* synthetic */ void access$000(Attributes attributes, Insets insets) {
            throw null;
        }

        public static /* synthetic */ void access$100(Attributes attributes, int i) {
            throw null;
        }

        public static /* synthetic */ void access$200(Attributes attributes, int i) {
            throw null;
        }

        public static /* synthetic */ void access$300(Attributes attributes, boolean z) {
            throw null;
        }

        public static /* synthetic */ void access$400(Attributes attributes, float f) {
            throw null;
        }

        public static /* synthetic */ int access$500(Attributes attributes) {
            throw null;
        }

        public static /* synthetic */ void access$600(Attributes attributes, float f) {
            throw null;
        }

        public static /* synthetic */ int access$700(Attributes attributes) {
            throw null;
        }

        public static /* synthetic */ void access$800(Attributes attributes, float f) {
            throw null;
        }
    }
}
