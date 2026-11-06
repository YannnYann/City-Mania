###### Class com.ironsource.Gf (com.ironsource.Gf)
.class public final Lcom/ironsource/Gf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$q1QybBddZmfUtQS-eoLGW-DzROg(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Gf;->a(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/ironsource/Gf;->b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method private static final b(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method

###### Class com.ironsource.Gf$$ExternalSyntheticLambda0 (com.ironsource.Gf$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Gf$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/ref/WeakReference;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;->f$0:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/ironsource/Gf$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lcom/ironsource/Gf;->$r8$lambda$q1QybBddZmfUtQS-eoLGW-DzROg(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
