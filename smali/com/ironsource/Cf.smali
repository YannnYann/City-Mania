###### Class com.ironsource.Cf (com.ironsource.Cf)
.class public final Lcom/ironsource/Cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/f4;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cf;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/Cf;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/ironsource/Cf;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cf;->b:Landroid/content/Context;

    return-object v0
.end method
