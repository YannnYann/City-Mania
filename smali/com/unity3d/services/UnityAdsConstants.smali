###### Class com.unity3d.services.UnityAdsConstants (com.unity3d.services.UnityAdsConstants)
.class public final Lcom/unity3d/services/UnityAdsConstants;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/UnityAdsConstants$AdOperations;,
        Lcom/unity3d/services/UnityAdsConstants$Cache;,
        Lcom/unity3d/services/UnityAdsConstants$ClientInfo;,
        Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;,
        Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;,
        Lcom/unity3d/services/UnityAdsConstants$Messages;,
        Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;,
        Lcom/unity3d/services/UnityAdsConstants$Preferences;,
        Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;,
        Lcom/unity3d/services/UnityAdsConstants$SafeGuards;,
        Lcom/unity3d/services/UnityAdsConstants$SharedFlow;,
        Lcom/unity3d/services/UnityAdsConstants$Timeout;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.AdOperations (com.unity3d.services.UnityAdsConstants$AdOperations)
.class public final Lcom/unity3d/services/UnityAdsConstants$AdOperations;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdOperations"
.end annotation


# static fields
.field public static final GET_TOKEN_TIMEOUT_MS:I = 0x2ee

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$AdOperations;

.field public static final LOAD_TIMEOUT_MS:I = 0x7530

.field public static final SHOW_TIMEOUT_MS:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$AdOperations;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$AdOperations;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$AdOperations;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$AdOperations;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Cache (com.unity3d.services.UnityAdsConstants$Cache)
.class public final Lcom/unity3d/services/UnityAdsConstants$Cache;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cache"
.end annotation


# static fields
.field public static final CACHE_SCHEME:Ljava/lang/String; = "unity-ads-cache"

.field public static final DATASTORE_PATH:Ljava/lang/String; = "unityAdsDatastore/"

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Cache;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Cache;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Cache;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Cache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.ClientInfo (com.unity3d.services.UnityAdsConstants$ClientInfo)
.class public final Lcom/unity3d/services/UnityAdsConstants$ClientInfo;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

.field public static final SDK_VERSION:I = 0xa411

.field public static final SDK_VERSION_NAME:Ljava/lang/String; = "4.20.1"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$ClientInfo;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ClientInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.DefaultUrls (com.unity3d.services.UnityAdsConstants$DefaultUrls)
.class public final Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultUrls"
.end annotation


# static fields
.field public static final AD_ASSET_DOMAIN:Ljava/lang/String; = "unity.ads.asset"

.field public static final AD_CACHE_DOMAIN:Ljava/lang/String; = "unity.ads.cache"

.field public static final AD_PLAYER_QUERY_PARAMS:Ljava/lang/String; = "?platform=android&mode=ad-viewer&"

.field public static final CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsCache"

.field public static final CACHE_WEBVIEW_DIR_NAME:Ljava/lang/String; = "webview_cache"

.field public static final GATEWAY_URL:Ljava/lang/String; = "https://gateway.unityads.unity3d.com/v1"

.field public static final HTTP_CACHE_DIR_NAME:Ljava/lang/String; = "UnityAdsHttpCache"

.field public static final HTTP_CACHE_OK_HTTP_DIR_NAME:Ljava/lang/String; = "UnityAdsOkHttpCache"

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;

.field public static final WEBVIEW_ASSET_PATH:Ljava/lang/String; = "/unity-ads-sdk-webview/"

.field public static final WEBVIEW_ASSET_PATH_LOCAL:Ljava/lang/String; = "ad-viewer/"

.field public static final WEBVIEW_DOMAIN:Ljava/lang/String; = "webview.unityads.unity3d.com"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$DefaultUrls;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.ErrorHandler (com.unity3d.services.UnityAdsConstants$ErrorHandler)
.class public final Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorHandler"
.end annotation


# static fields
.field public static final ERROR_HANDLER_STACK_TRACE_LINES_MAX:I = 0xf

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$ErrorHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Messages (com.unity3d.services.UnityAdsConstants$Messages)
.class public final Lcom/unity3d/services/UnityAdsConstants$Messages;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Messages;

.field public static final MSG_INTERNAL_ERROR:Ljava/lang/String; = "Internal error"

.field public static final MSG_UNITY_BASE:Ljava/lang/String; = "[Unity Ads] "


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Messages;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Messages;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Messages;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Messages;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.OpenMeasurement (com.unity3d.services.UnityAdsConstants$OpenMeasurement)
.class public final Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenMeasurement"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;

.field public static final OM_JS_SERVICE_FILENAME:Ljava/lang/String; = "ad-viewer/omsdk-v1.js"

