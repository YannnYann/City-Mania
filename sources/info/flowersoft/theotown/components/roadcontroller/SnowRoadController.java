package info.flowersoft.theotown.components.roadcontroller;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.WinterManager;

/* JADX INFO: loaded from: classes4.dex */
public class SnowRoadController implements RoadController {
    public final City city;
    public final AnimationDraft SNOW_ON_ROAD_ANIM = (AnimationDraft) Drafts.get("$animationsnowroad", AnimationDraft.class);
    public boolean catastropheActive = false;
    public boolean winter = false;
    public float downfall = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void afterPass() {
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public boolean canHandle(RoadDraft roadDraft) {
        return true;
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void prepare() {
    }

    public SnowRoadController(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void beforePass() {
        this.catastropheActive = ((DefaultCatastrophe) this.city.getComponent(6)).isActive();
        this.winter = WinterManager.getInstance().isWinter();
        this.downfall = ((DefaultWeather) this.city.getComponent(12)).getRain();
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public void accept(Road road) {
        if (road.getOccupation() == this.SNOW_ON_ROAD_ANIM && !this.catastropheActive && Resources.RND.nextFloat() < 0.1f) {
            road.setOccupation(null);
        }
        if (this.winter && this.downfall > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && (road.getFlags() & 96) != 0) {
            road.setSnow(road.getSnow() + ((int) (this.downfall * 80.0f * Resources.RND.nextFloat())));
        } else {
            road.setSnow(road.getSnow() - 2);
        }
    }

    @Override // info.flowersoft.theotown.components.roadcontroller.RoadController
    public String getTag() {
        return "snow road";
    }
}
