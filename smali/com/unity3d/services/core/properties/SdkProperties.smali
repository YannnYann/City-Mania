###### Class com.unity3d.services.core.properties.SdkProperties (com.unity3d.services.core.properties.SdkProperties)
.class public Lcom/unity3d/services/core/properties/SdkProperties;
.super Ljava/lang/Object;
.source "SdkProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    }
.end annotation


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field private static final CHINA_CONFIG_HOSTNAME:Ljava/lang/String; = "dW5pdHlhZHMudW5pdHljaGluYS5jbg=="

.field private static final CHINA_ISO_ALPHA_2_CODE:Ljava/lang/String; = "CN"

.field private static final CHINA_ISO_ALPHA_3_CODE:Ljava/lang/String; = "CHN"

.field private static final CONFIG_VERSION_METADATA_KEY:Ljava/lang/String; = "com.unity3d.ads.configversion"

.field private static final DEFAULT_CONFIG_HOSTNAME:Ljava/lang/String; = "unityads.unity3d.com"

.field private static final DEFAULT_CONFIG_VERSION:Ljava/lang/String; = "configv2"

.field private static final LOCAL_CACHE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsCache-"

.field private static final LOCAL_STORAGE_FILE_PREFIX:Ljava/lang/String; = "UnityAdsStorage-"

.field private static final WEBVIEW_CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsWebViewCache"

.field private static _appInitializationTimeEpochMs:J

.field private static _cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

.field private static _configUrl:Ljava/lang/String;

.field private static final _currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
            ">;"
        }
    .end annotation
.end field

.field private static _debugMode:Z

.field private static final _initializationListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/unity3d/ads/InitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _initializationTime:J

.field private static _initializationTimeEpochMs:J

.field private static volatile _initialized:Z

.field private static final _legacyInitializationListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/unity3d/ads/IUnityAdsInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _previousTestMode:Z

.field private static _reinitialized:Z

.field private static _testMode:Z

.field private static _webviewCacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;


