package com.badlogic.gdx.pay.android.googlebilling;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ PurchaseManagerGoogleBilling f$0;

    public /* synthetic */ PurchaseManagerGoogleBilling$$ExternalSyntheticLambda1(PurchaseManagerGoogleBilling purchaseManagerGoogleBilling) {
        this.f$0 = purchaseManagerGoogleBilling;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.handleBillingSetupFinished();
    }
}
