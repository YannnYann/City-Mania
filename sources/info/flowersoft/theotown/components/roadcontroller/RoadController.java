package info.flowersoft.theotown.components.roadcontroller;

import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.RoadDraft;

/* JADX INFO: loaded from: classes4.dex */
public interface RoadController {
    void accept(Road road);

    void afterPass();

    void beforePass();

    boolean canHandle(RoadDraft roadDraft);

    String getTag();

    void prepare();
}
