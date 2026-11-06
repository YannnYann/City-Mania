###### Class com.unity3d.ads.core.domain.CommonGetAdObject (com.unity3d.ads.core.domain.CommonGetAdObject)
.class public final Lcom/unity3d/ads/core/domain/CommonGetAdObject;
.super Ljava/lang/Object;
.source "CommonGetAdObject.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetAdObject;


# instance fields
.field private final adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/AdRepository;)V
    .registers 3

    const-string v0, "adRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetAdObject;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 3

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonGetAdObject;->adRepository:Lcom/unity3d/ads/core/data/repository/AdRepository;

    invoke-static {p1}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteStringUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/data/repository/AdRepository;->getAd(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object p1

    return-object p1
.end method
