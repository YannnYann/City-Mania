package com.badlogic.gdx.pay;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Offer {
    public String identifier;
    public Map<String, String> identifierForStores = new HashMap(16);
    public OfferType type;

    public synchronized OfferType getType() {
        return this.type;
    }

    public synchronized Offer setType(OfferType offerType) {
        this.type = offerType;
        return this;
    }

    public synchronized String getIdentifier() {
        return this.identifier;
    }

    public synchronized Offer setIdentifier(String str) {
        this.identifier = str;
        return this;
    }

    public synchronized String getIdentifierForStore(String str) {
        String str2 = this.identifierForStores.get(str);
        if (str2 != null) {
            return str2;
        }
        return this.identifier;
    }

    public String toString() {
        return "Offer{type=" + this.type + ", identifier='" + this.identifier + "', identifierForStores=" + this.identifierForStores + '}';
    }
}
