###### Class com.unity3d.ads.core.domain.CommonGetCacheDirectory (com.unity3d.ads.core.domain.CommonGetCacheDirectory)
.class public final Lcom/unity3d/ads/core/domain/CommonGetCacheDirectory;
.super Ljava/lang/Object;
.source "CommonGetCacheDirectory.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetCacheDirectory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const-string v0, "cacheDirectoryBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDirectoryPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
