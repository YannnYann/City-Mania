###### Class io.bidmachine.rendering.model.engagedclick.EngagedClickReport (io.bidmachine.rendering.model.engagedclick.EngagedClickReport)
.class public final Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

.field public final b:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

.field public final c:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

.field public final d:Ljava/lang/Double;

.field public final e:Ljava/lang/Double;

.field public final f:J


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;Lio/bidmachine/rendering/model/engagedclick/ProfileSource;Ljava/lang/Double;Ljava/lang/Double;J)V
    .registers 9

    const-string v0, "engagedClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->b:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->c:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->d:Ljava/lang/Double;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->e:Ljava/lang/Double;

    .line 7
    iput-wide p6, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->f:J

    return-void
.end method


# virtual methods
.method public final getAmbientDiff()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public final getDiffScore()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public final getEngagedClickAction()Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    return-object v0
.end method

.method public final getInteractionDurationMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->f:J

    return-wide v0
.end method

.method public final getProfile()Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->b:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    return-object v0
.end method

.method public final getSource()Lio/bidmachine/rendering/model/engagedclick/ProfileSource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->c:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "engagedClickAction - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->a:Lio/bidmachine/rendering/model/engagedclick/EngagedClickAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->b:Lio/bidmachine/rendering/model/engagedclick/CreativeProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->c:Lio/bidmachine/rendering/model/engagedclick/ProfileSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diffScore - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->d:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ambientDiff - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->e:Ljava/lang/Double;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ", interactionDurationMs - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickReport;->f:J

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
