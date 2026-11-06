###### Class com.ironsource.C3764oc (com.ironsource.oc)
.class public Lcom/ironsource/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/v7;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private final c:Lcom/ironsource/w7;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/oc;->c:Lcom/ironsource/w7;

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/w7;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/ironsource/oc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/oc;->a:Ljava/lang/String;

    const/16 v0, 0x17

    .line 3
    iput v0, p0, Lcom/ironsource/oc;->b:I

    .line 9
    iput-object p1, p0, Lcom/ironsource/oc;->c:Lcom/ironsource/w7;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/ironsource/oc;->b:I

    if-lt v0, v1, :cond_2b

    iget-object v0, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 6
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2b

    .line 9
    :try_start_16
    iget-object v0, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p1

    .line 12
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lcom/ironsource/oc;->a:Ljava/lang/String;

    const-string v0, "NetworkCallback for was not registered or already unregistered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "MissingPermission"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/ironsource/oc;->b:I

    if-lt v0, v1, :cond_53

    .line 5
    invoke-virtual {p0, p1}, Lcom/ironsource/oc;->a(Landroid/content/Context;)V

    .line 9
    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 11
    iget-object v0, p0, Lcom/ironsource/oc;->c:Lcom/ironsource/w7;

    invoke-interface {v0}, Lcom/ironsource/w7;->a()V

    .line 14
    :cond_1a
    iget-object v0, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_25

    .line 16
    new-instance v0, Lcom/ironsource/oc$a;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/oc$a;-><init>(Lcom/ironsource/oc;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 58
    :cond_25
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 64
    :try_start_34
    const-string v1, "connectivity"

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_53

    .line 67
    iget-object v1, p0, Lcom/ironsource/oc;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p1

    .line 70
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 71
    iget-object p1, p0, Lcom/ironsource/oc;->a:Ljava/lang/String;

    const-string v0, "NetworkCallback was not able to register"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void
.end method

.method public c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.C3764oc.a (com.ironsource.oc$a)
.class Lcom/ironsource/oc$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/oc;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ironsource/oc;


# direct methods
.method public constructor <init>(Lcom/ironsource/oc;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    iput-object p2, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    if-eqz p1, :cond_18

    .line 1
    iget-object v0, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {v0}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v1}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/ironsource/w7;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 6
    :cond_18
    iget-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p1}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object v1

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/ironsource/w7;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    if-eqz p1, :cond_17

    .line 1
    iget-object p2, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p2}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/ironsource/w7;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    if-eqz p1, :cond_17

    .line 1
    iget-object p2, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p2}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0}, Lcom/ironsource/Y3;->a(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ironsource/Y3;->a(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/ironsource/w7;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_17
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/oc$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/ironsource/Y3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/ironsource/oc$a;->b:Lcom/ironsource/oc;

    invoke-static {p1}, Lcom/ironsource/oc;->-$$Nest$fgetc(Lcom/ironsource/oc;)Lcom/ironsource/w7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/w7;->a()V

    :cond_17
    return-void
.end method
