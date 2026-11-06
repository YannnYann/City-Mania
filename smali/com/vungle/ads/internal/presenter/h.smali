###### Class com.vungle.ads.internal.presenter.h (com.vungle.ads.internal.presenter.h)
.class public final Lcom/vungle/ads/internal/presenter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/network/a;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/h;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/ads/internal/network/o;)V
    .registers 3

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "MRAIDPresenter"

    const-string v0, "send RI success"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "MRAIDPresenter"

    const-string v1, "send RI Failure"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 4
    const-string v1, "Error RI API calls: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_18

    .line 657
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    .line 658
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/h;->a:Lcom/vungle/ads/internal/presenter/r;

    .line 659
    invoke-virtual {p1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p1

    .line 660
    invoke-virtual {v0, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method
