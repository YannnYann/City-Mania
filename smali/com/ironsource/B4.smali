###### Class com.ironsource.B4 (com.ironsource.B4)
.class public Lcom/ironsource/B4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/B4$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "B4"

.field private static final d:Ljava/lang/String; = "setSharedSignal"

.field private static final e:Ljava/lang/String; = "getSharedSignal"

.field private static final f:Ljava/lang/String; = "functionName"

.field private static final g:Ljava/lang/String; = "functionParams"

.field private static final h:Ljava/lang/String; = "success"

.field private static final i:Ljava/lang/String; = "fail"


# instance fields
.field private final a:Landroid/content/Context;

.field b:Lcom/ironsource/A4;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/A4;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/B4;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/ironsource/B4;->b:Lcom/ironsource/A4;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/B4$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/ironsource/B4$a;->a(Lorg/json/JSONObject;)Lcom/ironsource/B4$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/ironsource/B4$a;Lcom/ironsource/ua;)V
    .registers 8

    .line 25
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 27
    iget-object v1, p2, Lcom/ironsource/B4$a;->b:Lorg/json/JSONObject;

    .line 28
    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "source"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/ironsource/B4;->b:Lcom/ironsource/A4;

    invoke-static {v1}, Lcom/ironsource/z4;->a(Ljava/lang/String;)Lcom/ironsource/z4;

    move-result-object v1

    invoke-virtual {v3, p1, v1, v2}, Lcom/ironsource/A4;->a(Landroid/content/Context;Lcom/ironsource/z4;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p2, Lcom/ironsource/B4$a;->c:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p3, p2, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method

.method private a(Lcom/ironsource/B4$a;Lcom/ironsource/ua;Ljava/lang/Exception;)V
    .registers 7

    .line 35
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    .line 37
    sget-object v0, Lcom/ironsource/B4;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/ironsource/B4$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 40
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_34

    :cond_32
    const-string p3, "Unknown error"

    :goto_34
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p1, Lcom/ironsource/B4$a;->d:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method

.method private b(Landroid/content/Context;Lcom/ironsource/B4$a;Lcom/ironsource/ua;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 2
    iget-object v1, p2, Lcom/ironsource/B4$a;->b:Lorg/json/JSONObject;

    .line 3
    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v4, "source"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lcom/ironsource/B4;->b:Lcom/ironsource/A4;

    invoke-static {v1}, Lcom/ironsource/z4;->a(Ljava/lang/String;)Lcom/ironsource/z4;

    move-result-object v1

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/ironsource/A4;->a(Landroid/content/Context;Lcom/ironsource/z4;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p2, Lcom/ironsource/B4$a;->c:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p3, p2, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ironsource/ua;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/ironsource/B4;->a(Ljava/lang/String;)Lcom/ironsource/B4$a;

    move-result-object v0

    .line 6
    :try_start_4
    iget-object v1, v0, Lcom/ironsource/B4$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2255f9e3    # 2.8999172E-18f

    const/4 v4, 0x1

    if-eq v2, v3, :cond_22

    const v3, 0x589ef4ef

    if-eq v2, v3, :cond_16

    goto :goto_2c

    :cond_16
    const-string v2, "setSharedSignal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x0

    goto :goto_2d

    :catch_20
    move-exception p1

    goto :goto_54

    :cond_22
    const-string v2, "getSharedSignal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, -0x1

    :goto_2d
    if-eqz v1, :cond_4e

    if-ne v1, v4, :cond_37

    .line 11
    iget-object p1, p0, Lcom/ironsource/B4;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/B4;->a(Landroid/content/Context;Lcom/ironsource/B4$a;Lcom/ironsource/ua;)V

    return-void

    .line 14
    :cond_37
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_4e
    iget-object p1, p0, Lcom/ironsource/B4;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/B4;->b(Landroid/content/Context;Lcom/ironsource/B4$a;Lcom/ironsource/ua;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_20

    return-void

    .line 24
    :goto_54
    invoke-direct {p0, v0, p2, p1}, Lcom/ironsource/B4;->a(Lcom/ironsource/B4$a;Lcom/ironsource/ua;Ljava/lang/Exception;)V

    return-void
.end method

###### Class com.ironsource.B4.a (com.ironsource.B4$a)
.class Lcom/ironsource/B4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/B4;
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

.method public static a(Lorg/json/JSONObject;)Lcom/ironsource/B4$a;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/B4$a;

    invoke-direct {v0}, Lcom/ironsource/B4$a;-><init>()V

    .line 2
    const-string v1, "functionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/B4$a;->a:Ljava/lang/String;

    .line 3
    const-string v1, "functionParams"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/B4$a;->b:Lorg/json/JSONObject;

    .line 4
    const-string v1, "success"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/B4$a;->c:Ljava/lang/String;

    .line 5
    const-string v1, "fail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ironsource/B4$a;->d:Ljava/lang/String;

    return-object v0
.end method
