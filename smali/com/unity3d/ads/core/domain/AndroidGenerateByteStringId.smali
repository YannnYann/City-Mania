###### Class com.unity3d.ads.core.domain.AndroidGenerateByteStringId (com.unity3d.ads.core.domain.AndroidGenerateByteStringId)
.class public final Lcom/unity3d/ads/core/domain/AndroidGenerateByteStringId;
.super Ljava/lang/Object;
.source "AndroidGenerateByteStringId.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetByteStringId;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toByteString(Ljava/util/UUID;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
