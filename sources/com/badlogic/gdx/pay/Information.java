package com.badlogic.gdx.pay;

/* JADX INFO: loaded from: classes.dex */
public final class Information {
    public static final Information UNAVAILABLE = new Information(null, null, null);
    public FreeTrialPeriod freeTrialPeriod;
    public final String localDescription;
    public final String localName;
    public final String localPricing;
    public Double priceAsDouble;
    public String priceCurrencyCode;

    @Deprecated
    public Integer priceInCents;

    public Information(String str, String str2, String str3) {
        this.localName = str;
        this.localDescription = str2;
        this.localPricing = str3;
    }

    public Information(Builder builder) {
        this.localName = builder.localName;
        this.localDescription = builder.localDescription;
        this.localPricing = builder.localPricing;
        this.priceInCents = builder.priceInCents;
        this.priceAsDouble = builder.priceAsDouble;
        this.priceCurrencyCode = builder.priceCurrencyCode;
        this.freeTrialPeriod = builder.freeTrialPeriod;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Deprecated
    public Integer getPriceInCents() {
        return this.priceInCents;
    }

    public String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public String getLocalName() {
        return this.localName;
    }

    public String getLocalDescription() {
        return this.localDescription;
    }

    public String getLocalPricing() {
        return this.localPricing;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Information.class == obj.getClass()) {
            Information information = (Information) obj;
            String str = this.localName;
            if (str == null ? information.localName != null : !str.equals(information.localName)) {
                return false;
            }
            String str2 = this.localDescription;
            if (str2 == null ? information.localDescription != null : !str2.equals(information.localDescription)) {
                return false;
            }
            String str3 = this.localPricing;
            String str4 = information.localPricing;
            if (str3 == null ? str4 == null : str3.equals(str4)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.localName;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.localDescription;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.localPricing;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "Information{localName='" + this.localName + "', localDescription='" + this.localDescription + "', localPricing='" + this.localPricing + "'}";
    }

    public static final class Builder {
        public FreeTrialPeriod freeTrialPeriod;
        public String localDescription;
        public String localName;
        public String localPricing;
        public Double priceAsDouble;
        public String priceCurrencyCode;

        @Deprecated
        public Integer priceInCents;

        public Builder() {
        }

        public Builder localName(String str) {
            this.localName = str;
            return this;
        }

        public Builder localDescription(String str) {
            this.localDescription = str;
            return this;
        }

        public Builder freeTrialPeriod(FreeTrialPeriod freeTrialPeriod) {
            this.freeTrialPeriod = freeTrialPeriod;
            return this;
        }

        public Builder localPricing(String str) {
            this.localPricing = str;
            return this;
        }

        @Deprecated
        public Builder priceInCents(Integer num) {
            this.priceInCents = num;
            return this;
        }

        public Builder priceAsDouble(Double d) {
            this.priceAsDouble = d;
            return this;
        }

        public Builder priceCurrencyCode(String str) {
            this.priceCurrencyCode = str;
            return this;
        }

        public Information build() {
            return new Information(this);
        }
    }
}
