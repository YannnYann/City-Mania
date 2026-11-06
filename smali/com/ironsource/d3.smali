###### Class com.ironsource.C3557d3 (com.ironsource.d3)
.class public final Lcom/ironsource/d3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/ironsource/d3$a;

    invoke-direct {p1, p0}, Lcom/ironsource/d3$a;-><init>(Lcom/ironsource/d3;)V

    iput-object p1, p0, Lcom/ironsource/d3;->a:Lcom/ironsource/Bg;

    return-void
.end method


# virtual methods
.method public final getViewBinder()Lcom/ironsource/Bg;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/d3;->a:Lcom/ironsource/Bg;

    return-object v0
.end method

###### Class com.ironsource.C3557d3.a (com.ironsource.d3$a)
.class public final Lcom/ironsource/d3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Bg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/d3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/d3;


# direct methods
.method public static synthetic $r8$lambda$FTjRQdcpKDhast_JP6CkDTk_IsE(Lcom/ironsource/T0;J)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/d3$a;->c(Lcom/ironsource/T0;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$KsDGXjOkj7lICx9RvMmkGckvtpI(Lcom/ironsource/T0;J)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/d3$a;->b(Lcom/ironsource/T0;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4H9Uw25U23xIBXSfFokOTcbHa4(Lcom/ironsource/T0;J)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/d3$a;->d(Lcom/ironsource/T0;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YBKK22Lge-2s2i37T5n0Qgif9nk(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/d3$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YWF4G2qDUbBLzl8C477k3o6VCpw(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/d3$a;->a(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ddkx2J9cxvgxlQK8NxcRLSsB95I(Lcom/ironsource/T0;J)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/d3$a;->a(Lcom/ironsource/T0;J)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/d3;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static final a(Lcom/ironsource/T0;J)V
    .registers 4

    .line 54
    invoke-virtual {p0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/pg;->a(ZJ)V

    return-void
.end method

.method private static final a(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    invoke-virtual {p2, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private static final b(Lcom/ironsource/T0;J)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/pg;->a(ZJ)V

    return-void
.end method

.method private static final c(Lcom/ironsource/T0;J)V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/T0;J)V

    invoke-virtual {p0, v0}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final d(Lcom/ironsource/T0;J)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/pg;->a(J)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/T0;)V
    .registers 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/u5;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3d

    .line 6
    iget-object v3, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance p1, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v1, v2}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/T0;J)V

    invoke-virtual {p3, p1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_3d
    new-instance v3, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, v1, v2}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/T0;J)V

    invoke-virtual {p3, v3}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 22
    iget-object v4, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    invoke-virtual {v4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_73

    .line 24
    iget-object p2, p0, Lcom/ironsource/d3$a;->a:Lcom/ironsource/d3;

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 26
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 28
    new-instance v4, Lcom/ironsource/d3$a$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 33
    new-instance v4, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;

    invoke-direct {v4, p2, v0, v0}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 44
    :cond_73
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;

    invoke-direct {p2, p3, v1, v2}, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/T0;J)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda0 (com.ironsource.d3$a$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/T0;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/T0;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/T0;

    iput-wide p2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/T0;

    iget-wide v1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda0;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/d3$a;->$r8$lambda$M4H9Uw25U23xIBXSfFokOTcbHa4(Lcom/ironsource/T0;J)V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda1 (com.ironsource.d3$a$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/T0;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/T0;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/T0;

    iput-wide p2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/T0;

    iget-wide v1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/d3$a;->$r8$lambda$ddkx2J9cxvgxlQK8NxcRLSsB95I(Lcom/ironsource/T0;J)V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda2 (com.ironsource.d3$a$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/T0;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/T0;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/T0;

    iput-wide p2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/T0;

    iget-wide v1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda2;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/d3$a;->$r8$lambda$KsDGXjOkj7lICx9RvMmkGckvtpI(Lcom/ironsource/T0;J)V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda3 (com.ironsource.d3$a$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/ironsource/d3$a;->$r8$lambda$YBKK22Lge-2s2i37T5n0Qgif9nk(Landroid/view/View;)V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda4 (com.ironsource.d3$a$$ExternalSyntheticLambda4)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/d3;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/d3;

    iput-object p2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$0:Lcom/ironsource/d3;

    iget-object v1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda4;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/ironsource/d3$a;->$r8$lambda$YWF4G2qDUbBLzl8C477k3o6VCpw(Lcom/ironsource/d3;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

###### Class com.ironsource.d3$a$$ExternalSyntheticLambda5 (com.ironsource.d3$a$$ExternalSyntheticLambda5)
.class public final synthetic Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/T0;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/T0;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/T0;

    iput-wide p2, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;->f$0:Lcom/ironsource/T0;

    iget-wide v1, p0, Lcom/ironsource/d3$a$$ExternalSyntheticLambda5;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/ironsource/d3$a;->$r8$lambda$FTjRQdcpKDhast_JP6CkDTk_IsE(Lcom/ironsource/T0;J)V

    return-void
.end method
