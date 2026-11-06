###### Class com.ironsource.Qc (com.ironsource.Qc)
.class public final Lcom/ironsource/Qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Pc;


# instance fields
.field private a:Lcom/ironsource/L2;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/N2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/Qc;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/L2;)V
    .registers 3

    const-string v0, "loadListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/Qc;->a:Lcom/ironsource/L2;

    return-void
.end method

.method public final a(Lcom/ironsource/N2;)V
    .registers 3

    const-string v0, "showListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/Qc;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onBannerClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Qc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/N2;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/N2;->onBannerClick()V

    :cond_d
    return-void
.end method

.method public onBannerInitFailed(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onBannerInitSuccess()V
    .registers 1

    .line 0
    return-void
.end method

.method public onBannerLoadFail(Ljava/lang/String;)V
    .registers 3

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Qc;->a:Lcom/ironsource/L2;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/ironsource/L2;->onBannerLoadFail(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public onBannerLoadSuccess(Lcom/ironsource/R9;Lcom/ironsource/k8;)V
    .registers 4

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Qc;->a:Lcom/ironsource/L2;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1, p2}, Lcom/ironsource/L2;->onBannerLoadSuccess(Lcom/ironsource/R9;Lcom/ironsource/k8;)V

    :cond_11
    return-void
.end method

.method public onBannerShowSuccess()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Qc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/N2;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/N2;->onBannerShowSuccess()V

    :cond_d
    return-void
.end method