# direct methods
.method public static synthetic $r8$lambda$N_U2Mxd5GZiiXohbBifq8DFftY4(Lcom/unity3d/ads/IUnityAdsInitializationListener;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .registers 3

    .line 87
    invoke-interface {p0, p1, p2}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X-9mEFhSozzmYCMTRZa7DtodJQ0(Lcom/unity3d/ads/IUnityAdsInitializationListener;Ljava/lang/String;)V
    .registers 3

    .line 111
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    invoke-interface {p0, v0, p1}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLX7o2z2ncMfAzQbQ4jDxUBWfE0(Lcom/unity3d/ads/InitializationListener;Ljava/lang/String;)V
    .registers 4

    .line 91
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 92
    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 91
    invoke-interface {p0, v0}, Lcom/unity3d/ads/InitializationListener;->onInitializationComplete(Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ky1HHLX3k-jrjCCK_5Y8fnct-PI(Lcom/unity3d/ads/InitializationListener;ILjava/lang/String;)V
    .registers 4

    .line 119
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/unity3d/ads/InitializationListener;->onInitializationComplete(Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-SrtALcPgi0Vd_8jGr2lAR5rg4(Lcom/unity3d/ads/InitializationListener;)V
    .registers 2

    const/4 v0, 0x0

    .line 144
    invoke-interface {p0, v0}, Lcom/unity3d/ads/InitializationListener;->onInitializationComplete(Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    .line 62
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    .line 63
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    .line 64
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_previousTestMode:Z

    .line 65
    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInitializationListener(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 351
    :cond_3
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 352
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static addInitializationListener(Lcom/unity3d/ads/InitializationListener;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 362
    :cond_3
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 363
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static getAppInitializationTimeSinceEpoch()J
    .registers 2

    .line 310
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_appInitializationTimeEpochMs:J

    return-wide v0
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .registers 1

    .line 278
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 282
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    if-nez v0, :cond_e

    .line 283
    new-instance v0, Lcom/unity3d/services/core/cache/CacheDirectory;

    const-string v1, "UnityAdsCache"

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/cache/CacheDirectory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V

    .line 286
    :cond_e
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getCacheDirectoryName()Ljava/lang/String;
    .registers 1

    .line 188
    const-string v0, "UnityAdsCache"

    return-object v0
.end method

.method public static getCacheDirectoryObject()Lcom/unity3d/services/core/cache/CacheDirectory;
    .registers 1

    .line 294
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-object v0
.end method

.method public static getCacheFilePrefix()Ljava/lang/String;
    .registers 1

    .line 192
    const-string v0, "UnityAdsCache-"

    return-object v0
.end method

.method public static getConfigUrl()Ljava/lang/String;
    .registers 1

    .line 214
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 215
    const-string v0, "release"

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    .line 217
    :cond_c
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 230
    const-string v0, "configv2"

    if-eqz p0, :cond_22

    .line 231
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 232
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_22

    .line 234
    const-string v1, "com.unity3d.ads.configversion"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object p0

    .line 238
    :catch_1d
    const-string p0, "Failed to retrieve application info for current package"

    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    :cond_22
    return-object v0
.end method

.method public static getCurrentInitializationState()Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .registers 1

    .line 155
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    return-object v0
.end method

.method public static getDebugMode()Z
    .registers 1

    .line 343
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    return v0
.end method

.method public static getDefaultConfigUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 221
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->getNetworkCountryISO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->isChinaLocale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 222
    new-instance v0, Ljava/lang/String;

    const-string v1, "dW5pdHlhZHMudW5pdHljaGluYS5jbg=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_19

    :cond_17
    const-string v0, "unityads.unity3d.com"

    .line 223
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->getConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/webview/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewBranch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/config.json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInitializationTime()J
    .registers 2

    .line 302
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    return-wide v0
.end method

.method public static getInitializationTimeEpoch()J
    .registers 2

    .line 318
    sget-wide v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTimeEpochMs:J

    return-wide v0
.end method

.method public static getLegacyInitializationListeners()[Lcom/unity3d/ads/IUnityAdsInitializationListener;
    .registers 2

    .line 368
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 369
    :try_start_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 371
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 372
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static getLocalConfigurationFilepath()Ljava/lang/String;
    .registers 2

    .line 257
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 258
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebViewConfiguration.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalStorageFilePrefix()Ljava/lang/String;
    .registers 1

    .line 196
    const-string v0, "UnityAdsStorage-"

    return-object v0
.end method

.method public static getLocalWebViewFile()Ljava/lang/String;
    .registers 2

    .line 252
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewCacheDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 253
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/UnityAdsWebApp.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviousTestMode()Z
    .registers 1

    .line 176
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_previousTestMode:Z

    return v0
.end method

.method public static getVersionCode()I
    .registers 1

    .line 0
    const v0, 0xa411

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 1

    .line 184
    const-string v0, "4.20.1"

    return-object v0
.end method

.method private static getWebViewBranch()Ljava/lang/String;
    .registers 1

    .line 248
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebViewCacheDirectory()Ljava/io/File;
    .registers 1

    .line 262
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->getWebViewCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getWebViewCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 266
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_webviewCacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    if-nez v0, :cond_f

    .line 267
    new-instance v0, Lcom/unity3d/services/core/cache/CacheDirectory;

    const-string v1, "UnityAdsWebViewCache"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/cache/CacheDirectory;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->setWebViewCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V

    .line 270
    :cond_f
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_webviewCacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    invoke-virtual {v0, p0}, Lcom/unity3d/services/core/cache/CacheDirectory;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static isChinaLocale(Ljava/lang/String;)Z
    .registers 2

    .line 385
    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CHN"

    .line 386
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isInitialized()Z
    .registers 1

    .line 159
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    return v0
.end method

.method public static isReinitialized()Z
    .registers 1

    .line 326
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    return v0
.end method

.method public static isTestMode()Z
    .registers 1

    .line 167
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    return v0
.end method

.method public static notifyInitializationComplete()V
    .registers 6

    .line 128
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 129
    :try_start_3
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 130
    :try_start_6
    sget-object v2, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 132
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 135
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 138
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 139
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    invoke-static {v5}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_1f

    :catchall_37
    move-exception v2

    goto :goto_57

    .line 142
    :cond_39
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/ads/InitializationListener;

    .line 143
    new-instance v4, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;-><init>(Lcom/unity3d/ads/InitializationListener;)V

    invoke-static {v4}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_3d

    .line 146
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_37

    .line 147
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v1

    goto :goto_59

    .line 146
    :goto_57
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_37

    :try_start_58
    throw v2

    .line 147
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_55

    throw v1
.end method

.method public static notifyInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .registers 8

    .line 76
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_52

    .line 78
    :try_start_6
    sget-object v2, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 80
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 83
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 84
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 86
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 87
    new-instance v5, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p0, p1}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_1f

    :catchall_34
    move-exception p0

    goto :goto_54

    .line 90
    :cond_36
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity3d/ads/InitializationListener;

    .line 91
    new-instance v3, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p1}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ads/InitializationListener;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_3a

    .line 94
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_34

    .line 95
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception p0

    goto :goto_56

    .line 94
    :goto_54
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_34

    :try_start_55
    throw p0

    .line 95
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_52

    throw p0
.end method

.method public static notifyInitializationFailed(Lcom/unity3d/ads/core/data/model/exception/InitializationException;)V
    .registers 8

    .line 99
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6f

    .line 101
    :try_start_6
    sget-object v2, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v2}, Lcom/unity3d/services/core/properties/SdkProperties;->setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V

    .line 103
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 106
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 109
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/unity3d/ads/IUnityAdsInitializationListener;

    .line 110
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v6, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;

    invoke-direct {v6, v4, v5}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;-><init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_1f

    :catchall_38
    move-exception p0

    goto :goto_71

    .line 114
    :cond_3a
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unity3d/ads/InitializationListener;

    .line 115
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 117
    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v5

    invoke-virtual {v5}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v5

    goto :goto_63

    .line 118
    :cond_5d
    sget-object v5, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_UNSPECIFIED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v5}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v5

    .line 119
    :goto_63
    new-instance v6, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;

    invoke-direct {v6, v3, v5, v4}, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;-><init>(Lcom/unity3d/ads/InitializationListener;ILjava/lang/String;)V

    invoke-static {v6}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 122
    :cond_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6 .. :try_end_6d} :catchall_38

    .line 123
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6f

    return-void

    :catchall_6f
    move-exception p0

    goto :goto_73

    .line 122
    :goto_71
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_38

    :try_start_72
    throw p0

    .line 123
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_6f

    throw p0
.end method

.method public static resetInitializationListeners()V
    .registers 3

    .line 376
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_legacyInitializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 377
    :try_start_3
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationListeners:Ljava/util/LinkedHashSet;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 378
    :try_start_6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 379
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 380
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    .line 381
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v1

    goto :goto_14

    :catchall_11
    move-exception v2

    .line 380
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw v2

    .line 381
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_f

    throw v1
.end method

.method public static setAppInitializationTimeSinceEpoch(J)V
    .registers 2

    .line 306
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_appInitializationTimeEpochMs:J

    return-void
.end method

.method public static setCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V
    .registers 1

    .line 290
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_cacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-void
.end method

.method public static setConfigUrl(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    if-eqz p0, :cond_24

    .line 203
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_19

    .line 204
    :cond_13
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0

    .line 207
    :cond_19
    :goto_19
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 210
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_configUrl:Ljava/lang/String;

    return-void

    .line 201
    :cond_24
    new-instance p0, Ljava/net/MalformedURLException;

    invoke-direct {p0}, Ljava/net/MalformedURLException;-><init>()V

    throw p0
.end method

.method public static setDebugMode(Z)V
    .registers 2

    .line 330
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_debugMode:Z

    .line 332
    const-class v0, Lcom/unity3d/ads/core/log/Logger;

    invoke-static {v0}, Lcom/unity3d/services/core/misc/Utilities;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/log/Logger;

    if-eqz p0, :cond_17

    const/16 p0, 0x8

    .line 334
    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    .line 335
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->DEBUG:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/core/log/Logger;->setLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)V

    return-void

    :cond_17
    const/4 p0, 0x4

    .line 337
    invoke-static {p0}, Lcom/unity3d/services/core/log/DeviceLog;->setLogLevel(I)V

    .line 338
    sget-object p0, Lcom/unity3d/ads/core/log/LogLevelInternal;->INFO:Lcom/unity3d/ads/core/log/LogLevelInternal;

    invoke-interface {v0, p0}, Lcom/unity3d/ads/core/log/Logger;->setLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)V

    return-void
.end method

.method public static setInitializationTime(J)V
    .registers 2

    .line 298
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTime:J

    return-void
.end method

.method public static setInitializationTimeSinceEpoch(J)V
    .registers 2

    .line 314
    sput-wide p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initializationTimeEpochMs:J

    return-void
.end method

.method public static setInitializeState(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)V
    .registers 2

    .line 151
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties;->_currentInitializationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setInitialized(Z)V
    .registers 1

    .line 163
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_initialized:Z

    return-void
.end method

.method public static setReinitialized(Z)V
    .registers 1

    .line 322
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_reinitialized:Z

    return-void
.end method

.method public static setTestMode(Z)V
    .registers 2

    .line 171
    sget-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    sput-boolean v0, Lcom/unity3d/services/core/properties/SdkProperties;->_previousTestMode:Z

    .line 172
    sput-boolean p0, Lcom/unity3d/services/core/properties/SdkProperties;->_testMode:Z

    return-void
.end method

.method public static setWebViewCacheDirectory(Lcom/unity3d/services/core/cache/CacheDirectory;)V
    .registers 1

    .line 274
    sput-object p0, Lcom/unity3d/services/core/properties/SdkProperties;->_webviewCacheDirectory:Lcom/unity3d/services/core/cache/CacheDirectory;

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties.InitializationState (com.unity3d.services.core.properties.SdkProperties$InitializationState)
.class public final enum Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
.super Ljava/lang/Enum;
.source "SdkProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/properties/SdkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

.field public static final enum INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

.field public static final enum INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

.field public static final enum INITIALIZING:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;


# direct methods
.method private static synthetic $values()[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .registers 4

    .line 68
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZING:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    sget-object v2, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    sget-object v3, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 69
    new-instance v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    .line 70
    new-instance v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZING:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    .line 71
    new-instance v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    const-string v1, "INITIALIZED_SUCCESSFULLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    .line 72
    new-instance v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    const-string v1, "INITIALIZED_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    .line 68
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->$values()[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->$VALUES:[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .registers 2

    .line 68
    const-class v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;
    .registers 1

    .line 68
    sget-object v0, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->$VALUES:[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-virtual {v0}, [Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    return-object v0
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda0 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

.field public final synthetic f$1:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    iput-object p2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    iput-object p3, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    iget-object v1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    iget-object v2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties;->$r8$lambda$N_U2Mxd5GZiiXohbBifq8DFftY4(Lcom/unity3d/ads/IUnityAdsInitializationListener;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda1 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/InitializationListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/InitializationListener;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/InitializationListener;

    iput-object p2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;->f$0:Lcom/unity3d/ads/InitializationListener;

    iget-object v1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->$r8$lambda$gLX7o2z2ncMfAzQbQ4jDxUBWfE0(Lcom/unity3d/ads/InitializationListener;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda2 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda2;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    invoke-interface {v0}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationComplete()V

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda3 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/InitializationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/InitializationListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/InitializationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda3;->f$0:Lcom/unity3d/ads/InitializationListener;

    invoke-static {v0}, Lcom/unity3d/services/core/properties/SdkProperties;->$r8$lambda$u-SrtALcPgi0Vd_8jGr2lAR5rg4(Lcom/unity3d/ads/InitializationListener;)V

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda4 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    iput-object p2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/IUnityAdsInitializationListener;

    iget-object v1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/services/core/properties/SdkProperties;->$r8$lambda$X-9mEFhSozzmYCMTRZa7DtodJQ0(Lcom/unity3d/ads/IUnityAdsInitializationListener;Ljava/lang/String;)V

    return-void
.end method

###### Class com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda5 (com.unity3d.services.core.properties.SdkProperties$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/InitializationListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/InitializationListener;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$0:Lcom/unity3d/ads/InitializationListener;

    iput p2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$0:Lcom/unity3d/ads/InitializationListener;

    iget v1, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/unity3d/services/core/properties/SdkProperties$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unity3d/services/core/properties/SdkProperties;->$r8$lambda$ky1HHLX3k-jrjCCK_5Y8fnct-PI(Lcom/unity3d/ads/InitializationListener;ILjava/lang/String;)V

    return-void
.end method
