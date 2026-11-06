###### Class io.bidmachine.nativead.NativeAdObject (io.bidmachine.nativead.NativeAdObject)
.class public final Lio/bidmachine/nativead/NativeAdObject;
.super Lio/bidmachine/AdObjectImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/NativeData;
.implements Lio/bidmachine/nativead/NativeMediaPrivateData;
.implements Lio/bidmachine/nativead/NativeInteractor;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeAdObject$e;,
        Lio/bidmachine/nativead/NativeAdObject$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdObjectImpl<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/models/AdObjectParams;",
        "Lio/bidmachine/unified/UnifiedNativeAd;",
        "Lio/bidmachine/unified/UnifiedNativeAdCallback;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;",
        "Lio/bidmachine/nativead/NativeData;",
        "Lio/bidmachine/nativead/NativeMediaPrivateData;",
        "Lio/bidmachine/nativead/NativeInteractor;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final clickStorage:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public container:Landroid/view/ViewGroup;

.field public disclaimerTextView:Lio/bidmachine/internal/l;

.field public iconImageData:Lio/bidmachine/ImageDataImpl;

.field public mainImageData:Lio/bidmachine/ImageDataImpl;

.field public mediaView:Lio/bidmachine/nativead/view/MediaView;

.field public nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public progressDialogCanceller:Landroid/os/Handler;

.field public progressRunnable:Ljava/lang/Runnable;

.field public final repository:Lio/bidmachine/utils/lazy/LazyCachedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/utils/lazy/LazyCachedValue<",
            "Lio/bidmachine/rendering/Repository;",
            ">;"
        }
    .end annotation
.end field

.field public final tag:Lio/bidmachine/util/Tag;

.field public vastRequest:Lio/bidmachine/iab/vast/VastRequest;

.field public videoUri:Landroid/net/Uri;

.field public viewRegistered:Z

.field public watermarkAutoLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field public watermarkView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$LWzBZjtb4_QopwyD5wvUY5XVsAM(Lio/bidmachine/ContextProvider;)Lio/bidmachine/rendering/Repository;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->INSTANCE:Lio/bidmachine/rendering/Rendering;

    .line 3
    invoke-interface {p0}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/Rendering;->createRepository(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/rendering/Repository;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedNativeAd;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AdObjectImpl;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V

    move-object p2, p1

    move-object p1, p0

    .line 2
    new-instance p3, Lio/bidmachine/util/Tag;

    const-string p4, "NativeAdObject"

    invoke-direct {p3, p4}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p3, p1, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    .line 47
    new-instance p3, Lio/bidmachine/utils/lazy/LazyCachedValue;

    new-instance p4, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/ContextProvider;)V

    invoke-direct {p3, p4}, Lio/bidmachine/utils/lazy/LazyCachedValue;-><init>(Lio/bidmachine/utils/lazy/LazyValue;)V

    iput-object p3, p1, Lio/bidmachine/nativead/NativeAdObject;->repository:Lio/bidmachine/utils/lazy/LazyCachedValue;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/nativead/NativeAdObject;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->hideProgressDialog()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/nativead/NativeAdObject;Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/NativeAdObject;->loadAsset(Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V

    return-void
.end method

.method public static synthetic access$300(Lio/bidmachine/nativead/NativeAdObject;)Lio/bidmachine/util/Tag;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeAdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedNativeAdCallback;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedNativeAdCallback;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/nativead/NativeAdObject$e;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/NativeAdObject$e;-><init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/AdProcessCallback;)V

    return-object v0
.end method

.method public final deConfigureClickableView(Landroid/view/ViewGroup;)V
    .registers 5

    .line 1
    sget-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    if-eqz v0, :cond_36

    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_12

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_12

    .line 8
    :cond_31
    sget-object v0, Lio/bidmachine/nativead/NativeAdObject;->clickStorage:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-void
.end method

.method public final destroyDisclaimerTextView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->disclaimerTextView:Lio/bidmachine/internal/l;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0}, Lio/bidmachine/internal/l;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->disclaimerTextView:Lio/bidmachine/internal/l;

    return-void
.end method

