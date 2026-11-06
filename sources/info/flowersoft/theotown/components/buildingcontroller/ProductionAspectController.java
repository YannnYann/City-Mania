package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ProductionAspectController implements BuildingController {
    public boolean active;
    public int aspectField;
    public final City city;
    public int coverageAspect;
    public int minRank;
    public Building nextOverfilledNeeder;
    public Building nextOverfilledProducer;
    public Building overfilledNeeder;
    public Building overfilledProducer;
    public final Tiles tiles;

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public ProductionAspectController(City city, int i, int i2) {
        this.city = city;
        this.tiles = city.getTiles();
        this.coverageAspect = i;
        this.aspectField = i2;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
        this.overfilledProducer = this.nextOverfilledProducer;
        this.overfilledNeeder = this.nextOverfilledNeeder;
        this.nextOverfilledProducer = null;
        this.nextOverfilledNeeder = null;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        return buildingDraft.neededAspectAmount[this.coverageAspect] != 0;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
        this.active = this.city.getGameMode().hasInfinityMoney() || this.city.getRank().ordinal >= this.minRank;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        if (building.isWorking()) {
            int neededAmount = building.getNeededAmount(this.coverageAspect);
            int providedAmount = building.getProvidedAmount(this.coverageAspect);
            int usedAspectAmount = building.getUsedAspectAmount(this.coverageAspect);
            int aspectCapacity = building.getAspectCapacity(this.coverageAspect);
            int[] aspects = building.getAspects();
            if (neededAmount > 0) {
                applyNeeder(building, neededAmount, usedAspectAmount, aspectCapacity, aspects);
            } else if (providedAmount > 0) {
                applyProducer(building, providedAmount, usedAspectAmount, aspectCapacity, aspects);
            }
        }
    }

    public final void applyProducer(Building building, int i, int i2, int i3, int[] iArr) {
        if (i3 != -1) {
            if (this.active) {
                int i4 = this.aspectField;
                iArr[i4] = Math.min(iArr[i4] + Math.min(i2, i), i3);
            }
            if (this.city.isUber()) {
                iArr[this.aspectField] = 0;
            }
            updateFrame(building);
            if (iArr[this.aspectField] >= i3) {
                this.nextOverfilledProducer = building;
            }
        }
    }

    public final void applyNeeder(Building building, int i, int i2, int i3, int[] iArr) {
        int iNextInt = Resources.RND.nextInt(1000) + 1;
        if (i2 > 0) {
            i2++;
        }
        if (this.active) {
            int i4 = this.aspectField;
            iArr[i4] = Math.min(Math.max((iArr[i4] + ((((((i * iNextInt) / 1000) * iNextInt) / 1000) * iNextInt) / 1000)) - i2, 0), i3);
        }
        building.setUsedAspectAmount(this.coverageAspect, Math.max(i2 - 1, 0));
        if (iArr[this.aspectField] >= i3) {
            this.nextOverfilledNeeder = building;
        }
    }

    public void updateFrame(Building building) {
        BuildingDraft draft = building.getDraft();
        if (draft.randomFrame) {
            return;
        }
        int length = draft.frames.length;
        building.setFrame(Math.min(Math.round((building.getAspects()[this.aspectField] / building.getAspectCapacity(this.coverageAspect)) * length), length - 1));
    }

    public Building getOverfilledProducer() {
        return this.overfilledProducer;
    }

    public Building getOverfilledNeeder() {
        return this.overfilledNeeder;
    }
}
