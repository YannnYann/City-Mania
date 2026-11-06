###### Class com.ironsource.adapters.bidmachine.BidMachineConstants (com.ironsource.adapters.bidmachine.BidMachineConstants)
.class public final Lcom/ironsource/adapters/bidmachine/BidMachineConstants;
.super Ljava/lang/Object;
.source "BidMachineConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;
    }
.end annotation


# static fields
.field public static final ADAPTER_VERSION:Ljava/lang/String; = "5.8.0"

.field public static final AD_EXPIRED:Ljava/lang/String; = "Ad expired"

.field public static final AD_NOT_READY:Ljava/lang/String; = "Ad is not ready"

.field public static final BANNER:Ljava/lang/String; = "BANNER"

.field public static final BANNER_SIZE_INVALID:Ljava/lang/String; = "Banner size is invalid or not of type ISBannerSize"

.field public static final BANNER_SIZE_KEY:Ljava/lang/String; = "bannerSize"

.field public static final CCPA_CONSENT_VALUE:Ljava/lang/String; = "1YN-"

.field public static final CCPA_NO_CONSENT_VALUE:Ljava/lang/String; = "1YY-"

.field public static final CREATIVE_ID_KEY:Ljava/lang/String; = "creativeId"

.field public static final INSTANCE:Lcom/ironsource/adapters/bidmachine/BidMachineConstants;

.field public static final LEADERBOARD:Ljava/lang/String; = "LEADERBOARD"

.field public static final META_DATA_COPPA_KEY:Ljava/lang/String; = "BidMachine_COPPA"

.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placementId"

.field public static final RECTANGLE:Ljava/lang/String; = "RECTANGLE"

.field public static final SMART:Ljava/lang/String; = "SMART"

.field public static final SOURCE_ID_KEY:Ljava/lang/String; = "sourceId"

.field public static final TOKEN_EMPTY:Ljava/lang/String; = "failed to receive token - returned null/empty token"

.field public static final TOKEN_KEY:Ljava/lang/String; = "token"

.field public static final UNSUPPORTED_BANNER_SIZE:Ljava/lang/String; = "Unsupported or null banner size"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineConstants;

    invoke-direct {v0}, Lcom/ironsource/adapters/bidmachine/BidMachineConstants;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineConstants;->INSTANCE:Lcom/ironsource/adapters/bidmachine/BidMachineConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.adapters.bidmachine.BidMachineConstants.Logs (com.ironsource.adapters.bidmachine.BidMachineConstants$Logs)
.class public final Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;
.super Ljava/lang/Object;
.source "BidMachineConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/bidmachine/BidMachineConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation


# static fields
.field public static final CCPA:Ljava/lang/String; = "value = %s"

.field public static final CONSENT:Ljava/lang/String; = "consent = %s"

.field public static final COPPA:Ljava/lang/String; = "isCoppa = %s"

.field public static final CREATIVE_ID:Ljava/lang/String; = "creativeId = %s"

.field public static final FAILED_TO_LOAD:Ljava/lang/String; = "Failed to load, errorCode = %s, errorMessage = %s"

.field public static final FAILED_TO_SHOW:Ljava/lang/String; = "Failed to show, errorCode = %s, errorMessage = %s"

.field public static final INSTANCE:Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;

.field public static final META_DATA:Ljava/lang/String; = "key = %s, value = %s"

.field public static final MISSING_PARAM:Ljava/lang/String; = "Missing params - %s"

.field public static final NETWORK_ADAPTER_IS_NULL:Ljava/lang/String; = "Network adapter is null"

.field public static final PLACEMENT_ID:Ljava/lang/String; = "placementId = %s"

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceId = %s"

.field public static final TOKEN:Ljava/lang/String; = "token = %s"

.field public static final TOKEN_ERROR:Ljava/lang/String; = "returning null as token since init isn\'t completed"

.field public static final TOKEN_FAILED:Ljava/lang/String; = "%s - BidMachine"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;

    invoke-direct {v0}, Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;->INSTANCE:Lcom/ironsource/adapters/bidmachine/BidMachineConstants$Logs;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
