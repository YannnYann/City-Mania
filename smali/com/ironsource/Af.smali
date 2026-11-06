###### Class com.ironsource.Af (com.ironsource.Af)
.class public Lcom/ironsource/Af;
.super Lcom/ironsource/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/f<",
        "Lcom/ironsource/Af$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/Af$a;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/f;->d:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 2
    check-cast v0, Lcom/ironsource/Af$a;

    invoke-interface {v0}, Lcom/ironsource/Af$a;->a()V

    :cond_9
    return-void
.end method

.method public e()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/f;->c()V

    return-void
.end method

###### Class com.ironsource.Af.a (com.ironsource.Af$a)
.class public interface abstract Lcom/ironsource/Af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
