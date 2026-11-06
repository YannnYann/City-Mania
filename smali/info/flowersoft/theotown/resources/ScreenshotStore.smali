###### Class info.flowersoft.theotown.resources.ScreenshotStore (info.flowersoft.theotown.resources.ScreenshotStore)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;
    }
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public currentMode:I

.field public currentUserId:J

.field public final executor:Ljava/util/concurrent/Executor;

.field public fetchingCounter:I

.field public final onlineFileStore:Linfo/flowersoft/theotown/util/OnlineFileStore;

.field public final pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

.field public final postponedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;",
            ">;"
        }
    .end annotation
.end field

.field public final service:Linfo/flowersoft/theotown/backend/Service;


# direct methods
.method public static synthetic $r8$lambda$4_MKw0bBjAP5qnpSmy4Ex8HgcqA(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const-string v0, "trends"

    const-string v1, "recent"

    const-string v2, "user"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gallery/list_screenshots?c=true&mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&user_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_39
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->getConnector()Linfo/flowersoft/theotown/backend/BackendConnector;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/backend/BackendConnector;->EMPTY_REQUEST:Linfo/flowersoft/theotown/backend/Request;

    sget-object v3, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    new-instance v4, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V

    .line 131
    invoke-static {v4}, Linfo/flowersoft/theotown/backend/BackendConnector;->buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object p0

    .line 128
    invoke-virtual {v1, v0, v2, v3, p0}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3epM5jcYqP5YxhM8IWqpOR2534(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 274
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetch()V

    :cond_14
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "gallery/rate_screenshot"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->service:Linfo/flowersoft/theotown/backend/Service;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentMode:I

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->executor:Ljava/util/concurrent/Executor;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    .line 352
    new-instance v0, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 59
    new-instance p1, Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/OnlineFileStore;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->onlineFileStore:Linfo/flowersoft/theotown/util/OnlineFileStore;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Lcom/badlogic/gdx/utils/IntIntMap;
    .registers 1

    .line 33
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->delete(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    return-void
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;
    .registers 1

    .line 33
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1210(Linfo/flowersoft/theotown/resources/ScreenshotStore;)I
    .registers 3

    .line 33
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchingCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchingCounter:I

    return v0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/resources/ScreenshotStore;)I
    .registers 1

    .line 33
    iget p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentMode:I

    return p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/Runnable;)V
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->addPostponedTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;
    .registers 1

    .line 33
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->getImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;I)V
    .registers 3

    .line 33
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->rate(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;I)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->comment(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->setAllowComments(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method


# virtual methods
.method public final addPostponedTask(Ljava/lang/Runnable;)V
    .registers 4

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    monitor-enter v0

    .line 64
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final comment(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "screenshot_id"

    .line 245
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    const-string v0, "content"

    .line 246
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 247
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->service:Linfo/flowersoft/theotown/backend/Service;

    invoke-virtual {v0, p1, p3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public final delete(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 6

    .line 269
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 271
    :try_start_5
    const-string v1, "screenshot_id"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 272
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/backend/Backend$Task;

    const-string v2, "gallery/remove_screenshot"

    new-instance v3, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V

    invoke-direct {v1, v2, v0, v3}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    :try_end_21
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public fetch()V
    .registers 1

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchScreenshots()V

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchRatings()V

    return-void
.end method

.method public fetchComments(ILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gallery/list_screenshots?c=true&img_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getConnector()Linfo/flowersoft/theotown/backend/BackendConnector;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/backend/BackendConnector;->EMPTY_REQUEST:Linfo/flowersoft/theotown/backend/Request;

    sget-object v2, Linfo/flowersoft/theotown/backend/BackendConnector;->COLLECT_COMPRESSED_TEXT:Linfo/flowersoft/theotown/backend/ResponseCollector;

    new-instance v3, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;

    invoke-direct {v3, p0, p2, p3}, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    .line 97
    invoke-static {v3}, Linfo/flowersoft/theotown/backend/BackendConnector;->buildJSONAdapter(Linfo/flowersoft/theotown/backend/ResponseHandler;)Linfo/flowersoft/theotown/backend/ResponseHandler;

    move-result-object p2

    .line 94
    invoke-virtual {v0, p1, v1, v2, p2}, Linfo/flowersoft/theotown/backend/BackendConnector;->sendRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Request;Linfo/flowersoft/theotown/backend/ResponseCollector;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public fetchRatings()V
    .registers 6

    .line 198
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    .line 199
    new-instance v1, Linfo/flowersoft/theotown/backend/Backend$Task;

    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    new-instance v3, Linfo/flowersoft/theotown/resources/ScreenshotStore$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$3;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V

    const-string v4, "gallery/get_ratings"

    invoke-direct {v1, v4, v2, v3}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public fetchScreenshots()V
    .registers 4

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentMode:I

    .line 121
    iget v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchingCounter:I

    .line 123
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;
    .registers 8

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->onlineFileStore:Linfo/flowersoft/theotown/util/OnlineFileStore;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/OnlineFileStore;->request(Ljava/lang/String;I)[B

    move-result-object p2

    if-eqz p2, :cond_31

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->pixmapLoader:Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadPixmap(Ljava/lang/String;[BZ)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 362
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    .line 363
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    .line 364
    new-instance v3, Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    invoke-direct {v3, v1, v2}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;-><init>(II)V

    .line 366
    new-instance v4, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;

    invoke-direct {v4, p0, v0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Lcom/badlogic/gdx/graphics/Pixmap;Ljava/lang/String;[B)V

    const/4 p1, 0x0

    invoke-virtual {v3, v4, p1, p1}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;II)V

    .line 380
    new-instance p1, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p1, v3}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 381
    invoke-static {p1, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->createSingleFrame(Lio/blueflower/stapel2d/drawing/Texture;II)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p1

    return-object p1

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .registers 2

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentMode:I

    return v0
.end method

.method public getScreenshots()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    return-object v0
.end method

.method public isFetching()Z
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchingCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final rate(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;I)V
    .registers 7

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v1

    sub-int v1, p2, v1

    .line 222
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshotRatings:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 223
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->getOverallRating()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->setOverallRating(I)V

    .line 224
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_4e

    .line 225
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 227
    :try_start_27
    const-string v1, "screenshot_id"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 228
    const-string p1, "rating"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/backend/Backend$Task;

    const-string v1, "gallery/rate_screenshot"

    new-instance v2, Linfo/flowersoft/theotown/resources/ScreenshotStore$4;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$4;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V

    invoke-direct {p2, v1, v0, v2}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V
    :try_end_48
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_27 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_4e
    move-exception p1

    .line 224
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public releaseAllTextures()V
    .registers 4

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 333
    :goto_4
    :try_start_4
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 334
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 335
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseTextures(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_1a
    move-exception v1

    goto :goto_1e

    .line 337
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1a

    throw v1
.end method

.method public releaseTextures(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 6

    .line 318
    :try_start_0
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$300(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$300(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 320
    invoke-static {p1, v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$302(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;

    goto :goto_1f

    :catch_1d
    move-exception p1

    goto :goto_3a

    .line 322
    :cond_1f
    :goto_1f
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$200(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 323
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$200(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 324
    invoke-static {p1, v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$202(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_1d

    return-void

    .line 327
    :goto_3a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3d
    return-void
.end method

.method public final setAllowComments(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 8

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->service:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "set allow comments"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    const-string v1, "screenshot_id"

    .line 252
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 253
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "allow"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 254
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->service:Linfo/flowersoft/theotown/backend/Service;

    new-instance v3, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;

    invoke-direct {v3, p0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-virtual {v2, v0, v3}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

.method public switchMode(IJ)V
    .registers 5

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    monitor-enter v0

    .line 78
    :try_start_3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseAllTextures()V

    .line 79
    iput p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentMode:I

    .line 80
    iput-wide p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->currentUserId:J

    .line 81
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchScreenshots()V

    .line 83
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public tidyTexturesUp()V
    .registers 2

    const/16 v0, 0xa

    .line 283
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->tidyTexturesUp(I)V

    return-void
.end method

.method public tidyTexturesUp(I)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 287
    iget-object v2, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    monitor-enter v2

    .line 288
    :try_start_7
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    .line 291
    :goto_f
    iget-object v9, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_57

    .line 292
    iget-object v9, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->screenshots:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 293
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$200(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v10

    if-nez v10, :cond_2e

    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$300(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v10

    if-eqz v10, :cond_54

    goto :goto_2e

    :catchall_2c
    move-exception v0

    goto :goto_87

    .line 294
    :cond_2e
    :goto_2e
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$400(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)J

    move-result-wide v10

    sub-long v10, v3, v10

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    cmp-long v12, v10, v12

    if-lez v12, :cond_4a

    .line 295
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$400(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-eqz v12, :cond_4a

    .line 296
    invoke-virtual {v1, v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseTextures(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    goto :goto_54

    :cond_4a
    int-to-long v12, v8

    mul-long/2addr v12, v14

    cmp-long v9, v10, v12

    if-lez v9, :cond_52

    .line 299
    div-long/2addr v10, v14

    long-to-int v8, v10

    :cond_52
    add-int/lit8 v7, v7, 0x1

    :cond_54
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_57
    const/16 v3, 0x10

    if-le v7, v3, :cond_62

    if-lez v8, :cond_62

    if-ge v8, v0, :cond_62

    .line 305
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->tidyTexturesUp(I)V

    .line 306
    :cond_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_2c

    .line 308
    iget-object v3, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    monitor-enter v3

    .line 309
    :goto_66
    :try_start_66
    iget-object v0, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7e

    .line 310
    iget-object v0, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    :catchall_7c
    move-exception v0

    goto :goto_85

    .line 312
    :cond_7e
    iget-object v0, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore;->postponedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    monitor-exit v3

    return-void

    :goto_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_66 .. :try_end_86} :catchall_7c

    throw v0

    .line 306
    :goto_87
    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_2c

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass1 (info.flowersoft.theotown.resources.ScreenshotStore$1)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$1;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchComments(ILio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 97
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

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

    .line 97
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass2 (info.flowersoft.theotown.resources.ScreenshotStore$2)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$2;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchScreenshots()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final synthetic val$mode:I


# direct methods
.method public static synthetic $r8$lambda$ApoMra_x23qLyQd4iODaYlZnLlU(Linfo/flowersoft/theotown/resources/ScreenshotStore$2;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 2

    .line 180
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    .line 180
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->releaseTextures(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V
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

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iput p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    .line 187
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "General"

    invoke-interface {v0, v1, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 189
    :try_start_e
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1210(Linfo/flowersoft/theotown/resources/ScreenshotStore;)I

    .line 190
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 24

    move-object/from16 v1, p0

    .line 134
    const-string v0, "screenshots"

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 135
    iget-object v2, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 136
    :try_start_11
    iget-object v3, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1210(Linfo/flowersoft/theotown/resources/ScreenshotStore;)I

    .line 137
    iget v3, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->val$mode:I

    iget-object v4, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v4}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1300(Linfo/flowersoft/theotown/resources/ScreenshotStore;)I

    move-result v4

    if-eq v3, v4, :cond_25

    monitor-exit v2

    return-void

    :catchall_22
    move-exception v0

    goto/16 :goto_f5

    .line 138
    :cond_25
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v4}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    iget-object v4, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v4}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    move v5, v4

    .line 140
    :goto_3b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_da

    .line 141
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_d6

    .line 143
    const-string v7, "meta"

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v21

    if-eqz v21, :cond_d6

    .line 145
    new-instance v8, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    iget-object v9, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    const-string v7, "id"

    .line 146
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v7, "name"

    .line 147
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "owner_id"

    .line 148
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "user_name"

    .line 149
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "rating"

    .line 150
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v7, "image"

    .line 151
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "thumbnail"

    .line 152
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v7, "creation_time"

    .line 153
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v7, "comments"

    .line 154
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    const-string v7, "allow_comments"

    .line 155
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_95

    const/4 v6, 0x1

    move/from16 v20, v6

    goto :goto_97

    :cond_95
    move/from16 v20, v4

    :goto_97
    invoke-direct/range {v8 .. v21}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLinfo/flowersoft/theotown/util/json/JSONObject;)V

    const/4 v6, 0x0

    move v7, v4

    move-object v9, v6

    .line 159
    :goto_9d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_bd

    if-nez v9, :cond_bd

    .line 160
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 161
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result v10

    invoke-static {v8}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result v11

    if-ne v10, v11, :cond_b9

    .line 162
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ba

    :cond_b9
    move-object v9, v6

    :goto_ba
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    :cond_bd
    if-eqz v9, :cond_cd

    .line 169
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$200(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v6

    invoke-static {v8, v6}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$202(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;

    .line 170
    invoke-static {v9}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$300(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v6

    invoke-static {v8, v6}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->access$302(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;

    .line 173
    :cond_cd
    iget-object v6, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v6}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1100(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3b

    .line 178
    :cond_da
    :goto_da
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_f3

    .line 179
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    .line 180
    iget-object v5, v1, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    new-instance v6, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/ScreenshotStore$2;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1400(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_da

    .line 182
    :cond_f3
    monitor-exit v2

    return-void

    :goto_f5
    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_11 .. :try_end_f6} :catchall_22

    throw v0
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

    .line 131
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.ScreenshotStore$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore$2;

.field public final synthetic f$1:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore$2;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$2$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$2;->$r8$lambda$ApoMra_x23qLyQd4iODaYlZnLlU(Linfo/flowersoft/theotown/resources/ScreenshotStore$2;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass3 (info.flowersoft.theotown.resources.ScreenshotStore$3)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$3;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchRatings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$3;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7

    .line 202
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 203
    const-string p1, "ratings"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    .line 204
    iget-object p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$3;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$000(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object p2

    monitor-enter p2

    const/4 v0, 0x0

    .line 205
    :goto_1c
    :try_start_1c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 206
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 208
    const-string v2, "screenshot_id"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 209
    const-string v3, "rating"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 210
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$3;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$000(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_40

    :catchall_3e
    move-exception p1

    goto :goto_45

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 213
    :cond_43
    monitor-exit p2

    return-void

    :goto_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_3e

    throw p1

    :cond_47
    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass4 (info.flowersoft.theotown.resources.ScreenshotStore$4)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$4;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->rate(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$4;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 232
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$4;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchRatings()V

    .line 235
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$4;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->fetchScreenshots()V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass5 (info.flowersoft.theotown.resources.ScreenshotStore$5)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$5;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->setAllowComments(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final synthetic val$allow:Z

.field public final synthetic val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

.field public final synthetic val$screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 254
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$allow:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$screenshot:Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$allow:Z

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->setAllowComments(Z)V

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$5;->val$handler:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.AnonymousClass6 (info.flowersoft.theotown.resources.ScreenshotStore$6)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$6;
.super Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.source "ScreenshotStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;->getImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final synthetic val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final synthetic val$data:[B

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;Lcom/badlogic/gdx/graphics/Pixmap;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 366
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iput-object p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$url:Ljava/lang/String;

    iput-object p4, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$data:[B

    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 5

    .line 369
    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 370
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$500(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$url:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$6;->val$data:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/resources/PostponedPixmapLoader;->loadPixmap(Ljava/lang/String;[BZ)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    :cond_17
    return-object p1
.end method

.method public isAsync()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore.Screenshot (info.flowersoft.theotown.resources.ScreenshotStore$Screenshot)
.class public Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;
.super Ljava/lang/Object;
.source "ScreenshotStore.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/ScreenshotStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Screenshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;",
        ">;"
    }
.end annotation


# instance fields
.field public allowComments:Z

.field public final comments:I

.field public final creationTime:J

.field public final id:I

.field public imageImg:Lio/blueflower/stapel2d/drawing/Image;

.field public final imageUrl:Ljava/lang/String;

.field public lastDrawn:J

.field public final meta:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final name:Ljava/lang/String;

.field public final owner_id:I

.field public rating:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

.field public final thumbnailUrl:Ljava/lang/String;

.field public final user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLinfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    .line 406
    iput-object p3, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->name:Ljava/lang/String;

    .line 407
    iput p4, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->owner_id:I

    .line 408
    iput-object p5, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->user_name:Ljava/lang/String;

    .line 409
    iput p6, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rating:I

    .line 410
    iput-object p7, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageUrl:Ljava/lang/String;

    .line 411
    iput-object p8, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailUrl:Ljava/lang/String;

    .line 412
    iput-wide p9, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->creationTime:J

    .line 413
    iput p11, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->comments:I

    .line 414
    iput-boolean p12, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->allowComments:Z

    .line 415
    iput-object p13, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I
    .registers 1

    .line 388
    iget p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 388
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageImg:Lio/blueflower/stapel2d/drawing/Image;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 388
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageImg:Lio/blueflower/stapel2d/drawing/Image;

    return-object p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 388
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Lio/blueflower/stapel2d/drawing/Image;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 388
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

    return-object p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)J
    .registers 3

    .line 388
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->lastDrawn:J

    return-wide v0
.end method


# virtual methods
.method public allowsComments()Z
    .registers 2

    .line 473
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->allowComments:Z

    return v0
.end method

.method public comment(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0, p0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$800(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public compareTo(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I
    .registers 6

    .line 508
    iget-wide v0, p1, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->creationTime:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->creationTime:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 388
    check-cast p1, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->compareTo(Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)I

    move-result p1

    return p1
.end method

.method public delete()V
    .registers 2

    .line 489
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0, p0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$1000(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 503
    instance-of v0, p1, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    if-eqz v0, :cond_e

    check-cast p1, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;

    iget p1, p1, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public getComments()I
    .registers 2

    .line 469
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->comments:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 419
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    return v0
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 4

    .line 431
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageImg:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz v0, :cond_5

    return-object v0

    .line 432
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$600(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->imageImg:Lio/blueflower/stapel2d/drawing/Image;

    .line 433
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz v0, :cond_15

    return-object v0

    .line 434
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailUrl:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$600(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 423
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverallRating()I
    .registers 2

    .line 461
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rating:I

    return v0
.end method

.method public getOwnRating()I
    .registers 5

    .line 455
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$000(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object v0

    monitor-enter v0

    .line 456
    :try_start_7
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$000(Linfo/flowersoft/theotown/resources/ScreenshotStore;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    .line 457
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getOwnerId()I
    .registers 2

    .line 493
    iget v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->owner_id:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public indicateUsage()V
    .registers 3

    .line 485
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->lastDrawn:J

    return-void
.end method

.method public isMyOwn()Z
    .registers 5

    .line 497
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->owner_id:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public prefetchThumbnail()V
    .registers 4

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailImg:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v0, :cond_d

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->thumbnailUrl:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$600(Linfo/flowersoft/theotown/resources/ScreenshotStore;Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    :cond_d
    return-void
.end method

.method public rate(I)V
    .registers 3

    .line 443
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0, p0, p1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$700(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;I)V

    return-void
.end method

.method public setAllowComments(Z)V
    .registers 2

    .line 477
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->allowComments:Z

    return-void
.end method

.method public setAllowComments(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 4

    .line 451
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->this$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0, p0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->access$900(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public setOverallRating(I)V
    .registers 2

    .line 465
    iput p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$Screenshot;->rating:I

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda0 (info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iput p2, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    iget v1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->$r8$lambda$4_MKw0bBjAP5qnpSmy4Ex8HgcqA(Linfo/flowersoft/theotown/resources/ScreenshotStore;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda1 (info.flowersoft.theotown.resources.ScreenshotStore$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/ScreenshotStore;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    return-void
.end method


# virtual methods
.method public final receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/ScreenshotStore$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/resources/ScreenshotStore;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/resources/ScreenshotStore;->$r8$lambda$v3epM5jcYqP5YxhM8IWqpOR2534(Linfo/flowersoft/theotown/resources/ScreenshotStore;Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method
