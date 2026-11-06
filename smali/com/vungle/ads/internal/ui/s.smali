###### Class com.vungle.ads.internal.ui.s (com.vungle.ads.internal.ui.s)
.class public final Lcom/vungle/ads/internal/ui/s;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/vungle/ads/internal/ui/s;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/internal/ui/s;

    invoke-direct {v0}, Lcom/vungle/ads/internal/ui/s;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/ui/s;->a:Lcom/vungle/ads/internal/ui/s;

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
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    const-string v0, "onPageFinished."

    return-object v0
.end method
