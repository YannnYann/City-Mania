###### Class com.ironsource.Y (com.ironsource.Y)
.class public final Lcom/ironsource/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/X;


# instance fields
.field private final a:Lcom/ironsource/vc;


# direct methods
.method public constructor <init>(Lcom/ironsource/vc;)V
    .registers 3

    const-string v0, "networkInitApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/f9;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    invoke-virtual {p2}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/ironsource/W;->c()I

    move-result v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-interface {v0, v1}, Lcom/ironsource/vc;->a(I)V

    .line 3
    invoke-virtual {p2}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/ironsource/W;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 4
    iget-object v1, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    invoke-interface {v1, v0}, Lcom/ironsource/vc;->b(Ljava/lang/String;)V

    .line 7
    :cond_31
    invoke-virtual {p2}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Lcom/ironsource/W;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 8
    iget-object v1, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/ironsource/vc;->a(Ljava/lang/String;)V

    .line 11
    :cond_4b
    new-instance v0, Lcom/ironsource/tc;

    invoke-direct {v0}, Lcom/ironsource/tc;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/tc;->a()Ljava/util/Map;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    .line 14
    new-instance v2, Lcom/ironsource/Y$a;

    invoke-direct {v2, p2, p3}, Lcom/ironsource/Y$a;-><init>(Lcom/ironsource/f9;Lcom/unity3d/ironsourceads/InitListener;)V

    .line 15
    invoke-interface {v1, v2}, Lcom/ironsource/vc;->a(Lcom/ironsource/Tc;)V

    .line 37
    iget-object p3, p0, Lcom/ironsource/Y;->a:Lcom/ironsource/vc;

    invoke-virtual {p2}, Lcom/ironsource/f9;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ironsource/f9;->h()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, v1, p2, v0}, Lcom/ironsource/vc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class com.ironsource.Y.a (com.ironsource.Y$a)
.class public final Lcom/ironsource/Y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Tc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Y;->a(Landroid/content/Context;Lcom/ironsource/f9;Lcom/unity3d/ironsourceads/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/f9;

.field final synthetic b:Lcom/unity3d/ironsourceads/InitListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/f9;Lcom/unity3d/ironsourceads/InitListener;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    iput-object p2, p0, Lcom/ironsource/Y$a;->b:Lcom/unity3d/ironsourceads/InitListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/u8;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSDKWithNetworkConfigurations error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {p1}, Lcom/ironsource/u8;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/Y$a;->b:Lcom/unity3d/ironsourceads/InitListener;

    sget-object v1, Lcom/ironsource/z5;->a:Lcom/ironsource/z5;

    invoke-virtual {v1, v0}, Lcom/ironsource/z5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/ironsourceads/InitListener;->onInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onSuccess()V
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "initSDKWithNetworkConfigurations success"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    invoke-virtual {v1}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lcom/ironsource/W;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v2

    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controllerURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    invoke-virtual {v1}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-interface {v1}, Lcom/ironsource/W;->b()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v2

    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controllerConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    invoke-virtual {v1}, Lcom/ironsource/f9;->e()Lcom/ironsource/W;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-interface {v1}, Lcom/ironsource/W;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debugMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    invoke-virtual {v1}, Lcom/ironsource/f9;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/ironsource/Y$a;->a:Lcom/ironsource/f9;

    invoke-virtual {v1}, Lcom/ironsource/f9;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/Y$a;->b:Lcom/unity3d/ironsourceads/InitListener;

    invoke-interface {v0}, Lcom/unity3d/ironsourceads/InitListener;->onInitSuccess()V

    return-void
.end method
