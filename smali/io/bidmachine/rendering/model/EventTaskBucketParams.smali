###### Class io.bidmachine.rendering.model.EventTaskBucketParams (io.bidmachine.rendering.model.EventTaskBucketParams)
.class public final Lio/bidmachine/rendering/model/EventTaskBucketParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/ExecutionMode;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 10

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/rendering/model/EventTaskBucketParams;-><init>(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/ExecutionMode;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "executionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateGroups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beforeEventTaskParamsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTaskParamsList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "afterEventTaskParamsList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationTimingRaw"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->a:Lio/bidmachine/rendering/model/ExecutionMode;

    .line 4
    iput-object p2, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->b:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->c:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->d:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->e:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 9
    sget-object p1, Lio/bidmachine/rendering/model/ExecutionMode;->Parallel:Lio/bidmachine/rendering/model/ExecutionMode;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_e

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_e
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_16

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_16
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_1e

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_1e
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_26

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_26
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2c

    .line 14
    const-string p6, ""

    :cond_2c
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 15
    invoke-direct/range {p2 .. p8}, Lio/bidmachine/rendering/model/EventTaskBucketParams;-><init>(Lio/bidmachine/rendering/model/ExecutionMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAfterEventTaskParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->e:Ljava/util/List;

    return-object v0
.end method

.method public final getAnimationTimingRaw()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getBeforeEventTaskParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getEventTaskParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventTaskParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getExecutionMode()Lio/bidmachine/rendering/model/ExecutionMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->a:Lio/bidmachine/rendering/model/ExecutionMode;

    return-object v0
.end method

.method public final getStateGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskBucketParams;->b:Ljava/util/List;

    return-object v0
.end method
