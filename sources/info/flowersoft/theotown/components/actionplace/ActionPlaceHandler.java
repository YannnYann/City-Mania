package info.flowersoft.theotown.components.actionplace;

import info.flowersoft.theotown.city.MapArea;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface ActionPlaceHandler {
    void notifyAction(List<MapArea> list, int i);

    void notifyNoAction(int i);
}
