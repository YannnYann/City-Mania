package ads_mobile_sdk;

import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class nc2 implements MediationBannerListener {
    public final /* synthetic */ bv1 a;
    public final /* synthetic */ rc2 b;
    public final /* synthetic */ hm0 c;

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.d();
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter adapter) throws InterruptedException {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.b();
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter adapter, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        do3 do3Var = (do3) this.a;
        String errorMessage = do3Var.c.a(i);
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        do3Var.a(new AdError(i, errorMessage, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        View bannerView = adapter.getBannerView();
        if (bannerView == null) {
            ((do3) this.a).a(new AdError(0, "Adapter returned a non-null View for getBannerView() after invoking the onAdLoaded() callback.", AdError.GOOGLE_MOBILE_ADS_DOMAIN));
        } else {
            rc2 rc2Var = this.b;
            rc2Var.getClass();
            Intrinsics.checkNotNullParameter(bannerView, "<set-?>");
            rc2Var.b = bannerView;
            ((do3) this.a).f();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter adapter) throws InterruptedException {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.c();
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAppEvent(MediationBannerAdapter adapter, String name, String data) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(data, "data");
        hm0 hm0Var = this.c;
        hm0Var.getClass();
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(data, "data");
        no3 no3VarA = hm0Var.a();
        if (no3VarA != null) {
            gp3 gp3Var = (gp3) no3VarA;
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(data, "data");
            CoroutineScope coroutineScope = gp3Var.a;
            xo3 block = new xo3(gp3Var, name, data, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public nc2(hm0 hm0Var, do3 do3Var, rc2 rc2Var) {
        this.a = do3Var;
        this.b = rc2Var;
        this.c = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter adapter, AdError adError) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(adError, "adError");
        ((do3) this.a).a(adError);
    }
}
