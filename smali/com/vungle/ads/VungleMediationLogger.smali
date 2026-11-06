###### Class com.vungle.ads.VungleMediationLogger (com.vungle.ads.VungleMediationLogger)
.class public final Lcom/vungle/ads/VungleMediationLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/VungleMediationLogger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/VungleMediationLogger;

    invoke-direct {v0}, Lcom/vungle/ads/VungleMediationLogger;-><init>()V

    sput-object v0, Lcom/vungle/ads/VungleMediationLogger;->INSTANCE:Lcom/vungle/ads/VungleMediationLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final logError(Lcom/vungle/ads/VungleAdType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MEDIATION_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    if-eqz p0, :cond_10

    .line 4
    invoke-static {p0}, Lcom/vungle/ads/VungleMediationLoggerKt;->access$getAdLogEntry(Lcom/vungle/ads/VungleAdType;)Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 5
    :goto_11
    invoke-virtual {v0, v1, p1, p0}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    return-void
.end method
