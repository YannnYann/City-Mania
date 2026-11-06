package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import java.util.Map;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class pe implements InitializationStatus {
    public final int a;
    public final Map b;

    public pe(Ref$LongRef ref$LongRef, Map map) {
        this.a = (int) Duration.m2881getInWholeMillisecondsimpl(ref$LongRef.element);
        this.b = map;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        return this.b;
    }
}
