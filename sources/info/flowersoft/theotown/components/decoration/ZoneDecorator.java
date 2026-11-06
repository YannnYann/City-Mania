package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneDecorator extends Decorator {
    public final List<BuildingDraft> decorations;
    public final List<ZoneDraft> zones;

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean canDecorate(Building building) {
        return true;
    }

    public ZoneDecorator(City city, ZoneDraft zoneDraft) {
        this(city, (List<ZoneDraft>) Collections.singletonList(zoneDraft));
    }

    public ZoneDecorator(City city, List<ZoneDraft> list) {
        super(city);
        this.zones = list;
        this.decorations = new ArrayList();
    }

    public void addDecorationDraft(BuildingDraft buildingDraft) {
        this.decorations.add(buildingDraft);
    }

    public void addDecorationDrafts(String str) {
        for (int i = 0; i < 10; i++) {
            String str2 = str + i;
            if (Drafts.ALL.containsKey(str2)) {
                addDecorationDraft((BuildingDraft) Drafts.ALL.get(str2));
            }
        }
    }

    @Override // info.flowersoft.theotown.components.decoration.Decorator
    public boolean decorate(Building building) {
        int i = 0;
        for (int x = building.getX() - 1; x <= building.getX() + building.getWidth(); x++) {
            if (decorate(x, building.getY() - 1)) {
                i++;
            }
            if (decorate(x, building.getY() + building.getHeight())) {
                i++;
            }
        }
        for (int y = building.getY(); y < building.getY() + building.getHeight(); y++) {
            if (decorate(building.getX() - 1, y)) {
                i++;
            }
            if (decorate(building.getX() + building.getWidth(), y)) {
                i++;
            }
        }
        return i > 0;
    }

    public final boolean decorate(int i, int i2) {
        ZoneDraft zone;
        if (!this.city.isValid(i, i2) || (zone = this.tiles.getZone(i, i2)) == null || !this.zones.contains(zone) || this.tiles.getBuilding(i, i2) != null) {
            return false;
        }
        BuildingDraft randomDecorationDraft = getRandomDecorationDraft();
        if (!this.modifier.isBuildable(randomDecorationDraft, i, i2)) {
            return false;
        }
        this.modifier.build(randomDecorationDraft, i, i2, -1, (LuaValue) null);
        return true;
    }

    public final BuildingDraft getRandomDecorationDraft() {
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        for (int i = 0; i < this.decorations.size(); i++) {
            if (this.decorations.get(i).isUnlocked()) {
                probabilitySelector.insert(this.decorations.get(i), this.decorations.get(i).frames.length);
            }
        }
        return (BuildingDraft) probabilitySelector.getResult();
    }
}
