###### Class com.vungle.ads.internal.k1 (com.vungle.ads.internal.k1)
.class public final Lcom/vungle/ads/internal/k1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/o1;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/o1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/k1;->a:Lcom/vungle/ads/internal/o1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lez p1, :cond_17

    if-lez p2, :cond_17

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/k1;->a:Lcom/vungle/ads/internal/o1;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 3
    iput p1, v0, Lcom/vungle/ads/internal/o1;->z:F

    .line 4
    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
