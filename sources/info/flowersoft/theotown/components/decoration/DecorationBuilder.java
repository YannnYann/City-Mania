package info.flowersoft.theotown.components.decoration;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONArray;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DecorationBuilder {
    public final ProbabilitySelector<Decorator> decoSelector = new ProbabilitySelector<>(Resources.RND, 8);
    public List<Decorator> decorators;

    public void setCity(City city) {
        ArrayList arrayList = new ArrayList();
        this.decorators = arrayList;
        arrayList.add(new HarborDecorator(city));
        this.decorators.add(new FisherHutDecorator(city));
        this.decorators.add(new FarmDecorator(city));
        for (BuildingDraft buildingDraft : Drafts.getDraftsWithTag("decorator", BuildingDraft.class)) {
            JSONArray jSONArrayOptJSONArray = buildingDraft.getMetaTag("decorator").optJSONArray("zones");
            if (jSONArrayOptJSONArray != null) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        String strOptString = jSONArrayOptJSONArray.optString(i);
                        if (strOptString != null && !strOptString.isEmpty()) {
                            ZoneDraft zoneDraft = (ZoneDraft) Drafts.ALL.get(strOptString);
                            if (zoneDraft != null) {
                                arrayList2.add(zoneDraft);
                            }
                        } else {
                            throw new IllegalArgumentException("Illegal zone id " + strOptString);
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                        this.decorators.add(new GenericZoneDecorator(city, buildingDraft, arrayList2));
                    }
                } catch (Exception e) {
                    TheoTown.analytics.logException("Set city", e);
                }
            }
        }
    }

    public void onBuildBuilding(Building building) {
        for (int i = 0; i < this.decorators.size(); i++) {
            Decorator decorator = this.decorators.get(i);
            if (decorator.canDecorate(building)) {
                this.decoSelector.insert(decorator, decorator.getProbability());
            }
        }
        for (int i2 = 0; i2 < this.decoSelector.getDepth() && this.decoSelector.hasResult(i2); i2++) {
            this.decoSelector.getResult(i2).decorate(building);
        }
        this.decoSelector.clear();
    }
}
