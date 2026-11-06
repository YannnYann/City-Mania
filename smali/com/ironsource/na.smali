###### Class com.ironsource.C3744na (com.ironsource.na)
.class public final Lcom/ironsource/na;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/za;


# instance fields
.field private a:Lcom/ironsource/ya;

.field private b:Lcom/ironsource/Xc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/ya;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javascriptEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/na;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/ironsource/na;->a:Lcom/ironsource/ya;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/ironsource/ya;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    .line 1
    new-instance p2, Lcom/ironsource/ya$a;

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3, p4}, Lcom/ironsource/ya$a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/ironsource/na;-><init>(Landroid/content/Context;Lcom/ironsource/ya;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ironsource/na;->b:Lcom/ironsource/Xc;

    return-void
.end method

.method public final a(Lcom/ironsource/Xc;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/ironsource/na;->b:Lcom/ironsource/Xc;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/na;->a:Lcom/ironsource/ya;

    const/4 v1, 0x0

    const-string v2, "javascriptEngine"

    if-nez v0, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    invoke-interface {v0}, Lcom/ironsource/ya;->a()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2
    iget-object v0, p0, Lcom/ironsource/na;->a:Lcom/ironsource/ya;

    if-nez v0, :cond_1e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1e
    invoke-interface {v0, p0}, Lcom/ironsource/ya;->a(Landroid/webkit/WebView;)V

    .line 4
    :cond_21
    iget-object v0, p0, Lcom/ironsource/na;->a:Lcom/ironsource/ya;

    if-nez v0, :cond_29

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object v1, v0

    :goto_2a
    invoke-interface {v1, p1}, Lcom/ironsource/ya;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_14

    .line 1
    iget-object v0, p0, Lcom/ironsource/na;->b:Lcom/ironsource/Xc;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/ironsource/Xc;->onBackButtonPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    return v1

    .line 3
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
