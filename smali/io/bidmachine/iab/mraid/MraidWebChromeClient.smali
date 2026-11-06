###### Class io.bidmachine.iab.mraid.MraidWebChromeClient (io.bidmachine.iab.mraid.MraidWebChromeClient)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient;
.super Lio/bidmachine/rendering/utils/BaseWebChromeClient;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/utils/BaseWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/JsResult;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_54

    .line 7
    :cond_a
    sget-object v1, Lio/bidmachine/iab/mraid/MraidLog;->INSTANCE:Lio/bidmachine/iab/mraid/MraidLog;

    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidLog;->canSendDLog()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "consoleMessage.message()"

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "Uncaught ReferenceError"

    invoke-static {v2, v6, v0, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 8
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v6, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;

    invoke-direct {v6, v2, p1}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;-><init>(Ljava/lang/String;Landroid/webkit/ConsoleMessage;)V

    const-string v2, "JS console"

    invoke-static {v2, v6}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 16
    :cond_33
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidLog;->canSendELog()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "AppodealAlert"

    invoke-static {v1, v2, v0, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 17
    new-instance v0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;

    invoke-direct {v0, p1}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;-><init>(Landroid/webkit/ConsoleMessage;)V

    const-string p1, "Appodeal"

    invoke-static {p1, v0}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    :cond_52
    const/4 p1, 0x1

    return p1

    :cond_54
    :goto_54
    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;

    invoke-direct {p1, p3}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;-><init>(Ljava/lang/String;)V

    const-string p2, "JS alert"

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-virtual {p0, p4}, Lio/bidmachine/iab/mraid/MraidWebChromeClient;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;

    invoke-direct {p1, p3}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;-><init>(Ljava/lang/String;)V

    const-string p2, "JS confirm"

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-virtual {p0, p4}, Lio/bidmachine/iab/mraid/MraidWebChromeClient;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    const-string p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;

    invoke-direct {p1, p3}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;-><init>(Ljava/lang/String;)V

    const-string p2, "JS prompt"

    invoke-static {p2, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-virtual {p0, p5}, Lio/bidmachine/iab/mraid/MraidWebChromeClient;->a(Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.iab.mraid.MraidWebChromeClient.a (io.bidmachine.iab.mraid.MraidWebChromeClient$a)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/webkit/ConsoleMessage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/ConsoleMessage;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->b:Landroid/webkit/ConsoleMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1f

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1f
    :goto_1f
    const-string v0, ""

    .line 2
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->b:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->b:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebChromeClient.b (io.bidmachine.iab.mraid.MraidWebChromeClient$b)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/ConsoleMessage;


# direct methods
.method public constructor <init>(Landroid/webkit/ConsoleMessage;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;->a:Landroid/webkit/ConsoleMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;->a:Landroid/webkit/ConsoleMessage;

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    const-string v0, "consoleMessage.message()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppodealAlert:"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebChromeClient.c (io.bidmachine.iab.mraid.MraidWebChromeClient$c)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebChromeClient.d (io.bidmachine.iab.mraid.MraidWebChromeClient$d)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.iab.mraid.MraidWebChromeClient.e (io.bidmachine.iab.mraid.MraidWebChromeClient$e)
.class public final Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/mraid/MraidWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
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
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;->a:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebChromeClient$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
