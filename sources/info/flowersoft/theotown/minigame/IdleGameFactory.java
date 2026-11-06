package info.flowersoft.theotown.minigame;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import io.blueflower.stapel2d.util.json.JsonReader;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface IdleGameFactory {
    IdleGame create(Building building);

    Building getBuilding(IdleGame idleGame);

    List<BuildingDraft> getBuildings();

    String getTag();

    IdleGame load(JsonReader jsonReader) throws IOException;

    void update(List<IdleGame> list);
}
