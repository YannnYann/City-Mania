package com.google.android.libraries.ads.mobile.sdk.nativead;

import ads_mobile_sdk.av1;
import ads_mobile_sdk.m32;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaView extends com.google.android.gms.ads.nativead.MediaView {
    public ImageView.ScaleType a;
    public MediaContent b;
    public av1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final ImageView.ScaleType getImageScaleType() {
        return this.a;
    }

    public final MediaContent getMediaContent() {
        return this.b;
    }

    public final void setImageScaleType(ImageView.ScaleType scaleType) {
        av1 av1Var;
        this.a = scaleType;
        if (scaleType != null) {
            synchronized (this) {
                av1Var = this.c;
            }
            if (av1Var != null) {
                ((m32) av1Var).a(scaleType);
            }
        }
    }

    public final void setMediaContent(MediaContent mediaContent) {
        InternalNativeAd internalNativeAdA;
        this.b = mediaContent;
        if (mediaContent == null || (internalNativeAdA = mediaContent.a()) == null) {
            return;
        }
        internalNativeAdA.a(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    public final void a(m32 m32Var) {
        synchronized (this) {
            this.c = m32Var;
            Unit unit = Unit.INSTANCE;
        }
        ImageView.ScaleType scaleType = this.a;
        if (scaleType != null) {
            m32Var.a(scaleType);
        }
    }
}
