###### Class io.bidmachine.rendering.model.BrokenCreativeAlgorithmResult (io.bidmachine.rendering.model.BrokenCreativeAlgorithmResult)
.class public final Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

.field public final c:J


# direct methods
.method public constructor <init>(ZLio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;J)V
    .registers 6

    const-string v0, "algorithmParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->a:Z

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->b:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    .line 4
    iput-wide p3, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->c:J

    return-void
.end method


# virtual methods
.method public final getAlgorithmParams()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->b:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    return-object v0
.end method

.method public final getDurationMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->c:J

    return-wide v0
.end method

.method public final isBroken()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmResult;->a:Z

    return v0
.end method
