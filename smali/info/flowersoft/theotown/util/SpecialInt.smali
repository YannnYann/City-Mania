###### Class info.flowersoft.theotown.util.SpecialInt (info.flowersoft.theotown.util.SpecialInt)
.class public final Linfo/flowersoft/theotown/util/SpecialInt;
.super Ljava/lang/Object;
.source "SpecialInt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/SpecialInt$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/util/SpecialInt$Companion;

.field public static final random:Ljava/util/Random;


# instance fields
.field public seed:J

.field public valueA:I

.field public valueB:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SpecialInt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/util/SpecialInt;->Companion:Linfo/flowersoft/theotown/util/SpecialInt$Companion;

    .line 58
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Linfo/flowersoft/theotown/util/SpecialInt;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    return-void
.end method

.method public static final synthetic access$getRandom$cp()Ljava/util/Random;
    .registers 1

    .line 8
    sget-object v0, Linfo/flowersoft/theotown/util/SpecialInt;->random:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final get()I
    .registers 8

    .line 36
    sget-object v0, Linfo/flowersoft/theotown/util/SpecialInt;->random:Ljava/util/Random;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-wide v1, p0, Linfo/flowersoft/theotown/util/SpecialInt;->seed:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 38
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 39
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 40
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 41
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 42
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 43
    iget v6, p0, Linfo/flowersoft/theotown/util/SpecialInt;->valueA:I

    sub-int/2addr v6, v3

    xor-int/2addr v1, v6

    .line 44
    iget v3, p0, Linfo/flowersoft/theotown/util/SpecialInt;->valueB:I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_36

    sub-int/2addr v3, v5

    not-int v3, v3

    sub-int/2addr v3, v4

    xor-int/2addr v2, v3

    if-ne v1, v2, :cond_2a

    .line 36
    monitor-exit v0

    return v1

    :cond_2a
    const/4 v1, 0x0

    .line 47
    :try_start_2b
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v1

    .line 36
    monitor-exit v0

    throw v1
.end method

.method public final set(I)V
    .registers 8

    .line 24
    sget-object v0, Linfo/flowersoft/theotown/util/SpecialInt;->random:Ljava/util/Random;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Linfo/flowersoft/theotown/util/SpecialInt;->Companion:Linfo/flowersoft/theotown/util/SpecialInt$Companion;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/util/SpecialInt$Companion;->access$mix(Linfo/flowersoft/theotown/util/SpecialInt$Companion;J)J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/util/SpecialInt;->seed:J

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 27
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 28
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 29
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 31
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    xor-int/2addr v1, p1

    add-int/2addr v1, v3

    .line 32
    iput v1, p0, Linfo/flowersoft/theotown/util/SpecialInt;->valueA:I

    xor-int/2addr p1, v2

    add-int/2addr p1, v4

    not-int p1, p1

    add-int/2addr p1, v5

    .line 33
    iput p1, p0, Linfo/flowersoft/theotown/util/SpecialInt;->valueB:I

    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    .line 24
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setZero()V
    .registers 2

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.SpecialInt.Companion (info.flowersoft.theotown.util.SpecialInt$Companion)
.class public final Linfo/flowersoft/theotown/util/SpecialInt$Companion;
.super Ljava/lang/Object;
.source "SpecialInt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SpecialInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/SpecialInt$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$mix(Linfo/flowersoft/theotown/util/SpecialInt$Companion;J)J
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/SpecialInt$Companion;->mix(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getRandom()Ljava/util/Random;
    .registers 2

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/util/SpecialInt;->access$getRandom$cp()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method public final mix(J)J
    .registers 6

    .line 0
    const/16 v0, 0x21

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p1, v1

    ushr-long v1, p1, v0

    xor-long/2addr p1, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p1, v1

    ushr-long v0, p1, v0

    xor-long/2addr p1, v0

    return-wide p1
.end method
