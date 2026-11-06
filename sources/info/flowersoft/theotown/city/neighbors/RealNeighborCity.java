package info.flowersoft.theotown.city.neighbors;

import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class RealNeighborCity extends NeighborCity {
    public final int height;
    public final LightCityInfo lightCityInfo;
    public long maxBodyDisposal;
    public long maxPower;
    public long maxWasteDisposal;
    public long maxWater;
    public Getter<Image> previewProvider;
    public final int width;
    public final int x;
    public final int y;

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasPowerConnection() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasRoadConnection() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasWaterConnection() {
        return false;
    }

    public RealNeighborCity(LightCityInfo lightCityInfo, int i, int i2, TradingRelation tradingRelation, boolean z, String str, long j, String str2, boolean z2, Getter<Image> getter) {
        super(tradingRelation, z, str, j, str2, z2);
        this.lightCityInfo = lightCityInfo;
        this.x = i;
        this.y = i2;
        this.width = lightCityInfo.getWidth();
        this.height = lightCityInfo.getHeight();
        this.maxPower = lightCityInfo.getProducedPower() - lightCityInfo.getUsedPower();
        this.maxWater = lightCityInfo.getProducedWater() - lightCityInfo.getUsedWater();
        this.maxWasteDisposal = lightCityInfo.getWasteDisposal() - lightCityInfo.getUsedWasteDisposal();
        this.maxBodyDisposal = lightCityInfo.getBodyDisposal() - lightCityInfo.getUsedBodyDisposal();
        for (TradingRelation tradingRelation2 : lightCityInfo.getTradingRelations()) {
            if (!tradingRelation2.getId().equals(str)) {
                this.maxPower -= tradingRelation2.getEnergyExport();
                this.maxWater -= tradingRelation2.getWaterExport();
                this.maxWasteDisposal -= tradingRelation2.getWasteDisposalExport();
                this.maxBodyDisposal -= tradingRelation2.getBodyDisposalExport();
            }
        }
        this.maxPower = Math.max(this.maxPower, 0L);
        this.maxWater = Math.max(this.maxWater, 0L);
        this.maxWasteDisposal = Math.max(this.maxWasteDisposal, 0L);
        this.maxBodyDisposal = Math.max(this.maxBodyDisposal, 0L);
        this.previewProvider = getter;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasInfinityMoney() {
        return this.lightCityInfo.getGameMode().hasInfinityMoney();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public String getName() {
        return this.lightCityInfo.getName();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public int getInhabitants() {
        return this.lightCityInfo.getHabitants();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public int getInhabitants(int i) {
        return this.lightCityInfo.getDetailedHabitants()[i];
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public BuildingSurvey getSurvey() {
        return this.lightCityInfo.getBuildingSurvey();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailablePower() {
        return this.maxPower;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableWater() {
        return this.maxWater;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableWasteDisposal() {
        return this.maxWasteDisposal;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableBodyDisposal() {
        return this.maxBodyDisposal;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean contains(int i, int i2) {
        int i3;
        int i4 = this.x;
        return i >= i4 && i2 >= (i3 = this.y) && i < i4 + this.width && i2 < i3 + this.height;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public Image getPreviewImage() {
        return this.previewProvider.get();
    }
}
