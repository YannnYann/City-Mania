###### Class com.vungle.ads.internal.executor.i (com.vungle.ads.internal.executor.i)
.class public final Lcom/vungle/ads/internal/executor/i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/executor/j;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/executor/j;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/executor/i;->a:Lcom/vungle/ads/internal/executor/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/OutOfMemory;

    .line 2
    const-string v1, "submit callable error in "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/vungle/ads/internal/executor/i;->a:Lcom/vungle/ads/internal/executor/j;

    .line 4
    invoke-virtual {v2}, Lcom/vungle/ads/internal/executor/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
