###### Class io.bidmachine.util.file.StorageSpaceMonitor (io.bidmachine.util.file.StorageSpaceMonitor)
.class public final Lio/bidmachine/util/file/StorageSpaceMonitor;
.super Ljava/lang/Object;
.source "StorageSpaceMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;,
        Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;,
        Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;,
        Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageSpaceMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageSpaceMonitor.kt\nio/bidmachine/util/file/StorageSpaceMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1851#2,2:109\n*S KotlinDebug\n*F\n+ 1 StorageSpaceMonitor.kt\nio/bidmachine/util/file/StorageSpaceMonitor\n*L\n63#1:109,2\n*E\n"
.end annotation


# instance fields
.field public final availableStorageSpaceThreshold:D

.field public final interval:J

.field public final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public final scope$delegate:Lkotlin/Lazy;

.field public final storageSpaceStatExtractor:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;


# direct methods
.method public constructor <init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;)V
    .registers 13

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p4, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->interval:J

    .line 21
    iput-object p6, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->storageSpaceStatExtractor:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;

    .line 26
    new-instance p4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p4, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->listeners:Ljava/util/Set;

    .line 27
    new-instance p4, Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;

    invoke-direct {p4, p3}, Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;-><init>(Lio/bidmachine/util/SdkDispatchers;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->scope$delegate:Lkotlin/Lazy;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    .line 30
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->availableStorageSpaceThreshold:D

    return-void
.end method

.method public synthetic constructor <init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 17

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_9

    const-wide p1, 0x3fb999999999999aL    # 0.1

    :cond_9
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_14

    .line 19
    sget-object p1, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p3

    :cond_14
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_23

    .line 20
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 p1, 0xa

    sget-object p2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p4

    :cond_23
    move-wide v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_36

    .line 21
    new-instance p6, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;

    .line 22
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    const-string p2, "getDataDirectory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p6, p1}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;-><init>(Ljava/io/File;)V

    :cond_36
    move-object v6, p6

    const/4 v7, 0x0

    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/util/file/StorageSpaceMonitor;-><init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lio/bidmachine/util/file/StorageSpaceMonitor;-><init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;)V

    return-void
.end method

.method public static final synthetic access$checkAndNotify(Lio/bidmachine/util/file/StorageSpaceMonitor;)V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/util/file/StorageSpaceMonitor;->checkAndNotify()V

    return-void
.end method

.method public static final synthetic access$getInterval$p(Lio/bidmachine/util/file/StorageSpaceMonitor;)J
    .registers 3

    .line 17
    iget-wide v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->interval:J

    return-wide v0
.end method


