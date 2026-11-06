package com.android.billingclient.api;

/* JADX INFO: compiled from: com.android.billingclient:billing@@8.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class BillingResult {
    public int zza;
    public int zzb;
    public String zzc;

    /* JADX INFO: compiled from: com.android.billingclient:billing@@8.0.0 */
    public static class Builder {
        public int zza;
        public int zzb = 0;
        public String zzc = "";

        public Builder() {
        }

        public /* synthetic */ Builder(zzci zzciVar) {
        }

        public BillingResult build() {
            BillingResult billingResult = new BillingResult();
            billingResult.zza = this.zza;
            billingResult.zzb = this.zzb;
            billingResult.zzc = this.zzc;
            return billingResult;
        }

        public Builder setDebugMessage(String str) {
            this.zzc = str;
            return this;
        }

        @zzk
        public Builder setOnPurchasesUpdatedSubResponseCode(int i) {
            this.zzb = i;
            return this;
        }

        public Builder setResponseCode(int i) {
            this.zza = i;
            return this;
        }
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public String getDebugMessage() {
        return this.zzc;
    }

    @zzk
    public int getOnPurchasesUpdatedSubResponseCode() {
        return this.zzb;
    }

    public int getResponseCode() {
        return this.zza;
    }

    public String toString() {
        return "Response Code: " + com.google.android.gms.internal.play_billing.zzc.zzk(this.zza) + ", Debug Message: " + this.zzc;
    }
}
