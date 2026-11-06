package info.flowersoft.theotown.city.components;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Demand extends CityComponent {
    public abstract float getBuildingDemand(int i, int i2);

    public abstract float getCommercial(int i);

    public abstract float getIndustrial(int i);

    public abstract float getResidential(int i);

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 10;
    }

    public float getResidential() {
        return ((getResidential(0) + getResidential(1)) + getResidential(2)) / 3.0f;
    }

    public float getCommercial() {
        return ((getCommercial(0) + getCommercial(1)) + getCommercial(2)) / 3.0f;
    }

    public float getIndustrial() {
        return ((getIndustrial(0) + getIndustrial(1)) + getIndustrial(2)) / 3.0f;
    }
}