.field public static final OM_JS_SESSION_FILENAME:Ljava/lang/String; = "ad-viewer/omid-session-client-v1.js"

.field public static final OM_JS_URL_SERVICE:Ljava/lang/String; = "unity-ads-cache://unity.ads.asset/ad-viewer/omsdk-v1.js"

.field public static final OM_JS_URL_SESSION:Ljava/lang/String; = "unity-ads-cache://unity.ads.asset/ad-viewer/omid-session-client-v1.js"

.field public static final OM_PARTNER_NAME:Ljava/lang/String; = "Unity3d"

.field public static final OM_PARTNER_VERSION:Ljava/lang/String; = "1"

.field public static final OM_SESSION_FINISH_DELAY_MS:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$OpenMeasurement;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Preferences (com.unity3d.services.UnityAdsConstants$Preferences)
.class public final Lcom/unity3d/services/UnityAdsConstants$Preferences;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Preferences"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Preferences;

.field public static final PREF_KEY_AUID:Ljava/lang/String; = "auid"

.field public static final PREF_KEY_IDFI:Ljava/lang/String; = "unityads-idfi"

.field public static final PREF_KEY_UNITY_INSTALLATION_ID:Ljava/lang/String; = "unity_connect.installation_id"

.field public static final PREF_KEY_UNITY_MEGA_SESSION_ID:Ljava/lang/String; = "unity_connect.mega_session_id"

.field public static final PREF_NAME_AUID:Ljava/lang/String; = "supersonic_shared_preferen"

.field public static final PREF_NAME_IDFI:Ljava/lang/String; = "unityads-installinfo"

.field private static final UNITY_PLAYER_PREF_PREFIX:Ljava/lang/String; = "unity_connect"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Preferences;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Preferences;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Preferences;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Preferences;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.RequestPolicy (com.unity3d.services.UnityAdsConstants$RequestPolicy)
.class public final Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPolicy"
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT_MS:I = 0x7530

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

.field public static final OVERALL_TIMEOUT_MS:I = 0x7530

.field public static final READ_TIMEOUT_MS:I = 0x7530

.field public static final RETRY_JITTER_PCT:F = 0.1f

.field public static final RETRY_MAX_DURATION:I = 0x1d4c0

.field public static final RETRY_MAX_INTERVAL:I = 0x9c4

.field public static final RETRY_SCALING_FACTOR:F = 2.0f

.field public static final RETRY_WAIT_BASE:I = 0x1f4

.field public static final SHOULD_STORE_LOCALLY:Z = false

.field public static final WRITE_TIMEOUT_MS:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$RequestPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.SafeGuards (com.unity3d.services.UnityAdsConstants$SafeGuards)
.class public final Lcom/unity3d/services/UnityAdsConstants$SafeGuards;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeGuards"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;,
        Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$SafeGuards;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.SafeGuards.InitRequestRetryPolicy (com.unity3d.services.UnityAdsConstants$SafeGuards$InitRequestRetryPolicy)
.class public final Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants$SafeGuards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitRequestRetryPolicy"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;

.field public static final MAX_JITTER_PCT:F = 100.0f

.field public static final MIN_DURATION:I = 0x1388

.field public static final MIN_JITTER_PCT:F = 0.0f

.field public static final MIN_MAX_INTERVAL:I = 0x0

.field public static final MIN_SCALING_FACTOR:F = 0.1f

.field public static final MIN_WAIT_BASE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestRetryPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.SafeGuards.InitRequestTimeoutPolicy (com.unity3d.services.UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy)
.class public final Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants$SafeGuards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitRequestTimeoutPolicy"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;

.field public static final MIN_TIMEOUT:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SafeGuards$InitRequestTimeoutPolicy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.SharedFlow (com.unity3d.services.UnityAdsConstants$SharedFlow)
.class public final Lcom/unity3d/services/UnityAdsConstants$SharedFlow;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedFlow"
.end annotation


# static fields
.field public static final EXTRA_CAPACITY:I = 0xa

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

.field public static final REPLAY:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$SharedFlow;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$SharedFlow;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.services.UnityAdsConstants.Timeout (com.unity3d.services.UnityAdsConstants$Timeout)
.class public final Lcom/unity3d/services/UnityAdsConstants$Timeout;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timeout"
.end annotation


# static fields
.field public static final INIT_TIMEOUT_MS:J = 0x1d4c0L

.field public static final INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsConstants$Timeout;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityAdsConstants$Timeout;->INSTANCE:Lcom/unity3d/services/UnityAdsConstants$Timeout;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
