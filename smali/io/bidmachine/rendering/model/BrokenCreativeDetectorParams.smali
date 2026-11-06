###### Class io.bidmachine.rendering.model.BrokenCreativeDetectorParams (io.bidmachine.rendering.model.BrokenCreativeDetectorParams)
.class public final Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:D

.field public final c:Z

.field public final d:Z

.field public final e:Lio/bidmachine/rendering/model/StopDetectorAfter;

.field public final f:D

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(JDZZLio/bidmachine/rendering/model/StopDetectorAfter;DLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JDZZ",
            "Lio/bidmachine/rendering/model/StopDetectorAfter;",
            "D",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stopAfter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithms"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->a:J

    .line 3
    iput-wide p3, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->b:D

    .line 4
    iput-boolean p5, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->c:Z

    .line 5
    iput-boolean p6, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->d:Z

    .line 6
    iput-object p7, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->e:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 7
    iput-wide p8, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->f:D

    .line 8
    iput-object p10, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAlgorithms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getDownscaleFactor()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->b:D

    return-wide v0
.end method

.method public final getStopAfter()Lio/bidmachine/rendering/model/StopDetectorAfter;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->e:Lio/bidmachine/rendering/model/StopDetectorAfter;

    return-object v0
.end method

.method public final getTimeout()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->a:J

    return-wide v0
.end method

.method public final getWeightThreshold()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->f:D

    return-wide v0
.end method

.method public final isAllowDuplicate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->d:Z

    return v0
.end method

.method public final isErrorOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;->c:Z

    return v0
.end method
