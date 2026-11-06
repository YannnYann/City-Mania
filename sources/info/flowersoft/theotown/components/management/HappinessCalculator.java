package info.flowersoft.theotown.components.management;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.components.management.attribute.HappinessContext;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import io.blueflower.stapel2d.util.MinimumSelector;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HappinessCalculator {
    public City city;
    public DefaultDate date;
    public IHappinessModifier happinessModifier;
    public DefaultInfluence influence;
    public DefaultManagement mgm;

    public void setCity(City city) {
        this.city = city;
        this.mgm = (DefaultManagement) city.getComponent(3);
        this.influence = (DefaultInfluence) city.getComponent(2);
        this.date = (DefaultDate) city.getComponent(1);
    }

    public void setHappinessModifier(IHappinessModifier iHappinessModifier) {
        this.happinessModifier = iHappinessModifier;
    }

    public float calculateHappinessToDestroyBuilding(Building building) {
        if (building.inConstruction() || building.isLocked() || building.isUntouchable()) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (building.isEmpty() || building.getBuildingType() == BuildingType.DECORATION) {
            return 1.0f;
        }
        double daysBuilt = building.getDaysBuilt(this.date.getAbsoluteDay());
        int i = building.getDraft().buildTime;
        building.getCurrentPeople();
        float influence = this.influence.getInfluence(building, InfluenceType.SPORT.ordinal());
        float f = ((1.0f - influence) * 0.001f) + (influence * 0.002f);
        ConcreteAttributeContainer concreteAttributeContainer = (ConcreteAttributeContainer) building.getAttributeContainer();
        if (concreteAttributeContainer != null) {
            calculateHappiness(concreteAttributeContainer, true);
        }
        return Math.max(Math.min((1.0f - (((float) Math.exp(((double) (-f)) * daysBuilt)) * ((i * 0.01f) + 1.0f))) - 0.1f, 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public HappinessContext getHappinessContext(HappinessContext happinessContext, Building building) {
        HappinessContext happinessContext2 = getHappinessContext(happinessContext, building.getZone(), building.getLevel(), building.getX(), building.getY(), building.getWidth(), building.getHeight(), building.getDraft().density);
        happinessContext2.setBuilding(building);
        return happinessContext2;
    }

    public HappinessContext getHappinessContext(HappinessContext happinessContext, ZoneDraft zoneDraft, int i, int i2, int i3, int i4, int i5, float f) {
        HappinessContext happinessContext2 = happinessContext == null ? new HappinessContext(zoneDraft, i, new float[InfluenceType.cachedValues().length], new float[InfluenceType.cachedValues().length], this.mgm.getBuildingSurvey(), this.mgm.getCoverageCalculator(), this.city) : happinessContext;
        float[] fArr = happinessContext2.influences;
        float[] fArr2 = happinessContext2.generalInfluences;
        for (int i6 = 0; i6 < InfluenceType.cachedValues().length; i6++) {
            fArr[i6] = Math.max(Math.min(this.influence.getInfluence(i2, i3, i4, i5, i6), 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        this.influence.getGeneralInfluences(fArr2, 0);
        happinessContext2.zone = zoneDraft;
        happinessContext2.level = i;
        happinessContext2.survey = this.mgm.getBuildingSurvey();
        happinessContext2.coverageCalculator = this.mgm.getCoverageCalculator();
        happinessContext2.city = this.city;
        happinessContext2.density = f;
        happinessContext2.people = Math.round(f * i4 * i5);
        return happinessContext2;
    }

    public final float modifyAttr(Attribute attribute, float f, HappinessContext happinessContext) {
        IHappinessModifier iHappinessModifier = this.happinessModifier;
        return (iHappinessModifier == null || f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) ? f : iHappinessModifier.modify(attribute, f, happinessContext);
    }

    public final float evaluateAttributeFirstTimeWithMods(Attribute attribute, HappinessContext happinessContext) {
        return modifyAttr(attribute, attribute.evaluateFirstTime(happinessContext), happinessContext);
    }

    public final float evaluateAttributeWithMods(Attribute attribute, HappinessContext happinessContext) {
        return modifyAttr(attribute, attribute.evaluate(happinessContext), happinessContext);
    }

    public void calculateHappinessImmediate(HappinessContext happinessContext, MinimumSelector<Attribute> minimumSelector, boolean z) {
        List<Attribute> attributes = AttributeFactory.getAttributes();
        for (int i = 0; i < attributes.size(); i++) {
            Attribute attribute = attributes.get(i);
            if (attribute.isHappiness() && (attribute.isVisible() || z)) {
                float fEvaluate = attribute.evaluate(happinessContext);
                if (this.city.isUber() && fEvaluate >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    fEvaluate += 1.0f;
                }
                if (fEvaluate >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && minimumSelector != null) {
                    minimumSelector.assume(attribute, fEvaluate);
                }
            }
        }
    }

    public void initAttributeContainer(HappinessContext happinessContext, ConcreteAttributeContainer concreteAttributeContainer) {
        List<Attribute> attributes = AttributeFactory.getAttributes();
        float[] values = concreteAttributeContainer.getValues();
        float[] deltas = concreteAttributeContainer.getDeltas();
        for (int i = 0; i < attributes.size(); i++) {
            values[i] = evaluateAttributeFirstTimeWithMods(attributes.get(i), happinessContext);
            deltas[i] = 0.0f;
        }
        concreteAttributeContainer.calculateStats();
    }

    public void updateAttributeContainter(HappinessContext happinessContext, ConcreteAttributeContainer concreteAttributeContainer) {
        List<Attribute> attributes = AttributeFactory.getAttributes();
        float[] values = concreteAttributeContainer.getValues();
        float[] deltas = concreteAttributeContainer.getDeltas();
        float f = this.city.getGameMode().peopleMayLeave() ? 0.0f : 0.25f;
        for (int i = 0; i < attributes.size(); i++) {
            Attribute attribute = attributes.get(i);
            float f2 = values[i];
            float fEvaluateAttributeWithMods = evaluateAttributeWithMods(attribute, happinessContext);
            if (fEvaluateAttributeWithMods >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attribute.isHappiness()) {
                fEvaluateAttributeWithMods = Math.max(fEvaluateAttributeWithMods, f);
                if (this.city.isUber()) {
                    fEvaluateAttributeWithMods = 1.0f;
                }
            }
            if (f2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                values[i] = fEvaluateAttributeWithMods;
            } else if (fEvaluateAttributeWithMods >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                float adjustRatioUp = fEvaluateAttributeWithMods > f2 ? attribute.getAdjustRatioUp() : attribute.getAdjustRatioDown();
                float f3 = (fEvaluateAttributeWithMods * adjustRatioUp) + ((1.0f - adjustRatioUp) * f2);
                deltas[i] = f3 - f2;
                values[i] = f3;
            } else {
                values[i] = -1.0f;
                deltas[i] = 0.0f;
            }
        }
        concreteAttributeContainer.calculateStats();
    }

    public float calculateHappiness(ConcreteAttributeContainer concreteAttributeContainer, boolean z) {
        List<Attribute> attributes = AttributeFactory.getAttributes();
        float[] values = concreteAttributeContainer.getValues();
        int i = 0;
        float f = 1.0f;
        for (int i2 = 0; i2 < values.length; i2++) {
            Attribute attribute = attributes.get(i2);
            float f2 = values[i2];
            if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && attribute.isHappiness() && (z || attribute.isVisible())) {
                f *= f2;
                i++;
            }
        }
        if (i > 0) {
            return (float) Math.pow(f, 1.0f / i);
        }
        return 0.5f;
    }
}
