package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class EducationHappiness extends Attribute {
    public EducationHappiness() {
        super(true, true, 509, Resources.ICON_EDUCATION);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        if (happinessContext.people == 0) {
            return -1.0f;
        }
        int i = happinessContext.level;
        if (i == 0) {
            return (happinessContext.influences[InfluenceType.EDUCATION_LOW.ordinal()] * 0.5f * happinessContext.coverageCalculator.getInRangeCoverage(0)) + 0.5f;
        }
        if (i == 1) {
            return (happinessContext.influences[InfluenceType.EDUCATION_LOW.ordinal()] * 0.5f * happinessContext.coverageCalculator.getInRangeCoverage(0)) + (happinessContext.influences[InfluenceType.EDUCATION_HIGH.ordinal()] * 0.5f * happinessContext.coverageCalculator.getInRangeCoverage(1));
        }
        if (i != 2) {
            return -1.0f;
        }
        return happinessContext.influences[InfluenceType.EDUCATION_LOW.ordinal()] * happinessContext.coverageCalculator.getInRangeCoverage(0) * happinessContext.influences[InfluenceType.EDUCATION_HIGH.ordinal()] * happinessContext.coverageCalculator.getInRangeCoverage(1);
    }
}
