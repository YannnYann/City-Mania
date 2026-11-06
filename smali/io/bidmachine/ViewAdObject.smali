###### Class io.bidmachine.ViewAdObject (io.bidmachine.ViewAdObject)
.class public final Lio/bidmachine/ViewAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ViewAdObject$MeasureMode;,
        Lio/bidmachine/ViewAdObject$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;UnifiedAdType:",
        "Lio/bidmachine/unified/UnifiedViewAd<",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        "TUnifiedAdRequestParamsType;>;UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Lio/bidmachine/AdObjectImpl<",
        "TAdRequestType;",
        "Lio/bidmachine/models/AdObjectParams;",
        "TUnifiedAdType;",
        "Lio/bidmachine/unified/UnifiedBannerAdCallback;",
        "TUnifiedAdRequestParamsType;>;"
    }
.end annotation


# instance fields
.field adView:Landroid/view/View;

.field private height:I

.field private heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

.field private width:I

.field private widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedViewAd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;",
            "Lio/bidmachine/models/AdObjectParams;",
            "TUnifiedAdType;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    move-object p1, p0

    .line 2
    sget-object p2, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    iput-object p2, p1, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 4
    iput-object p2, p1, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/ViewAdObject;Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/ViewAdObject;->setAdView(Landroid/view/View;)V

    return-void
.end method

.method private getScaledHeight(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getScaledWidth(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/ViewAdObject$MeasureMode;->getSize(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private setAdView(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->hide()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/ViewAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedBannerAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedBannerAdCallback;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/ViewAdObject$b;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/ViewAdObject$b;-><init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ViewAdObject;->height:I

    return v0
.end method

.method public getHeightMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ViewAdObject;->width:I

    return v0
.end method

.method public getWidthMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->hide()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->stopViewabilityTracker()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/utils/ViewHelper;->removeViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->hide()V

    .line 3
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/ViewAdObject;->height:I

    return-void
.end method

.method public setHeightMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->heightMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/bidmachine/ViewAdObject;->width:I

    return-void
.end method

.method public setWidthMeasureMode(Lio/bidmachine/ViewAdObject$MeasureMode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/ViewAdObject;->widthMeasureMode:Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method public show(Landroid/view/ViewGroup;Lio/bidmachine/RendererConfiguration;)V
    .registers 8

    if-nez p1, :cond_12

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const-string p2, "Target container"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 4
    :cond_12
    iget-object v0, p0, Lio/bidmachine/ViewAdObject;->adView:Landroid/view/View;

    if-nez v0, :cond_26

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const-string p2, "Ad view is null"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 9
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getWidthMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;

    move-result-object v1

    sget-object v2, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    if-ne v1, v2, :cond_34

    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getWidth()I

    move-result v1

    if-eqz v1, :cond_40

    .line 10
    :cond_34
    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getHeightMeasureMode()Lio/bidmachine/ViewAdObject$MeasureMode;

    move-result-object v1

    if-ne v1, v2, :cond_50

    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject;->getHeight()I

    move-result v1

    if-nez v1, :cond_50

    .line 11
    :cond_40
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedBannerAdCallback;

    const-string p2, "Width or height are not provided"

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdShowFailed(Lio/bidmachine/utils/BMError;)V

    return-void

    .line 14
    :cond_50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    instance-of v2, p1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_68

    .line 16
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    move-result v3

    .line 17
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    move-result v1

    const/16 v4, 0x11

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_75

    .line 19
    :cond_68
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledWidth(Landroid/content/Context;)I

    move-result v3

    .line 20
    invoke-direct {p0, v1}, Lio/bidmachine/ViewAdObject;->getScaledHeight(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 21
    :goto_75
    invoke-virtual {p0, v0}, Lio/bidmachine/AdObjectImpl;->startViewabilityTracker(Landroid/view/View;)V

    .line 22
    invoke-static {p1, v0, v2}, Lio/bidmachine/utils/ViewHelper;->safeAddSingleView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processFillAd()V

    .line 25
    :try_start_82
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/unified/UnifiedViewAd;

    invoke-virtual {p1, p2}, Lio/bidmachine/unified/UnifiedViewAd;->prepareToShow(Lio/bidmachine/RendererConfiguration;)V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_8c

    return-void

    :catchall_8c
    move-exception p1

    .line 27
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.ViewAdObject.MeasureMode (io.bidmachine.ViewAdObject$MeasureMode)
.class public final enum Lio/bidmachine/ViewAdObject$MeasureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/ViewAdObject$MeasureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Match:Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/ViewAdObject$MeasureMode;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    sget-object v1, Lio/bidmachine/ViewAdObject$MeasureMode;->Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;

    sget-object v2, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/ViewAdObject$MeasureMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v1, "Match"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    new-instance v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v1, "Wrap"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;

    new-instance v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v1, "Direct"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    .line 2
    invoke-static {}, Lio/bidmachine/ViewAdObject$MeasureMode;->$values()[Lio/bidmachine/ViewAdObject$MeasureMode;

    move-result-object v0

    sput-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->$VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/ViewAdObject$MeasureMode;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/ViewAdObject$MeasureMode;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->$VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {v0}, [Lio/bidmachine/ViewAdObject$MeasureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object v0
.end method


# virtual methods
.method public getSize(Landroid/content/Context;I)I
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/ViewAdObject$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 p1, 0x2

    if-eq v0, p1, :cond_10

    const/4 p1, -0x1

    return p1

    :cond_10
    const/4 p1, -0x2

    return p1

    :cond_12
    int-to-float p2, p2

    .line 3
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.ViewAdObject.a (io.bidmachine.ViewAdObject$a)
.class public abstract synthetic Lio/bidmachine/ViewAdObject$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/bidmachine/ViewAdObject$MeasureMode;->values()[Lio/bidmachine/ViewAdObject$MeasureMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/bidmachine/ViewAdObject$a;->a:[I

    :try_start_9
    sget-object v1, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/bidmachine/ViewAdObject$a;->a:[I

    sget-object v1, Lio/bidmachine/ViewAdObject$MeasureMode;->Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class io.bidmachine.ViewAdObject.b (io.bidmachine.ViewAdObject$b)
.class public final Lio/bidmachine/ViewAdObject$b;
.super Lio/bidmachine/internal/e;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/internal/e;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/ViewAdObject$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/ViewAdObject;

    if-eqz v0, :cond_15

    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/internal/e;->a()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    return-void

    .line 7
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/internal/e;->a()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    const-string v0, "ViewAdObject is null"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->internal(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method
