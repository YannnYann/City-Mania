###### Class com.ironsource.InterfaceC3947ya (com.ironsource.ya)
.class public interface abstract Lcom/ironsource/ya;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ya$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/webkit/WebView;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a()Z
.end method

###### Class com.ironsource.InterfaceC3947ya.a (com.ironsource.ya$a)
.class public final Lcom/ironsource/ya$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ya;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/ironsource/ya$a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    if-lt p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 4
    :goto_a
    iput-boolean p1, p0, Lcom/ironsource/ya$a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_6
    invoke-direct {p0, p1}, Lcom/ironsource/ya$a;-><init>(I)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/ya$a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_8
    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/ya$a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .registers 3

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/ironsource/ya$a;->a:Landroid/webkit/WebView;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_5
    iget-boolean v0, p0, Lcom/ironsource/ya$a;->b:Z

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/ironsource/ya$a;->b(Ljava/lang/String;)V

    return-void

    :catchall_d
    move-exception v0

    goto :goto_13

    .line 3
    :cond_f
    invoke-direct {p0, p1}, Lcom/ironsource/ya$a;->c(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_d

    return-void

    .line 5
    :goto_13
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ironsource/ya$a;->b:Z

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/ya$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ya$a;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
