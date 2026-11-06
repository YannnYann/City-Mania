###### Class com.vungle.ads.internal.ui.view.m (com.vungle.ads.internal.ui.view.m)
.class public final Lcom/vungle/ads/internal/ui/view/m;
.super Lcom/vungle/ads/internal/ui/view/e;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/nativead/a;
.implements Lcom/vungle/ads/nativead/b;
.implements Lcom/vungle/ads/internal/util/w;


# instance fields
.field public d:Lcom/vungle/ads/internal/ui/view/d;

.field public e:Landroid/widget/ImageView;

.field public f:Ljava/lang/ref/WeakReference;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Lcom/vungle/ads/internal/k2;

.field public final n:Lcom/vungle/ads/internal/util/x;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Lcom/vungle/ads/internal/ui/view/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internal"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/ui/view/e;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/o1;)V

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->NATIVE_VIDEO_PREPARE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->m:Lcom/vungle/ads/internal/k2;

    .line 19
    new-instance p1, Lcom/vungle/ads/internal/util/x;

    invoke-direct {p1}, Lcom/vungle/ads/internal/util/x;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance p1, Lcom/vungle/ads/internal/ui/view/l;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/ui/view/l;-><init>(Lcom/vungle/ads/internal/ui/view/m;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->q:Lcom/vungle/ads/internal/ui/view/l;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/ui/view/m;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/m;->f:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/m;FF)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 199
    :goto_d
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-nez p0, :cond_12

    return-void

    :cond_12
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/ui/view/m;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz p1, :cond_25

    .line 3
    iget-boolean v0, p1, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    xor-int/lit8 v1, v0, 0x1

    .line 4
    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/ui/view/d;->setMuted(Z)V

    if-nez v0, :cond_1c

    .line 5
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz p0, :cond_25

    sget p1, Lcom/vungle/ads/R$drawable;->liftoff_icon_mute:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 7
    :cond_1c
    iget-object p0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz p0, :cond_25

    sget p1, Lcom/vungle/ads/R$drawable;->liftoff_icon_unmute:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_25
    return-void
.end method

