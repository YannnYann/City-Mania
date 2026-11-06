###### Class com.ironsource.C3688k8 (com.ironsource.k8)
.class public Lcom/ironsource/k8;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/L8;


# static fields
.field private static final b:Ljava/lang/String; = "IronSourceAdContainer"


# instance fields
.field private a:Lcom/ironsource/p8;


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/k8;)Lcom/ironsource/p8;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputa(Lcom/ironsource/k8;Lcom/ironsource/p8;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/p8;Landroid/content/Context;)V
    .registers 5

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/p8;->c()Lcom/ironsource/i8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/i8;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/p8;->c()Lcom/ironsource/i8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/i8;->a()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iput-object p1, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    .line 13
    invoke-virtual {p1}, Lcom/ironsource/p8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/n8;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "configs"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "visibilityParams"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_24

    :catch_17
    move-exception v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    :goto_24
    iget-object v1, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v1}, Lcom/ironsource/p8;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adViewId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v1, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    .line 15
    invoke-virtual {v1}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v1

    .line 16
    const-string v2, "destroyBanner"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/n8;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4
    invoke-direct {p0}, Lcom/ironsource/k8;->b()V

    return-void

    .line 5
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdPresenter or mAdPresenter.getAdViewLogic() are null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-eqz v0, :cond_2b

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/p8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_2b

    .line 13
    :cond_14
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/n8;->e()V

    .line 14
    sget-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    new-instance v1, Lcom/ironsource/k8$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/k8$a;-><init>(Lcom/ironsource/k8;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    goto :goto_2d

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_29

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 15
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-nez v0, :cond_5

    return-void

    .line 19
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/p8;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 17
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/p8;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/p8;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPresentingView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0}, Lcom/ironsource/p8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/ironsource/i8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/p8;->c()Lcom/ironsource/i8;

    move-result-object v0

    return-object v0

    .line 5
    :cond_9
    new-instance v0, Lcom/ironsource/i8;

    invoke-direct {v0}, Lcom/ironsource/i8;-><init>()V

    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IronSourceAdContainer"

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-nez p1, :cond_1b

    goto :goto_3a

    .line 9
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object p1

    const-string v0, "isVisible"

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/ironsource/n8;->a(Ljava/lang/String;IZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 13
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 14
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IronSourceAdContainer"

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/k8;->a:Lcom/ironsource/p8;

    if-nez v0, :cond_1b

    goto :goto_3a

    .line 9
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/ironsource/p8;->b()Lcom/ironsource/n8;

    move-result-object v0

    const-string v1, "isWindowVisible"

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/n8;->a(Ljava/lang/String;IZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    .line 15
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 16
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

###### Class com.ironsource.C3688k8.a (com.ironsource.k8$a)
.class Lcom/ironsource/k8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/k8;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/k8;


# direct methods
.method public constructor <init>(Lcom/ironsource/k8;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    iput-object p2, p0, Lcom/ironsource/k8$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/k8$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    invoke-static {v0}, Lcom/ironsource/k8;->-$$Nest$fgeta(Lcom/ironsource/k8;)Lcom/ironsource/p8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/p8;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    invoke-static {v0}, Lcom/ironsource/k8;->-$$Nest$fgeta(Lcom/ironsource/k8;)Lcom/ironsource/p8;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/k8$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/k8$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/p8;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/k8$a;->c:Lcom/ironsource/k8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/k8;->-$$Nest$fputa(Lcom/ironsource/k8;Lcom/ironsource/p8;)V

    return-void
.end method
