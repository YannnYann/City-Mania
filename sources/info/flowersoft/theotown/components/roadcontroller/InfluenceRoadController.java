package info.flowersoft.theotown.components.roadcontroller;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Resources;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class InfluenceRoadController implements RoadController {
    public float addRoadProbability;
    public final City city;
    public final CityModifier modifier;
    public final List<Road> roads = new ArrayList();
    public final Tiles tiles;

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public boolean canHandle(RoadDraft roadDraft) {
        return true;
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void prepare() {
    }

    public InfluenceRoadController(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        this.modifier = new CityModifier(city, true);
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void beforePass() {
        this.addRoadProbability = (Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE * 0.1f) / Math.max(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, this.city.getRoads().size());
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void accept(Road road) {
        if (Resources.RND.nextFloat() >= this.addRoadProbability || this.roads.size() >= 128) {
            return;
        }
        this.roads.add(road);
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void afterPass() {
        int iRound;
        for (int i = 0; i < this.roads.size(); i++) {
            Road road = this.roads.get(i);
            int i2 = road.x;
            int i3 = road.y;
            if (this.tiles.getRoad(i2, i3, road.level) == road && road.lastAppliedTrafficAmount != (iRound = Math.round(road.trafficAmount * 10.0f))) {
                this.modifier.removeTileInfluence(i2, i3);
                road.lastAppliedTrafficAmount = iRound;
                this.modifier.addTileInfluence(i2, i3);
            }
        }
        this.roads.clear();
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public String getTag() {
        return "influence road controller";
    }
}