.method public static synthetic getVideoView$annotations()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 260
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "destroy()"

    const-string v1, "NativeAd-VideoContentView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 261
    :try_start_a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 262
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 263
    const-string v2, "unregisterReceiver()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/util/x;->a(Lcom/vungle/ads/internal/util/w;)V

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2b

    :catchall_29
    move-exception v2

    goto :goto_32

    .line 267
    :cond_2b
    :goto_2b
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 268
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_29

    goto :goto_3c

    :goto_32
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    :goto_3c
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v3, "unregisterReceiver"

    invoke-static {v1, v3, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_49
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->f:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 276
    :cond_50
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->f:Ljava/lang/ref/WeakReference;

    .line 277
    sget-object v1, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->q:Lcom/vungle/ads/internal/ui/view/l;

    invoke-static {v1}, Lcom/vungle/ads/internal/util/a;->b(Lcom/vungle/ads/internal/util/b;)V

    .line 278
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/d;->l()V

    .line 279
    :cond_60
    iput-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    .line 281
    invoke-super {p0}, Lcom/vungle/ads/internal/ui/view/e;->a()V

    return-void
.end method

.method public final a(I)V
    .registers 6

    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, p1, :cond_57

    if-ge p1, v0, :cond_57

    .line 211
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 212
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/m;->getDuration()I

    move-result p1

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "OM_KEY_DURATION"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v1, :cond_29

    .line 217
    iget-boolean v1, v1, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    .line 218
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 219
    :goto_2a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OM_KEY_VOLUME"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/o1;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/o1;->a(ILjava/util/Map;)V

    return-void

    :cond_57
    const/16 v3, 0x32

    if-gt v0, p1, :cond_77

    if-ge p1, v3, :cond_77

    .line 230
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 231
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v0, "checkpoint.25"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;I)V

    return-void

    :cond_77
    const/16 v0, 0x4b

    if-gt v3, p1, :cond_97

    if-ge p1, v0, :cond_97

    .line 237
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 238
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v0, "checkpoint.50"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;I)V

    return-void

    :cond_97
    const/16 v3, 0x64

    if-gt v0, p1, :cond_b7

    if-ge p1, v3, :cond_b7

    .line 244
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 245
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v0, "checkpoint.75"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;I)V

    return-void

    :cond_b7
    if-lt p1, v3, :cond_ca

    .line 251
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 252
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    const-string v0, "checkpoint.100"

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;Ljava/lang/String;)V

    :cond_ca
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "initView"

    const-string v1, "NativeAd-VideoContentView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getImageView$vungle_ads_release()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_1a
    sget-object v0, Lcom/vungle/ads/internal/util/d;->f:Lcom/vungle/ads/internal/util/d;

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->q:Lcom/vungle/ads/internal/ui/view/l;

    invoke-static {v0}, Lcom/vungle/ads/internal/util/a;->a(Lcom/vungle/ads/internal/util/b;)V

    .line 14
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->t()Z

    move-result v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMuted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v2, Lcom/vungle/ads/internal/ui/view/d;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/ui/view/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    .line 18
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/ui/view/d;->setMuted(Z)V

    .line 19
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v2, :cond_4f

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/ui/view/d;->setLooping(Z)V

    .line 20
    :cond_4f
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ui/view/d;->m()V

    .line 21
    :cond_56
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v2, :cond_5d

    invoke-virtual {v2, p0}, Lcom/vungle/ads/internal/ui/view/d;->setVideoLifecycleCallback(Lcom/vungle/ads/nativead/b;)V

    .line 22
    :cond_5d
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v2, :cond_69

    new-instance v3, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/ui/view/m;)V

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/ui/view/d;->setVideoTransformCallback$vungle_ads_release(Lcom/vungle/ads/internal/ui/view/b;)V

    .line 27
    :cond_69
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 31
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 32
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-nez v3, :cond_79

    goto :goto_7c

    :cond_79
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :goto_7c
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    .line 36
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    .line 40
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x6

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v4, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-nez v4, :cond_9b

    goto :goto_9e

    :cond_9b
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :goto_9e
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-nez v2, :cond_a3

    goto :goto_a7

    :cond_a3
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 44
    :goto_a7
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_b3

    new-instance v4, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/ui/view/m;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b3
    if-eqz v0, :cond_bf

    .line 45
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_c8

    sget v2, Lcom/vungle/ads/R$drawable;->liftoff_icon_mute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c8

    .line 47
    :cond_bf
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_c8

    sget v2, Lcom/vungle/ads/R$drawable;->liftoff_icon_unmute:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_d4

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 50
    :cond_d4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x0

    .line 52
    :try_start_d8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_e3

    check-cast p1, Landroid/app/Activity;

    goto :goto_fb

    :catchall_e1
    move-exception p1

    goto :goto_12f

    .line 55
    :cond_e3
    :goto_e3
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_fa

    .line 56
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_ee

    check-cast p1, Landroid/app/Activity;

    goto :goto_fb

    .line 57
    :cond_ee
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "ctx.baseContext"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e3

    :cond_fa
    move-object p1, v0

    :goto_fb
    if-eqz p1, :cond_104

    .line 58
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->f:Ljava/lang/ref/WeakReference;

    .line 59
    :cond_104
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adActivity="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->f:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_11b

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    goto :goto_11c

    :cond_11b
    move-object v2, v0

    :goto_11c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12e
    .catchall {:try_start_d8 .. :try_end_12e} :catchall_e1

    goto :goto_138

    :goto_12f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_138
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->m:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 68
    :try_start_13d
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/o1;->n()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "parse(this)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v1, :cond_158

    invoke-virtual {v1, p1}, Lcom/vungle/ads/internal/ui/view/d;->setSource(Landroid/net/Uri;)V

    goto :goto_158

    :catchall_156
    move-exception p1

    goto :goto_166

    .line 191
    :cond_158
    :goto_158
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz p1, :cond_161

    invoke-virtual {p1}, Lcom/vungle/ads/internal/ui/view/d;->i()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 192
    :cond_161
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_165
    .catchall {:try_start_13d .. :try_end_165} :catchall_156

    goto :goto_170

    :goto_166
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 196
    :goto_170
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_181

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/vungle/ads/internal/ui/view/m;->a(Ljava/lang/String;I)V

    :cond_181
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "extra"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 254
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/vungle/ads/internal/ui/view/e;->a(Landroid/content/Context;)V

    .line 255
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getImageView$vungle_ads_release()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_26

    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_26
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-nez v0, :cond_2d

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    :goto_30
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-nez v0, :cond_35

    goto :goto_38

    :cond_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " e="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/o1;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    new-instance p2, Lcom/vungle/ads/NativeVideoPlaybackError;

    invoke-direct {p2, p1}, Lcom/vungle/ads/NativeVideoPlaybackError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->e()Lcom/vungle/ads/internal/util/t;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v1, :cond_c

    .line 201
    iget-boolean v1, v1, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 203
    :goto_d
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silentModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentIsMuted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeAd-VideoContentView"

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_60

    if-eqz v1, :cond_60

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 205
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz p1, :cond_60

    .line 206
    iget-boolean v1, p1, Lcom/vungle/ads/internal/ui/view/d;->o:Z

    xor-int/2addr v0, v1

    .line 207
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ui/view/d;->setMuted(Z)V

    if-nez v1, :cond_57

    .line 208
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_60

    sget v0, Lcom/vungle/ads/R$drawable;->liftoff_icon_mute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 210
    :cond_57
    iget-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_60

    sget v0, Lcom/vungle/ads/R$drawable;->liftoff_icon_unmute:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_60
    return-void
