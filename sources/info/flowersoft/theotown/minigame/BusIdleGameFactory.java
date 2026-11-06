package info.flowersoft.theotown.minigame;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.util.json.JsonReader;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BusIdleGameFactory implements IdleGameFactory {
    public City city;
    public Currency currency;
    public List<BuildingDraft> drafts = Drafts.getDraftsWithTag("bus depot", BuildingDraft.class);

    public BusIdleGameFactory(City city, Currency currency) {
        this.city = city;
        this.currency = currency;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public IdleGame create(Building building) {
        BusIdleGame busIdleGame = new BusIdleGame(this.city, this.currency);
        busIdleGame.setBuilding(building);
        return busIdleGame;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public BusIdleGame load(JsonReader jsonReader) throws IOException {
        BusIdleGame busIdleGame = new BusIdleGame(this.city, this.currency);
        busIdleGame.load(jsonReader);
        return busIdleGame;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public String getTag() {
        return "bus idle game";
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public List<BuildingDraft> getBuildings() {
        return this.drafts;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public Building getBuilding(IdleGame idleGame) {
        return ((BusIdleGame) idleGame).getBuilding();
    }

    @Override // info.flowersoft.theotown.minigame.IdleGameFactory
    public void update(List<IdleGame> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            IdleGame idleGame = list.get(i2);
            if (idleGame instanceof BusIdleGame) {
                ((BusIdleGame) idleGame).setRank(i);
                i++;
            }
        }
    }
}
