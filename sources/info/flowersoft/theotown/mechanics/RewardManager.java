package info.flowersoft.theotown.mechanics;

import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.SSP;

/* JADX INFO: loaded from: classes4.dex */
public class RewardManager {
    public int adRewardCount;
    public long lastAdReward;
    public long lastReward;
    public long lastRewardPlayTimeSeconds;
    public int rewardCount;

    public void loadData(SSP.Reader reader) {
        this.lastReward = reader.getLong("last reward", 0L);
        this.rewardCount = reader.getInt("reward count", 0);
        this.lastAdReward = reader.getLong("last ad reward", 0L);
        this.adRewardCount = reader.getInt("ad reward count", 0);
        this.lastRewardPlayTimeSeconds = reader.getLong("last reward play time seconds", 0L);
    }

    public void saveData(SSP.Writer writer) {
        writer.putLong("last reward", this.lastReward);
        writer.putInt("reward count", this.rewardCount);
        writer.putLong("last ad reward", this.lastAdReward);
        writer.putInt("ad reward count", this.adRewardCount);
        writer.putLong("last reward play time seconds", this.lastRewardPlayTimeSeconds);
    }

    public boolean isTimeForReward() {
        if (!InternetTime.getInstance().isConnected()) {
            return false;
        }
        long time = InternetTime.getInstance().getTime();
        long j = time - this.lastReward;
        long j2 = this.lastRewardPlayTimeSeconds;
        if (j2 > 0 && Math.abs(Settings.playTimeSeconds - j2) < 30) {
            return false;
        }
        if (j < 0) {
            this.lastReward = time;
            GameHandler.getInstance().saveData();
        }
        if (this.lastReward > 0 && j > 259200000) {
            this.rewardCount = 0;
        }
        return j >= 57600000;
    }

    public int getRewardDay() {
        return this.rewardCount;
    }

    public void rewardPlayer(int i, String str) {
        this.lastReward = InternetTime.getInstance().getTime();
        this.lastRewardPlayTimeSeconds = Settings.playTimeSeconds;
        this.rewardCount++;
        GameHandler.getInstance().earnDiamonds(i, true, str);
    }

    public void rewardPlayerForAd(int i, String str) {
        GameHandler.getInstance().earnDiamonds(i, true, str);
        setAdRewardCount(getAdRewardCount() - 1);
    }

    public long timeSinceLastAdReward() {
        return InternetTime.getInstance().getTime() - this.lastAdReward;
    }

    public int getAdRewardCount() {
        return this.adRewardCount;
    }

    public void setAdRewardCount(int i) {
        this.adRewardCount = i;
        this.lastAdReward = InternetTime.getInstance().getTime();
        GameHandler.getInstance().saveData();
    }
}