.method public dispatchClick()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lio/bidmachine/AdProcessCallback;->processClicked(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public dispatchVideoPlayFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisclaimerData()Lio/bidmachine/internal/k;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getDisclaimerData()Lio/bidmachine/internal/k;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/ImageDataImpl;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    return-object v0
.end method

.method public getTag()Lio/bidmachine/util/Tag;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    return-object v0
.end method

.method public getVastRequest()Lio/bidmachine/iab/vast/VastRequest;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    return-object v0
.end method

.method public getVideoAdm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getVideoAdm()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasVideo()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    if-nez v0, :cond_11

    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public final hideProgressDialog()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    .line 5
    :cond_12
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    if-eqz v2, :cond_21

    .line 6
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    .line 8
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    :cond_21
    return-void
.end method

.method public final loadAsset(Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/nativead/AssetLoader;

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v1

    check-cast v1, Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {v1}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/bidmachine/nativead/NativeAdRequestParameters;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v4

    move-object v6, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/nativead/AssetLoader;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeData;Lio/bidmachine/nativead/NativeMediaPrivateData;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/AssetLoader;->downloadNativeAdsImages(Landroid/content/Context;)V

    return-void
.end method

.method public final mayShowProgressDialog()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->dispatchClick()V

    return-void
.end method

.method public onClicked()Ljava/lang/Boolean;
    .registers 5

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onClicked()Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 7
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/nativead/NativeAdObject;->showProgressDialog(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lio/bidmachine/nativead/NativeAdObject$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/bidmachine/nativead/NativeAdObject$d;-><init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/nativead/NativeAdObject$a;)V

    invoke-static {v1, v0, v2}, Lio/bidmachine/rendering/utils/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/util/Executable;)V

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Lio/bidmachine/AdObjectImpl;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->unregisterView()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    new-instance v1, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    new-instance v1, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    new-instance v1, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    .line 8
    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_30

    :catchall_2a
    move-exception v0

    .line 13
    :try_start_2b
    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3e

    .line 12
    :goto_30
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->repository:Lio/bidmachine/utils/lazy/LazyCachedValue;

    invoke-virtual {v0}, Lio/bidmachine/utils/lazy/LazyCachedValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/Repository;

    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/Repository;->unholdMediaFiles(Ljava/lang/Object;)V

    return-void

    :catchall_3e
    move-exception v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->repository:Lio/bidmachine/utils/lazy/LazyCachedValue;

    invoke-virtual {v1}, Lio/bidmachine/utils/lazy/LazyCachedValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/Repository;

    iget-object v2, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    invoke-interface {v1, v2}, Lio/bidmachine/rendering/Repository;->unholdMediaFiles(Ljava/lang/Object;)V

    .line 16
    throw v0
.end method

.method public final removeWatermark()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->watermarkView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 3
    invoke-static {v0}, Lio/bidmachine/util/ViewUtils;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->watermarkView:Landroid/view/View;

    :cond_a
    return-void
.end method

.method public final removeWatermarkAutoLayout(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->watermarkAutoLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->watermarkAutoLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_a
    return-void
.end method

.method public setIconUri(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/bidmachine/ImageDataImpl;->setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;

    :cond_7
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/bidmachine/ImageDataImpl;->setLocalUri(Landroid/net/Uri;)Lio/bidmachine/ImageDataImpl;

    :cond_7
    return-void
.end method

.method public setNativeNetworkAdapter(Lio/bidmachine/nativead/NativeNetworkAdapter;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz p1, :cond_1a

    .line 3
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getIcon()Lio/bidmachine/ImageData;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/ImageDataImpl;-><init>(Lio/bidmachine/ImageData;)V

    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->iconImageData:Lio/bidmachine/ImageDataImpl;

    .line 4
    new-instance v0, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->getMainImage()Lio/bidmachine/ImageData;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/ImageDataImpl;-><init>(Lio/bidmachine/ImageData;)V

    iput-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mainImageData:Lio/bidmachine/ImageDataImpl;

    :cond_1a
    return-void
.end method

.method public setVastRequest(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->vastRequest:Lio/bidmachine/iab/vast/VastRequest;

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->videoUri:Landroid/net/Uri;

    return-void
.end method

.method public final showProgressDialog(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->mayShowProgressDialog()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2
    invoke-static {p1}, Lio/bidmachine/core/Utils;->canAddWindowToActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    new-instance v1, Lio/bidmachine/nativead/NativeAdObject$a;

    invoke-direct {v1, p0}, Lio/bidmachine/nativead/NativeAdObject$a;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    const-string v0, ""

    const-string v1, "Loading..."

    invoke-static {p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 17
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 18
    new-instance p1, Lio/bidmachine/nativead/NativeAdObject$b;

    invoke-direct {p1, p0}, Lio/bidmachine/nativead/NativeAdObject$b;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject;->progressDialogCanceller:Landroid/os/Handler;

    .line 25
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_46
    return-void
.end method

.method public unregisterView()V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->stopViewabilityTracker()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/NativeAdObject;->removeWatermarkAutoLayout(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lio/bidmachine/nativead/NativeAdObject;->deConfigureClickableView(Landroid/view/ViewGroup;)V

    .line 5
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->container:Landroid/view/ViewGroup;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_34

    .line 7
    :cond_15
    :goto_15
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    if-eqz v0, :cond_23

    .line 8
    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->release()V

    .line 10
    iput-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->mediaView:Lio/bidmachine/nativead/view/MediaView;

    .line 12
    :cond_23
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject;->nativeNetworkAdapter:Lio/bidmachine/nativead/NativeNetworkAdapter;

    if-eqz v0, :cond_2a

    .line 13
    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeNetworkAdapter;->unregisterNative()V

    .line 15
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->destroyDisclaimerTextView()V

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeAdObject;->removeWatermark()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lio/bidmachine/nativead/NativeAdObject;->viewRegistered:Z
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_13

    return-void

    .line 19
    :goto_34
    iget-object v1, p0, Lio/bidmachine/nativead/NativeAdObject;->tag:Lio/bidmachine/util/Tag;

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject.a (io.bidmachine.nativead.NativeAdObject$a)
.class public Lio/bidmachine/nativead/NativeAdObject$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/NativeAdObject;->showProgressDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$a;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$a;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {p1}, Lio/bidmachine/nativead/NativeAdObject;->access$000(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject.b (io.bidmachine.nativead.NativeAdObject$b)
.class public Lio/bidmachine/nativead/NativeAdObject$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/NativeAdObject;->showProgressDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$b;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$b;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeAdObject;->access$000(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject.d (io.bidmachine.nativead.NativeAdObject$d)
.class public Lio/bidmachine/nativead/NativeAdObject$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/SafeExecutable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$d;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/nativead/NativeAdObject$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeAdObject$d;-><init>(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/util/ProcessUrlResult;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$d;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/util/ProcessUrlResult;->getSystemComponent()Lio/bidmachine/util/SystemComponent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/bidmachine/AdProcessCallback;->processClickVerified(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    .line 4
    :cond_14
    iget-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$d;->a:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {p1}, Lio/bidmachine/nativead/NativeAdObject;->access$000(Lio/bidmachine/nativead/NativeAdObject;)V

    return-void
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/util/ProcessUrlResult;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeAdObject$d;->a(Lio/bidmachine/util/ProcessUrlResult;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject.e (io.bidmachine.nativead.NativeAdObject$e)
.class public final Lio/bidmachine/nativead/NativeAdObject$e;
.super Lio/bidmachine/internal/e;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedNativeAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lio/bidmachine/nativead/NativeAdObject;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdObject;Lio/bidmachine/AdProcessCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$e;->b:Lio/bidmachine/nativead/NativeAdObject;

    .line 2
    invoke-direct {p0, p2}, Lio/bidmachine/internal/e;-><init>(Lio/bidmachine/AdProcessCallback;)V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lio/bidmachine/nativead/NativeNetworkAdapter;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$e;->b:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0, p1}, Lio/bidmachine/nativead/NativeAdObject;->setNativeNetworkAdapter(Lio/bidmachine/nativead/NativeNetworkAdapter;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$e;->b:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeRequest;

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeAdRequestParameters;->isValidateAssets()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->isValid()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/internal/e;->a()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    const-string v0, "Native ad does not contain all required assets"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->incorrectContent(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void

    :catch_2d
    move-exception p1

    goto :goto_47

    .line 8
    :cond_2f
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->isNetworkControlLoadingAssets()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/internal/e;->a()Lio/bidmachine/AdProcessCallback;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    return-void

    .line 11
    :cond_3d
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$e;->b:Lio/bidmachine/nativead/NativeAdObject;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/bidmachine/nativead/NativeAdObject;->access$200(Lio/bidmachine/nativead/NativeAdObject;Landroid/content/Context;Lio/bidmachine/nativead/NativeData;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_2d

    return-void

    .line 14
    :goto_47
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$e;->b:Lio/bidmachine/nativead/NativeAdObject;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeAdObject;->access$300(Lio/bidmachine/nativead/NativeAdObject;)Lio/bidmachine/util/Tag;

    move-result-object v0

    invoke-static {v0, p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {p0}, Lio/bidmachine/internal/e;->a()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    const-string v1, "Exception loading native ad assets"

    invoke-static {v1, p1}, Lio/bidmachine/utils/BMError;->throwable(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda0 (io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/ContextProvider;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/ContextProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ContextProvider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/ContextProvider;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeAdObject;->$r8$lambda$LWzBZjtb4_QopwyD5wvUY5XVsAM(Lio/bidmachine/ContextProvider;)Lio/bidmachine/rendering/Repository;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda1 (io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/ImageDataImpl;

    invoke-virtual {p1}, Lio/bidmachine/ImageDataImpl;->destroy()V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda2 (io.bidmachine.nativead.NativeAdObject$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/nativead/NativeAdObject$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/nativead/NativeNetworkAdapter;

    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeNetworkAdapter;->destroy()V

    return-void
.end method
