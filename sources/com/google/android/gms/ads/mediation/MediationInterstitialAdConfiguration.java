package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MediationInterstitialAdConfiguration extends MediationAdConfiguration {
    private final Context k;
    private final String l;
    private final Bundle m;
    private final Bundle n;
    private final boolean o;
    private final Location p;
    private final int q;
    private final int r;
    private final String s;
    private final String t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationInterstitialAdConfiguration(Context context, String bidResponse, Bundle serverParameters, Bundle mediationExtras, boolean z, Location location, int i, int i2, String str, String watermark) {
        super(context, bidResponse, serverParameters, mediationExtras, z, location, i, i2, str, watermark);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        Intrinsics.checkNotNullParameter(mediationExtras, "mediationExtras");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.k = context;
        this.l = bidResponse;
        this.m = serverParameters;
        this.n = mediationExtras;
        this.o = z;
        this.p = location;
        this.q = i;
        this.r = i2;
        this.s = str;
        this.t = watermark;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getBidResponse() {
        return this.l;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Context getContext() {
        return this.k;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Location getLocation() {
        return this.p;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getMaxAdContentRating() {
        return this.s;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Bundle getMediationExtras() {
        return this.n;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Bundle getServerParameters() {
        return this.m;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public int getTaggedForChildDirectedTreatment() {
        return this.q;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public int getTaggedForUnderAgeTreatment() {
        return this.r;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getWatermark() {
        return this.t;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public boolean isTesting() {
        return this.o;
    }
}
