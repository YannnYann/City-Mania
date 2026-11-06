###### Class com.ironsource.M2 (com.ironsource.M2)
.class public final Lcom/ironsource/M2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/J;


# instance fields
.field private final a:Lcom/ironsource/Bg;


# direct methods
.method public constructor <init>(Lcom/ironsource/Bg;)V
    .registers 3

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/M2;->a:Lcom/ironsource/Bg;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/I2;)V
    .registers 3

    const-string v0, "bannerAdInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/M2;->a:Lcom/ironsource/Bg;

    invoke-virtual {p1, v0}, Lcom/ironsource/I2;->a(Lcom/ironsource/Bg;)V

    return-void
.end method
