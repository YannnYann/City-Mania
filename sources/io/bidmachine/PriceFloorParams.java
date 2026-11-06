package io.bidmachine;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class PriceFloorParams {
    private final Map<String, Double> priceFloorsMap = new HashMap();

    public Map<String, Double> getPriceFloors() {
        return this.priceFloorsMap;
    }

    /* JADX INFO: renamed from: addPriceFloor, reason: merged with bridge method [inline-methods] */
    public PriceFloorParams m2447addPriceFloor(double d) {
        m2448addPriceFloor(UUID.randomUUID().toString(), d);
        return this;
    }

    /* JADX INFO: renamed from: addPriceFloor, reason: merged with bridge method [inline-methods] */
    public PriceFloorParams m2448addPriceFloor(String str, double d) {
        this.priceFloorsMap.put(str, Double.valueOf(d));
        return this;
    }
}
