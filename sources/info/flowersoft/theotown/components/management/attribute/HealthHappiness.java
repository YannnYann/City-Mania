package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class HealthHappiness extends Attribute {
    public final BuildingDraft medic;
    public final int waterPollutionIndex;

    public HealthHappiness() {
        super(true, true, 703, Resources.ICON_MEDIC);
        this.medic = (BuildingDraft) Drafts.get("$medic00", BuildingDraft.class);
        setAdjustRatio(0.1f, 0.02f);
        this.waterPollutionIndex = AttributeFactory.getIndex((Class<? extends Attribute>) WaterPollutionAttribute.class);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        float f;
        float f2;
        Building building;
        if (happinessContext.building == null) {
            return -1.0f;
        }
        if (!this.medic.isUnlocked()) {
            return 1.0f;
        }
        float inRangeCoverage = happinessContext.coverageCalculator.getInRangeCoverage(2) * happinessContext.influences[InfluenceType.HEALTH.ordinal()];
        float f3 = happinessContext.influences[InfluenceType.POLLUTION.ordinal()];
        float f4 = happinessContext.influences[InfluenceType.SPORT.ordinal()];
        float fGrowingExpectation = 1.0f - Attribute.growingExpectation(happinessContext.building.getDraft().density, 8.0f, 32.0f);
        Building building2 = happinessContext.building;
        float f5 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (building2 != null) {
            float f6 = happinessContext.attributeContainer.getValues()[this.waterPollutionIndex];
            if (f6 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                f6 = 0.0f;
            } else if (f6 >= 0.5f) {
                happinessContext.survey.properties[11].assume(happinessContext.building, 1.0f - f6);
            }
            f2 = happinessContext.building.isFullOfWaste() ? 1.0f : 0.0f;
            if (happinessContext.building.isFullOfDeadPeople()) {
                f5 = f6;
                f = 1.0f;
            } else {
                f5 = f6;
                f = 0.0f;
            }
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        float f7 = ((fGrowingExpectation * 0.5f * (1.0f - (f3 * 0.8f)) * (1.0f - (f5 * 0.5f))) + (inRangeCoverage * 0.8f) + (f4 * 0.2f)) * (1.0f - (f2 * 0.99f)) * (1.0f - (f * 0.99f));
        if (f7 < 0.5d && (building = happinessContext.building) != null) {
            happinessContext.survey.properties[12].assume(building, f7);
        }
        return Math.min(f7, 1.0f);
    }
}
