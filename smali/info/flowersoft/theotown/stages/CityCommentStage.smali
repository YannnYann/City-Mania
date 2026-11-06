###### Class info.flowersoft.theotown.stages.CityCommentStage (info.flowersoft.theotown.stages.CityCommentStage)
.class public Linfo/flowersoft/theotown/stages/CityCommentStage;
.super Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.source "CityCommentStage.java"


# instance fields
.field public final cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

.field public final mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 6

    .line 25
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;I)V

    .line 26
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 27
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 28
    new-instance p2, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    .line 29
    new-instance p1, Linfo/flowersoft/theotown/stages/CityCommentStage$1;

    invoke-direct {p1, p0, p3}, Linfo/flowersoft/theotown/stages/CityCommentStage$1;-><init>(Linfo/flowersoft/theotown/stages/CityCommentStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    return-void
.end method


# virtual methods
.method public beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 10

    .line 129
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->title:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 132
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityAuthor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 133
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityAuthorColor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ZLinfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    .line 129
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public enter()V
    .registers 2

    .line 117
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

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

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->fetchCityComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public getOwnerId()I
    .registers 3

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v0

    return v0
.end method

.method public getTargetIdentifier()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "city"

    return-object v0
.end method

.method public hasReportedComment(I)Z
    .registers 3

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->hasReportedComment(I)Z

    move-result p1

    return p1
.end method

.method public isLocked()Z
    .registers 3

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->isCityCommentsAllowed(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .registers 2

    .line 123
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->leave()V

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->release()V

    return-void
.end method

.method public sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->commentCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->setCityAllowComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

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

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage;->ucc:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 140
    const-string v0, "CityCommentStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CityCommentStage.AnonymousClass1 (info.flowersoft.theotown.stages.CityCommentStage$1)
.class public Linfo/flowersoft/theotown/stages/CityCommentStage$1;
.super Ljava/lang/Object;
.source "CityCommentStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityCommentStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityCommentStage;

.field public final synthetic val$cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityCommentStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityCommentStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->val$cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 5

    .line 33
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->release()V

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->val$cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    return-void
.end method

.method public release()V
    .registers 2

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    if-eqz v0, :cond_a

    .line 54
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->release()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityCommentStage$1;->renderer:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    :cond_a
    return-void
.end method
