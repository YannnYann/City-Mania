package com.unity3d.ads.core.configuration;

import android.content.Context;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidManifestStringPropertyReader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidManifestStringPropertyReader {
    private final Context context;

    public AndroidManifestStringPropertyReader(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final String getPropertyByName(String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        try {
            return this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE).metaData.getString(propertyName);
        } catch (Exception unused) {
            return null;
        }
    }
}
