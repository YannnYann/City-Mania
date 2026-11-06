###### Class com.ironsource.sdk.controller.q (com.ironsource.sdk.controller.q)
.class public Lcom/ironsource/sdk/controller/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/q$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "q"

.field private static final c:Ljava/lang/String; = "getPermissions"

.field private static final d:Ljava/lang/String; = "isPermissionGranted"

.field private static final e:Ljava/lang/String; = "permissions"

.field private static final f:Ljava/lang/String; = "permission"

.field private static final g:Ljava/lang/String; = "status"

.field private static final h:Ljava/lang/String; = "functionName"

.field private static final i:Ljava/lang/String; = "functionParams"

.field private static final j:Ljava/lang/String; = "success"

.field private static final k:Ljava/lang/String; = "fail"

.field private static final l:Ljava/lang/String; = "unhandledPermission"


# instance fields
.field private a:Landroid/content/Context;


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
    iput-object p1, p0, Lcom/ironsource/sdk/controller/q;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/q$a;
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
    new-instance p1, Lcom/ironsource/sdk/controller/q$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/q$a;-><init>(Lcom/ironsource/sdk/controller/q-IA;)V

    .line 4
    const-string v1, "functionName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/q$a;->a:Ljava/lang/String;

    .line 5
    const-string v1, "functionParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/q$a;->b:Lorg/json/JSONObject;

    .line 6
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/q$a;->c:Ljava/lang/String;

    .line 7
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/q$a;->d:Ljava/lang/String;

    return-object p1
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
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/q;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/q$a;

    move-result-object v0

    .line 9
    iget-object v1, v0, Lcom/ironsource/sdk/controller/q$a;->a:Ljava/lang/String;

    const-string v2, "getPermissions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 10
    iget-object p1, v0, Lcom/ironsource/sdk/controller/q$a;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/q;->a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/q$a;Lcom/ironsource/ua;)V

    return-void

    .line 11
    :cond_14
    iget-object v1, v0, Lcom/ironsource/sdk/controller/q$a;->a:Ljava/lang/String;

    const-string v2, "isPermissionGranted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 12
    iget-object p1, v0, Lcom/ironsource/sdk/controller/q$a;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/sdk/controller/q;->b(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/q$a;Lcom/ironsource/ua;)V

    return-void

    .line 14
    :cond_24
    sget-object p2, Lcom/ironsource/sdk/controller/q;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionsJSAdapter unhandled API request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/q$a;Lcom/ironsource/ua;)V
    .registers 8

    .line 15
    const-string v0, "permissions"

    new-instance v1, Lcom/ironsource/me;

    invoke-direct {v1}, Lcom/ironsource/me;-><init>()V

    .line 17
    :try_start_7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 18
    iget-object v2, p0, Lcom/ironsource/sdk/controller/q;->a:Landroid/content/Context;

    .line 19
    invoke-static {v2, p1}, Lcom/ironsource/M1;->a(Landroid/content/Context;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-virtual {v1, v0, p1}, Lcom/ironsource/me;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 22
    iget-object p1, p2, Lcom/ironsource/sdk/controller/q$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p3, v0, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    .line 24
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/ironsource/sdk/controller/q;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p2, Lcom/ironsource/sdk/controller/q$a;->d:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;Lcom/ironsource/sdk/controller/q$a;Lcom/ironsource/ua;)V
    .registers 8

    .line 1
    const-string v0, "permission"

    new-instance v1, Lcom/ironsource/me;

    invoke-direct {v1}, Lcom/ironsource/me;-><init>()V

    const/4 v2, 0x0

    .line 3
    :try_start_8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/q;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ironsource/M1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_2d

    const-string v3, "status"

    if-eqz v0, :cond_2f

    .line 6
    :try_start_19
    iget-object v0, p0, Lcom/ironsource/sdk/controller/q;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0, p1}, Lcom/ironsource/M1;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v3, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p2, Lcom/ironsource/sdk/controller/q$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p3, v0, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void

    :catch_2d
    move-exception p1

    goto :goto_3a

    .line 14
    :cond_2f
    const-string p1, "unhandledPermission"

    invoke-virtual {v1, v3, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p2, Lcom/ironsource/sdk/controller/q$a;->d:Ljava/lang/String;

    invoke-interface {p3, v2, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_2d

    return-void

    .line 18
    :goto_3a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "errMsg"

    invoke-virtual {v1, v0, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p2, Lcom/ironsource/sdk/controller/q$a;->d:Ljava/lang/String;

    invoke-interface {p3, v2, p1, v1}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method

###### Class com.ironsource.sdk.controller.q.a (com.ironsource.sdk.controller.q$a)
.class Lcom/ironsource/sdk/controller/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/q;
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

.method public synthetic constructor <init>(Lcom/ironsource/sdk/controller/q-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/q$a;-><init>()V

    return-void
.end method
