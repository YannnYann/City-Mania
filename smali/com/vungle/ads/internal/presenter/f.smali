###### Class com.vungle.ads.internal.presenter.f (com.vungle.ads.internal.presenter.f)
.class public final Lcom/vungle/ads/internal/presenter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/m;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/r;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/f;->b:Lcom/vungle/ads/internal/presenter/r;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 7

    if-nez p1, :cond_25

    .line 1
    new-instance v0, Lcom/vungle/ads/LinkError;

    .line 2
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->DEEPLINK_OPEN_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 3
    const-string v2, "Fail to open "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/LinkError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/f;->b:Lcom/vungle/ads/internal/presenter/r;

    .line 303
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 307
    :cond_25
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/f;->b:Lcom/vungle/ads/internal/presenter/r;

    .line 308
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 309
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 310
    const-string v2, "deeplink.click"

    invoke-virtual {v0, v2, p1, v1}, Lcom/vungle/ads/internal/model/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 311
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/f;->b:Lcom/vungle/ads/internal/presenter/r;

    .line 899
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 900
    new-instance v3, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v3, v1}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 901
    iput-object v2, v3, Lcom/vungle/ads/internal/network/p;->i:Ljava/lang/String;

    .line 902
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 903
    iput-object v1, v3, Lcom/vungle/ads/internal/network/p;->j:Lcom/vungle/ads/internal/util/t;

    .line 904
    invoke-virtual {v3}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v1

    .line 905
    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/r;->c()Lcom/vungle/ads/internal/network/r;

    move-result-object v3

    const/4 v4, 0x0

    .line 906
    invoke-virtual {v3, v1, v4}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/q;Z)V

    goto :goto_3c

    :cond_62
    return-void
.end method
