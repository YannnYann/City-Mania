package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.mechanics.RewardManager;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class AdReward {
    public final JSONObject adRewardObj = Resources.getSpecificConfig("ad reward");
    public final RewardManager handler = GameHandler.getInstance().getRewardManager();

    public boolean isAvailable() {
        if (this.handler.timeSinceLastAdReward() >= this.adRewardObj.optLong("cooldown minutes") * 60000) {
            this.handler.setAdRewardCount(this.adRewardObj.optInt("max at once"));
        }
        return this.handler.getAdRewardCount() > 0;
    }

    public int getAvailableCount() {
        return this.handler.getAdRewardCount();
    }
}
