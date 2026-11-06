###### Class com.vungle.ads.internal.a1 (com.vungle.ads.internal.a1)
.class public final Lcom/vungle/ads/internal/a1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View$OnAttachStateChangeListener;

.field public b:I

.field public c:Lcom/vungle/ads/internal/z0;

.field public d:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/y0;)V
    .registers 3

    const-string v0, "attachListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/a1;->a:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnAttachStateChangeListener;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/a1;->a:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method public final a(Landroid/view/ViewTreeObserver;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/z0;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/a1;->c:Lcom/vungle/ads/internal/z0;

    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/z0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/a1;->c:Lcom/vungle/ads/internal/z0;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/a1;->b:I

    return v0
.end method

.method public final d()Landroid/view/ViewTreeObserver;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/a1;->d:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/vungle/ads/internal/a1;->b:I

    return-void
.end method
