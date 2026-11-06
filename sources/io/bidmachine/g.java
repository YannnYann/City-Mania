package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements AuctionResult {
    public final String a;
    public final String b;
    public final double c;
    public final String d;
    public final String e;
    public final String f;
    public final String[] g;
    public final String h;
    public final Map i;
    public final CreativeFormat j;
    public final Map k;

    public g(AdsType adsType, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad, NetworkAdapter networkAdapter, AdExtension adExtension) {
        this.a = bid.getId();
        this.b = seatbid.getSeat();
        this.c = bid.getPrice();
        this.d = bid.getDeal();
        this.e = ad.getId();
        this.f = bid.getCid();
        if (ad.getAdomainCount() > 0) {
            this.g = (String[]) ad.m689getAdomainList().toArray(new String[0]);
        } else {
            this.g = null;
        }
        this.k = a(adExtension);
        this.h = networkAdapter.getKey();
        this.i = a(adsType.obtainHeaderBiddingAd(ad));
        this.j = a(ad);
    }

    public final Map a(AdExtension adExtension) {
        HashMap map = new HashMap();
        if (adExtension != null) {
            try {
                map.putAll(adExtension.getCustomParamsMap());
            } catch (Exception unused) {
            }
        }
        return map;
    }

    @Override // io.bidmachine.models.AuctionResult
    public CreativeFormat getCreativeFormat() {
        return this.j;
    }

    @Override // io.bidmachine.models.AuctionResult
    public String getCreativeId() {
        return this.e;
    }

    @Override // io.bidmachine.models.AuctionResult
    public Map getCustomParams() {
        return this.k;
    }

    @Override // io.bidmachine.models.AuctionResult
    public String getDeal() {
        return this.d;
    }

    @Override // io.bidmachine.models.AuctionResult
    public String getId() {
        return this.a;
    }

    @Override // io.bidmachine.models.AuctionResult
    public String getNetworkKey() {
        return this.h;
    }

    @Override // io.bidmachine.models.AuctionResult
    public Map getNetworkParams() {
        return this.i;
    }

    @Override // io.bidmachine.models.AuctionResult
    public double getPrice() {
        return this.c;
    }

    public String toString() {
        return "id=" + this.a + ", demandSource=" + this.b + ", price=" + this.c + ", creativeId=" + this.e + ", cid=" + this.f;
    }

    public Map a(HeaderBiddingAd headerBiddingAd) {
        Map<String, String> clientParamsMap;
        HashMap map = new HashMap();
        if (headerBiddingAd != null && (clientParamsMap = headerBiddingAd.getClientParamsMap()) != null) {
            map.putAll(clientParamsMap);
        }
        return map;
    }

    public static CreativeFormat a(Ad ad) {
        if (ad.hasDisplay()) {
            Ad.Display display = ad.getDisplay();
            if (!display.hasBanner() && TextUtils.isEmpty(display.getAdm())) {
                if (display.hasNative()) {
                    return CreativeFormat.Native;
                }
                return null;
            }
            return CreativeFormat.Banner;
        }
        if (ad.hasVideo()) {
            return CreativeFormat.Video;
        }
        return null;
    }
}
