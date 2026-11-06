###### Class com.unity3d.ads.core.data.model.CacheResult (com.unity3d.ads.core.data.model.CacheResult)
.class public abstract Lcom/unity3d/ads/core/data/model/CacheResult;
.super Ljava/lang/Object;
.source "CacheResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/CacheResult$Failure;,
        Lcom/unity3d/ads/core/data/model/CacheResult$Success;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/CacheResult;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.data.model.CacheResult.Failure (com.unity3d.ads.core.data.model.CacheResult$Failure)
.class public final Lcom/unity3d/ads/core/data/model/CacheResult$Failure;
.super Lcom/unity3d/ads/core/data/model/CacheResult;
.source "CacheResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/CacheResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation


# instance fields
.field private final error:Lcom/unity3d/ads/core/data/model/CacheError;

.field private final reason:Ljava/lang/Throwable;

.field private final source:Lcom/unity3d/ads/core/data/model/CacheSource;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/CacheResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_6

    .line 5
    sget-object p2, Lcom/unity3d/ads/core/data/model/CacheSource;->LOCAL:Lcom/unity3d/ads/core/data/model/CacheSource;

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/CacheResult$Failure;Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CacheResult$Failure;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->copy(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/core/data/model/CacheError;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/core/data/model/CacheSource;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    return-object v0
.end method

.method public final component3()Ljava/lang/Throwable;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)Lcom/unity3d/ads/core/data/model/CacheResult$Failure;
    .registers 5

    .line 0
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;-><init>(Lcom/unity3d/ads/core/data/model/CacheError;Lcom/unity3d/ads/core/data/model/CacheSource;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getError()Lcom/unity3d/ads/core/data/model/CacheError;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    return-object v0
.end method

.method public final getReason()Ljava/lang/Throwable;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getSource()Lcom/unity3d/ads/core/data/model/CacheSource;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure(error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->error:Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Failure;->reason:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.CacheResult.Success (com.unity3d.ads.core.data.model.CacheResult$Success)
.class public final Lcom/unity3d/ads/core/data/model/CacheResult$Success;
.super Lcom/unity3d/ads/core/data/model/CacheResult;
.source "CacheResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/CacheResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

.field private final source:Lcom/unity3d/ads/core/data/model/CacheSource;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)V
    .registers 4

    const-string v0, "cachedFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/data/model/CacheResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/CacheResult$Success;Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/CacheResult$Success;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->copy(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/unity3d/ads/core/data/model/CachedFile;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    return-object v0
.end method

.method public final component2()Lcom/unity3d/ads/core/data/model/CacheSource;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    return-object v0
.end method

.method public final copy(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)Lcom/unity3d/ads/core/data/model/CacheResult$Success;
    .registers 4

    .line 0
    const-string v0, "cachedFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/data/model/CacheResult$Success;-><init>(Lcom/unity3d/ads/core/data/model/CachedFile;Lcom/unity3d/ads/core/data/model/CacheSource;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/CacheResult$Success;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getCachedFile()Lcom/unity3d/ads/core/data/model/CachedFile;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    return-object v0
.end method

.method public final getSource()Lcom/unity3d/ads/core/data/model/CacheSource;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/CachedFile;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(cachedFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->cachedFile:Lcom/unity3d/ads/core/data/model/CachedFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/CacheResult$Success;->source:Lcom/unity3d/ads/core/data/model/CacheSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
