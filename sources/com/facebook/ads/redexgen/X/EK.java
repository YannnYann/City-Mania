package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class EK extends AbstractRunnableC3004oq {
    public static String[] A02 = {"Fj7ESBBHPWyhzyUNUk9wEjKRlPGygZq6", "g67PsAoMqwfun9TNnEbbzF", "ENY3IRolQVjzW6bOv01IlQss7AzYYleq", "lKe2IwDytTZQvLz9quvLHuHucWWBwqoV", "WQbtnwrxyiBq4td5zJal7T60bQiBpmyU", "auXHRtsZPOgWBl50NZbeME", "yShIWIrCkTd3QxIv8pUvWeL4xOPKp5Tc", "YCUt31fLQHTMLH9kvQyheIeoTbhWxfAZ"};
    public final /* synthetic */ EE A00;
    public final /* synthetic */ boolean A01;

    public EK(EE ee, boolean z) {
        this.A00 = ee;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        AbstractC3137r2 abstractC3137r2A0B = this.A00.A0o.A0B();
        if (abstractC3137r2A0B != null) {
            boolean z = this.A01;
            if (A02[7].charAt(13) == 'O') {
                throw new RuntimeException();
            }
            A02[7] = "DQswTiUUYNmJPIt0t5S9h3Ak4jFcSKAR";
            abstractC3137r2A0B.setPageDetailsVisible((z || abstractC3137r2A0B.A0E()) ? false : true);
            abstractC3137r2A0B.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }
}
