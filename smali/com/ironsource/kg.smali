###### Class com.ironsource.C3696kg (com.ironsource.kg)
.class public Lcom/ironsource/kg;
.super Lcom/ironsource/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/kg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/f<",
        "Lcom/ironsource/kg$a;",
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
.method public final a(Lcom/ironsource/kg$a;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/f;->d:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/kg$a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/ironsource/kg$a;->a()V

    :cond_9
    return-void
.end method

.method public final e()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/f;->c()V

    return-void
.end method

###### Class com.ironsource.C3696kg.a (com.ironsource.kg$a)
.class public interface abstract Lcom/ironsource/kg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
