package io.bidmachine.models;

import io.bidmachine.CreativeFormat;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface AuctionResult {
    CreativeFormat getCreativeFormat();

    String getCreativeId();

    Map<String, String> getCustomParams();

    String getDeal();

    String getId();

    String getNetworkKey();

    Map<String, String> getNetworkParams();

    double getPrice();
}
