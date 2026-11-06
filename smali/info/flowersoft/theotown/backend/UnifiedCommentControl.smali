###### Class info.flowersoft.theotown.backend.UnifiedCommentControl (info.flowersoft.theotown.backend.UnifiedCommentControl)
.class public Linfo/flowersoft/theotown/backend/UnifiedCommentControl;
.super Ljava/lang/Object;
.source "UnifiedCommentControl.java"


# static fields
.field public static final MANAGE_SERVICE:Linfo/flowersoft/theotown/backend/Service;

.field public static final REPORT_SERVICE:Linfo/flowersoft/theotown/backend/Service;


# instance fields
.field public final reportedComments:Lcom/badlogic/gdx/utils/IntSet;

.field public final ssp:Linfo/flowersoft/theotown/util/SSP;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "user/manage_comment"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->MANAGE_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "user/report_comment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->REPORT_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    .line 22
    new-instance p1, Linfo/flowersoft/theotown/util/SSP;

    const-string v0, "commentcontrol"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 23
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->load()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)V
    .registers 1

    .line 12
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->load()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)Lcom/badlogic/gdx/utils/IntSet;
    .registers 1

    .line 12
    iget-object p0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)V
    .registers 1

    .line 12
    invoke-virtual {p0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->save()V

    return-void
.end method


# virtual methods
.method public hasReportedComment(I)Z
    .registers 3

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized load()V
    .registers 6

    monitor-enter p0

    .line 28
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v1

    const-string v2, "reported comments"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 29
    :goto_16
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 30
    iget-object v3, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_28
    move-exception v0

    goto :goto_37

    :catch_2a
    move-exception v0

    goto :goto_32

    .line 32
    :cond_2c
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z
    :try_end_31
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_1 .. :try_end_31} :catch_2a
    .catchall {:try_start_1 .. :try_end_31} :catchall_28

    goto :goto_35

    .line 34
    :goto_32
    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_28

    .line 36
    :goto_35
    monitor-exit p0

    return-void

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_28

    throw v0
.end method

.method public final declared-synchronized save()V
    .registers 4

    monitor-enter p0

    .line 39
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->reportedComments:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v1

    .line 41
    :goto_c
    iget-boolean v2, v1, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v2, :cond_1a

    .line 42
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_c

    :catchall_18
    move-exception v0

    goto :goto_2e

    .line 45
    :cond_1a
    iget-object v1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v1

    .line 46
    const-string v2, "reported comments"

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_18

    .line 48
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_18

    throw v0
.end method

.method public sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 6

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->MANAGE_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "id"

    .line 55
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 56
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

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

    .line 64
    sget-object v0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->REPORT_SERVICE:Linfo/flowersoft/theotown/backend/Service;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "id"

    .line 65
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    const-string v2, "reason"

    .line 66
    invoke-virtual {v1, v2, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;

    invoke-direct {v2, p0, p1, p3, p4}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;-><init>(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;ILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, p2, v2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/backend/Backend$Task;->setUserBound(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    .line 67
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/backend/Backend;->addTask(Linfo/flowersoft/theotown/backend/Backend$Task;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.UnifiedCommentControl.AnonymousClass1 (info.flowersoft.theotown.backend.UnifiedCommentControl$1)
.class public Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;
.super Ljava/lang/Object;
.source "UnifiedCommentControl.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

.field public final synthetic val$commentId:I

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;ILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 67
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    iput p2, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$commentId:I

    iput-object p3, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p4, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "status"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    monitor-enter p1

    .line 71
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->access$000(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)V

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->access$100(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$commentId:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->this$0:Linfo/flowersoft/theotown/backend/UnifiedCommentControl;

    invoke-static {v0}, Linfo/flowersoft/theotown/backend/UnifiedCommentControl;->access$200(Linfo/flowersoft/theotown/backend/UnifiedCommentControl;)V

    .line 74
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 75
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/UnifiedCommentControl$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1f
    move-exception v0

    .line 74
    :try_start_20
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method
