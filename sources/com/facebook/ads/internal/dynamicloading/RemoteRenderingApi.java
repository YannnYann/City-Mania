package com.facebook.ads.internal.dynamicloading;

import android.app.Activity;
import android.app.Service;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.AudienceNetworkExportedActivityApi;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.proguard.annotations.DoNotStripAny;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@DoNotStripAny
@Nullsafe(Nullsafe.Mode.LOCAL)
public interface RemoteRenderingApi {
    AudienceNetworkExportedActivityApi createAudienceNetworkExportedActivityApi(Activity activity);

    AudienceNetworkRemoteServiceApi createAudienceNetworkRemoteService(Service service);
}