.end method

.method public final b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->m:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->m:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ui/view/e;->getInternal()Lcom/vungle/ads/internal/o1;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/vungle/ads/internal/r;->m:Lcom/vungle/ads/internal/util/t;

    const/4 v3, 0x4

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public getCurrentTime()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/d;->getCurrentPositionMs()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/d;->getDurationMs()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoView()Lcom/vungle/ads/internal/ui/view/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .registers 5

    .line 1
    const-string v0, "NativeAd-VideoContentView"

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    :try_start_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_35

    .line 4
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "registerReceiver()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v1, p0}, Lcom/vungle/ads/internal/util/x;->a(Lcom/vungle/ads/internal/util/w;)V

    .line 7
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_35

    :catchall_33
    move-exception v1

    goto :goto_3c

    .line 10
    :cond_35
    :goto_35
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_33

    goto :goto_46

    :goto_3c
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    :goto_46
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_53

    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "registerReceiver"

    invoke-static {v0, v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_53
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 4

    .line 1
    const-string v0, "NativeAd-VideoContentView"

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    :try_start_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v1, "unregisterReceiver()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/util/x;->a(Lcom/vungle/ads/internal/util/w;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/view/m;->n:Lcom/vungle/ads/internal/util/x;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_29

    :catchall_27
    move-exception v1

    goto :goto_30

    .line 8
    :cond_29
    :goto_29
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_27

    goto :goto_3a

    :goto_30
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    :goto_3a
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "unregisterReceiver"

    invoke-static {v0, v2, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    return-void
.end method

.method public final setVideoView(Lcom/vungle/ads/internal/ui/view/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m;->d:Lcom/vungle/ads/internal/ui/view/d;

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.m$$ExternalSyntheticLambda0 (com.vungle.ads.internal.ui.view.m$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/b;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/m;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/m;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/m;

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/ui/view/m;

    invoke-static {v0, p1, p2}, Lcom/vungle/ads/internal/ui/view/m;->a(Lcom/vungle/ads/internal/ui/view/m;FF)V

    return-void
.end method

###### Class com.vungle.ads.internal.ui.view.m$$ExternalSyntheticLambda1 (com.vungle.ads.internal.ui.view.m$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/ui/view/m;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/m;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/view/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/view/m$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/ui/view/m;

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/ui/view/m;->a(Lcom/vungle/ads/internal/ui/view/m;Landroid/view/View;)V

    return-void
.end method
