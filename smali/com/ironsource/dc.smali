###### Class com.ironsource.C3567dc (com.ironsource.dc)
.class public final Lcom/ironsource/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/J;


# instance fields
.field private final a:Lcom/ironsource/Vb;


# direct methods
.method public constructor <init>(Lcom/ironsource/Vb;)V
    .registers 3

    const-string v0, "nativeAdBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/dc;->a:Lcom/ironsource/Vb;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/cc;)V
    .registers 3

    const-string v0, "nativeAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/dc;->a:Lcom/ironsource/Vb;

    invoke-virtual {p1, v0}, Lcom/ironsource/cc;->a(Lcom/ironsource/Vb;)V

    return-void
.end method
