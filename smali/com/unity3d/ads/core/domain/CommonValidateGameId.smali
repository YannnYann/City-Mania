###### Class com.unity3d.ads.core.domain.CommonValidateGameId (com.unity3d.ads.core.domain.CommonValidateGameId)
.class public final Lcom/unity3d/ads/core/domain/CommonValidateGameId;
.super Ljava/lang/Object;
.source "CommonValidateGameId.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ValidateGameId;


# instance fields
.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

.field private final setGameId:Lcom/unity3d/ads/core/domain/SetGameId;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetGameId;Lcom/unity3d/ads/core/domain/SetGameId;)V
    .registers 4

    const-string v0, "getGameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setGameId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 5
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->setGameId:Lcom/unity3d/ads/core/domain/SetGameId;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;)Z
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_e
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->setGameId:Lcom/unity3d/ads/core/domain/SetGameId;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/domain/SetGameId;->invoke(Ljava/lang/String;)V

    return v1
.end method
