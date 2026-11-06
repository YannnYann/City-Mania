###### Class com.unity3d.ads.core.domain.CacheAssetsEvent (com.unity3d.ads.core.domain.CacheAssetsEvent)
.class public abstract Lcom/unity3d/ads/core/domain/CacheAssetsEvent;
.super Ljava/lang/Object;
.source "CacheAssets.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;,
        Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.CacheAssetsEvent.Failure (com.unity3d.ads.core.domain.CacheAssetsEvent$Failure)
.class public final Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;
.super Lcom/unity3d/ads/core/domain/CacheAssetsEvent;
.source "CacheAssets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/CacheAssetsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;
    .registers 4

    .line 0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->copy(Ljava/lang/String;)Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;
    .registers 3

    .line 0
    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Failure;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.domain.CacheAssetsEvent.Success (com.unity3d.ads.core.domain.CacheAssetsEvent$Success)
.class public final Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;
.super Lcom/unity3d/ads/core/domain/CacheAssetsEvent;
.source "CacheAssets.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/CacheAssetsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;->INSTANCE:Lcom/unity3d/ads/core/domain/CacheAssetsEvent$Success;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/CacheAssetsEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
