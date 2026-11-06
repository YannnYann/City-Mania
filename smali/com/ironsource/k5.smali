###### Class com.ironsource.InterfaceC3685k5 (com.ironsource.k5)
.class public interface abstract Lcom/ironsource/k5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Vc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/Vc;"
    }
.end annotation


# virtual methods
.method public abstract b(Lcom/ironsource/D8;)V
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lcom/ironsource/c6;
.end method

.method public abstract i()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "+TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public j()Z
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/ironsource/k5;->k()Lcom/ironsource/D8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public abstract k()Lcom/ironsource/D8;
.end method

.method public abstract l()Lcom/ironsource/C7;
.end method

.method public m()V
    .registers 5

    .line 1
    invoke-interface {p0}, Lcom/ironsource/k5;->l()Lcom/ironsource/C7;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ironsource/C7;->a(Lcom/ironsource/Vc;)V

    .line 2
    invoke-interface {p0}, Lcom/ironsource/k5;->k()Lcom/ironsource/D8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    invoke-interface {p0}, Lcom/ironsource/k5;->k()Lcom/ironsource/D8;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/D8;)Z

    .line 7
    :cond_18
    :try_start_18
    invoke-interface {p0}, Lcom/ironsource/k5;->l()Lcom/ironsource/C7;

    move-result-object v0

    invoke-interface {p0}, Lcom/ironsource/k5;->k()Lcom/ironsource/D8;

    move-result-object v1

    invoke-interface {p0}, Lcom/ironsource/k5;->d()Lcom/ironsource/c6;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/c6;->value()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/ironsource/C7;->a(Lcom/ironsource/D8;Ljava/lang/String;II)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    .line 9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {p0}, Lcom/ironsource/k5;->i()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
