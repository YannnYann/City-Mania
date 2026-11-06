package info.flowersoft.theotown.components.coverage;

import com.badlogic.gdx.math.MathUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.management.DefaultManagement;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DraftDrivenAspect implements Aspect {
    public int buildingField;
    public final City city;
    public int coverageAspect;
    public boolean infiniteRadius;
    public DefaultInfluence influence;
    public final InfluenceType influenceType;
    public boolean populationAware;
    public float[] populationFactors;

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public long getNeighborTrading(NeighborCity neighborCity) {
        return 0L;
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public void setNeighborTrading(NeighborCity neighborCity, long j) {
    }

    public DraftDrivenAspect(City city, int i, InfluenceType influenceType) {
        this(city, i, influenceType, -1, false, true);
    }

    public DraftDrivenAspect(City city, int i, InfluenceType influenceType, int i2, boolean z, boolean z2) {
        this.populationFactors = new float[3];
        this.city = city;
        this.coverageAspect = i;
        this.influenceType = influenceType;
        this.buildingField = i2;
        this.infiniteRadius = z;
        this.populationAware = z2;
    }

    public boolean isActive(Building building) {
        return building.isWorking();
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public void prepare() {
        BuildingSurvey buildingSurvey = ((DefaultManagement) this.city.getComponent(3)).getBuildingSurvey();
        DefaultPeople defaultPeople = (DefaultPeople) this.city.getComponent(9);
        for (int i = 0; i < 3; i++) {
            int residentialSpace = buildingSurvey.getResidentialSpace(i, 0);
            if (residentialSpace != 0) {
                this.populationFactors[i] = MathUtils.clamp(defaultPeople.getPeople(i) / residentialSpace, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public int providedAmount(Building building) {
        int aspectCapacity;
        int providedAmount = isActive(building) ? building.getProvidedAmount(this.coverageAspect) : 0;
        return (providedAmount <= 0 || this.buildingField < 0 || (aspectCapacity = building.getAspectCapacity(this.coverageAspect)) <= 0) ? providedAmount : Math.max(Math.min(providedAmount, aspectCapacity - building.getAspects()[this.buildingField]), 0);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public int providedRadius(Building building) {
        int i = building.getInfluenceInduceVector()[this.influenceType.ordinal()];
        int width = building.getWidth() * building.getHeight();
        if (isActive(building)) {
            return Math.round(((float) Math.sqrt(width * Math.abs(i) * 4)) + 1.0f);
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public int neededAmount(Building building) {
        if (!building.isWorking()) {
            return 0;
        }
        int neededAmount = building.getNeededAmount(this.coverageAspect);
        if (this.populationAware) {
            neededAmount = Math.round(neededAmount * this.populationFactors[building.getLevel()]);
        }
        return this.buildingField >= 0 ? neededAmount + ((int) Math.ceil(building.getAspects()[this.buildingField] / 10.0f)) : neededAmount;
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public int reachedAmount(Building building) {
        if (this.influence == null) {
            this.influence = (DefaultInfluence) this.city.getComponent(2);
        }
        float influence = this.influence.getInfluence(building, this.influenceType.ordinal());
        float base = this.influenceType.getBase();
        if (base > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && base < 1.0f) {
            influence = MathUtils.clamp((influence - this.influenceType.getBase()) / (1.0f - base), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        }
        return Math.round(neededAmount(building) * influence);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public boolean hasInfiniteRadius() {
        return this.infiniteRadius;
    }
}
