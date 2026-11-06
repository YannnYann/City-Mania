package info.flowersoft.theotown.creation;

import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DummyCatastrophe extends Catastrophe {
    @Override // info.flowersoft.theotown.city.components.Catastrophe, info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 6;
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public void issueFlash() {
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public void issueQuake() {
    }

    @Override // info.flowersoft.theotown.city.components.Catastrophe
    public List<Disaster> getDisasters() {
        return Collections.EMPTY_LIST;
    }
}
