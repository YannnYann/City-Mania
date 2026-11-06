###### Class com.unity3d.ads.core.data.repository.AndroidTcfRepository (com.unity3d.ads.core.data.repository.AndroidTcfRepository)
.class public final Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;
.super Ljava/lang/Object;
.source "AndroidTcfRepository.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/repository/TcfRepository;


# instance fields
.field private final tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/datasource/TcfDataSource;)V
    .registers 3

    const-string v0, "tcfDataSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    return-void
.end method


# virtual methods
.method public final getTcfDataSource()Lcom/unity3d/ads/core/data/datasource/TcfDataSource;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    return-object v0
.end method

.method public getTcfString()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidTcfRepository;->tcfDataSource:Lcom/unity3d/ads/core/data/datasource/TcfDataSource;

    invoke-interface {v0}, Lcom/unity3d/ads/core/data/datasource/TcfDataSource;->getTcfString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
