###### Class info.flowersoft.theotown.stages.GalleryCommentStage (info.flowersoft.theotown.stages.GalleryCommentStage)
.class public Linfo/flowersoft/theotown/stages/GalleryCommentStage;
.super Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.source "GalleryCommentStage.java"


# instance fields
.field public final imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

.field public final screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

.field public final store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V
    .registers 7

    .line 21
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    .line 23
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 24
    new-instance p2, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    .line 25
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    return-void
.end method


# virtual methods
.method public beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 10

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;

    .line 93
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->title:Ljava/lang/String;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v6, 0x0

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    const-string v4, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ZLinfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    .line 92
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public enter()V
    .registers 2

    .line 80
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->prepare()V

    return-void
.end method

.method public fetch(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
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

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->store:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchComments(ILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public getOwnerId()I
    .registers 2

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOwnerId()I

    move-result v0

    return v0
.end method

.method public getTargetIdentifier()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gallery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasReportedComment(I)Z
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->hasReportedComment(I)Z

    move-result p1

    return p1
.end method

.method public isLocked()Z
    .registers 2

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->allowsComments()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .registers 2

    .line 86
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->leave()V

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->release()V

    return-void
.end method

.method public sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->comment(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->setAllowComments(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

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

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/GalleryCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "GalleryCommentStage"

    return-object v0
.end method
