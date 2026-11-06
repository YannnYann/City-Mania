package com.unity3d.ads.core.domain.adquality;

import com.google.protobuf.ByteString;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.unity3d.ads.core.data.datasource.AdQualityVersionDataSource;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidUpdateAdQualitySessionToken.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidUpdateAdQualitySessionToken implements UpdateAdQualitySessionToken {
    private final AdQualityVersionDataSource adQualityVersionDataSource;
    private final Logger logger;

    public AndroidUpdateAdQualitySessionToken(Logger logger, AdQualityVersionDataSource adQualityVersionDataSource) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(adQualityVersionDataSource, "adQualityVersionDataSource");
        this.logger = logger;
        this.adQualityVersionDataSource = adQualityVersionDataSource;
    }

    @Override // com.unity3d.ads.core.domain.adquality.UpdateAdQualitySessionToken
    public void invoke(ByteString sessionToken) {
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        final String strInvoke = this.adQualityVersionDataSource.invoke();
        if (strInvoke == null) {
            return;
        }
        if (StringExtensionsKt.compareVersion(strInvoke, "9.5.1") < 0) {
            this.logger.debug(new Function0() { // from class: com.unity3d.ads.core.domain.adquality.AndroidUpdateAdQualitySessionToken$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidUpdateAdQualitySessionToken.invoke$lambda$0(strInvoke);
                }
            });
            return;
        }
        try {
            IronSourceAdQuality.getInstance().setMetaData("uads_session_token", ProtobufExtensionsKt.toBase64$default(sessionToken, false, 1, null));
        } catch (Throwable th) {
            this.logger.error("Ad Quality SDK setMetaData failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String invoke$lambda$0(String str) {
        return "Ad Quality SDK version " + str + " is below minimum 9.5.1, skipping session token update";
    }
}
