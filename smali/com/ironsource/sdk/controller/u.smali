###### Class com.ironsource.sdk.controller.u (com.ironsource.sdk.controller.u)
.class public Lcom/ironsource/sdk/controller/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/u$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "u"

.field private static final e:Ljava/lang/String; = "updateToken"

.field private static final f:Ljava/lang/String; = "getToken"

.field private static final g:Ljava/lang/String; = "functionName"

.field private static final h:Ljava/lang/String; = "functionParams"

.field private static final i:Ljava/lang/String; = "success"

.field private static final j:Ljava/lang/String; = "fail"


# instance fields
.field private a:Lcom/ironsource/uc;

.field private b:Landroid/content/Context;

.field private c:Lcom/ironsource/ng;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/u;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/ironsource/uc;

    invoke-direct {p1}, Lcom/ironsource/uc;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/u;->a:Lcom/ironsource/uc;

    .line 4
    new-instance p1, Lcom/ironsource/ng;

    invoke-direct {p1}, Lcom/ironsource/ng;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/u;->c:Lcom/ironsource/ng;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/u$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/ironsource/sdk/controller/u$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/u$a;-><init>(Lcom/ironsource/sdk/controller/u-IA;)V

    .line 4
    const-string v1, "functionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/u$a;->a:Ljava/lang/String;

    .line 5
    const-string v1, "functionParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/u$a;->b:Lorg/json/JSONObject;

    .line 6
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/u$a;->c:Ljava/lang/String;

    .line 7
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/u$a;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/ironsource/sdk/controller/u$a;Lcom/ironsource/ua;)V
    .registers 8

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/u;->c:Lcom/ironsource/ng;

    invoke-virtual {v0}, Lcom/ironsource/ng;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 26
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 30
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/environment/StringUtils;->encodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    :catch_28
    move-exception v0

    goto :goto_31

    .line 34
    :cond_2a
    iget-object v1, p1, Lcom/ironsource/sdk/controller/u$a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p2, v2, v1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_28

    return-void

    .line 36
    :goto_31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 37
    iget-object p1, p1, Lcom/ironsource/sdk/controller/u$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ironsource/ua;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/u;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/u$a;

    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/ironsource/sdk/controller/u$a;->a:Ljava/lang/String;

    const-string v2, "updateToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 10
    iget-object p1, v0, Lcom/ironsource/sdk/controller/u$a;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/u;->a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/u$a;Lcom/ironsource/ua;)V

    return-void

    .line 11
    :cond_14
    iget-object v1, v0, Lcom/ironsource/sdk/controller/u$a;->a:Ljava/lang/String;

    const-string v2, "getToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/ironsource/sdk/controller/u;->a(Lcom/ironsource/sdk/controller/u$a;Lcom/ironsource/ua;)V

    return-void

    .line 14
    :cond_22
    sget-object p2, Lcom/ironsource/sdk/controller/u;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled API request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/u$a;Lcom/ironsource/ua;)V
    .registers 8

    .line 15
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 17
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/u;->a:Lcom/ironsource/uc;

    invoke-virtual {v1, p1}, Lcom/ironsource/uc;->a(Lorg/json/JSONObject;)V

    .line 18
    iget-object p1, p2, Lcom/ironsource/sdk/controller/u$a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p3, v1, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 20
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 21
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/ironsource/sdk/controller/u;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToken exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p2, Lcom/ironsource/sdk/controller/u$a;->d:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method

###### Class com.ironsource.sdk.controller.u.a (com.ironsource.sdk.controller.u$a)
.class Lcom/ironsource/sdk/controller/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/sdk/controller/u-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/u$a;-><init>()V

    return-void
.end method
