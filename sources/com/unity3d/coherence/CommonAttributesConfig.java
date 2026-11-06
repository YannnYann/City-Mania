package com.unity3d.coherence;

/* JADX INFO: loaded from: classes4.dex */
public final class CommonAttributesConfig {
    public final int eventId;
    public final int productId;

    public CommonAttributesConfig(int i, int i2) {
        this.productId = i;
        this.eventId = i2;
    }

    public int getProductId() {
        return this.productId;
    }

    public int getEventId() {
        return this.eventId;
    }

    public static final class Builder {
        public int productId = 0;
        public int eventId = 0;

        public CommonAttributesConfig build() {
            return new CommonAttributesConfig(this.productId, this.eventId);
        }
    }
}
