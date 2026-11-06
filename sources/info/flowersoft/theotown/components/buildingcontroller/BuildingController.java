package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.util.Saveable;

/* JADX INFO: loaded from: classes4.dex */
public interface BuildingController extends Saveable {
    void accept(Building building);

    void afterPass();

    void beforePass();

    boolean canHandle(BuildingDraft buildingDraft);

    String getTag();

    void prepare();
}
