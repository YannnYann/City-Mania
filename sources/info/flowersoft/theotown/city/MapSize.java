package info.flowersoft.theotown.city;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.resources.Resources;
import io.bidmachine.protobuf.EventTypeExtended;

/* JADX INFO: loaded from: classes4.dex */
public enum MapSize {
    SMALL(1743, 32, 32) { // from class: info.flowersoft.theotown.city.MapSize.1
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_SMALL_MAP;
        }
    },
    MIDDLE(1734, 64, 64) { // from class: info.flowersoft.theotown.city.MapSize.2
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_MEDIUM_MAP;
        }
    },
    BIG(2403, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) { // from class: info.flowersoft.theotown.city.MapSize.3
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_BIG_MAP;
        }
    },
    BIG2(3071, 256, 256) { // from class: info.flowersoft.theotown.city.MapSize.4
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_BIGBIG_MAP;
        }
    },
    BIG3(769, 384, 384) { // from class: info.flowersoft.theotown.city.MapSize.5
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_BIGBIGEXTRA_MAP;
        }
    },
    BIG4(3283, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) { // from class: info.flowersoft.theotown.city.MapSize.6
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_BIGBIGBIG_MAP;
        }
    },
    BIG8(1585, 1024, 1024) { // from class: info.flowersoft.theotown.city.MapSize.7
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_PICKLE_COIN;
        }
    },
    OTHER(717, 0, 0) { // from class: info.flowersoft.theotown.city.MapSize.8
        @Override // info.flowersoft.theotown.city.MapSize
        public int getIcon() {
            return Resources.ICON_CANCEL;
        }
    };

    public final int height;
    public final int localizationId;
    public final int width;

    public abstract int getIcon();

    MapSize(int i, int i2, int i3) {
        this.localizationId = i;
        this.width = i2;
        this.height = i3;
    }

    public static MapSize fromSize(int i, int i2) {
        if (i == i2) {
            for (MapSize mapSize : values()) {
                if (mapSize.width == i) {
                    return mapSize;
                }
            }
        }
        return OTHER;
    }

    public int getLocalizationId() {
        return this.localizationId;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }
}
