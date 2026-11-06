package org.chromium.net;

import android.content.Context;
import org.chromium.net.httpflags.HttpFlagsLoader;
import org.chromium.net.httpflags.ResolvedFlags;
import org.chromium.net.impl.CronetManifest;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpFlagsForApi {
    public static ResolvedFlags getHttpFlags(Context context) {
        return HttpFlagsLoader.getHttpFlags(context, ApiVersion.getCronetVersion(), true, CronetManifest.isAppOptedInForTelemetry(context));
    }
}
