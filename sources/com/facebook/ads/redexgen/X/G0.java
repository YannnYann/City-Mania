package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G0 extends AbstractRunnableC3004oq {
    public static String[] A02 = {AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "tRYI", "7UJuVMqBcP2QEoAe5I9ReZPElv0qEy55", "leQvAr8Bdm", "IrxDcEzjLLQBxw", "x58zC904VQqUCNnuzCjkyAfM", "58DZzAqOGTGaE", "1xO3"};
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterfaceOnClickListenerC3127qs A01;

    public G0(DialogInterfaceOnClickListenerC3127qs dialogInterfaceOnClickListenerC3127qs, DialogInterface dialogInterface) {
        this.A01 = dialogInterfaceOnClickListenerC3127qs;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A01.A01.A02 != null) {
            this.A01.A01.A02.AIA(AbstractC2978oP.A03(this.A01.A01.A00), new C2159az().A05(this.A01.A01.A02(this.A01.A00.getText().toString())).A08());
        }
        DialogInterface dialogInterface = this.A00;
        if (A02[6].length() != 13) {
            throw new RuntimeException();
        }
        A02[6] = "1hADnGgCLejuT";
        dialogInterface.cancel();
    }
}
