###### Class com.vungle.ads.AdRetryError (com.vungle.ads.AdRetryError)
.class public final Lcom/vungle/ads/AdRetryError;
.super Lcom/vungle/ads/VungleError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_RESPONSE_RETRY_AFTER:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 2
    const-string v1, "Ads retry-after: Server is busy"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/ads/VungleError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
