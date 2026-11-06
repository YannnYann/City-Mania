###### Class info.flowersoft.theotown.util.Parallel (info.flowersoft.theotown.util.Parallel)
.class public final Linfo/flowersoft/theotown/util/Parallel;
.super Ljava/lang/Object;
.source "Parallel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/Parallel$Worker;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$kOtU10ib8LrdPUSZ6BbM1ICmYSU(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V
    .registers 4

    .line 56
    invoke-interface {p0, p1, p2, p3}, Linfo/flowersoft/theotown/util/Parallel$Worker;->work(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$wNOfmEwxjile_NCp62fUmcNDi5o(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V
    .registers 4

    .line 32
    invoke-interface {p0, p1, p2, p3}, Linfo/flowersoft/theotown/util/Parallel$Worker;->work(III)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoThreadCount()I
    .registers 1

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z
    .registers 10

    .line 24
    invoke-static {p1, p0}, Linfo/flowersoft/theotown/util/Parallel;->sizePerWorker(II)I

    move-result v0

    add-int/lit8 p0, p0, -0x1

    .line 25
    new-array v1, p0, [Ljava/lang/Thread;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p0, :cond_25

    mul-int v3, v2, v0

    add-int v4, v3, v0

    .line 30
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 31
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2, v2, v3, v4}, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 35
    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    mul-int/2addr v0, p0

    .line 39
    invoke-interface {p2, p0, v0, p1}, Linfo/flowersoft/theotown/util/Parallel$Worker;->work(III)V

    .line 42
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Parallel;->join([Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public static join(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 82
    :try_start_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_11} :catch_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_14
    add-int/lit8 v2, v1, 0x1

    .line 85
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 86
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_28
    return v0

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static join([Ljava/lang/Thread;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 65
    :goto_2
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1b

    .line 67
    :try_start_6
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_e
    add-int/2addr v1, v3

    .line 70
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 71
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    return v0

    :cond_1b
    return v3
.end method

.method public static sizePerWorker(II)I
    .registers 2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    .line 20
    div-int/2addr p0, p1

    return p0
.end method

.method public static startParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)[Ljava/lang/Thread;
    .registers 10

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 47
    new-array p0, v0, [Ljava/lang/Thread;

    return-object p0

    .line 49
    :cond_9
    invoke-static {p1, p0}, Linfo/flowersoft/theotown/util/Parallel;->sizePerWorker(II)I

    move-result v1

    .line 50
    new-array v2, p0, [Ljava/lang/Thread;

    :goto_f
    if-ge v0, p0, :cond_2b

    mul-int v3, v0, v1

    add-int v4, v3, v1

    .line 54
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 55
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v0, v3, v4}, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 59
    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2b
    return-object v2
.end method

###### Class info.flowersoft.theotown.util.Parallel.Worker (info.flowersoft.theotown.util.Parallel$Worker)
.class public interface abstract Linfo/flowersoft/theotown/util/Parallel$Worker;
.super Ljava/lang/Object;
.source "Parallel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Worker"
.end annotation


# virtual methods
.method public abstract work(III)V
.end method

###### Class info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda0 (info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

    iput p2, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

    iget v1, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/Parallel;->$r8$lambda$kOtU10ib8LrdPUSZ6BbM1ICmYSU(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V

    return-void
.end method

###### Class info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda1 (info.flowersoft.theotown.util.Parallel$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

    iput p2, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/util/Parallel$Worker;

    iget v1, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/util/Parallel$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/Parallel;->$r8$lambda$wNOfmEwxjile_NCp62fUmcNDi5o(Linfo/flowersoft/theotown/util/Parallel$Worker;III)V

    return-void
.end method
