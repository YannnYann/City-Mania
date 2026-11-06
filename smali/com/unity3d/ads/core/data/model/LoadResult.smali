###### Class com.unity3d.ads.core.data.model.LoadResult (com.unity3d.ads.core.data.model.LoadResult)
.class public abstract Lcom/unity3d/ads/core/data/model/LoadResult;
.super Ljava/lang/Object;
.source "LoadResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/LoadResult$Companion;,
        Lcom/unity3d/ads/core/data/model/LoadResult$Failure;,
        Lcom/unity3d/ads/core/data/model/LoadResult$Success;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/model/LoadResult$Companion;

.field public static final MSG_AD_MARKUP_PARSING:Ljava/lang/String; = "[UnityAds] Could not parse Ad Markup"

.field public static final MSG_AD_OBJECT:Ljava/lang/String; = "[UnityAds] Ad not found"

.field public static final MSG_COMMUNICATION_FAILURE:Ljava/lang/String; = "[UnityAds] Internal communication failure"

.field public static final MSG_COMMUNICATION_FAILURE_WITH_DETAILS:Ljava/lang/String; = "[UnityAds] Internal communication failure: %s"

.field public static final MSG_COMMUNICATION_TIMEOUT:Ljava/lang/String; = "[UnityAds] Internal communication timeout"

.field public static final MSG_CREATE_REQUEST:Ljava/lang/String; = "[UnityAds] Failed to create load request"

.field public static final MSG_INIT_FAILED:Ljava/lang/String; = "[UnityAds] SDK Initialization Failed"

.field public static final MSG_INIT_FAILURE:Ljava/lang/String; = "[UnityAds] SDK Initialization Failure"

.field public static final MSG_NOT_INITIALIZED:Ljava/lang/String; = "[UnityAds] SDK not initialized"

.field public static final MSG_NO_FILL:Ljava/lang/String; = "[UnityAds] No fill"

.field public static final MSG_OPPORTUNITY_ID_USED:Ljava/lang/String; = "[UnityAds] Object ID already used"

.field public static final MSG_PLACEMENT_NULL:Ljava/lang/String; = "[UnityAds] Placement ID cannot be null"

.field public static final MSG_TIMEOUT:Ljava/lang/String; = "[UnityAds] Timeout while loading "


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/model/LoadResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/LoadResult;->Companion:Lcom/unity3d/ads/core/data/model/LoadResult$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/LoadResult;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.model.LoadResult.Companion (com.unity3d.ads.core.data.model.LoadResult$Companion)
.class public final Lcom/unity3d/ads/core/data/model/LoadResult$Companion;
.super Ljava/lang/Object;
.source "LoadResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/LoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/LoadResult$Companion;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.model.LoadResult.Failure (com.unity3d.ads.core.data.model.LoadResult$Failure)
.class public final Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
.super Lcom/unity3d/ads/core/data/model/LoadResult;
.source "LoadResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/LoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

.field private final errorToken:Lcom/google/protobuf/ByteString;

.field private final message:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final reasonDebug:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .registers 8

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/LoadResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 10
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    .line 12
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_10

    move-object p5, v0

    :cond_10
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_1c

    move-object p7, v0

    :goto_15
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1e

    :cond_1c
    move-object p7, p6

    goto :goto_15

    .line 8
    :goto_1e
    invoke-direct/range {p1 .. p7}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/LoadResult$Failure;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .registers 9

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    :cond_c
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    :cond_12
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_18

    iget-object p4, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    :cond_18
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1e

    iget-object p5, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    :cond_1e
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_24

    iget-object p6, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    :cond_24
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->copy(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Throwable;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final copy(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/LoadResult$Failure;
    .registers 15

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    return-object v0
.end method

.method public final getErrorToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public final getReasonDebug()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    if-nez v1, :cond_1c

    move v1, v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    if-nez v1, :cond_32

    move v1, v2

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

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

    const-string v1, "Failure(error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->error:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->reasonDebug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Failure;->errorToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.LoadResult.Success (com.unity3d.ads.core.data.model.LoadResult$Success)
.class public final Lcom/unity3d/ads/core/data/model/LoadResult$Success;
.super Lcom/unity3d/ads/core/data/model/LoadResult;
.source "LoadResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/LoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final adObject:Lcom/unity3d/ads/core/data/model/AdObject;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .registers 3

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/LoadResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/LoadResult$Success;Lcom/unity3d/ads/core/data/model/AdObject;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/LoadResult$Success;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->copy(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/core/data/model/AdObject;)Lcom/unity3d/ads/core/data/model/LoadResult$Success;
    .registers 3

    .line 0
    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/model/LoadResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(adObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/LoadResult$Success;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
