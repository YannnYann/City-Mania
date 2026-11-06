package com.facebook.ads.internal.api;

import android.view.View;
import androidx.annotation.Keep;
import com.facebook.ads.NativeAdBase;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface NativeComponentTagApi {
    void tagView(View view, NativeAdBase.NativeComponentTag nativeComponentTag);
}
