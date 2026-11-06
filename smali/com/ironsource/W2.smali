###### Class com.ironsource.W2 (com.ironsource.W2)
.class public final Lcom/ironsource/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/N2;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerAdViewInternal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerAdViewInternal.kt\ncom/unity3d/ironsourceads/internal/load/banners/BannerAdViewInternal\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/R9;

.field private final b:Lcom/ironsource/k8;

.field private final c:Lcom/ironsource/g2;

.field private final d:Lcom/ironsource/r1;

.field private final e:Lcom/ironsource/rc;

.field private final f:Lcom/ironsource/hg;

.field private final g:Lcom/ironsource/Q8;

.field private final h:Lcom/ironsource/Q8$a;

.field private final i:Z

.field private j:Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/X2;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VN1cVhucr3DiqxBYOCbwEj8Snu0(Lcom/ironsource/W2;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/W2;->b(Lcom/ironsource/W2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dv8HJ4Mk2hP1dgc60Cc31693e-Q(Lcom/ironsource/W2;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/W2;->c(Lcom/ironsource/W2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xBZ8Lay9Sq4VtFUvqqM25kUEtPk(Lcom/ironsource/W2;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/W2;->d(Lcom/ironsource/W2;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Lcom/ironsource/D7;)V
    .registers 11

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionDataReporter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkDestroyAPI"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDepthService"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionDepthServiceEditor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epService"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/W2;->a:Lcom/ironsource/R9;

    .line 3
    iput-object p2, p0, Lcom/ironsource/W2;->b:Lcom/ironsource/k8;

    .line 4
    iput-object p3, p0, Lcom/ironsource/W2;->c:Lcom/ironsource/g2;

    .line 5
    iput-object p4, p0, Lcom/ironsource/W2;->d:Lcom/ironsource/r1;

    .line 6
    iput-object p5, p0, Lcom/ironsource/W2;->e:Lcom/ironsource/rc;

    .line 7
    iput-object p6, p0, Lcom/ironsource/W2;->f:Lcom/ironsource/hg;

    .line 8
    iput-object p7, p0, Lcom/ironsource/W2;->g:Lcom/ironsource/Q8;

    .line 10
    iput-object p8, p0, Lcom/ironsource/W2;->h:Lcom/ironsource/Q8$a;

    .line 15
    invoke-interface {p9}, Lcom/ironsource/u5;->o()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ironsource/W2;->i:Z

    .line 17
    new-instance p2, Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

    invoke-virtual {p1}, Lcom/ironsource/R9;->f()Ljava/lang/String;

    move-result-object p3

    const-string p4, "getInstanceId(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object p4

    const-string p5, "getId(...)"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3, p4}, Lcom/unity3d/ironsourceads/banner/BannerAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/W2;->j:Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

    .line 18
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/W2;->k:Ljava/lang/ref/WeakReference;

    .line 20
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ironsource/W2;->m:Ljava/lang/ref/WeakReference;

    .line 30
    new-instance p2, Lcom/ironsource/Qc;

    invoke-direct {p2}, Lcom/ironsource/Qc;-><init>()V

    .line 31
    invoke-virtual {p1, p2}, Lcom/ironsource/R9;->a(Lcom/ironsource/Oc;)V

    .line 32
    invoke-virtual {p2, p0}, Lcom/ironsource/Qc;->a(Lcom/ironsource/N2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Lcom/ironsource/D7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    .line 33
    new-instance v1, Lcom/ironsource/sc;

    invoke-direct {v1}, Lcom/ironsource/sc;-><init>()V

    move-object v7, v1

    goto :goto_f

    :cond_d
    move-object/from16 v7, p5

    :goto_f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_17

    .line 34
    sget-object v1, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    move-object v8, v1

    goto :goto_19

    :cond_17
    move-object/from16 v8, p6

    :goto_19
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_29

    .line 36
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v1

    move-object v9, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v9, p7

    :goto_2b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3b

    .line 38
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->a()Lcom/ironsource/L7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/L7;->i()Lcom/ironsource/Q8$a;

    move-result-object v1

    move-object v10, v1

    goto :goto_3d

    :cond_3b
    move-object/from16 v10, p8

    :goto_3d
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_53

    .line 39
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    move-object v11, v0

    :goto_4c
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    goto :goto_56

    :cond_53
    move-object/from16 v11, p9

    goto :goto_4c

    .line 40
    :goto_56
    invoke-direct/range {v2 .. v11}, Lcom/ironsource/W2;-><init>(Lcom/ironsource/R9;Lcom/ironsource/k8;Lcom/ironsource/g2;Lcom/ironsource/r1;Lcom/ironsource/rc;Lcom/ironsource/hg;Lcom/ironsource/Q8;Lcom/ironsource/Q8$a;Lcom/ironsource/D7;)V

    return-void
.end method

.method private final a()Lcom/ironsource/W2$a;
    .registers 2

    .line 4
    new-instance v0, Lcom/ironsource/W2$a;

    invoke-direct {v0, p0}, Lcom/ironsource/W2$a;-><init>(Lcom/ironsource/W2;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/W2;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/ironsource/W2;->i:Z

    return p0
.end method

.method private static final b(Lcom/ironsource/W2;)V
    .registers 3

    .line 7
    sget-object v0, Lcom/ironsource/k1$d;->a:Lcom/ironsource/k1$d$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$d$a;->b()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/W2;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/W2;->e:Lcom/ironsource/rc;

    iget-object p0, p0, Lcom/ironsource/W2;->a:Lcom/ironsource/R9;

    invoke-interface {v0, p0}, Lcom/ironsource/rc;->a(Lcom/ironsource/R9;)V

    return-void
.end method

.method private static final c(Lcom/ironsource/W2;)V
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/ironsource/W2;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/X2;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/ironsource/X2;->onBannerAdClicked()V

    :cond_d
    return-void
.end method

.method private static final d(Lcom/ironsource/W2;)V
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/ironsource/W2;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/X2;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Lcom/ironsource/X2;->onBannerAdShown()V

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Lcom/unity3d/ironsourceads/banner/BannerAdInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/W2;->j:Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

    return-void
.end method

.method public final a(Ljava/lang/ref/WeakReference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/X2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/W2;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final b()V
    .registers 7

    .line 6
    iget-object v0, p0, Lcom/ironsource/W2;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/W2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ironsource/W2$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/W2;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/hg;->a(Lcom/ironsource/hg;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->l:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/ironsource/W2;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    :cond_16
    iput-object p1, p0, Lcom/ironsource/W2;->m:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p0}, Lcom/ironsource/W2;->a()Lcom/ironsource/W2$a;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/ironsource/W2;->l:Landroid/view/View$OnAttachStateChangeListener;

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_29

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_29
    return-void
.end method

.method public final c()Lcom/unity3d/ironsourceads/banner/BannerAdInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->j:Lcom/unity3d/ironsourceads/banner/BannerAdInfo;

    return-object v0
.end method

.method public final d()Lcom/ironsource/k8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->b:Lcom/ironsource/k8;

    return-object v0
.end method

.method public final e()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/X2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->k:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final f()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->m:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/W2;->b()V

    return-void
.end method

.method public onBannerClick()V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    invoke-virtual {v0}, Lcom/ironsource/k1$a$a;->a()Lcom/ironsource/k1;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/W2;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v1}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/W2;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/W2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/ironsource/W2$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/W2;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBannerShowSuccess()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2;->g:Lcom/ironsource/Q8;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {v0, v1}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v0

    .line 2
    sget-object v2, Lcom/ironsource/k1$a;->a:Lcom/ironsource/k1$a$a;

    new-instance v3, Lcom/ironsource/n1$w;

    invoke-direct {v3, v0}, Lcom/ironsource/n1$w;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ironsource/o1;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v2, v0}, Lcom/ironsource/k1$a$a;->f([Lcom/ironsource/o1;)Lcom/ironsource/k1;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/ironsource/W2;->d:Lcom/ironsource/r1;

    invoke-interface {v0, v2}, Lcom/ironsource/k1;->a(Lcom/ironsource/r1;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/W2;->h:Lcom/ironsource/Q8$a;

    invoke-interface {v0, v1}, Lcom/ironsource/Q8$a;->b(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 6
    iget-object v0, p0, Lcom/ironsource/W2;->c:Lcom/ironsource/g2;

    const-string v1, "onBannerShowSuccess"

    invoke-virtual {v0, v1}, Lcom/ironsource/g2;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/W2;->f:Lcom/ironsource/hg;

    new-instance v1, Lcom/ironsource/W2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/ironsource/W2$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/W2;)V

    invoke-interface {v0, v1}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.W2.a (com.ironsource.W2$a)
.class public final Lcom/ironsource/W2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W2;->a()Lcom/ironsource/W2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/W2;


# direct methods
.method public constructor <init>(Lcom/ironsource/W2;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/k8;->getSize()Lcom/ironsource/i8;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/ironsource/i8;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/ironsource/i8;->a()I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-static {v0}, Lcom/ironsource/W2;->a(Lcom/ironsource/W2;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_37

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_43

    iget-object v2, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v2}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_43
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

###### Class com.ironsource.W2$$ExternalSyntheticLambda0 (com.ironsource.W2$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/W2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/W2;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/W2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/W2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/W2;

    invoke-static {v0}, Lcom/ironsource/W2;->$r8$lambda$VN1cVhucr3DiqxBYOCbwEj8Snu0(Lcom/ironsource/W2;)V

    return-void
.end method

###### Class com.ironsource.W2$$ExternalSyntheticLambda1 (com.ironsource.W2$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/W2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/W2;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/W2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/W2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/W2;

    invoke-static {v0}, Lcom/ironsource/W2;->$r8$lambda$xBZ8Lay9Sq4VtFUvqqM25kUEtPk(Lcom/ironsource/W2;)V

    return-void
.end method

###### Class com.ironsource.W2$$ExternalSyntheticLambda2 (com.ironsource.W2$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/W2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/W2;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/W2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/W2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/W2$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/W2;

    invoke-static {v0}, Lcom/ironsource/W2;->$r8$lambda$dv8HJ4Mk2hP1dgc60Cc31693e-Q(Lcom/ironsource/W2;)V

    return-void
.end method
