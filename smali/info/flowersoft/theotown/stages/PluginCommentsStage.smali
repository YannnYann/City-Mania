###### Class info.flowersoft.theotown.stages.PluginCommentsStage (info.flowersoft.theotown.stages.PluginCommentsStage)
.class public Linfo/flowersoft/theotown/stages/PluginCommentsStage;
.super Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.source "PluginCommentsStage.java"


# instance fields
.field public final imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

.field public final mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final plugin:Linfo/flowersoft/theotown/store/StorePlugin;

.field public final service:Linfo/flowersoft/theotown/backend/Service;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/store/StorePlugin;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V
    .registers 6

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/StorePlugin;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;I)V

    .line 19
    new-instance p1, Linfo/flowersoft/theotown/backend/Service;

    const-string v0, "store/manage_store"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    .line 20
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    .line 27
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 28
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/PluginCommentsStage;)Linfo/flowersoft/theotown/store/StorePlugin;
    .registers 1

    .line 17
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    return-object p0
.end method


# virtual methods
.method public beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 10

    .line 156
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;

    .line 157
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 158
    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/StorePlugin;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 159
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthor()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 160
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 161
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->isFeatured()Z

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ZLinfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    .line 156
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public enter()V
    .registers 2

    .line 144
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

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

    .line 38
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;-><init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result p1

    const-string p2, "ingame"

    .line 38
    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchComments(Linfo/flowersoft/theotown/backend/ResponseHandler;ILjava/lang/String;)V

    return-void
.end method

.method public getCannotCommentReason(Linfo/flowersoft/theotown/backend/User;)Ljava/lang/String;
    .registers 6

    .line 130
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->getCannotCommentReason(Linfo/flowersoft/theotown/backend/User;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    if-eqz p1, :cond_24

    .line 133
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v0

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 135
    :goto_25
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result v0

    if-nez v0, :cond_40

    if-nez p1, :cond_40

    .line 136
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0x760

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOwnerId()I
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result v0

    return v0
.end method

.method public getTargetIdentifier()Ljava/lang/String;
    .registers 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasReportedComment(I)Z
    .registers 3

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isCommentReported(I)Z

    move-result p1

    return p1
.end method

.method public isLocked()Z
    .registers 2

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->allowsComments()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public leave()V
    .registers 2

    .line 150
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->leave()V

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->release()V

    return-void
.end method

.method public sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 54
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    const-string v2, "plugin"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 55
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getRevisionId()I

    move-result v1

    const-string v2, "revision"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "content"

    .line 56
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    .line 59
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "delete comment"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "comment"

    .line 65
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    .line 68
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "set allow comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 74
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    const-string v2, "plugin"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 77
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->service:Linfo/flowersoft/theotown/backend/Service;

    new-instance v2, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;

    invoke-direct {v2, p0, p1, p2}, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;-><init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    .line 89
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
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

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    new-instance v2, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;

    invoke-direct {v2, p0, p3, p4}, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;-><init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportComment(IILjava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 167
    const-string v0, "GalleryCommentStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.PluginCommentsStage.AnonymousClass1 (info.flowersoft.theotown.stages.PluginCommentsStage$1)
.class public Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;
.super Ljava/lang/Object;
.source "PluginCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginCommentsStage;->fetch(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/PluginCommentsStage$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginCommentsStage.AnonymousClass2 (info.flowersoft.theotown.stages.PluginCommentsStage$2)
.class public Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;
.super Ljava/lang/Object;
.source "PluginCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginCommentsStage;->sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

.field public final synthetic val$state:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->val$state:Z

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginCommentsStage;->access$000(Linfo/flowersoft/theotown/stages/PluginCommentsStage;)Linfo/flowersoft/theotown/store/StorePlugin;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->val$state:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StorePlugin;->setAllowComments(Z)V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$2;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginCommentsStage.AnonymousClass3 (info.flowersoft.theotown.stages.PluginCommentsStage$3)
.class public Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;
.super Ljava/lang/Object;
.source "PluginCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginCommentsStage;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginCommentsStage;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->this$0:Linfo/flowersoft/theotown/stages/PluginCommentsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 102
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/PluginCommentsStage$3;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method
