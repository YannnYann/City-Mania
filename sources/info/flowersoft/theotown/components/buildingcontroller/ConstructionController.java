package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class ConstructionController implements BuildingController {
    public final City city;
    public DefaultDate date;
    public long day;
    public CityModifier modifier;
    public int shortBuildTimeFactor;

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        return true;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public ConstructionController(City city) {
        this.city = city;
        this.date = (DefaultDate) city.getComponent(1);
        this.modifier = new CityModifier(city, true);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
        this.day = this.date.getAbsoluteDay();
        this.shortBuildTimeFactor = GameHandler.getInstance().getTimedEffectManager().getShortBuildTimeFactor();
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        if (building.inConstruction()) {
            BuildingDraft draft = building.getDraft();
            double daysBuilt = building.getDaysBuilt(this.day);
            int i = draft.buildTime;
            if ((daysBuilt + ((double) i)) - ((double) (i / this.shortBuildTimeFactor)) >= 0.0d) {
                synchronized (this.city) {
                    this.modifier.finishBuilding(building, null);
                }
                return;
            }
            return;
        }
        if (building.hasPendingUpgrades()) {
            if (building.getPendingUpgradeDaysLeft(this.day) <= 0.0d || this.city.getGameMode().buildImmediately()) {
                synchronized (this.city) {
                    try {
                        if (building.hasPendingUpgrades() && (building.getPendingUpgradeDaysLeft(this.day) <= 0.0d || this.city.getGameMode().buildImmediately())) {
                            this.modifier.finishUpgrade(building, null);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "construction";
    }
}
