package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentForm;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform$OnConsentFormLoadFailureListener;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@4.0.0 */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zzbp implements UserMessagingPlatform$OnConsentFormLoadFailureListener {
    public final /* synthetic */ ConsentForm.OnConsentFormDismissedListener zza;

    @Override // com.google.android.ump.UserMessagingPlatform$OnConsentFormLoadFailureListener
    public final void onConsentFormLoadFailure(FormError formError) {
        this.zza.onConsentFormDismissed(formError);
    }
}
