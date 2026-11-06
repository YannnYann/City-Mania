###### Class com.vungle.ads.InvalidBidPayloadError (com.vungle.ads.InvalidBidPayloadError)
.class public final Lcom/vungle/ads/InvalidBidPayloadError;
.super Lcom/vungle/ads/VungleError;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_BID_PAYLOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 2
    const-string v1, "Unable to create data object from payload string."

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/ads/VungleError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
