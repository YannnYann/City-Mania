###### Class com.unity3d.ads.core.domain.CommonSetGameId (com.unity3d.ads.core.domain.CommonSetGameId)
.class public final Lcom/unity3d/ads/core/domain/CommonSetGameId;
.super Ljava/lang/Object;
.source "CommonSetGameId.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/SetGameId;


# instance fields
.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V
    .registers 3

    const-string v0, "sessionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonSetGameId;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonSetGameId;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->setGameId(Ljava/lang/String;)V

    return-void
.end method
