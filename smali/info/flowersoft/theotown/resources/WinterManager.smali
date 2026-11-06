###### Class info.flowersoft.theotown.resources.WinterManager (info.flowersoft.theotown.resources.WinterManager)
.class public final Linfo/flowersoft/theotown/resources/WinterManager;
.super Ljava/lang/Object;
.source "WinterManager.java"


# static fields
.field public static final DYNAMIC_WINTER_EVALUATION:Z

.field public static instance:Linfo/flowersoft/theotown/resources/WinterManager;


# instance fields
.field public final frameCount:Lio/blueflower/stapel2d/util/IntList;

.field public final sourceFrames:Lio/blueflower/stapel2d/util/IntList;

.field public final targetFrames:Lio/blueflower/stapel2d/util/IntList;

.field public winter:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1e

    if-gtz v0, :cond_1c

    const/4 v0, 0x7

    if-gt v1, v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 34
    :goto_1f
    sput-boolean v0, Linfo/flowersoft/theotown/resources/WinterManager;->DYNAMIC_WINTER_EVALUATION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->sourceFrames:Lio/blueflower/stapel2d/util/IntList;

    .line 39
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->targetFrames:Lio/blueflower/stapel2d/util/IntList;

    .line 40
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->frameCount:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 22
    sput-object v0, Linfo/flowersoft/theotown/resources/WinterManager;->instance:Linfo/flowersoft/theotown/resources/WinterManager;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/WinterManager;
    .registers 1

    .line 16
    sget-object v0, Linfo/flowersoft/theotown/resources/WinterManager;->instance:Linfo/flowersoft/theotown/resources/WinterManager;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Linfo/flowersoft/theotown/resources/WinterManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/WinterManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/WinterManager;->instance:Linfo/flowersoft/theotown/resources/WinterManager;

    .line 19
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/WinterManager;->instance:Linfo/flowersoft/theotown/resources/WinterManager;

    return-object v0
.end method

.method public static shouldItBeWinter(I)Z
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0

    .line 48
    :cond_8
    sget-boolean p0, Linfo/flowersoft/theotown/resources/WinterManager;->DYNAMIC_WINTER_EVALUATION:Z

    return p0
.end method


# virtual methods
.method public isWinter()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    return v0
.end method

.method public declared-synchronized registerWinterFrame(II)V
    .registers 4

    monitor-enter p0

    .line 61
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrames(III)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 63
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_15

    .line 61
    :cond_d
    :try_start_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "May not add frames while in winter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_b

    throw p1
.end method

.method public final registerWinterFrames(III)V
    .registers 5

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->sourceFrames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 103
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/WinterManager;->targetFrames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 104
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/WinterManager;->frameCount:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public declared-synchronized registerWinterFrames([I[II)V
    .registers 13

    monitor-enter p0

    .line 66
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    if-nez v0, :cond_35

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v1, v0

    :goto_c
    if-ge v0, p3, :cond_33

    .line 75
    aget v6, p1, v0

    .line 76
    aget v7, p2, v0

    const/4 v8, 0x1

    if-lez v0, :cond_1e

    add-int/2addr v2, v8

    if-ne v6, v2, :cond_1e

    add-int/2addr v3, v8

    if-ne v7, v3, :cond_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_1e
    if-lez v1, :cond_26

    .line 83
    invoke-virtual {p0, v4, v5, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrames(III)V

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_3d

    :cond_26
    :goto_26
    move v4, v6

    move v5, v7

    move v1, v8

    :goto_29
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p3, :cond_30

    .line 91
    invoke-virtual {p0, v4, v5, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrames(III)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_24

    :cond_30
    move v2, v6

    move v3, v7

    goto :goto_c

    .line 97
    :cond_33
    monitor-exit p0

    return-void

    .line 66
    :cond_35
    :try_start_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "May not add frames while in winter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_24

    throw p1
.end method

.method public declared-synchronized setWinter(Z)V
    .registers 3

    monitor-enter p0

    .line 112
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    if-eq v0, p1, :cond_b

    .line 113
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/WinterManager;->swapFrames()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    .line 115
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_9

    throw p1
.end method

.method public final swapFrames()V
    .registers 6

    .line 118
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Linfo/flowersoft/theotown/resources/WinterManager;->winter:Z

    .line 119
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v1, 0x0

    .line 121
    :goto_9
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/WinterManager;->sourceFrames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 122
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/WinterManager;->sourceFrames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/resources/WinterManager;->targetFrames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/resources/WinterManager;->frameCount:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->swap(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_29
    return-void
.end method
