package com.badlogic.gdx.pay;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseManagerConfig {
    public List<Offer> offers = new ArrayList(16);
    public Map<String, Object> storeParams = new HashMap(16);

    public synchronized void addOffer(Offer offer) {
        this.offers.add(offer);
    }

    public synchronized Offer getOffer(String str) {
        for (int i = 0; i < this.offers.size(); i++) {
            if (this.offers.get(i).getIdentifier().equals(str)) {
                return this.offers.get(i);
            }
        }
        return null;
    }

    public synchronized boolean hasAnyOfferWithType(OfferType offerType) {
        Iterator<Offer> it = this.offers.iterator();
        while (it.hasNext()) {
            if (it.next().getType() == offerType) {
                return true;
            }
        }
        return false;
    }

    public synchronized Offer getOffer(int i) {
        return this.offers.get(i);
    }

    public synchronized int getOfferCount() {
        return this.offers.size();
    }
}
