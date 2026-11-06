package com.unity3d.ads.core.configuration;

import android.content.Context;
import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidManifestIntPropertyReader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidManifestIntPropertyReader {
    private final Context context;

    public AndroidManifestIntPropertyReader(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final Integer getPropertyByName(String propertyName) {
        Bundle bundle;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        try {
            bundle = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE).metaData;
            numValueOf = Integer.valueOf(bundle.getInt(propertyName));
        } catch (Exception unused) {
        }
        if (bundle.containsKey(propertyName)) {
            return numValueOf;
        }
        return null;
    }
}
