###### Class ads_mobile_sdk.b42 (ads_mobile_sdk.b42)
.class public final Lads_mobile_sdk/b42;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/z32;

.field public final b:Lads_mobile_sdk/x32;

.field public final c:Lads_mobile_sdk/l62;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/z32;Lads_mobile_sdk/x32;Lads_mobile_sdk/l62;)V
    .registers 5

    .line 1
    const-string v0, "nativeAdViewabilityMonitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdViewVisibilityChangedListenerImpl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeMediaViewFullyVisibleEventListenerImpl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/b42;->a:Lads_mobile_sdk/z32;

    .line 15
    iput-object p2, p0, Lads_mobile_sdk/b42;->b:Lads_mobile_sdk/x32;

    .line 16
    iput-object p3, p0, Lads_mobile_sdk/b42;->c:Lads_mobile_sdk/l62;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/o32;)V
    .registers 4

    .line 1
    const-string v0, "nativeAdViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/b42;->b:Lads_mobile_sdk/x32;

    .line 26
    iget-object v0, v0, Lads_mobile_sdk/x32;->b:Lads_mobile_sdk/js1;

    .line 27
    invoke-virtual {v0, p1}, Lads_mobile_sdk/js1;->a(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lads_mobile_sdk/b42;->c:Lads_mobile_sdk/l62;

    .line 29
    iget-object v0, v0, Lads_mobile_sdk/l62;->d:Lads_mobile_sdk/js1;

    .line 30
    invoke-virtual {v0, p1}, Lads_mobile_sdk/js1;->a(Ljava/lang/Object;)V

    .line 31
    check-cast p1, Lads_mobile_sdk/p32;

    invoke-virtual {p1}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lads_mobile_sdk/b42;->a:Lads_mobile_sdk/z32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string v1, "targetView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, v0, Lads_mobile_sdk/ms;->i:Landroid/view/View;

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lads_mobile_sdk/ms;->j:Z

    .line 35
    invoke-virtual {v0, p1}, Lads_mobile_sdk/ms;->a(Landroid/view/View;)V

    :cond_2d
    return-void
.end method
