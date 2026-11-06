package info.flowersoft.theotown.city;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public enum GameMode {
    SANDBOX(2624, 2593, -1, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.1
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_GAMEMODE_SANDBOX;
        }
    },
    EASY(3073, 1885, 100000, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.2
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_LOAN;
        }
    },
    MIDDLE(2266, 2686, 50000, 1.2f) { // from class: info.flowersoft.theotown.city.GameMode.3
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_GAMEMODE_MIDDLE;
        }
    },
    HARD(3170, 1306, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, 2.0f) { // from class: info.flowersoft.theotown.city.GameMode.4
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_DISASTER_ILLNESS;
        }
    },
    NOLOGIC(3402, 3402, -2, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.5
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_CANCEL;
        }
    },
    FREE(347, Sdk.SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, -2, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.6
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_BUILD;
        }
    },
    DEVELOPER(366, 366, -1, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.7
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return Resources.ICON_WIZARD;
        }
    },
    TEST(0, 0, -1, 1.0f) { // from class: info.flowersoft.theotown.city.GameMode.8
        @Override // info.flowersoft.theotown.city.GameMode
        public int getIcon() {
            return 0;
        }
    };

    public final int descId;
    public final boolean infinityMoney;
    public final int localizationId;
    public final int moneyAtStart;
    public final boolean noGameLogic;
    public final float priceFactor;

    public abstract int getIcon();

    GameMode(int i, int i2, int i3, float f) {
        this.localizationId = i;
        this.descId = i2;
        this.moneyAtStart = i3;
        this.infinityMoney = i3 < 0;
        this.noGameLogic = i3 < -1;
        this.priceFactor = f;
    }

    public int getLocalizationId() {
        return this.localizationId;
    }

    public int getDescriptionId() {
        return this.descId;
    }

    public int getMoneyAtStart() {
        return this.moneyAtStart;
    }

    public boolean hasInfinityMoney() {
        return this.infinityMoney;
    }

    public boolean hasGameLogic() {
        return !this.noGameLogic;
    }

    public boolean hasRequirements() {
        return !hasInfinityMoney();
    }

    public float getPriceFactor() {
        return this.priceFactor;
    }

    public boolean peopleMayLeave() {
        return !hasInfinityMoney();
    }

    public boolean hasInfiniteIdleMoney() {
        return this == FREE;
    }

    public boolean buildImmediately() {
        if (this != DEVELOPER) {
            return (!TheoTown.PREMIUM || this == HARD || this == MIDDLE) ? false : true;
        }
        return true;
    }
}
