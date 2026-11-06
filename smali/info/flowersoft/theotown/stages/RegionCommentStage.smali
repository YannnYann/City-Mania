###### Class info.flowersoft.theotown.stages.RegionCommentStage (info.flowersoft.theotown.stages.RegionCommentStage)
.class public Linfo/flowersoft/theotown/stages/RegionCommentStage;
.super Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.source "RegionCommentStage.java"


# instance fields
.field public imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

.field public final mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V
    .registers 5

    .line 19
    sget p4, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    invoke-direct {p0, p1, p2, p4}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 21
    new-instance p2, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    return-void
.end method


# virtual methods
.method public beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 10

    .line 88
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;

    .line 89
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->title:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 91
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 92
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ZLinfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    .line 88
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public enter()V
    .registers 2

    .line 76
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->prepare()V

    :cond_a
    return-void
.end method

.method public fetch(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->fetchComments(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public getOwnerId()I
    .registers 2

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v0

    return v0
.end method

.method public getTargetIdentifier()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "region:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasReportedComment(I)Z
    .registers 3

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->hasReportedComment(I)Z

    move-result p1

    return p1
.end method

.method public isLocked()Z
    .registers 2

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->allowsComments()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .registers 2

    .line 82
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->leave()V

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->release()V

    :cond_a
    return-void
.end method

.method public sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->comment(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->setRegionAllowComments(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, "GalleryCommentStage"

    return-object v0
.end method
