package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class dw1 implements MediationRewardedAdCallback {
    public final /* synthetic */ hm0 a;

    public dw1(hm0 hm0Var) {
        this.a = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        this.a.a(adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward() throws InterruptedException {
        no3 no3VarA = this.a.a();
        if (no3VarA != null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new ap3((gp3) no3VarA, null), 1, null);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onUserEarnedReward(RewardItem rewardItem) throws InterruptedException {
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        hm0 hm0Var = this.a;
        hm0Var.getClass();
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        no3 no3VarA = hm0Var.a();
        if (no3VarA != null) {
            Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
            BuildersKt__BuildersKt.runBlocking$default(null, new zo3((gp3) no3VarA, rewardItem, null), 1, null);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoStart() {
        this.a.a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        this.a.f();
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onAdFailedToShow(String errorDescription) {
        Intrinsics.checkNotNullParameter(errorDescription, "errorDescription");
        AdError adError = new AdError(0, errorDescription, AdError.UNDEFINED_DOMAIN);
        Intrinsics.checkNotNullParameter(adError, "adError");
        this.a.a(adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        this.a.d();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        this.a.e();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() throws InterruptedException {
        this.a.c();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() throws InterruptedException {
        this.a.b();
    }
}
