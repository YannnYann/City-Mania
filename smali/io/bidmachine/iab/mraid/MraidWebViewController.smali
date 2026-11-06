###### Class io.bidmachine.iab.mraid.MraidWebViewController (io.bidmachine.iab.mraid.MraidWebViewController)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;,
        Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;,
        Lio/bidmachine/iab/mraid/MraidWebViewController$a;,
        Lio/bidmachine/iab/mraid/MraidWebViewController$b;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

.field public final b:J

.field public final c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

.field public final d:Lio/bidmachine/iab/mraid/MraidWebView;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lio/bidmachine/iab/script/ScriptInjector;

.field public final i:Lio/bidmachine/iab/mraid/MraidClick;

.field public j:Z

.field public k:Z

.field public l:Lio/bidmachine/iab/mraid/MraidViewState;

.field public m:Lio/bidmachine/iab/mraid/MraidOrientationProperties;


# direct methods
.method public static synthetic $r8$lambda$qJPl2_adBn2noaClseLyT6vSjjQ(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController;->Companion:Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;JLio/bidmachine/rendering/measurer/HtmlMeasurer;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    .line 4
    iput-wide p3, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->b:J

    .line 5
    iput-object p5, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 8
    new-instance p2, Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-direct {p2, p1, p0}, Lio/bidmachine/iab/mraid/MraidWebView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Lio/bidmachine/iab/script/ScriptInjector;

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lio/bidmachine/iab/script/ScriptInjector;-><init>(Lio/bidmachine/iab/mraid/MraidWebView;Lio/bidmachine/iab/script/ScriptInjector$MessageReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->h:Lio/bidmachine/iab/script/ScriptInjector;

    .line 13
    new-instance p1, Lio/bidmachine/iab/mraid/MraidClick;

    invoke-direct {p1}, Lio/bidmachine/iab/mraid/MraidClick;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->i:Lio/bidmachine/iab/mraid/MraidClick;

    .line 19
    sget-object p1, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->l:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 24
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebViewController$a;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebViewController$b;

    invoke-direct {p1, p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$b;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->setMraidWebViewListener(Lio/bidmachine/iab/mraid/MraidWebViewListener;)V

    if-eqz p5, :cond_59

    .line 27
    invoke-interface {p5, p2}, Lio/bidmachine/rendering/measurer/Measurer;->onViewCreated(Landroid/view/View;)V

    :cond_59
    return-void
.end method

.method public static final a(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    return-object p0
.end method

.method public static final synthetic access$getHtmlMeasurer$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    return-object p0
.end method

.method public static final synthetic access$getMraidViewState$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/iab/mraid/MraidViewState;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->l:Lio/bidmachine/iab/mraid/MraidViewState;

    return-object p0
.end method

.method public static final synthetic access$handleError(Lio/bidmachine/iab/mraid/MraidWebViewController;Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public static final synthetic access$handleJsCommand(Lio/bidmachine/iab/mraid/MraidWebViewController;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isCommitVisible$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$isLoaded$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$performOpenUrl(Lio/bidmachine/iab/mraid/MraidWebViewController;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setReceivedJsError$p(Lio/bidmachine/iab/mraid/MraidWebViewController;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->k:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->destroy()V

    return-void
.end method

.method public final a(Lio/bidmachine/iab/IabError;)V
    .registers 6

    .line 525
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_15

    new-instance v1, Lio/bidmachine/util/Error;

    invoke-virtual {p1}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iabError.message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->onError(Lio/bidmachine/util/Error;)V

    .line 526
    :cond_15
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onError(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .line 4
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$c;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$c;-><init>(Ljava/lang/String;)V

    const-string v1, "MraidWebViewController"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 8
    :try_start_a
    sget-object v0, Lio/bidmachine/iab/mraid/MraidUtils;->INSTANCE:Lio/bidmachine/iab/mraid/MraidUtils;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidUtils;->parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_13

    return-void

    .line 9
    :cond_13
    const-string v0, "command"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_25

    .line 11
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$d;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$d;

    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_23
    move-exception p1

    goto :goto_29

    .line 17
    :cond_25
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_23

    goto :goto_2c

    .line 19
    :goto_29
    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 21
    :goto_2c
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "MraidWebViewController"

    const-string v2, "url"

    sparse-switch v0, :sswitch_data_15a

    goto/16 :goto_14d

    :sswitch_d
    const-string v0, "useCustomClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_14d

    .line 66
    :cond_17
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 67
    iget-boolean p2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->j:Z

    if-eq p2, p1, :cond_14d

    .line 68
    iput-boolean p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->j:Z

    .line 69
    iget-object p2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p2, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onUseCustomClose(Z)V

    return-void

    .line 70
    :sswitch_2d
    const-string v0, "storePicture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_14d

    .line 138
    :cond_37
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onStorePicture(Ljava/lang/String;)V

    return-void

    .line 139
    :sswitch_43
    const-string v0, "setOrientationProperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto/16 :goto_14d

    .line 191
    :cond_4d
    const-string p1, "allowOrientationChange"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 192
    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result p2

    .line 193
    new-instance v0, Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidOrientationProperties;-><init>(ZI)V

    .line 194
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->m:Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    .line 195
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p1, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onOrientation(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V

    return-void

    .line 196
    :sswitch_72
    const-string p2, "close"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7c

    goto/16 :goto_14d

    .line 206
    :cond_7c
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onClose()V

    return-void

    .line 207
    :sswitch_82
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8c

    goto/16 :goto_14d

    .line 221
    :cond_8c
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_9f

    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_9b

    goto :goto_9f

    .line 227
    :cond_9b
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->b(Ljava/lang/String;)V

    return-void

    .line 228
    :cond_9f
    :goto_9f
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$f;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$f;

    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 229
    :sswitch_a5
    const-string v0, "createCalendarEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto/16 :goto_14d

    .line 293
    :cond_af
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    const-string v0, "eventJSON"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onCalendarEvent(Ljava/lang/String;)V

    return-void

    .line 294
    :sswitch_bd
    const-string p2, "resize"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c7

    goto/16 :goto_14d

    .line 328
    :cond_c7
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$g;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$g;

    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 329
    :sswitch_cd
    const-string p2, "noFill"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d7

    goto/16 :goto_14d

    .line 331
    :cond_d7
    const-string p1, "Fired noFill event from mraid.js"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->noFIll(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    const-string p2, "noFIll(\"Fired noFill event from mraid.js\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Lio/bidmachine/iab/IabError;)V

    return-void

    .line 332
    :sswitch_e6
    const-string p2, "loaded"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ef

    goto :goto_14d

    .line 338
    :cond_ef
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onLoaded()V

    return-void

    .line 339
    :sswitch_f5
    const-string v0, "expand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fe

    goto :goto_14d

    .line 379
    :cond_fe
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->c(Ljava/lang/String;)V

    return-void

    .line 380
    :sswitch_108
    const-string v0, "openPrivacySheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    goto :goto_14d

    .line 452
    :cond_111
    const-string p1, "data"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_13f

    .line 453
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_122

    goto :goto_13f

    :cond_122
    const/4 p2, 0x2

    .line 459
    :try_start_123
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string p2, "decode(base64Json, Base64.NO_WRAP)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 460
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p1, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onOpenPrivacySheet(Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_123 .. :try_end_138} :catchall_139

    return-void

    .line 462
    :catchall_139
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$i;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$i;

    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    goto :goto_14d

    .line 463
    :cond_13f
    :goto_13f
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$h;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$h;

    invoke-static {v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 464
    :sswitch_145
    const-string v0, "playVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14e

    :cond_14d
    :goto_14d
    return-void

    .line 524
    :cond_14e
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onPlayVideo(Ljava/lang/String;)V

    return-void

    :sswitch_data_15a
    .sparse-switch
        -0x706c8659 -> :sswitch_145
        -0x655765df -> :sswitch_108
        -0x4cd72166 -> :sswitch_f5
        -0x416acffb -> :sswitch_e6
        -0x3e0d511c -> :sswitch_cd
        -0x37b2634c -> :sswitch_bd
        -0x2bba19a0 -> :sswitch_a5
        0x34264a -> :sswitch_82
        0x5a5ddf8 -> :sswitch_72
        0x7f3dfe1 -> :sswitch_43
        0x1b5f6cdd -> :sswitch_2d
        0x6037d900 -> :sswitch_d
    .end sparse-switch
.end method

.method public final applyClick(Landroid/graphics/Point;)V
    .registers 3

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->i:Lio/bidmachine/iab/mraid/MraidClick;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidClick;->getJs([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applyLogLevel(I)V
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    const/4 v0, 0x6

    if-eq p1, v0, :cond_12

    .line 1
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_12
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_18
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1e
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_24
    const-string p1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applyPlacement(Lio/bidmachine/iab/mraid/MraidPlacementType;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidPlacementType;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applyScreenMetrics(Lio/bidmachine/iab/mraid/MraidScreenMetrics;)V
    .registers 6

    const-string v0, "mraidScreenMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->getScreenRectDp()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->getRootViewRectDp()Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setScreenSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v0, ");mraid.setMaxSize("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v0, ");mraid.setCurrentPosition("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->getCurrentAdRectDp()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ");mraid.setDefaultPosition("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->getDefaultAdRectDp()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v0, ");mraid.fireSizeChangeEvent("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidScreenMetrics;->getCurrentAdRectDp()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/iab/utils/Utils;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applyState(Lio/bidmachine/iab/mraid/MraidViewState;)V
    .registers 4

    const-string v0, "mraidViewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->l:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireStateChangeEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidViewState;->toJsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applySupportedServices(Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;)V
    .registers 4

    const-string v0, "mraidNativeFeatureManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isCalendarFeatureAvailable()Z

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isInlineVideoFeatureAvailable()Z

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isSmsFeatureAvailable()Z

    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isStorePictureFeatureAvailable()Z

    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeatureManager;->isTelFeatureAvailable()Z

    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final applyViewable(Z)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    const-string v0, "mraid.nativeCallComplete();"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebView;->wasClicked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    .line 5
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidWebView;->getClickPoint()Landroid/graphics/Point;

    move-result-object v1

    .line 6
    invoke-interface {v0, p1, v1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onOpen(Ljava/lang/String;Landroid/graphics/Point;)V

    .line 10
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebView;->resetClicked()V

    return-void

    .line 12
    :cond_19
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$e;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$e;

    const-string v0, "MraidWebViewController"

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v2}, Lio/bidmachine/iab/mraid/MraidWebView;->getClickTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    goto :goto_1f

    .line 5
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onExpand(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->h:Lio/bidmachine/iab/script/ScriptInjector;

    invoke-virtual {v0}, Lio/bidmachine/iab/script/ScriptInjector;->destroy()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_1a

    new-instance v1, Lio/bidmachine/iab/mraid/MraidWebViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->destroy(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_20

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->a()V

    :cond_20
    return-void
.end method

.method public final getLastOrientationProperties()Lio/bidmachine/iab/mraid/MraidOrientationProperties;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->m:Lio/bidmachine/iab/mraid/MraidOrientationProperties;

    return-object v0
.end method

.method public final getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    return-object v0
.end method

.method public final injectJs(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->h:Lio/bidmachine/iab/script/ScriptInjector;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/script/ScriptInjector;->injectAtRuntime(Ljava/lang/String;)V

    return-void
.end method

.method public final isDestroyed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isReceivedJsError()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->k:Z

    return v0
.end method

.method public final isUseCustomClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->j:Z

    return v0
.end method

.method public final load(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final load(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "htmlData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p3, :cond_17

    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->h:Lio/bidmachine/iab/script/ScriptInjector;

    invoke-virtual {v0, p1, p3}, Lio/bidmachine/iab/script/ScriptInjector;->injectStart(Ljava/lang/String;Ljava/util/List;)Z

    .line 13
    :cond_17
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->i:Lio/bidmachine/iab/mraid/MraidClick;

    invoke-virtual {v0, p3}, Lio/bidmachine/iab/mraid/MraidClick;->configure(Ljava/util/List;)V

    .line 16
    sget-object v2, Lio/bidmachine/rendering/model/ScriptConfig;->Companion:Lio/bidmachine/rendering/model/ScriptConfig$Companion;

    .line 19
    sget-object p3, Lio/bidmachine/iab/mraid/MraidUtils;->INSTANCE:Lio/bidmachine/iab/mraid/MraidUtils;

    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/MraidUtils;->obtainMraidJs()Ljava/lang/String;

    move-result-object p3

    .line 20
    const-string v0, "mraid"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, p3, v3}, Lio/bidmachine/rendering/model/ScriptConfig$Companion;->createInline(Ljava/lang/String;ILjava/lang/String;Z)Lio/bidmachine/rendering/model/ScriptConfig;

    move-result-object p3

    .line 29
    invoke-static {}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->obtainJs()Ljava/lang/String;

    move-result-object v5

    const-string v0, "obtainJs()"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 30
    const-string v3, "jsbridge"

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lio/bidmachine/rendering/model/ScriptConfig$Companion;->createInline$default(Lio/bidmachine/rendering/model/ScriptConfig$Companion;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)Lio/bidmachine/rendering/model/ScriptConfig;

    move-result-object v0

    filled-new-array {p3, v0}, [Lio/bidmachine/rendering/model/ScriptConfig;

    move-result-object p3

    .line 31
    invoke-static {p3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 44
    invoke-static {p2}, Lio/bidmachine/iab/mraid/MraidUtils;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_57

    invoke-interface {v0, p2}, Lio/bidmachine/rendering/measurer/HtmlMeasurer;->prepareCreativeForMeasure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_56

    goto :goto_57

    :cond_56
    move-object p2, v0

    .line 49
    :cond_57
    :goto_57
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->h:Lio/bidmachine/iab/script/ScriptInjector;

    invoke-virtual {v0, p2, p3}, Lio/bidmachine/iab/script/ScriptInjector;->modifyHtml(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    .line 55
    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const-string v4, "text/html"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget p1, Lio/bidmachine/iab/mraid/MraidLog;->logLevel:I

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyLogLevel(I)V

    return-void
.end method

.method public final notifyReady()V
    .registers 2

    .line 1
    const-string v0, "mraid.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public final onAddedToContainer(Landroid/view/ViewGroup;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->onViewAddedToContainer(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_e
    return-void
.end method

.method public final onClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onClicked()V

    :cond_7
    return-void
.end method

.method public final onShown()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->c:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onShown()V

    :cond_7
    return-void
.end method

.method public final onViewabilityChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->d:Lio/bidmachine/iab/mraid/MraidWebView;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebView;->onViewabilityChanged(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyViewable(Z)V

    :cond_10
    return-void
.end method

.method public final onWebViewClicked()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    invoke-interface {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onWebViewClicked()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.Callback (io.bidmachine.iab.mraid.MraidWebViewController$Callback)
.class public interface abstract Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCalendarEvent(Ljava/lang/String;)V
.end method

.method public abstract onClose()V
.end method

.method public abstract onError(Lio/bidmachine/iab/IabError;)V
.end method

.method public abstract onExpand(Ljava/lang/String;)V
.end method

.method public abstract onLoaded()V
.end method

.method public abstract onOpen(Ljava/lang/String;Landroid/graphics/Point;)V
.end method

.method public abstract onOpenPrivacySheet(Ljava/lang/String;)V
.end method

.method public abstract onOrientation(Lio/bidmachine/iab/mraid/MraidOrientationProperties;)V
.end method

.method public abstract onPageCommitVisible()V
.end method

.method public abstract onPageFinished(Ljava/lang/String;)V
.end method

.method public abstract onPlayVideo(Ljava/lang/String;)V
.end method

.method public abstract onStorePicture(Ljava/lang/String;)V
.end method

.method public abstract onUseCustomClose(Z)V
.end method

.method public abstract onWebViewClicked()V
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.Companion (io.bidmachine.iab.mraid.MraidWebViewController$Companion)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
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
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a (io.bidmachine.iab.mraid.MraidWebViewController$a)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidWebViewController;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 9
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lio/bidmachine/iab/mraid/MraidUtils;->INSTANCE:Lio/bidmachine/iab/mraid/MraidUtils;

    invoke-virtual {v2}, Lio/bidmachine/iab/mraid/MraidUtils;->obtainMraidJs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 11
    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "text/javascript"

    invoke-direct {v2, v3, v0, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "MraidWebViewController"

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    if-eqz p2, :cond_1d

    const/4 p1, 0x2

    const/4 p3, 0x0

    .line 5
    const-string v0, "ERR_INTERNET_DISCONNECTED"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1, p3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$setReceivedJsError$p(Lio/bidmachine/iab/mraid/MraidWebViewController;Z)V

    :cond_1d
    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .registers 3

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mraid.js"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(url.lowercase())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$isCommitVisible$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5
    :cond_f
    sget-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;

    const-string v1, "MraidWebViewController"

    invoke-static {v1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$getCallback$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onPageCommitVisible()V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->b()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->b()V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;

    const-string v0, "MraidWebViewController"

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 9
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$isLoaded$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_21

    return-void

    .line 13
    :cond_21
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$getHtmlMeasurer$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/rendering/measurer/Measurer;->onViewReady(Landroid/view/View;)V

    .line 14
    :cond_32
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$getCallback$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$Callback;->onPageFinished(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebView;->onPageFinished()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;

    const-string p2, "MraidWebViewController"

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 10
    invoke-virtual {p0, p4, p3, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 7

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 7
    :goto_16
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    .line 1
    sget-object p1, Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;

    const-string p2, "MraidWebViewController"

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->destroy()V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    const-string p2, "WebViewClient - onRenderProcessGone"

    invoke-static {p2}, Lio/bidmachine/iab/IabError;->internal(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p2

    const-string v0, "internal(\"WebViewClient - onRenderProcessGone\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$handleError(Lio/bidmachine/iab/mraid/MraidWebViewController;Lio/bidmachine/iab/IabError;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "request.url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 8
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string p1, "url"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1
    const-string v1, "mraid://"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 2
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$handleJsCommand(Lio/bidmachine/iab/mraid/MraidWebViewController;Ljava/lang/String;)V

    goto :goto_2b

    .line 3
    :cond_16
    invoke-static {p2}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->isHandled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->getMraidWebView()Lio/bidmachine/iab/mraid/MraidWebView;

    move-result-object p1

    invoke-static {p1, p2}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->handleJsCommand(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V

    goto :goto_2b

    .line 6
    :cond_26
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$performOpenUrl(Lio/bidmachine/iab/mraid/MraidWebViewController;Ljava/lang/String;)V

    :goto_2b
    const/4 p1, 0x1

    return p1
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a.C1163a (io.bidmachine.iab.mraid.MraidWebViewController$a$a)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController$a;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->b:Ljava/lang/String;

    iput p3, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a.b (io.bidmachine.iab.mraid.MraidWebViewController$a$b)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;

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
    const-string v0, "onPageCommitVisible"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a.c (io.bidmachine.iab.mraid.MraidWebViewController$a$c)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController$a;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;

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
    const-string v0, "onPageFinished"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a.d (io.bidmachine.iab.mraid.MraidWebViewController$a$d)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController$a;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;

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
    const-string v0, "onPageStarted"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.a.e (io.bidmachine.iab.mraid.MraidWebViewController$a$e)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController$a;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;

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
    const-string v0, "onRenderProcessGone"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$a$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.b (io.bidmachine.iab.mraid.MraidWebViewController$b)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidWebViewController;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMraidScreenMetricsChanged(Lio/bidmachine/iab/mraid/MraidScreenMetrics;)V
    .registers 4

    const-string v0, "mraidScreenMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$isLoaded$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->access$getMraidViewState$p(Lio/bidmachine/iab/mraid/MraidWebViewController;)Lio/bidmachine/iab/mraid/MraidViewState;

    move-result-object v0

    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    if-ne v0, v1, :cond_1c

    goto :goto_21

    .line 5
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$b;->a:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->applyScreenMetrics(Lio/bidmachine/iab/mraid/MraidScreenMetrics;)V

    :cond_21
    :goto_21
    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.c (io.bidmachine.iab.mraid.MraidWebViewController$c)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;)V
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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$c;->a:Ljava/lang/String;

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

    const-string v1, "handleJsCommand - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.d (io.bidmachine.iab.mraid.MraidWebViewController$d)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$d;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$d;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$d;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$d;

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
    const-string v0, "handleJsCommand not found"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.e (io.bidmachine.iab.mraid.MraidWebViewController$e)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$e;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$e;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$e;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$e;

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
    const-string v0, "Can\'t open url because webView wasn\'t clicked"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.f (io.bidmachine.iab.mraid.MraidWebViewController$f)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$f;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$f;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$f;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$f;

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
    const-string v0, "url is null or empty"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.g (io.bidmachine.iab.mraid.MraidWebViewController$g)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$g;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$g;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$g;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$g;

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
    const-string v0, "mraid.resize is not supported"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.h (io.bidmachine.iab.mraid.MraidWebViewController$h)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$h;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$h;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$h;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$h;

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
    const-string v0, "data is null or empty"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController.i (io.bidmachine.iab.mraid.MraidWebViewController$i)
.class public final Lio/bidmachine/iab/mraid/MraidWebViewController$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebViewController;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/iab/mraid/MraidWebViewController$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebViewController$i;

    invoke-direct {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController$i;-><init>()V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidWebViewController$i;->a:Lio/bidmachine/iab/mraid/MraidWebViewController$i;

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
    const-string v0, "data must be base64 encoded json"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebViewController$i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebViewController$$ExternalSyntheticLambda0 (io.bidmachine.iab.mraid.MraidWebViewController$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/iab/mraid/MraidWebViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/iab/mraid/MraidWebViewController;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidWebViewController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidWebViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebViewController$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/iab/mraid/MraidWebViewController;

    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->$r8$lambda$qJPl2_adBn2noaClseLyT6vSjjQ(Lio/bidmachine/iab/mraid/MraidWebViewController;)V

    return-void
.end method
