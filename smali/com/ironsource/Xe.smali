###### Class com.ironsource.Xe (com.ironsource.Xe)
.class public Lcom/ironsource/Xe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xe;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/Xe;->a:Ljava/lang/Long;

    return-void
.end method

.method public run()V
    .registers 1

    .line 0
    return-void
.end method
