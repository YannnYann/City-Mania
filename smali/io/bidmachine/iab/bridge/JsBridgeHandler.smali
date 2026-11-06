###### Class io.bidmachine.iab.bridge.JsBridgeHandler (io.bidmachine.iab.bridge.JsBridgeHandler)
.class public Lio/bidmachine/iab/bridge/JsBridgeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$Wn7QNXTxrJU4ntrM4m4VSQZ8cCQ()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$WussuTdVIIpIVq13tNdwHkGeEp8(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/bidmachine/iab/bridge/JsBridge;
    .registers 5

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    sget-object v0, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/bridge/JsBridge;

    .line 6
    invoke-interface {v2, p0}, Lio/bidmachine/iab/bridge/JsBridge;->isHandled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-object v2

    :cond_21
    return-object v1
.end method

.method public static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    const-string v0, "handleJsCommand not found"

    return-object v0
.end method

.method public static addBridge(Lio/bidmachine/iab/bridge/JsBridge;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bridge"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleJsCommand - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleJsCommand(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webView",
            "commandUrl"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const-string v1, "JsBridgeHandler"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 3
    :try_start_a
    invoke-static {p1}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a(Ljava/lang/String;)Lio/bidmachine/iab/bridge/JsBridge;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_38

    .line 7
    :cond_11
    invoke-interface {v0}, Lio/bidmachine/iab/bridge/JsBridge;->getJsValidator()Lio/bidmachine/iab/mraid/MraidJsValidator;

    move-result-object v2

    invoke-static {p1, v2}, Lio/bidmachine/iab/mraid/MraidUtils;->parseCommandUrl(Ljava/lang/String;Lio/bidmachine/iab/mraid/MraidJsValidator;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_38

    .line 11
    :cond_1c
    const-string v2, "command"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_31

    .line 13
    new-instance p0, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_35

    .line 16
    :cond_31
    invoke-interface {v0, p0, v2, p1}, Lio/bidmachine/iab/bridge/JsBridge;->runJsCommand(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_2f

    return-void

    .line 18
    :goto_35
    invoke-static {v1, p0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_38
    return-void
.end method

.method public static isHandled(Ljava/lang/String;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandUrl"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a(Ljava/lang/String;)Lio/bidmachine/iab/bridge/JsBridge;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static obtainJs()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lio/bidmachine/iab/bridge/JsBridgeHandler;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/bridge/JsBridge;

    const/4 v3, 0x0

    .line 3
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Lio/bidmachine/iab/bridge/JsProvider;->getJs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/iab/script/ScriptWrapper;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 5
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda0 (io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->$r8$lambda$WussuTdVIIpIVq13tNdwHkGeEp8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda1 (io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/iab/bridge/JsBridgeHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->$r8$lambda$Wn7QNXTxrJU4ntrM4m4VSQZ8cCQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
