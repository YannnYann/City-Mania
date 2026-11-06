package io.bidmachine.ads.networks.gam_dynamic.versions.v23_0_0;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAdListener;
import io.bidmachine.ads.networks.gam_dynamic.InternalBannerAd;
import io.bidmachine.ads.networks.gam_dynamic.InternalLoadListener;
import io.bidmachine.ads.networks.gam_dynamic.NetworkParams;
import io.bidmachine.ads.networks.gam_dynamic.TaskExecutor;
import io.bidmachine.protobuf.Waterfall;

/* JADX INFO: loaded from: classes4.dex */
public class a extends InternalBannerAd {
    public final AdSize a;
    public AdManagerAdView b;

    public static final class b extends AdListener {
        public final a a;
        public final InternalLoadListener b;

        public b(a versionBannerAd, InternalLoadListener loadListener) {
            this.a = versionBannerAd;
            this.b = loadListener;
        }
    }

    public static final class c implements OnPaidEventListener {
        public final a a;

        public c(a versionBannerAd) {
            this.a = versionBannerAd;
        }
    }

    public a(NetworkParams networkParams, TaskExecutor taskExecutor, AdsFormat adsFormat, Waterfall.Configuration.AdUnit adUnit, InternalAdListener internalAdListener, AdSize adSize) {
        super(networkParams, taskExecutor, adsFormat, adUnit, internalAdListener);
        this.a = adSize;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    public void destroyAd() {
        AdManagerAdView adManagerAdView = this.b;
        if (adManagerAdView != null) {
            adManagerAdView.setOnPaidEventListener((OnPaidEventListener) null);
            this.b.destroy();
            this.b = null;
        }
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalBannerAd
    public View getAdView() {
        return this.b;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAd
    public void loadAd(Context context, InternalLoadListener internalLoadListener) {
        AdManagerAdView adManagerAdView = new AdManagerAdView(context);
        this.b = adManagerAdView;
        adManagerAdView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.b.setAdUnitId(getAdUnitId());
        this.b.setAdListener(new b(internalLoadListener));
        this.b.setOnPaidEventListener(new c());
        this.b.setAdSize(this.a);
        this.b.loadAd(e.a(getAdUnit()));
    }
}
