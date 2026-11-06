###### Class com.google.common.util.concurrent.Callables (com.google.common.util.concurrent.Callables)
.class public final Lcom/google/common/util/concurrent/Callables;
.super Ljava/lang/Object;
.source "Callables.java"


# direct methods
.method public static synthetic $r8$lambda$igoGSsmydPxoPHWhodWU_i0bGEk(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.Callables$$ExternalSyntheticLambda0 (com.google.common.util.concurrent.Callables$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Callables;->$r8$lambda$igoGSsmydPxoPHWhodWU_i0bGEk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
