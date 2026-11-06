###### Class com.vungle.ads.internal.Constants (com.vungle.ads.internal.Constants)
.class public final Lcom/vungle/ads/internal/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/vungle/ads/internal/Constants;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/Constants;

    invoke-direct {v0}, Lcom/vungle/ads/internal/Constants;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/Constants;->INSTANCE:Lcom/vungle/ads/internal/Constants;

    .line 1
    const-string v0, "https://adx.ads.vungle.com/api/v7/ads"

    sput-object v0, Lcom/vungle/ads/internal/Constants;->DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

    .line 3
    const-string v0, "https://adx.ads.vungle.com/api/v7/csb"

    sput-object v0, Lcom/vungle/ads/internal/Constants;->a:Ljava/lang/String;

    .line 5
    const-string v0, "https://logs.ads.vungle.com/sdk/error_logs"

    sput-object v0, Lcom/vungle/ads/internal/Constants;->b:Ljava/lang/String;

    .line 7
    const-string v0, "https://logs.ads.vungle.com/sdk/metrics"

    sput-object v0, Lcom/vungle/ads/internal/Constants;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
