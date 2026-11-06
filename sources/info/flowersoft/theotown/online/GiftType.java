package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum GiftType {
    EMPTY("empty", false),
    CASH("cash", true),
    DIAMOND("diamond", true),
    TEXT(C3522b4.i.K0, false),
    UNKNOWN("", false);

    public static Map<String, GiftType> idMap;
    public final boolean consumable;
    public final String id;

    GiftType(String str, boolean z) {
        this.id = str;
        this.consumable = z;
    }

    public String getId() {
        return this.id;
    }

    public boolean isConsumable() {
        return this.consumable;
    }

    public static GiftType getGiftType(String str) {
        if (idMap == null) {
            synchronized (GiftType.class) {
                try {
                    if (idMap == null) {
                        HashMap map = new HashMap();
                        for (GiftType giftType : values()) {
                            map.put(giftType.getId(), giftType);
                        }
                        idMap = map;
                    }
                } finally {
                }
            }
        }
        GiftType giftType2 = idMap.get(str);
        return giftType2 != null ? giftType2 : UNKNOWN;
    }
}
