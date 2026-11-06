package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Attribute {
    public float adjustRatioDown;
    public float adjustRatioUp;
    public final boolean happiness;
    public final int icon;
    public int myIndex;
    public final int nameId;
    public final boolean visible;

    public static float interpolate(float f, float f2, float f3) {
        return (f2 - (f * f2)) + (f * f3);
    }

    public float evaluateCommercial(HappinessContext happinessContext) {
        return -1.0f;
    }

    public float evaluateIndustrial(HappinessContext happinessContext) {
        return -1.0f;
    }

    public float evaluateResidential(HappinessContext happinessContext) {
        return -1.0f;
    }

    public Attribute(boolean z, boolean z2, int i) {
        this(z, z2, i, Resources.ICON_EYE);
    }

    public Attribute(boolean z, boolean z2, int i, int i2) {
        this.myIndex = -1;
        this.happiness = z;
        this.visible = z2;
        this.nameId = i;
        this.icon = i2;
        setAdjustRatio(0.1f);
    }

    public void setIndex(int i) {
        this.myIndex = i;
    }

    public void setAdjustRatio(float f) {
        setAdjustRatio(f, f);
    }

    public void setAdjustRatio(float f, float f2) {
        this.adjustRatioUp = f;
        this.adjustRatioDown = f2;
    }

    public float getAdjustRatioUp() {
        return this.adjustRatioUp;
    }

    public float getAdjustRatioDown() {
        return this.adjustRatioDown;
    }

    public float evaluateFirstTime(HappinessContext happinessContext) {
        return happinessContext.city.isUber() ? 1.0f : 0.5f;
    }

    public float evaluate(HappinessContext happinessContext) {
        if (happinessContext.zone.base == Zones.getInstance().RESIDENTIAL0) {
            return evaluateResidential(happinessContext);
        }
        if (happinessContext.zone.base == Zones.getInstance().COMMERCIAL0) {
            return evaluateCommercial(happinessContext);
        }
        if (happinessContext.zone.base == Zones.getInstance().INDUSTRIAL0) {
            return evaluateIndustrial(happinessContext);
        }
        return -1.0f;
    }

    public final boolean isHappiness() {
        return this.happiness;
    }

    public final boolean isVisible() {
        return this.visible;
    }

    public final int getNameLocalizationId() {
        return this.nameId;
    }

    public final int getIcon() {
        return this.icon;
    }

    public static float growingExpectation(float f, float f2, float f3) {
        return 1.0f - ((float) Math.pow(2.0d, (-Math.max(f - f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)) / (f3 - f2)));
    }

    public int getIndex() {
        return this.myIndex;
    }
}
