###### Class com.ironsource.C3625gg (com.ironsource.gg)
.class public final Lcom/ironsource/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$5xHa9j_GV3ExQ8loFFfghuw5Y0Q(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/gg;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPw_b88-ewLKDvsf6Ih33DODY-I(Lcom/ironsource/environment/thread/b;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/gg;->a(Lcom/ironsource/environment/thread/b;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEHEw1QHngCsFIHs_s9EAivnCNw(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/gg;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fWAq-7zCiECg68DVQKCBbF9GsGM(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/gg;->a(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final a(Landroid/os/Handler;)Lcom/ironsource/fg;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/gg$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ironsource/gg$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static final a(Lcom/ironsource/environment/thread/b;)Lcom/ironsource/fg;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/ironsource/gg$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/gg$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/environment/thread/b;)V

    return-object v0
.end method

.method private static final a(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/gg$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/ironsource/gg$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final a(Lcom/ironsource/environment/thread/b;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/ironsource/gg$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/ironsource/gg$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/environment/thread/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final b(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

###### Class com.ironsource.gg$$ExternalSyntheticLambda0 (com.ironsource.gg$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/gg$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/fg;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/environment/thread/b;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/environment/thread/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/environment/thread/b;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/environment/thread/b;

    invoke-static {v0, p1}, Lcom/ironsource/gg;->$r8$lambda$NPw_b88-ewLKDvsf6Ih33DODY-I(Lcom/ironsource/environment/thread/b;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.ironsource.gg$$ExternalSyntheticLambda1 (com.ironsource.gg$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/gg$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lcom/ironsource/gg;->$r8$lambda$VEHEw1QHngCsFIHs_s9EAivnCNw(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.ironsource.gg$$ExternalSyntheticLambda2 (com.ironsource.gg$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/gg$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/fg;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/ironsource/gg;->$r8$lambda$fWAq-7zCiECg68DVQKCBbF9GsGM(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.ironsource.gg$$ExternalSyntheticLambda3 (com.ironsource.gg$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/gg$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/gg$$ExternalSyntheticLambda3;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lcom/ironsource/gg;->$r8$lambda$5xHa9j_GV3ExQ8loFFfghuw5Y0Q(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
