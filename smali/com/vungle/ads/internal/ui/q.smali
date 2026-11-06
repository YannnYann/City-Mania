###### Class com.vungle.ads.internal.ui.q (com.vungle.ads.internal.ui.q)
.class public final Lcom/vungle/ads/internal/ui/q;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/x;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ui/x;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/q;->a:Lcom/vungle/ads/internal/ui/x;

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

    check-cast p2, Ljava/lang/String;

    .line 2
    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/q;->a:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, p2, p1}, Lcom/vungle/ads/internal/ui/x;->a(Ljava/lang/String;I)V

    .line 318
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
