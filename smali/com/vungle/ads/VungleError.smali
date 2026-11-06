###### Class com.vungle.ads.VungleError (com.vungle.ads.VungleError)
.class public abstract Lcom/vungle/ads/VungleError;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Lcom/vungle/ads/internal/util/t;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/VungleError;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/vungle/ads/VungleError;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/VungleError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 3
    :cond_18
    const-string v1, "null cannot be cast to non-null type com.vungle.ads.VungleError"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/VungleError;

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iget-object v3, p1, Lcom/vungle/ads/VungleError;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    if-eq v1, v3, :cond_26

    return v2

    .line 6
    :cond_26
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 7
    :cond_31
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->d:Lcom/vungle/ads/internal/util/t;

    iget-object p1, p1, Lcom/vungle/ads/VungleError;->d:Lcom/vungle/ads/internal/util/t;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    return v2

    :cond_3c
    return v0
.end method

.method public final getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleError;->c:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->d:Lcom/vungle/ads/internal/util/t;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/t;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    add-int/2addr v1, v0

    return v1
.end method

.method public final logError$vungle_ads_release()Lcom/vungle/ads/VungleError;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-object p0
.end method

.method public final logErrorNoReturnValue$vungle_ads_release()V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/VungleError;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iget-object v2, p0, Lcom/vungle/ads/VungleError;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/ads/VungleError;->d:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    return-void
.end method

.method public final setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleError;->d:Lcom/vungle/ads/internal/util/t;

    return-object p0
.end method
