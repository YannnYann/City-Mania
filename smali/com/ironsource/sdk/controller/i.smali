###### Class com.ironsource.sdk.controller.i (com.ironsource.sdk.controller.i)
.class public Lcom/ironsource/sdk/controller/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/i$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "i"

.field private static final d:Ljava/lang/String; = "getDeviceData"

.field private static final e:Ljava/lang/String; = "deviceDataFunction"

.field private static final f:Ljava/lang/String; = "deviceDataParams"

.field private static final g:Ljava/lang/String; = "success"

.field private static final h:Ljava/lang/String; = "fail"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lcom/ironsource/B7;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    .line 3
    iput-object p1, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/ironsource/me;
    .registers 5

    .line 6
    new-instance v0, Lcom/ironsource/me;

    invoke-direct {v0}, Lcom/ironsource/me;-><init>()V

    .line 8
    const-string v1, "sdCardAvailable"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    .line 10
    invoke-interface {v2}, Lcom/ironsource/B7;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "totalDeviceRAM"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    .line 18
    invoke-interface {v2, v3}, Lcom/ironsource/B7;->r(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "isCharging"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    .line 24
    invoke-interface {v2, v3}, Lcom/ironsource/B7;->D(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "chargingType"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    .line 30
    invoke-interface {v2, v3}, Lcom/ironsource/B7;->E(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "airplaneMode"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    .line 36
    invoke-interface {v2, v3}, Lcom/ironsource/B7;->f(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "stayOnWhenPluggedIn"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/i;->b:Lcom/ironsource/B7;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/i;->a:Landroid/content/Context;

    .line 42
    invoke-interface {v2, v3}, Lcom/ironsource/B7;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/me;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/i$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/ironsource/sdk/controller/i$a;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/ironsource/sdk/controller/i$a;-><init>(Lcom/ironsource/sdk/controller/i-IA;)V

    .line 47
    const-string v1, "deviceDataFunction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/i$a;->a:Ljava/lang/String;

    .line 48
    const-string v1, "deviceDataParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/i$a;->b:Lorg/json/JSONObject;

    .line 49
    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ironsource/sdk/controller/i$a;->c:Ljava/lang/String;

    .line 50
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ironsource/sdk/controller/i$a;->d:Ljava/lang/String;

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

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/i;->a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/i$a;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/ironsource/sdk/controller/i$a;->a:Ljava/lang/String;

    const-string v2, "getDeviceData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    iget-object p1, v0, Lcom/ironsource/sdk/controller/i$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/i;->a()Lcom/ironsource/me;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1, p1, v0}, Lcom/ironsource/ua;->a(ZLjava/lang/String;Lcom/ironsource/me;)V

    return-void

    .line 5
    :cond_19
    sget-object p2, Lcom/ironsource/sdk/controller/i;->c:Ljava/lang/String;

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

###### Class com.ironsource.sdk.controller.i.a (com.ironsource.sdk.controller.i$a)
.class Lcom/ironsource/sdk/controller/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/i;
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

.method public synthetic constructor <init>(Lcom/ironsource/sdk/controller/i-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/i$a;-><init>()V

    return-void
.end method
