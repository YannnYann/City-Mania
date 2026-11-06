package com.ironsource;

import android.text.TextUtils;
import com.ironsource.AbstractC3755o3;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3603fc extends AbstractC3755o3<C3674jc, AdapterAdListener> implements P0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3603fc(List<? extends NetworkSettings> list, Wb configs, String str, C3857ta publisherDataHolder, C3655ia c3655ia) {
        super(new C3621gc(str, list, configs), publisherDataHolder, c3655ia);
        Intrinsics.checkNotNullParameter(configs, "configs");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
    }

    @Override // com.ironsource.AbstractC3755o3
    public void D() {
    }

    @Override // com.ironsource.AbstractC3755o3
    public boolean E() {
        return false;
    }

    public final void J() {
        C3790pg c3790pg;
        Cb cb;
        IronLog.INTERNAL.verbose();
        try {
            C3674jc c3674jc = (C3674jc) this.a.d();
            if (c3674jc != null) {
                Integer numR = c3674jc.r();
                int iIntValue = numR != null ? numR.intValue() : this.D.a(this.p.b());
                E0 e0 = this.t;
                if (e0 != null && (cb = e0.f) != null) {
                    cb.a(iIntValue);
                }
                c3674jc.P();
                this.a.a(null);
                this.a.b(null);
            }
            this.j = null;
            a(AbstractC3755o3.f.NONE);
        } catch (Throwable th) {
            C3813r4.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(b(str));
            E0 e02 = this.t;
            if (e02 == null || (c3790pg = e02.j) == null) {
                return;
            }
            c3790pg.g(str);
        }
    }

    @Override // com.ironsource.AbstractC3755o3
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public C3674jc a(NetworkSettings providerSettings, BaseAdAdapter<?, AdapterAdListener> adapter, int i, String currentAuctionId, C3939y2 item) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(currentAuctionId, "currentAuctionId");
        Intrinsics.checkNotNullParameter(item, "item");
        return new C3674jc(this, new C3734n0(IronSource.a.NATIVE_AD, this.p.o(), i, this.h, currentAuctionId, this.f, this.g, providerSettings, this.p.n()), adapter, this.j, item, this);
    }

    @Override // com.ironsource.AbstractC3755o3
    public JSONObject c(NetworkSettings providerSettings) {
        Intrinsics.checkNotNullParameter(providerSettings, "providerSettings");
        JSONObject nativeAdSettings = providerSettings.getNativeAdSettings();
        Intrinsics.checkNotNullExpressionValue(nativeAdSettings, "getNativeAdSettings(...)");
        return nativeAdSettings;
    }

    @Override // com.ironsource.AbstractC3755o3
    public K0 d() {
        return new C3721m5();
    }

    @Override // com.ironsource.AbstractC3755o3
    public String i() {
        return "NA";
    }

    @Override // com.ironsource.AbstractC3755o3
    public String l() {
        return IronSourceConstants.OPW_NT_MANAGER_NAME;
    }

    @Override // com.ironsource.AbstractC3755o3
    public boolean s() {
        return false;
    }

    public final void a(C3729md c3729md) {
        String str;
        int iB;
        IronLog.INTERNAL.verbose("placement = " + c3729md);
        if (c3729md == null || TextUtils.isEmpty(c3729md.c())) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            str = String.format("can't load native ad - %s", Arrays.copyOf(new Object[]{c3729md == null ? "placement is null" : "placement name is empty"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.b(this.p.b());
        } else if (this.F.c(ContextProvider.getInstance().getApplicationContext(), c3729md, this.p.b())) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            str = String.format("placement %s is capped", Arrays.copyOf(new Object[]{c3729md.c()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            iB = A0.f(this.p.b());
        } else {
            str = null;
            iB = 510;
        }
        if (TextUtils.isEmpty(str)) {
            this.j = c3729md;
            x();
        } else {
            IronLog.API.error(b(str));
            a(iB, str, false);
        }
    }

    public final void a(InternalNativeAdListener nativeAdListener) {
        Intrinsics.checkNotNullParameter(nativeAdListener, "nativeAdListener");
        a(new C3585ec(nativeAdListener));
    }

    @Override // com.ironsource.AbstractC3755o3
    public void a(AbstractC3773p3<?> abstractC3773p3, AdInfo adInfo) {
        if (abstractC3773p3 instanceof C3674jc) {
            C3674jc c3674jc = (C3674jc) abstractC3773p3;
            this.u.a(c3674jc.Q(), c3674jc.R(), adInfo);
        }
    }

    @Override // com.ironsource.AbstractC3755o3
    public void a(IronSourceError ironSourceError) {
        this.u.a(ironSourceError);
    }

    @Override // com.ironsource.AbstractC3755o3, com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> mapA = super.a(event);
        C3729md c3729md = this.j;
        if (c3729md != null) {
            Intrinsics.checkNotNull(mapA);
            mapA.put("placement", c3729md.c());
        }
        UUID uuid = this.x;
        if (uuid != null) {
            Intrinsics.checkNotNull(mapA);
            mapA.put("objectId", uuid);
        }
        Intrinsics.checkNotNull(mapA);
        return mapA;
    }
}
