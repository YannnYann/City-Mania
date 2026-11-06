package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.protobuf.Waterfall;

/* JADX INFO: loaded from: classes4.dex */
public class GAMUtils {
    public static String toString(Waterfall.Configuration.AdUnit adUnit) {
        return "adUnitId - " + adUnit.getAdUnitId() + ", price - " + adUnit.getPrice();
    }

    public static String toString(Waterfall.Result.AdUnit adUnit) {
        return "adUnitId - " + adUnit.getAdUnitId() + ", price - " + adUnit.getPrice() + ", status - " + adUnit.getStatus();
    }
}
