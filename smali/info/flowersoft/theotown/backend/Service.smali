###### Class info.flowersoft.theotown.backend.Service (info.flowersoft.theotown.backend.Service)
.class public Linfo/flowersoft/theotown/backend/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/backend/Service$RequestBuilder;,
        Linfo/flowersoft/theotown/backend/Service$Handler;
    }
.end annotation


# instance fields
.field public final script:Ljava/lang/String;

.field public final secured:Z


# direct methods
.method public static synthetic $r8$lambda$2VmXnbE2vgffllwpR4oD1qvkHS0(Linfo/flowersoft/theotown/backend/Service$Handler;Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    if-eqz p0, :cond_17

    .line 31
    const-string p1, "status"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 32
    invoke-interface {p0, p2}, Linfo/flowersoft/theotown/backend/Service$Handler;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void

    .line 34
    :cond_14
    invoke-interface {p0, p2}, Linfo/flowersoft/theotown/backend/Service$Handler;->onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/backend/Service;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Service;->script:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Linfo/flowersoft/theotown/backend/Service;->secured:Z

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
    .registers 4

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$1;)V

    return-object v0
.end method

.method public buildTask(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Service$Handler;)Linfo/flowersoft/theotown/backend/Backend$Task;
    .registers 6

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/backend/Backend$Task;

    iget-object v1, p0, Linfo/flowersoft/theotown/backend/Service;->script:Ljava/lang/String;

    new-instance v2, Linfo/flowersoft/theotown/backend/Service$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Linfo/flowersoft/theotown/backend/Service$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/backend/Service$Handler;)V

    invoke-direct {v0, v1, p1, v2}, Linfo/flowersoft/theotown/backend/Backend$Task;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;)V

    .line 38
    iget-boolean p1, p0, Linfo/flowersoft/theotown/backend/Service;->secured:Z

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/backend/Backend$Task;->setSecured(Z)Linfo/flowersoft/theotown/backend/Backend$Task;

    return-object v0
.end method

###### Class info.flowersoft.theotown.backend.Service.AnonymousClass1 (info.flowersoft.theotown.backend.Service$1)
.class public synthetic Linfo/flowersoft/theotown/backend/Service$1;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.backend.Service.Handler (info.flowersoft.theotown.backend.Service$Handler)
.class public interface abstract Linfo/flowersoft/theotown/backend/Service$Handler;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end method

.method public abstract onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end method

###### Class info.flowersoft.theotown.backend.Service.RequestBuilder (info.flowersoft.theotown.backend.Service$RequestBuilder)
.class public Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/backend/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestBuilder"
.end annotation


# instance fields
.field public json:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 50
    const-string v0, "cmd"

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$1;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
    .registers 5

    .line 78
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public put(Ljava/lang/String;F)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
    .registers 6

    .line 70
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_6
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
    .registers 4

    .line 62
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/backend/Service$RequestBuilder;
    .registers 4

    .line 54
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$RequestBuilder;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_5
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

###### Class info.flowersoft.theotown.backend.Service$$ExternalSyntheticLambda0 (info.flowersoft.theotown.backend.Service$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/backend/Service$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Backend$TaskResponseHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/backend/Service$Handler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/backend/Service$Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/backend/Service$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/backend/Service$Handler;

    return-void
.end method


# virtual methods
.method public final receive(Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/backend/Service$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/backend/Service$Handler;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/backend/Service;->$r8$lambda$2VmXnbE2vgffllwpR4oD1qvkHS0(Linfo/flowersoft/theotown/backend/Service$Handler;Linfo/flowersoft/theotown/backend/Backend$Task;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method
