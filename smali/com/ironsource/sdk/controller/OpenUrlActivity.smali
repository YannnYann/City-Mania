###### Class com.ironsource.sdk.controller.OpenUrlActivity (com.ironsource.sdk.controller.OpenUrlActivity)
.class public Lcom/ironsource/sdk/controller/OpenUrlActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/OpenUrlActivity$d;,
        Lcom/ironsource/sdk/controller/OpenUrlActivity$c;,
        Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "OpenUrlActivity"

.field private static final k:I

.field private static final l:I


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/ironsource/sdk/controller/v;

.field private c:Landroid/widget/ProgressBar;

.field d:Z

.field private e:Landroid/widget/RelativeLayout;

.field private f:Ljava/lang/String;

.field private final g:Landroid/os/Handler;

.field private h:Z

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/v;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b:Lcom/ironsource/sdk/controller/v;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetg(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeth(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->h:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeti(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->k:I

    .line 2
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->l:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->h:Z

    .line 376
    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$b;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$b;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_18

    .line 2
    new-instance v0, Landroid/widget/ProgressBar;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030073

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    .line 4
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 8
    :cond_18
    sget v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->l:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3d
    return-void
.end method

.method private b()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    .line 3
    sget v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;->k:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity-IA;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->loadUrl(Ljava/lang/String;)V

    .line 12
    :cond_2e
    sget v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->k:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_43

    .line 14
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17
    iget-object v2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_43
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a()V

    .line 24
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_4f

    .line 25
    const-string v2, "secondary"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->b(ZLjava/lang/String;)V

    :cond_4f
    return-void
.end method

.method private c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_7
    return-void
.end method

.method private d()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method private f()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private g()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    .line 2
    const-string v2, "secondary"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/v;->b(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_32

    .line 6
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    .line 9
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 10
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_25
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 14
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b:Lcom/ironsource/sdk/controller/v;

    if-eqz v0, :cond_d

    .line 2
    const-string v1, "secondaryClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/v;->c(Ljava/lang/String;)V

    .line 5
    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 5
    :try_start_a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception p1

    .line 7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenUrlActivity:: loadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpenUrlActivity"

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 4
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    const-string p1, "OpenUrlActivity"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_a
    invoke-static {p0}, Lcom/ironsource/W9;->b(Landroid/content/Context;)Lcom/ironsource/W9;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/W9;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/e;->k()Lcom/ironsource/sdk/controller/l;

    move-result-object p1

    check-cast p1, Lcom/ironsource/sdk/controller/v;

    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b:Lcom/ironsource/sdk/controller/v;

    .line 10
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->e()V

    .line 13
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->f()V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 19
    const-string v0, "external_url"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->f:Ljava/lang/String;

    .line 20
    const-string v0, "secondary_web_view"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->d:Z

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 23
    const-string v0, "immersive"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->h:Z

    if-eqz p1, :cond_5f

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$a;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$a;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 41
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_5f

    :catch_5d
    move-exception p1

    goto :goto_70

    .line 45
    :cond_5f
    :goto_5f
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->e:Landroid/widget/RelativeLayout;

    .line 46
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6f} :catch_5d

    return-void

    .line 49
    :goto_70
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 50
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->c()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->h:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    const/16 v0, 0x18

    if-ne p1, v0, :cond_15

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->g()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->b()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->h:Z

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 4
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.a (com.ironsource.sdk.controller.OpenUrlActivity$a)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$a;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 5

    and-int/lit16 p1, p1, 0x1002

    if-nez p1, :cond_20

    .line 1
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$a;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetg(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgeti(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$a;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetg(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgeti(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.b (com.ironsource.sdk.controller.OpenUrlActivity$b)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$b;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$b;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$b;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgeth(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Z

    move-result v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getActivityUIFlags(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.c (com.ironsource.sdk.controller.OpenUrlActivity$c)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/OpenUrlActivity;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetc(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetc(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagCatchUrlError()Lcom/ironsource/O3;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/O3;->b()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/O3;->e()Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p2}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/v;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 7
    invoke-virtual {p2, p3, p4}, Lcom/ironsource/sdk/controller/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_31

    .line 10
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/ironsource/O3;->d()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 11
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_23

    return-void

    .line 15
    :goto_31
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    :cond_38
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Chromium process crashed - detail.didCrash():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lads_mobile_sdk/g41$$ExternalSyntheticApiModelOutline0;->m(Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpenUrlActivity"

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/Qe;

    .line 4
    invoke-static {}, Lcom/ironsource/ka;->e()Lcom/ironsource/ka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/ka;->d()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/ironsource/sdk/controller/FeaturesManager;->getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/FeaturesManager;->getFeatureFlagClickCheck()Lcom/ironsource/P3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/P3;->b()Z

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/ironsource/Qe;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/Qe;->a()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 8
    :try_start_1f
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1, p2}, Lcom/ironsource/tg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/v;->A()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_2e

    goto :goto_59

    :catch_2e
    move-exception p1

    .line 11
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    instance-of p1, p1, Landroid/content/ActivityNotFoundException;

    if-eqz p1, :cond_45

    .line 17
    const-string p1, "no activity to handle url"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 19
    :cond_45
    const-string p1, "activity failed to open with unspecified reason"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_4a
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-static {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->-$$Nest$fgetb(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/v;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/ironsource/sdk/controller/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$c;->a:Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_60
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.d (com.ironsource.sdk.controller.OpenUrlActivity$d)
.class Lcom/ironsource/sdk/controller/OpenUrlActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "is_store"

.field static final b:Ljava/lang/String; = "external_url"

.field static final c:Ljava/lang/String; = "secondary_web_view"

.field static final d:Ljava/lang/String; = "immersive"

.field static final e:Ljava/lang/String; = "no activity to handle url"

.field static final f:Ljava/lang/String; = "activity failed to open with unspecified reason"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.controller.OpenUrlActivity.e (com.ironsource.sdk.controller.OpenUrlActivity$e)
.class public Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/OpenUrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/h;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/h;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    .line 7
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a:Lcom/ironsource/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->a:Lcom/ironsource/h;

    invoke-interface {v0, p1}, Lcom/ironsource/h;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->c:Ljava/lang/String;

    const-string v2, "external_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    const-string v2, "secondary_web_view"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    const-string v2, "is_store"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    const-string v2, "immersive"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_2b

    .line 10
    iget p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b:I

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2b
    return-object v0
.end method

.method public a(I)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .registers 2

    .line 1
    iput p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->f:Z

    return-object p0
.end method

.method public b(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/ironsource/sdk/controller/OpenUrlActivity$e;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity$e;->e:Z

    return-object p0
.end method
