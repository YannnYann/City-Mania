###### Class ads_mobile_sdk.on0 (ads_mobile_sdk.on0)
.class public final Lads_mobile_sdk/on0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/pn0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn0;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lads_mobile_sdk/on0;->a:Lads_mobile_sdk/pn0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/on0;->a:Lads_mobile_sdk/pn0;

    .line 67
    iget-object v1, v0, Lads_mobile_sdk/pn0;->c:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 68
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 69
    iget-object v3, v0, Lads_mobile_sdk/pn0;->c:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 70
    iget-object v0, v0, Lads_mobile_sdk/pn0;->d:Lads_mobile_sdk/kn0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v2, :cond_24

    if-gtz v1, :cond_19

    goto :goto_24

    :cond_19
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_25

    move v0, v1

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x0

    .line 71
    :cond_25
    :goto_25
    iget-object v1, p0, Lads_mobile_sdk/on0;->a:Lads_mobile_sdk/pn0;

    iget-object v1, v1, Lads_mobile_sdk/pn0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    iget-object v1, p0, Lads_mobile_sdk/on0;->a:Lads_mobile_sdk/pn0;

    iget-object v1, v1, Lads_mobile_sdk/pn0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_4f

    .line 75
    iget-object v1, p0, Lads_mobile_sdk/on0;->a:Lads_mobile_sdk/pn0;

    iget-object v1, v1, Lads_mobile_sdk/pn0;->a:Landroid/os/Handler;

    new-instance v2, Lads_mobile_sdk/nn0;

    invoke-direct {v2, p0, v0}, Lads_mobile_sdk/nn0;-><init>(Lads_mobile_sdk/on0;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    return-void
.end method