# virtual methods
.method public final addListener(Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkAndNotify()V
    .registers 6

    .line 61
    iget-object v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->storageSpaceStatExtractor:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;

    invoke-interface {v0}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;->getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2b

    .line 62
    :cond_9
    invoke-virtual {v0}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->getAvailableStorageSpaceInPercent()D

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->availableStorageSpaceThreshold:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2b

    .line 63
    iget-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->listeners:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 109
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;

    .line 63
    invoke-interface {v2, v0}, Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;->onLowSpace(Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;)V

    goto :goto_1b

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 27
    iget-object v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->scope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;
    .registers 2

    .line 57
    iget-object v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor;->storageSpaceStatExtractor:Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;

    invoke-interface {v0}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;->getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    move-result-object v0

    return-object v0
.end method

.method public final start()V
    .registers 7

    .line 41
    invoke-virtual {p0}, Lio/bidmachine/util/file/StorageSpaceMonitor;->stop()V

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/util/file/StorageSpaceMonitor;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;-><init>(Lio/bidmachine/util/file/StorageSpaceMonitor;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .registers 4

    .line 53
    invoke-virtual {p0}, Lio/bidmachine/util/file/StorageSpaceMonitor;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor.Listener (io.bidmachine.util.file.StorageSpaceMonitor$Listener)
.class public interface abstract Lio/bidmachine/util/file/StorageSpaceMonitor$Listener;
.super Ljava/lang/Object;
.source "StorageSpaceMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onLowSpace(Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;)V
    .registers 3

    .line 0
    const-string v0, "storageSpaceStat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor.StorageSpaceStat (io.bidmachine.util.file.StorageSpaceMonitor$StorageSpaceStat)
.class public final Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;
.super Ljava/lang/Object;
.source "StorageSpaceMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StorageSpaceStat"
.end annotation


# instance fields
.field public final availableBytes:J

.field public final availableStorageSpaceInPercent:D

.field public final totalBytes:J

.field public final usedStorageSpaceInPercent:D


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->totalBytes:J

    .line 97
    iput-wide p3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableBytes:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    const-wide/16 p1, 0x0

    goto :goto_14

    :cond_10
    long-to-double p3, p3

    long-to-double p1, p1

    div-double p1, p3, p1

    .line 100
    :goto_14
    iput-wide p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableStorageSpaceInPercent:D

    const/4 p3, 0x1

    int-to-double p3, p3

    sub-double/2addr p3, p1

    .line 105
    iput-wide p3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->usedStorageSpaceInPercent:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    iget-wide v3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->totalBytes:J

    iget-wide v5, p1, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->totalBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableBytes:J

    iget-wide v5, p1, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableBytes:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAvailableStorageSpaceInPercent()D
    .registers 3

    .line 100
    iget-wide v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableStorageSpaceInPercent:D

    return-wide v0
.end method

.method public final getUsedStorageSpaceInPercent()D
    .registers 3

    .line 105
    iget-wide v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->usedStorageSpaceInPercent:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-wide v0, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->totalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageSpaceStat(totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->totalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", availableBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;->availableBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor.StorageSpaceStatExtractor (io.bidmachine.util.file.StorageSpaceMonitor$StorageSpaceStatExtractor)
.class public interface abstract Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;
.super Ljava/lang/Object;
.source "StorageSpaceMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageSpaceStatExtractor"
.end annotation


# virtual methods
.method public abstract getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor.StorageSpaceStatExtractorImpl (io.bidmachine.util.file.StorageSpaceMonitor$StorageSpaceStatExtractorImpl)
.class public final Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;
.super Ljava/lang/Object;
.source "StorageSpaceMonitor.kt"

# interfaces
.implements Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StorageSpaceStatExtractorImpl"
.end annotation


# instance fields
.field public final targetDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const-string v0, "targetDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;->targetDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getStorageSpaceStat()Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;
    .registers 7

    .line 83
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractorImpl;->targetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v1, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;

    .line 85
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v2

    .line 86
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    .line 84
    invoke-direct {v1, v2, v3, v4, v5}, Lio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStat;-><init>(JJ)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object v1

    :catchall_19
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor.AnonymousClass1 (io.bidmachine.util.file.StorageSpaceMonitor$start$1)
.class public final Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StorageSpaceMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.file.StorageSpaceMonitor$start$1"
    f = "StorageSpaceMonitor.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/file/StorageSpaceMonitor;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/file/StorageSpaceMonitor;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/file/StorageSpaceMonitor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->this$0:Lio/bidmachine/util/file/StorageSpaceMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;

    iget-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->this$0:Lio/bidmachine/util/file/StorageSpaceMonitor;

    invoke-direct {v0, v1, p2}, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;-><init>(Lio/bidmachine/util/file/StorageSpaceMonitor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 42
    iget v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_23

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    .line 43
    :cond_23
    :goto_23
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 44
    iget-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->this$0:Lio/bidmachine/util/file/StorageSpaceMonitor;

    :try_start_2b
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 45
    invoke-static {p1}, Lio/bidmachine/util/file/StorageSpaceMonitor;->access$checkAndNotify(Lio/bidmachine/util/file/StorageSpaceMonitor;)V

    .line 46
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_36

    goto :goto_40

    :catchall_36
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_40
    iget-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->this$0:Lio/bidmachine/util/file/StorageSpaceMonitor;

    invoke-static {p1}, Lio/bidmachine/util/file/StorageSpaceMonitor;->access$getInterval$p(Lio/bidmachine/util/file/StorageSpaceMonitor;)J

    move-result-wide v3

    iput-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$start$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_23

    return-object v0

    .line 49
    :cond_51
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.util.file.StorageSpaceMonitor$scope$2 (io.bidmachine.util.file.StorageSpaceMonitor$scope$2)
.class public final Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StorageSpaceMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/file/StorageSpaceMonitor;-><init>(DLio/bidmachine/util/SdkDispatchers;JLio/bidmachine/util/file/StorageSpaceMonitor$StorageSpaceStatExtractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $sdkDispatchers:Lio/bidmachine/util/SdkDispatchers;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/SdkDispatchers;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;->$sdkDispatchers:Lio/bidmachine/util/SdkDispatchers;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/util/file/StorageSpaceMonitor$scope$2;->$sdkDispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
