###### Class com.unity3d.ads.adplayer.DisplayMessage (com.unity3d.ads.adplayer.DisplayMessage)
.class public abstract Lcom/unity3d/ads/adplayer/DisplayMessage;
.super Ljava/lang/Object;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayDestroyed;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayFinishRequest;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayStarted;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceRequest;,
        Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;
    }
.end annotation


# instance fields
.field private final opportunityId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/DisplayMessage;->opportunityId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getOpportunityId()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage;->opportunityId:Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.DisplayDestroyed (com.unity3d.ads.adplayer.DisplayMessage$DisplayDestroyed)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayDestroyed;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayDestroyed"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.DisplayError (com.unity3d.ads.adplayer.DisplayMessage$DisplayError)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayError"
.end annotation


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayError;->reason:Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.DisplayFinishRequest (com.unity3d.ads.adplayer.DisplayMessage$DisplayFinishRequest)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayFinishRequest;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayFinishRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.DisplayReady (com.unity3d.ads.adplayer.DisplayMessage$DisplayReady)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayReady"
.end annotation


# instance fields
.field private final showOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;->showOptions:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 28
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getShowOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayReady;->showOptions:Ljava/util/Map;

    return-object v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.DisplayStarted (com.unity3d.ads.adplayer.DisplayMessage$DisplayStarted)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$DisplayStarted;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayStarted"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.FocusChanged (com.unity3d.ads.adplayer.DisplayMessage$FocusChanged)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FocusChanged"
.end annotation


# instance fields
.field private final isFocused:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;->isFocused:Z

    return-void
.end method


# virtual methods
.method public final isFocused()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$FocusChanged;->isFocused:Z

    return v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.OpenUrl (com.unity3d.ads.adplayer.DisplayMessage$OpenUrl)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenUrl"
.end annotation


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final useActivityForResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 5

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->intent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->useActivityForResult:Z

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getUseActivityForResult()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrl;->useActivityForResult:Z

    return v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.OpenUrlResult (com.unity3d.ads.adplayer.DisplayMessage$OpenUrlResult)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenUrlResult"
.end annotation


# instance fields
.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;->success:Z

    return-void
.end method


# virtual methods
.method public final getSuccess()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$OpenUrlResult;->success:Z

    return v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.SetOrientation (com.unity3d.ads.adplayer.DisplayMessage$SetOrientation)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetOrientation"
.end annotation


# instance fields
.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    return-void
.end method


# virtual methods
.method public final getOrientation()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$SetOrientation;->orientation:I

    return v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.VisibilityChanged (com.unity3d.ads.adplayer.DisplayMessage$VisibilityChanged)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisibilityChanged"
.end annotation


# instance fields
.field private final isVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;->isVisible:Z

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$VisibilityChanged;->isVisible:Z

    return v0
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.WebViewInstanceRequest (com.unity3d.ads.adplayer.DisplayMessage$WebViewInstanceRequest)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceRequest;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewInstanceRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

###### Class com.unity3d.ads.adplayer.DisplayMessage.WebViewInstanceResponse (com.unity3d.ads.adplayer.DisplayMessage$WebViewInstanceResponse)
.class public final Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;
.super Lcom/unity3d/ads/adplayer/DisplayMessage;
.source "DisplayMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/DisplayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewInstanceResponse"
.end annotation


# instance fields
.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "opportunityId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/adplayer/DisplayMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/DisplayMessage$WebViewInstanceResponse;->webView:Landroid/webkit/WebView;

    return-object v0
.end method
