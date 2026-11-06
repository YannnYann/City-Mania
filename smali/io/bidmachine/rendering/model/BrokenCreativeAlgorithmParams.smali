###### Class io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams (io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams)
.class public final Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;FF)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->b:F

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->c:F

    return-void
.end method


# virtual methods
.method public final getThreshold()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->b:F

    return v0
.end method

.method public final getType()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    return-object v0
.end method

.method public final getWeight()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->c:F

    return v0
.end method
