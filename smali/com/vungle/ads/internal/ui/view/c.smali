###### Class com.vungle.ads.internal.ui.view.c (com.vungle.ads.internal.ui.view.c)
.class public final Lcom/vungle/ads/internal/ui/view/c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/vungle/ads/internal/ui/view/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/internal/ui/view/c;

    invoke-direct {v0}, Lcom/vungle/ads/internal/ui/view/c;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/ui/view/c;->a:Lcom/vungle/ads/internal/ui/view/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method
