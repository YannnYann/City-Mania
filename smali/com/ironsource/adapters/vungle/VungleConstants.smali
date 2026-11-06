###### Class com.ironsource.adapters.vungle.VungleConstants (com.ironsource.adapters.vungle.VungleConstants)
.class public final Lcom/ironsource/adapters/vungle/VungleConstants;
.super Ljava/lang/Object;
.source "VungleConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleConstants$Logs;
    }
.end annotation


# static fields
.field public static final ADAPTER_FORMAT_BANNER:Ljava/lang/String; = "ISVungleBanner"

.field public static final ADAPTER_FORMAT_INTERSTITIAL:Ljava/lang/String; = "ISVungleInterstitial"

.field public static final ADAPTER_FORMAT_REWARDED:Ljava/lang/String; = "ISVungleRewardedVideo"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "5.16.0"

.field public static final APP_ID_KEY:Ljava/lang/String; = "AppID"

.field public static final BANNER_SIZE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final BANNER_SIZE_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final BANNER_SIZE_LARGE:Ljava/lang/String; = "LARGE"

.field public static final BANNER_SIZE_RECTANGLE:Ljava/lang/String; = "RECTANGLE"

.field public static final BANNER_SIZE_SMART:Ljava/lang/String; = "SMART"

.field public static final CREATIVE_ID_KEY:Ljava/lang/String; = "creativeId"

.field public static final INSTANCE:Lcom/ironsource/adapters/vungle/VungleConstants;

.field public static final MEDIATION_NAME:Ljava/lang/String; = "ironsource"

.field public static final META_DATA_VUNGLE_CONSENT_MESSAGE_VERSION:Ljava/lang/String; = "1.0.0"

.field public static final META_DATA_VUNGLE_COPPA_KEY:Ljava/lang/String; = "Vungle_COPPA"

.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "PlacementId"

.field public static final SDK_VERSION_KEY:Ljava/lang/String; = "sdkVersion"

.field public static final TOKEN_KEY:Ljava/lang/String; = "token"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleConstants;

    invoke-direct {v0}, Lcom/ironsource/adapters/vungle/VungleConstants;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleConstants;->INSTANCE:Lcom/ironsource/adapters/vungle/VungleConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.adapters.vungle.VungleConstants.Logs (com.ironsource.adapters.vungle.VungleConstants$Logs)
.class public final Lcom/ironsource/adapters/vungle/VungleConstants$Logs;
.super Ljava/lang/Object;
.source "VungleConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation


# static fields
.field public static final AD_NOT_AVAILABLE:Ljava/lang/String; = "Ad is not available"

.field public static final APP_ID:Ljava/lang/String; = "appId = %s"

.field public static final CCPA:Ljava/lang/String; = "ccpa = %s"

.field public static final CONSENT:Ljava/lang/String; = "gdpr = %s"

.field public static final COPPA:Ljava/lang/String; = "coppa = %s"

.field public static final CREATIVE_ID:Ljava/lang/String; = "creativeId = %s"

.field public static final CUSTOM_SIZE_MISMATCH:Ljava/lang/String; = "CustomBannerSizeMismatch:w-%s|h-%s"

.field public static final FAILED_TO_LOAD:Ljava/lang/String; = "Failed to load, errorCode = %s, errorMessage = %s"

.field public static final FAILED_TO_PLAY:Ljava/lang/String; = "Failed to play, errorCode = %s, errorMessage = %s"

.field public static final INIT_FAILED:Ljava/lang/String; = "Failed to initialize SDK, errorCode = %s, errorMessage = %s"

.field public static final INIT_SUCCESS:Ljava/lang/String; = "Succeeded to initialize SDK"

.field public static final INSTANCE:Lcom/ironsource/adapters/vungle/VungleConstants$Logs;

.field public static final META_DATA_SET:Ljava/lang/String; = "key = %s, value = %s"

.field public static final MISSING_PARAM:Ljava/lang/String; = "Missing params - %s"

.field public static final NETWORK_ADAPTER_IS_NULL:Ljava/lang/String; = "Network adapter is null"

.field public static final NO_ADS_TO_SHOW_INTERSTITIAL:Ljava/lang/String; = "NoAdsToShow:Interstitial"

.field public static final NO_ADS_TO_SHOW_REWARDED:Ljava/lang/String; = "NoAdsToShow:Rewarded"

.field public static final NO_PLACEMENT_ID_BANNER:Ljava/lang/String; = "NoPlacementId:Banner"

.field public static final NO_PLACEMENT_ID_INTERSTITIAL:Ljava/lang/String; = "NoPlacementId:Interstitial"

.field public static final NO_PLACEMENT_ID_REWARDED:Ljava/lang/String; = "NoPlacementId:Rewarded"

.field public static final NO_VUNGLE_BANNER_SIZE:Ljava/lang/String; = "NoVungleBannerSize:%s"

.field public static final PLACEMENT_ID:Ljava/lang/String; = "placementId = %s"

.field public static final SDK_INIT_FAILED:Ljava/lang/String; = "SDK initialization failed"

.field public static final TOKEN:Ljava/lang/String; = "sdkVersion = %s, token = %s"

.field public static final TOKEN_FAILURE:Ljava/lang/String; = "failed to receive token - Vungle , error = %s"

.field public static final UNSUPPORTED_BANNER_SIZE:Ljava/lang/String; = "Unsupported banner size"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleConstants$Logs;

    invoke-direct {v0}, Lcom/ironsource/adapters/vungle/VungleConstants$Logs;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleConstants$Logs;->INSTANCE:Lcom/ironsource/adapters/vungle/VungleConstants$Logs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
