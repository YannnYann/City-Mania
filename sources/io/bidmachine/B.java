package io.bidmachine;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.Logger;
import io.bidmachine.utils.BMError;

/* JADX INFO: loaded from: classes4.dex */
public abstract class B {

    public interface a {
        void a(BMError bMError);

        void onSuccess(Object obj);
    }

    public static void a(AdRequestParameters adRequestParameters, NetworkAdUnitManager networkAdUnitManager, Response response, a aVar) {
        if (response == null || response.getSeatbidCount() == 0) {
            aVar.a(BMError.notFound("Response"));
            return;
        }
        Response.Seatbid seatbid = response.getSeatbid(0);
        if (seatbid == null || seatbid.getBidCount() == 0) {
            aVar.a(BMError.notFound("Seatbid"));
            return;
        }
        Response.Seatbid.Bid bid = seatbid.getBid(0);
        if (bid == null) {
            aVar.a(BMError.notFound("Bid"));
            return;
        }
        Any media = bid.getMedia();
        if (media == null) {
            aVar.a(BMError.notFound("Media"));
            return;
        }
        if (!media.is(Ad.class)) {
            aVar.a(BMError.incorrectContent("Media not valid"));
            return;
        }
        try {
            Ad ad = (Ad) media.unpack(Ad.class);
            if (ad == null) {
                aVar.a(BMError.notFound("Ad"));
                return;
            }
            NetworkAdapter networkAdapterFindNetworkAdapter = adRequestParameters.getAdsType().findNetworkAdapter(ad);
            if (networkAdapterFindNetworkAdapter == null) {
                aVar.a(BMError.notFound("NetworkAdapter"));
            } else {
                aVar.onSuccess(new AdResponse(adRequestParameters, networkAdUnitManager, response, seatbid, bid, ad, networkAdapterFindNetworkAdapter));
            }
        } catch (Throwable th) {
            Logger.w(th);
            aVar.a(BMError.throwable("Failed to process response", th));
        }
    }
}
