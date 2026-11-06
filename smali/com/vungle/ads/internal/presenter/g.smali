###### Class com.vungle.ads.internal.presenter.g (com.vungle.ads.internal.presenter.g)
.class public final Lcom/vungle/ads/internal/presenter/g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/r;

.field public final synthetic b:Lcom/vungle/ads/MraidTemplateError;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/r;Lcom/vungle/ads/MraidTemplateError;ZLjava/lang/String;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/g;->a:Lcom/vungle/ads/internal/presenter/r;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/g;->b:Lcom/vungle/ads/MraidTemplateError;

    iput-boolean p3, p0, Lcom/vungle/ads/internal/presenter/g;->c:Z

    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/g;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/g;->a:Lcom/vungle/ads/internal/presenter/r;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/g;->b:Lcom/vungle/ads/MraidTemplateError;

    iget-boolean v2, p0, Lcom/vungle/ads/internal/presenter/g;->c:Z

    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/g;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
