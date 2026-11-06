###### Class io.bidmachine.iab.script.ScriptInjector (io.bidmachine.iab.script.ScriptInjector)
.class public final Lio/bidmachine/iab/script/ScriptInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;,
        Lio/bidmachine/iab/script/ScriptInjector$a;
    }
.end annotation


# static fields
.field public static final d:Lio/bidmachine/iab/script/ScriptInjector$a;

.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidWebView;

.field public final c:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$2ldRfVawibxeHXOZ7hiCut0HWSo(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lio/bidmachine/iab/script/ScriptInjector;->a(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ckqME-Iu9u2RoLdsnfQ6oSX7hKA(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/script/ScriptInjector;->a(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/script/ScriptInjector$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector;->d:Lio/bidmachine/iab/script/ScriptInjector$a;

    .line 1
    const-string v0, "ScriptInjector"

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;)V
    .registers 3

    const-string p2, "webView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector;->c:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidWebView;Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/script/ScriptInjector;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .registers 7

    const-string p5, "this$0"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$handlerName"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 0>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 4>"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .registers 2

    .line 1
    sget-object p0, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector$g;->a:Lio/bidmachine/iab/script/ScriptInjector$g;

    invoke-static {p0, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/util/Set;
    .registers 3

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 17
    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_12

    .line 18
    const-string p1, "https://localhost"

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 19
    :cond_12
    const-string p1, "*"

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)V
    .registers 5

    .line 2
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance p3, Lio/bidmachine/iab/script/ScriptInjector$m;

    invoke-direct {p3, p2}, Lio/bidmachine/iab/script/ScriptInjector$m;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 8
    :cond_13
    :try_start_13
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2, p3, v0}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 12
    iget-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector;->c:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance p3, Lio/bidmachine/iab/script/ScriptInjector$n;

    invoke-direct {p3, p2}, Lio/bidmachine/iab/script/ScriptInjector$n;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception p1

    .line 15
    sget-object p2, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    sget-object v1, Lio/bidmachine/iab/script/ScriptInjector$b;->a:Lio/bidmachine/iab/script/ScriptInjector$b;

    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 6
    :cond_10
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->c:Ljava/util/Set;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    :try_start_22
    iget-object v2, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {v2, v1}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance v3, Lio/bidmachine/iab/script/ScriptInjector$c;

    invoke-direct {v3, v1}, Lio/bidmachine/iab/script/ScriptInjector$c;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_32

    goto :goto_16

    :catchall_32
    move-exception v1

    .line 71
    sget-object v2, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 74
    :cond_39
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final injectAtRuntime(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector$d;->a:Lio/bidmachine/iab/script/ScriptInjector$d;

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_10
    if-eqz p1, :cond_50

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_50

    .line 12
    :cond_19
    :try_start_19
    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/iab/script/ScriptInjector$f;

    invoke-direct {v1, p1}, Lio/bidmachine/iab/script/ScriptInjector$f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    new-instance v1, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v0

    .line 18
    sget-object v1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 21
    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector$h;->a:Lio/bidmachine/iab/script/ScriptInjector$h;

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 22
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_50
    :goto_50
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector$e;->a:Lio/bidmachine/iab/script/ScriptInjector$e;

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final injectStart(Ljava/lang/String;Lio/bidmachine/rendering/model/ScriptConfig;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RequiresFeature"
        }
    .end annotation

    const-string v0, "script"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-string v0, "DOCUMENT_START_SCRIPT"

    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$j;

    invoke-direct {v0, p2}, Lio/bidmachine/iab/script/ScriptInjector$j;-><init>(Lio/bidmachine/rendering/model/ScriptConfig;)V

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 155
    :cond_18
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ScriptConfig;->getForMainFrameOnly()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/iab/script/ScriptInjector;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object p1

    .line 157
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {p2}, Lio/bidmachine/iab/script/ScriptInjectorKt;->access$patched(Lio/bidmachine/rendering/model/ScriptConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/webkit/WebViewCompat;->addDocumentStartJavaScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)Landroidx/webkit/ScriptHandler;

    .line 158
    sget-object v0, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/iab/script/ScriptInjector$k;

    invoke-direct {v1, p2}, Lio/bidmachine/iab/script/ScriptInjector$k;-><init>(Lio/bidmachine/rendering/model/ScriptConfig;)V

    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 160
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ScriptConfig;->getMessageHandler()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3e

    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector;->a:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {p0, v0, p2, p1}, Lio/bidmachine/iab/script/ScriptInjector;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)V

    :cond_3e
    return-void
.end method

.method public final injectStart(Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "scriptConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    sget-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentStart:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    sget-object v1, Lio/bidmachine/rendering/model/ScriptConfig$Type;->DocumentEnd:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/iab/script/ScriptInjectorKt;->access$filterSorted(Ljava/util/List;[Lio/bidmachine/rendering/model/ScriptConfig$Type;)Ljava/util/List;

    move-result-object p2

    .line 144
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/model/ScriptConfig;

    .line 145
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/iab/script/ScriptInjector;->injectStart(Ljava/lang/String;Lio/bidmachine/rendering/model/ScriptConfig;)V

    goto :goto_15

    :catchall_25
    move-exception p1

    goto :goto_33

    .line 146
    :cond_27
    sget-object p1, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$i;

    invoke-direct {v0, p2}, Lio/bidmachine/iab/script/ScriptInjector$i;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_25

    const/4 p1, 0x1

    return p1

    .line 149
    :goto_33
    sget-object p2, Lio/bidmachine/iab/script/ScriptInjector;->e:Ljava/lang/Object;

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final modifyHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scriptConfigs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/ScriptConfig$Type;->InlineTag:Lio/bidmachine/rendering/model/ScriptConfig$Type;

    filled-new-array {v0}, [Lio/bidmachine/rendering/model/ScriptConfig$Type;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/iab/script/ScriptInjectorKt;->access$filterSorted(Ljava/util/List;[Lio/bidmachine/rendering/model/ScriptConfig$Type;)Ljava/util/List;

    move-result-object v1

    .line 2
    sget-object v7, Lio/bidmachine/iab/script/ScriptInjector$l;->a:Lio/bidmachine/iab/script/ScriptInjector$l;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.MessageReceiver (io.bidmachine.iab.script.ScriptInjector$MessageReceiver)
.class public interface abstract Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/script/ScriptInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageReceiver"
.end annotation

###### Class io.bidmachine.iab.script.ScriptInjector.a (io.bidmachine.iab.script.ScriptInjector$a)
.class public final Lio/bidmachine/iab/script/ScriptInjector$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/script/ScriptInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/script/ScriptInjector$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.b (io.bidmachine.iab.script.ScriptInjector$b)
.class public final Lio/bidmachine/iab/script/ScriptInjector$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$b;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$b;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$b;->a:Lio/bidmachine/iab/script/ScriptInjector$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER not supported, skipping"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.c (io.bidmachine.iab.script.ScriptInjector$c)
.class public final Lio/bidmachine/iab/script/ScriptInjector$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$c;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregistered message listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.d (io.bidmachine.iab.script.ScriptInjector$d)
.class public final Lio/bidmachine/iab/script/ScriptInjector$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$d;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$d;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$d;->a:Lio/bidmachine/iab/script/ScriptInjector$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "can\'t evaluate js: WebView is destroyed"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.e (io.bidmachine.iab.script.ScriptInjector$e)
.class public final Lio/bidmachine/iab/script/ScriptInjector$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$e;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$e;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$e;->a:Lio/bidmachine/iab/script/ScriptInjector$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "can\'t evaluate js: js is empty"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.f (io.bidmachine.iab.script.ScriptInjector$f)
.class public final Lio/bidmachine/iab/script/ScriptInjector$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$f;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluating js ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " chars)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.g (io.bidmachine.iab.script.ScriptInjector$g)
.class public final Lio/bidmachine/iab/script/ScriptInjector$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$g;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$g;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$g;->a:Lio/bidmachine/iab/script/ScriptInjector$g;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "evaluate js complete"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.h (io.bidmachine.iab.script.ScriptInjector$h)
.class public final Lio/bidmachine/iab/script/ScriptInjector$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$h;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$h;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$h;->a:Lio/bidmachine/iab/script/ScriptInjector$h;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "loading url via javascript:"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.i (io.bidmachine.iab.script.ScriptInjector$i)
.class public final Lio/bidmachine/iab/script/ScriptInjector$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectStart(Ljava/lang/String;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$i;->a:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " document-start scripts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.j (io.bidmachine.iab.script.ScriptInjector$j)
.class public final Lio/bidmachine/iab/script/ScriptInjector$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectStart(Ljava/lang/String;Lio/bidmachine/rendering/model/ScriptConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/model/ScriptConfig;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ScriptConfig;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$j;->a:Lio/bidmachine/rendering/model/ScriptConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DOCUMENT_START_SCRIPT not supported, skipping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$j;->a:Lio/bidmachine/rendering/model/ScriptConfig;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/ScriptConfig;->getScriptId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.k (io.bidmachine.iab.script.ScriptInjector$k)
.class public final Lio/bidmachine/iab/script/ScriptInjector$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->injectStart(Ljava/lang/String;Lio/bidmachine/rendering/model/ScriptConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/model/ScriptConfig;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/ScriptConfig;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$k;->a:Lio/bidmachine/rendering/model/ScriptConfig;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injected document-start script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$k;->a:Lio/bidmachine/rendering/model/ScriptConfig;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/ScriptConfig;->getScriptId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.l (io.bidmachine.iab.script.ScriptInjector$l)
.class public final synthetic Lio/bidmachine/iab/script/ScriptInjector$l;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->modifyHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/script/ScriptInjector$l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/script/ScriptInjector$l;

    invoke-direct {v0}, Lio/bidmachine/iab/script/ScriptInjector$l;-><init>()V

    sput-object v0, Lio/bidmachine/iab/script/ScriptInjector$l;->a:Lio/bidmachine/iab/script/ScriptInjector$l;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 0
    const-string v0, "getSource()Ljava/lang/String;"

    const/4 v1, 0x0

    const-class v2, Lio/bidmachine/rendering/model/ScriptConfig;

    const-string v3, "source"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/rendering/model/ScriptConfig;

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ScriptConfig;->getSource()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.m (io.bidmachine.iab.script.ScriptInjector$m)
.class public final Lio/bidmachine/iab/script/ScriptInjector$m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$m;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WEB_MESSAGE_LISTENER not supported, skipping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector.n (io.bidmachine.iab.script.ScriptInjector$n)
.class public final Lio/bidmachine/iab/script/ScriptInjector$n;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/script/ScriptInjector;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$n;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registered message listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/script/ScriptInjector$n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda0 (io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/iab/script/ScriptInjector;->$r8$lambda$ckqME-Iu9u2RoLdsnfQ6oSX7hKA(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda1 (io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/iab/script/ScriptInjector;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/iab/script/ScriptInjector;

    iput-object p2, p0, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .registers 13

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/iab/script/ScriptInjector;

    iget-object v1, p0, Lio/bidmachine/iab/script/ScriptInjector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lio/bidmachine/iab/script/ScriptInjector;->$r8$lambda$2ldRfVawibxeHXOZ7hiCut0HWSo(Lio/bidmachine/iab/script/ScriptInjector;Ljava/lang/String;Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V

    return-void
.end method
