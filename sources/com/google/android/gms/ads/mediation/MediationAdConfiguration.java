package com.google.android.gms.ads.mediation;

import ads_mobile_sdk.sy3;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MediationAdConfiguration {
    private final Context a;
    private final String b;
    private final Bundle c;
    private final Bundle d;
    private final boolean e;
    private final Location f;
    private final int g;
    private final int h;
    private final String i;
    private final String j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
        public static final Companion Companion = Companion.a;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;

        public static final class Companion {
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
            static final /* synthetic */ Companion a = new Companion();

            private Companion() {
            }
        }
    }

    public MediationAdConfiguration(Context context, String bidResponse, Bundle serverParameters, Bundle mediationExtras, boolean z, Location location, int i, int i2, String str, String watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        Intrinsics.checkNotNullParameter(mediationExtras, "mediationExtras");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.a = context;
        this.b = bidResponse;
        this.c = serverParameters;
        this.d = mediationExtras;
        this.e = z;
        this.f = location;
        this.g = i;
        this.h = i2;
        this.i = str;
        this.j = watermark;
    }

    public String getBidResponse() {
        return this.b;
    }

    public Context getContext() {
        return this.a;
    }

    public Location getLocation() {
        return this.f;
    }

    public String getMaxAdContentRating() {
        return this.i;
    }

    public Bundle getMediationExtras() {
        return this.d;
    }

    public Bundle getServerParameters() {
        return this.c;
    }

    public int getTaggedForChildDirectedTreatment() {
        return this.g;
    }

    public int getTaggedForUnderAgeTreatment() {
        return this.h;
    }

    public String getWatermark() {
        return this.j;
    }

    public final View getWatermarkView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ImageView imageView = new ImageView(context);
        sy3.a(context, imageView, getWatermark());
        return imageView;
    }

    public final boolean isTestRequest() {
        return isTesting();
    }

    public boolean isTesting() {
        return this.e;
    }

    public final int taggedForChildDirectedTreatment() {
        return getTaggedForChildDirectedTreatment();
    }

    public final int taggedForUnderAgeTreatment() {
        return getTaggedForUnderAgeTreatment();
    }
}
