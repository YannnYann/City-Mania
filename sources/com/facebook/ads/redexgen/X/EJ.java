package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class EJ implements InterfaceC3054ph {
    public static String[] A01 = {"", "YoSzTquPA7wka941XYaWByBR6xL5WRX7", "uaSYDqhvif4NLI2aOrU3iZIZXF", "fOK3zUD9qNrEz4xXI2fJHvE9CReSlzkT", "26SWaVEt8ja3MfjbcN48UdEsxAnwb6yR", "3hKYzXgmJfs2o1zssfkFZjoQYs0dnWq9", "rWHcEdTjVQWdXllqxeKwjtopPWmYGbRK", "LajSKtLfAHH0OMRTK"};
    public final /* synthetic */ EE A00;

    public EJ(EE ee) {
        this.A00 = ee;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A00.A0R = false;
        AbstractC3137r2 abstractC3137r2A0B = this.A00.A0o.A0B();
        if (abstractC3137r2A0B != null) {
            int closeButtonStyle = this.A00.getCloseButtonStyle();
            String[] strArr = A01;
            if (strArr[3].charAt(2) != strArr[5].charAt(2)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "cjKmeJfHfZg4t3yPrsDo7i3JaU0dgqo9";
            strArr2[5] = "O6K8cyE1jF70n2spj5tkLb9l73WHBSIF";
            abstractC3137r2A0B.setToolbarActionMode(closeButtonStyle);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
    }
}
