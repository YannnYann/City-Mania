###### Class com.ironsource.Z2 (com.ironsource.Z2)
.class public final Lcom/ironsource/Z2;
.super Lcom/ironsource/s0;
.source "SourceFile"


# instance fields
.field private final b:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Lcom/ironsource/g0;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 4

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/s0;-><init>(Lcom/ironsource/g0;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/Z2;->b:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/h;)V
    .registers 3

    const-string v0, "auctionRequestParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/ironsource/s0;->a(Lcom/ironsource/mediationsdk/h;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Z2;->b:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-void
.end method
