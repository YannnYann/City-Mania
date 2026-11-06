package com.unity3d.ads.core.data.datasource;

import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.unity3d.ads.core.log.Logger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: AndroidAdQualityVersionDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidAdQualityVersionDataSource implements AdQualityVersionDataSource {
    private final Lazy cachedVersion$delegate;
    private final Logger logger;

    public AndroidAdQualityVersionDataSource(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        this.cachedVersion$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4(this.f$0);
            }
        });
    }

    private final String getCachedVersion() {
        return (String) this.cachedVersion$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4(AndroidAdQualityVersionDataSource androidAdQualityVersionDataSource) {
        try {
            String sDKVersion = IronSourceAdQuality.getSDKVersion();
            if (sDKVersion == null) {
                return null;
            }
            if (StringsKt__StringsKt.isBlank(sDKVersion)) {
                return null;
            }
            return sDKVersion;
        } catch (ClassNotFoundException e) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$2(e);
                }
            });
            return null;
        } catch (NoClassDefFoundError e2) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$1(e2);
                }
            });
            return null;
        } catch (NoSuchMethodError e3) {
            androidAdQualityVersionDataSource.logger.debug(new Function0() { // from class: com.unity3d.ads.core.data.datasource.AndroidAdQualityVersionDataSource$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return AndroidAdQualityVersionDataSource.cachedVersion_delegate$lambda$4$lambda$3(e3);
                }
            });
            return null;
        } catch (Throwable th) {
            androidAdQualityVersionDataSource.logger.error("Failed to get Ad Quality version", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$1(NoClassDefFoundError noClassDefFoundError) {
        return "Ad Quality SDK not available: " + noClassDefFoundError.getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$2(ClassNotFoundException classNotFoundException) {
        return "Ad Quality SDK not available: " + classNotFoundException.getMessage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String cachedVersion_delegate$lambda$4$lambda$3(NoSuchMethodError noSuchMethodError) {
        return "Ad Quality SDK not available: " + noSuchMethodError.getMessage();
    }

    @Override // com.unity3d.ads.core.data.datasource.AdQualityVersionDataSource
    public String invoke() {
        return getCachedVersion();
    }
}
