###### Class com.ironsource.Ff (com.ironsource.Ff)
.class public interface abstract Lcom/ironsource/Ff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ff$a;
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)Lcom/ironsource/Ff$a;
    .registers 6
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lcom/ironsource/xb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/ironsource/Ff$a;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p4}, Lcom/ironsource/Gf;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/ironsource/Ff;->b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
.end method

.method public abstract b(Ljava/lang/Runnable;J)Lcom/ironsource/Ff$a;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lcom/ironsource/xb;
        .end annotation
    .end param
.end method

###### Class com.ironsource.Ff.a (com.ironsource.Ff$a)
.class public final Lcom/ironsource/Ff$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Hf$a;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/Hf$a;)V
    .registers 3

    const-string v0, "onCancel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ff$a;->a:Lcom/ironsource/Hf$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ff$a;->a:Lcom/ironsource/Hf$a;

    invoke-interface {v0}, Lcom/ironsource/Hf$a;->cancel()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/Ff$a;->b:Z

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Ff$a;->b:Z

    return v0
.end method
