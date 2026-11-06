###### Class com.ironsource.adapters.unityads.UnityAdsConstants (com.ironsource.adapters.unityads.UnityAdsConstants)
.class public final Lcom/ironsource/adapters/unityads/UnityAdsConstants;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;
    }
.end annotation


# static fields
.field public static final ADAPTER_VERSION:Ljava/lang/String; = "5.13.0"

.field public static final AD_UNIT_ID_KEY:Ljava/lang/String; = "adUnitId"

.field public static final BANNER_HEIGHT:I = 0x32

.field public static final BANNER_SIZE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final BANNER_SIZE_KEY:Ljava/lang/String; = "bannerSize"

.field public static final BANNER_SIZE_LARGE:Ljava/lang/String; = "LARGE"

.field public static final BANNER_SIZE_RECTANGLE:Ljava/lang/String; = "RECTANGLE"

.field public static final BANNER_SIZE_SMART:Ljava/lang/String; = "SMART"

.field public static final BANNER_WIDTH:I = 0x140

.field public static final CONSENT_CCPA:Ljava/lang/String; = "privacy.consent"

.field public static final CONSENT_GDPR:Ljava/lang/String; = "gdpr.consent"

.field public static final INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants;

.field public static final LEADERBOARD_HEIGHT:I = 0x5a

.field public static final LEADERBOARD_WIDTH:I = 0x2d8

.field public static final MEDIATION_NAME:Ljava/lang/String; = "ironSource"

.field public static final RECTANGLE_HEIGHT:I = 0xfa

.field public static final RECTANGLE_WIDTH:I = 0x12c

.field public static final SOURCE_ID_KEY:Ljava/lang/String; = "sourceId"

.field public static final TOKEN_KEY:Ljava/lang/String; = "token"

.field public static final UADS_INIT_BLOB:Ljava/lang/String; = "uads_init_blob"

.field public static final UADS_TRAITS:Ljava/lang/String; = "traits"

.field public static final UNITYADS_COPPA:Ljava/lang/String; = "user.nonBehavioral"

.field public static final UNITYADS_METADATA_COPPA_KEY:Ljava/lang/String; = "unityads_coppa"

.field public static final UNITYADS_NO_FILL_ERROR_CODE:I = 0xcb84

.field public static final ZONE_ID_KEY:Ljava/lang/String; = "zoneId"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants;

    invoke-direct {v0}, Lcom/ironsource/adapters/unityads/UnityAdsConstants;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants;->INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.adapters.unityads.UnityAdsConstants.Logs (com.ironsource.adapters.unityads.UnityAdsConstants$Logs)
.class public final Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;
.super Ljava/lang/Object;
.source "UnityAdsConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation


# static fields
.field public static final AD_NOT_AVAILABLE:Ljava/lang/String; = "Ad is not available"

.field public static final CCPA:Ljava/lang/String; = "ccpa = %s"

.field public static final CONSENT:Ljava/lang/String; = "consent = %s"

.field public static final COPPA:Ljava/lang/String; = "coppa = %s"

.field public static final FAILED_TO_LOAD:Ljava/lang/String; = "Failed to load, errorCode = %s, errorMessage = %s"

.field public static final FAILED_TO_SHOW:Ljava/lang/String; = "Failed to show, errorCode = %s, errorMessage = %s"

.field public static final INIT_FAILED:Ljava/lang/String; = "init failed, errorCode = %s, errorMessage = %s"

.field public static final INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

.field public static final META_DATA_SET:Ljava/lang/String; = "key = %s, value = %s"

.field public static final MISSING_PARAM:Ljava/lang/String; = "Missing params - %s"

.field public static final NETWORK_ADAPTER_IS_NULL:Ljava/lang/String; = "Network adapter is null"

.field public static final SDK_INIT_FAILED:Ljava/lang/String; = "UnityAds SDK init failed"

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceId = %s"

.field public static final TOKEN:Ljava/lang/String; = "token = %s"

.field public static final TOKEN_FAILURE:Ljava/lang/String; = "failed to receive token - UnityAds"

.field public static final UNSUPPORTED_BANNER_SIZE:Ljava/lang/String; = "Banner size is not supported"

.field public static final ZONE_ID:Ljava/lang/String; = "zoneId = %s"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

    invoke-direct {v0}, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;->INSTANCE:Lcom/ironsource/adapters/unityads/UnityAdsConstants$Logs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
