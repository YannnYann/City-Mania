package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public class FeatureDraft extends ViewportDraft {
    public boolean buyable;
    public boolean cityBound;
    public boolean consumable;
    public int consumeCtr;
    public String currencyCode;
    public int doubledIncomeTimeMin;
    public String event;
    public int freeTunnels;
    public int ingameMoney;
    public long lastConsumed;
    public long lockDelayMinutes;
    public long maxUnixTime;
    public int microPrice;
    public long minUnixTime;
    public int shortBuildTimeMin;
    public String sku;
    public int time;
    public String token;
    public FeatureDraft[] unlockedBy;
    public FeatureDraft[] unlocks;
    public String[] unlocksIds;
    public String formattedPrice = "?";
    public final SpecialInt diamonds = new SpecialInt();
    public final SpecialInt diamondPrice = new SpecialInt();

    public boolean availableForPurchase() {
        String str;
        if (this.buyable) {
            return ((isTimeConstraint() && getRemainingUnlockedSeconds() + (this.lockDelayMinutes * 60) < 0) || (str = this.formattedPrice) == null || str.isEmpty() || this.formattedPrice.equals("?")) ? false : true;
        }
        return false;
    }

    public boolean isTimeConstraint() {
        return this.maxUnixTime != 0;
    }

    public long getRemainingUnlockedSeconds() {
        long j = this.maxUnixTime;
        if (j != 0) {
            return j - (InternetTime.getInstance().getTime() / 1000);
        }
        return 0L;
    }

    public boolean isPurchased() {
        return this.token != null || GameHandler.getInstance().isFeatureBought(this) || TheoTown.PREMIUM;
    }

    @Override // info.flowersoft.theotown.draft.Draft
    public boolean isUnlocked() {
        return getUnlockedReason() != null;
    }

    public FeatureDraft getUnlockedReason() {
        JSONArray jSONArrayOptJSONArray;
        JSONArray jSONArrayOptJSONArray2;
        if (this.consumable) {
            return null;
        }
        if (TheoTown.DEBUG && (jSONArrayOptJSONArray2 = Resources.getSpecificConfig("special offer").optJSONArray("test locked drafts")) != null) {
            for (int i = 0; i < jSONArrayOptJSONArray2.length(); i++) {
                if (this.id.equals(jSONArrayOptJSONArray2.optString(i))) {
                    return null;
                }
            }
        }
        if (!isPurchased()) {
            if (this.unlockedBy != null) {
                int i2 = 0;
                while (true) {
                    FeatureDraft[] featureDraftArr = this.unlockedBy;
                    if (i2 >= featureDraftArr.length) {
                        break;
                    }
                    if (featureDraftArr[i2].isUnlocked()) {
                        return this.unlockedBy[i2];
                    }
                    i2++;
                }
            }
            if (TheoTown.DEBUG && (jSONArrayOptJSONArray = Resources.getSpecificConfig("special offer").optJSONArray("test unlocked drafts")) != null) {
                for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                    if (!this.id.equals(jSONArrayOptJSONArray.optString(i3))) {
                    }
                }
            }
            return null;
        }
        return this;
    }
}
