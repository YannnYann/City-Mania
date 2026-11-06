###### Class com.vungle.ads.internal.h1 (com.vungle.ads.internal.h1)
.class public final Lcom/vungle/ads/internal/h1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/o1;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/o1;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/h1;->a:Lcom/vungle/ads/internal/o1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/q;->b:Lcom/vungle/ads/internal/util/q;

    iget-object v1, p0, Lcom/vungle/ads/internal/h1;->a:Lcom/vungle/ads/internal/o1;

    invoke-static {v1}, Lcom/vungle/ads/internal/o1;->a(Lcom/vungle/ads/internal/o1;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/executor/d;

    .line 2
    iget-object v1, v1, Lcom/vungle/ads/internal/executor/d;->a:Lcom/vungle/ads/internal/executor/j;

    .line 3
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/q;->a(Lcom/vungle/ads/internal/executor/j;)V

    return-object v0
.end method
