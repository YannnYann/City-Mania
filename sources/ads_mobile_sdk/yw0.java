package ads_mobile_sdk;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yw0 extends hr {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yw0(Context context, jw0 flagDataStore, xb0 csrbDataStore, cb3 sdkCoreDataStore, mm appSettingsDataStore) {
        super(context, flagDataStore, csrbDataStore, sdkCoreDataStore, appSettingsDataStore);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        Intrinsics.checkNotNullParameter(csrbDataStore, "csrbDataStore");
        Intrinsics.checkNotNullParameter(sdkCoreDataStore, "sdkCoreDataStore");
        Intrinsics.checkNotNullParameter(appSettingsDataStore, "appSettingsDataStore");
    }
}
