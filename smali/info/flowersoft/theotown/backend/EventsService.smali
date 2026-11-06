###### Class info.flowersoft.theotown.backend.EventsService (info.flowersoft.theotown.backend.EventsService)
.class public Linfo/flowersoft/theotown/backend/EventsService;
.super Linfo/flowersoft/theotown/backend/Service;
.source "EventsService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    const-string v0, "user/events.php"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 48
    const-string v0, "get event"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 49
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 50
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/backend/EventsService$2;

    invoke-direct {v0, p0, p4, p2, p3}, Linfo/flowersoft/theotown/backend/EventsService$2;-><init>(Linfo/flowersoft/theotown/backend/EventsService;Lio/blueflower/stapel2d/util/Setter;II)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

.method public logs(Ljava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/mechanics/LogEntry;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 23
    const-string v0, "logs"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v1

    .line 24
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    .line 25
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_26

    .line 27
    :try_start_12
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/mechanics/LogEntry;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/mechanics/LogEntry;->save(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 29
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;
    :try_end_23
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_12 .. :try_end_23} :catch_23

    :catch_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 32
    :cond_26
    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 34
    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/backend/EventsService$1;

    invoke-direct {v0, p0, p2, p3}, Linfo/flowersoft/theotown/backend/EventsService$1;-><init>(Linfo/flowersoft/theotown/backend/EventsService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

.method public maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Linfo/flowersoft/theotown/backend/Backend$Task;"
        }
    .end annotation

    .line 84
    const-string v0, "max event"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/backend/Service;->buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    move-result-object v0

    .line 85
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 86
    const-string p1, "amount"

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    .line 87
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->build()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/backend/EventsService$4;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/backend/EventsService$4;-><init>(Linfo/flowersoft/theotown/backend/EventsService;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.backend.EventsService.AnonymousClass1 (info.flowersoft.theotown.backend.EventsService$1)
.class public Linfo/flowersoft/theotown/backend/EventsService$1;
.super Ljava/lang/Object;
.source "EventsService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/EventsService;->logs(Ljava/util/List;Ljava/lang/Runnable;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/EventsService;

.field public final synthetic val$onFailure:Ljava/lang/Runnable;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/EventsService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$1;->this$0:Linfo/flowersoft/theotown/backend/EventsService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/EventsService$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/backend/EventsService$1;->val$onFailure:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 42
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$1;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 37
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.EventsService.AnonymousClass2 (info.flowersoft.theotown.backend.EventsService$2)
.class public Linfo/flowersoft/theotown/backend/EventsService$2;
.super Ljava/lang/Object;
.source "EventsService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/EventsService;->getEvent(Ljava/lang/String;IILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/EventsService;

.field public final synthetic val$fallback_else:I

.field public final synthetic val$fallback_new:I

.field public final synthetic val$receiver:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/EventsService;Lio/blueflower/stapel2d/util/Setter;II)V
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

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->this$0:Linfo/flowersoft/theotown/backend/EventsService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    iput p3, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$fallback_new:I

    iput p4, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$fallback_else:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 58
    const-string v0, "status"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "could not find"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_25

    iget-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    iget v2, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$fallback_new:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 61
    :cond_25
    iget-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    iget v2, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$fallback_else:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/EventsService$2;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    const-string v2, "amount"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "change_time"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.backend.EventsService.AnonymousClass4 (info.flowersoft.theotown.backend.EventsService$4)
.class public Linfo/flowersoft/theotown/backend/EventsService$4;
.super Ljava/lang/Object;
.source "EventsService.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/backend/EventsService;->maxEvent(Ljava/lang/String;ILio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/backend/Backend$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/backend/EventsService;

.field public final synthetic val$receiver:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/backend/EventsService;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/EventsService$4;->this$0:Linfo/flowersoft/theotown/backend/EventsService;

    iput-object p2, p0, Linfo/flowersoft/theotown/backend/EventsService$4;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 7

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/EventsService$4;->val$receiver:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    const-string v2, "amount"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "change_time"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method
