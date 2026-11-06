###### Class com.unity3d.ads.core.domain.adquality.AdQualityConstants (com.unity3d.ads.core.domain.adquality.AdQualityConstants)
.class public final Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;
.super Ljava/lang/Object;
.source "AdQualityConstants.kt"


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;

.field public static final SESSION_TOKEN_METADATA_KEY:Ljava/lang/String; = "uads_session_token"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;->INSTANCE:Lcom/unity3d/ads/core/domain/adquality/AdQualityConstants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
