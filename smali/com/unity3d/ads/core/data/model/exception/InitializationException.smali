###### Class com.unity3d.ads.core.data.model.exception.InitializationException (com.unity3d.ads.core.data.model.exception.InitializationException)
.class public final Lcom/unity3d/ads/core/data/model/exception/InitializationException;
.super Ljava/lang/Exception;
.source "InitializationException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;


# instance fields
.field private final errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field private final errorToken:Lcom/google/protobuf/ByteString;

.field private final message:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final reasonDebug:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->Companion:Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)V
    .registers 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    .line 17
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 20
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_c

    .line 17
    const-string p3, "gateway"

    :cond_c
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_11

    move-object p4, v0

    :cond_11
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_16

    move-object p5, v0

    :cond_16
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_22

    move-object p7, v0

    :goto_1b
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_24

    :cond_22
    move-object p7, p6

    goto :goto_1b

    .line 14
    :goto_24
    invoke-direct/range {p1 .. p7}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/exception/InitializationException;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;
    .registers 9

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-object p6, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    :cond_24
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->copy(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Throwable;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object v0
.end method

.method public final component6()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;
    .registers 15

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    if-eq v1, v3, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object v0
.end method

.method public final getErrorToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonDebug()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    if-nez v1, :cond_25

    move v1, v2

    goto :goto_29

    :cond_25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_29
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    if-nez v1, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    :goto_42
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitializationException(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->reasonDebug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorCode:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/exception/InitializationException;->errorToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.exception.InitializationException.Companion (com.unity3d.ads.core.data.model.exception.InitializationException$Companion)
.class public final Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;
.super Ljava/lang/Object;
.source "InitializationException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/exception/InitializationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/exception/InitializationException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFrom(Ljava/lang/Exception;)Lcom/unity3d/ads/core/data/model/exception/InitializationException;
    .registers 13

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_d

    .line 26
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    if-eqz v0, :cond_10

    :cond_d
    move-object v4, p1

    goto/16 :goto_8c

    .line 33
    :cond_10
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    if-eqz v0, :cond_34

    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 34
    check-cast p1, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getReason()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getReasonDebug()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v6

    .line 39
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v7

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;)V

    return-object v1

    .line 41
    :cond_34
    instance-of v0, p1, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    if-eqz v0, :cond_6e

    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getCode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_47

    const-string v2, "network"

    :goto_45
    move-object v4, v2

    goto :goto_5d

    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    .line 45
    :goto_5d
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 46
    sget-object v6, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_NETWORK:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v8, 0x20

    const/4 v9, 0x0

    .line 41
    const-string v2, "Unity Ads SDK initialization failed: Network error occurred. Check your network connection and try again later."

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_6e
    move-object v4, p1

    .line 48
    nop

    instance-of p1, v4, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    if-eqz p1, :cond_78

    move-object p1, v4

    check-cast p1, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    return-object p1

    .line 49
    :cond_78
    new-instance v2, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 54
    sget-object v7, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_INIT_UNKNOWN:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 49
    const-string v3, "Unity Ads SDK initialization failed: Unknown error occurred."

    const-string v5, "unknown"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 26
    :goto_8c
    new-instance v2, Lcom/unity3d/ads/core/data/model/exception/InitializationException;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 31
    sget-object v7, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_TIMEOUT:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 26
    const-string v3, "Unity Ads SDK initialization failed: Request timed out. Check your network connection and try again later."

    const-string v5, "timeout"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/unity3d/ads/core/data/model/exception/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
