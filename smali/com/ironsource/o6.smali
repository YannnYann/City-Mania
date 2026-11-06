###### Class com.ironsource.C3758o6 (com.ironsource.o6)
.class public final Lcom/ironsource/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/J;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/o6;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/m6;)V
    .registers 3

    const-string v0, "fullscreenAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/o6;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/ironsource/m6;->a(Landroid/app/Activity;)V

    return-void
.end method
