###### Class ads_mobile_sdk.vk (ads_mobile_sdk.vk)
.class public final Lads_mobile_sdk/vk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ld;


# instance fields
.field public final a:Lads_mobile_sdk/sj1;

.field public final b:Lads_mobile_sdk/zx0;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/sj1;Lads_mobile_sdk/zx0;)V
    .registers 4

    .line 1
    const-string v0, "internalAppOpenAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/vk;->a:Lads_mobile_sdk/sj1;

    .line 17
    iput-object p2, p0, Lads_mobile_sdk/vk;->b:Lads_mobile_sdk/zx0;

    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/vk;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 24
    iget-boolean p1, p1, Lads_mobile_sdk/ey3;->b:Z

    if-eqz p1, :cond_1d

    .line 25
    iget-object p1, p0, Lads_mobile_sdk/vk;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 26
    iget-object p1, p0, Lads_mobile_sdk/vk;->a:Lads_mobile_sdk/sj1;

    invoke-virtual {p1}, Lads_mobile_sdk/ci1;->i()Lads_mobile_sdk/zy;

    move-result-object p1

    iget-boolean p1, p1, Lads_mobile_sdk/zy;->u:Z

    if-eqz p1, :cond_1d

    .line 28
    iget-object p1, p0, Lads_mobile_sdk/vk;->b:Lads_mobile_sdk/zx0;

    invoke-interface {p1}, Lads_mobile_sdk/zx0;->d()V

    .line 30
    :cond_1d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
