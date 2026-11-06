###### Class com.ironsource.C3594f3 (com.ironsource.f3)
.class public final Lcom/ironsource/f3;
.super Lcom/ironsource/sd;
.source "SourceFile"


# instance fields
.field private final b:Lcom/ironsource/p0;

.field private final c:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;)V
    .registers 5

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Lcom/ironsource/sd;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/f3;->b:Lcom/ironsource/p0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/f3;->c:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/B0;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/B0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/ironsource/sd;->a(Lcom/ironsource/B0;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ironsource/f3;->b:Lcom/ironsource/p0;

    iget-object v1, p0, Lcom/ironsource/f3;->c:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/p0;->a(Ljava/util/Map;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-object p1
.end method
