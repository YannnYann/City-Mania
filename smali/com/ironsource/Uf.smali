###### Class com.ironsource.Uf (com.ironsource.Uf)
.class public final Lcom/ironsource/Uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/V8;
.implements Lcom/ironsource/V8$a;


# instance fields
.field private a:Lcom/ironsource/Tf;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/Tf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Uf;->a:Lcom/ironsource/Tf;

    return-object v0
.end method

.method public a(Lcom/ironsource/Tf;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/Uf;->a:Lcom/ironsource/Tf;

    return-void
.end method
