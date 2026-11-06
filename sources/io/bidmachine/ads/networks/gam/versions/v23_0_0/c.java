package io.bidmachine.ads.networks.gam.versions.v23_0_0;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.GAMLoader;
import io.bidmachine.ads.networks.gam.GAMUnitData;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.ads.networks.gam.InternalGAMBannerAd;
import io.bidmachine.ads.networks.gam.InternalLoadListener;

/* JADX INFO: loaded from: classes4.dex */
public class c extends InternalGAMBannerAd {
    public final AdSize a;
    public AdManagerAdView b;

    public static final class b extends AdListener {
        public final InternalGAMAd a;
        public final InternalLoadListener b;

        public b(InternalGAMAd internalGAMAd, InternalLoadListener loadListener) {
            this.a = internalGAMAd;
            this.b = loadListener;
        }
    }

    public c(GAMLoader gAMLoader, AdsFormat adsFormat, GAMUnitData gAMUnitData, AdSize adSize) {
        super(gAMLoader, adsFormat, gAMUnitData);
        this.a = adSize;
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    public void destroyAd() {
        AdManagerAdView adManagerAdView = this.b;
        if (adManagerAdView != null) {
            adManagerAdView.destroy();
            this.b = null;
        }
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMBannerAd
    public View getAdView() {
        return this.b;
    }

    @Override // io.bidmachine.ads.networks.gam.InternalGAMAd
    public void loadAd(Context context, InternalLoadListener internalLoadListener) {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.b = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.b.setAdUnitId(getAdUnitId());
        this.b.setAdListener(new b(this, internalLoadListener));
        this.b.setAdSize(this.a);
        this.b.loadAd(io.bidmachine.ads.networks.gam.versions.v23_0_0.a.a(getGamLoader(), getGamUnitData()));
    }
}
