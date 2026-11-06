###### Class com.ironsource.AbstractC3715m (com.ironsource.m)
.class public abstract Lcom/ironsource/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/M8;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->f()Lcom/ironsource/M8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/m;->a:Lcom/ironsource/M8;

    return-void
.end method


# virtual methods
.method public final l()Lcom/ironsource/M8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/m;->a:Lcom/ironsource/M8;

    return-object v0
.end method
