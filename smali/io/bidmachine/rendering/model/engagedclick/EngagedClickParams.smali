###### Class io.bidmachine.rendering.model.engagedclick.EngagedClickParams (io.bidmachine.rendering.model.engagedclick.EngagedClickParams)
.class public final Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

.field public final c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

.field public final d:Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;

.field public final e:Z


# direct methods
.method public constructor <init>(JLio/bidmachine/rendering/model/engagedclick/VisualConfig;Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;Z)V
    .registers 8

    const-string v0, "creativeProfileInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->a:J

    .line 3
    iput-object p3, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->b:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    .line 4
    iput-object p4, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    .line 5
    iput-object p5, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->d:Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;

    .line 6
    iput-boolean p6, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(JLio/bidmachine/rendering/model/engagedclick/VisualConfig;Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 7
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;-><init>(JLio/bidmachine/rendering/model/engagedclick/VisualConfig;Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;Z)V

    return-void
.end method


# virtual methods
.method public final getCreativeProfileInfo()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->c:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-object v0
.end method

.method public final getEngagedClickTrackingObject()Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->d:Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;

    return-object v0
.end method

.method public final getInteractionWindowMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->a:J

    return-wide v0
.end method

.method public final getVisualConfig()Lio/bidmachine/rendering/model/engagedclick/VisualConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->b:Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    return-object v0
.end method

.method public final isReclassifyByAdm()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->e:Z

    return v0
.end method
