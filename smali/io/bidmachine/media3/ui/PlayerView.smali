###### Class io.bidmachine.media3.ui.PlayerView (io.bidmachine.media3.ui.PlayerView)
.class public Lio/bidmachine/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/PlayerView$FullscreenButtonClickListener;,
        Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;,
        Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;,
        Lio/bidmachine/media3/ui/PlayerView$ComponentListener;,
        Lio/bidmachine/media3/ui/PlayerView$Api34;
    }
.end annotation


# instance fields
.field public final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field public artworkDisplayMode:I

.field public final artworkView:Landroid/widget/ImageView;

.field public final bufferingView:Landroid/view/View;

.field public final componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

.field public final contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

.field public final controller:Lio/bidmachine/media3/ui/PlayerControlView;

.field public controllerAutoShow:Z

.field public controllerHideDuringAds:Z

.field public controllerHideOnTouch:Z

.field public controllerShowTimeoutMs:I

.field public controllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;

.field public customErrorMessage:Ljava/lang/CharSequence;

.field public defaultArtwork:Landroid/graphics/drawable/Drawable;

.field public enableComposeSurfaceSyncWorkaround:Z

.field public final errorMessageView:Landroid/widget/TextView;

.field public final exoPlayerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public imageDisplayMode:I

.field public final imageOutput:Ljava/lang/Object;

.field public final imageView:Landroid/widget/ImageView;

.field public keepContentOnPlayerReset:Z

.field public legacyControllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;

.field public final mainLooperHandler:Landroid/os/Handler;

.field public final overlayFrameLayout:Landroid/widget/FrameLayout;

.field public player:Lio/bidmachine/media3/common/Player;

.field public final setImageOutputMethod:Ljava/lang/reflect/Method;

.field public showBuffering:I

.field public final shutterView:Landroid/view/View;

.field public final subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

.field public final surfaceSyncGroupV34:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final surfaceView:Landroid/view/View;

.field public final surfaceViewIgnoresVideoAspectRatio:Z

.field public useController:Z


# direct methods
.method public static synthetic $r8$lambda$NYjElEAAqRtsJAOPZhU5D95c_1M(Lio/bidmachine/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1720
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1721
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1722
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->showImage()V

    .line 1723
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->closeShutter()V

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$pIjn9vFwOGq5niZrjM5nXJsFvdQ(Lio/bidmachine/media3/ui/PlayerView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onImageAvailable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    .line 530
    aget-object p1, p3, p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->onImageAvailable(Landroid/graphics/Bitmap;)V

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 353
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 355
    new-instance v3, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v3, v1}, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;-><init>(Lio/bidmachine/media3/ui/PlayerView;)V

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    .line 356
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, v1, Lio/bidmachine/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_61

    .line 359
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    .line 360
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    .line 361
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    .line 362
    iput-boolean v5, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 363
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceSyncGroupV34:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 364
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    .line 365
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    .line 366
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    .line 367
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    .line 368
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    .line 369
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 370
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 371
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 372
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    .line 373
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    .line 374
    iput-object v6, v1, Lio/bidmachine/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    .line 375
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 376
    sget v3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_56

    .line 377
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lio/bidmachine/media3/ui/PlayerView;->configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_5d

    .line 379
    :cond_56
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lio/bidmachine/media3/ui/PlayerView;->configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 381
    :goto_5d
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 387
    :cond_61
    sget v4, Lio/bidmachine/media3/ui/R$layout;->bm_exo_player_view:I

    const/4 v7, 0x1

    if-eqz v2, :cond_103

    .line 403
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lio/bidmachine/media3/ui/R$styleable;->PlayerView:[I

    move/from16 v11, p3

    .line 404
    invoke-virtual {v9, v2, v10, v11, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 407
    :try_start_72
    sget v10, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 408
    sget v11, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v11, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 409
    sget v12, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 410
    sget v12, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 411
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_artwork_display_mode:I

    .line 412
    invoke-virtual {v9, v13, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 413
    sget v14, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_default_artwork:I

    .line 414
    invoke-virtual {v9, v14, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 415
    sget v15, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_image_display_mode:I

    invoke-virtual {v9, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 416
    sget v6, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v9, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 417
    sget v8, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 418
    sget v7, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v9, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 419
    sget v5, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_show_timeout:I

    move/from16 p3, v4

    const/16 v4, 0x1388

    .line 420
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 421
    sget v5, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_hide_on_touch:I

    move/from16 v16, v4

    const/4 v4, 0x1

    .line 422
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v17, v5

    .line 423
    sget v5, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 424
    sget v4, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 425
    sget v5, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v19, v4

    iget-boolean v4, v1, Lio/bidmachine/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 426
    invoke-virtual {v9, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lio/bidmachine/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    .line 428
    sget v4, Lio/bidmachine/media3/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 429
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_e5
    .catchall {:try_start_72 .. :try_end_e5} :catchall_fe

    .line 431
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v9, v14

    move/from16 v5, v17

    move/from16 v17, v10

    move v10, v7

    move v7, v4

    move/from16 v4, p3

    move/from16 p3, v6

    move/from16 v6, v18

    move/from16 v18, v12

    move v12, v15

    move v15, v13

    move v13, v11

    move v11, v8

    move/from16 v8, v19

    goto :goto_119

    :catchall_fe
    move-exception v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 432
    throw v0

    :cond_103
    move v5, v4

    const/16 v4, 0x1388

    move/from16 v16, v4

    move v4, v5

    const/16 p3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 435
    :goto_119
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    invoke-virtual {v14, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v4, 0x40000

    .line 436
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 439
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_134

    .line 441
    invoke-static {v4, v10}, Lio/bidmachine/media3/ui/PlayerView;->setResizeModeRaw(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;I)V

    .line 445
    :cond_134
    sget v10, Lio/bidmachine/media3/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v1, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v10, :cond_143

    if-eqz v17, :cond_143

    .line 447
    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_143
    const/16 v10, 0x22

    if-eqz v4, :cond_1cd

    if-eqz v11, :cond_1cd

    .line 453
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v13, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v14, 0x2

    if-eq v11, v14, :cond_1ae

    const/4 v14, 0x3

    .line 456
    const-class v17, Landroid/content/Context;

    if-eq v11, v14, :cond_18b

    const/4 v14, 0x4

    if-eq v11, v14, :cond_169

    .line 486
    new-instance v11, Landroid/view/SurfaceView;

    invoke-direct {v11, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 487
    sget v14, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v14, v10, :cond_166

    .line 488
    invoke-static {v11}, Lio/bidmachine/media3/ui/PlayerView$Api34;->setSurfaceLifecycleToFollowsAttachment(Landroid/view/SurfaceView;)V

    .line 490
    :cond_166
    iput-object v11, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_1b5

    .line 477
    :cond_169
    :try_start_169
    const-class v11, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;

    sget v14, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;->$r8$clinit:I

    .line 478
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iput-object v11, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_181} :catch_182

    goto :goto_1b5

    :catch_182
    move-exception v0

    .line 481
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 464
    :cond_18b
    :try_start_18b
    const-class v11, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    sget v14, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->$r8$clinit:I

    .line 465
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    iput-object v11, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1a3} :catch_1a5

    const/4 v11, 0x1

    goto :goto_1b6

    :catch_1a5
    move-exception v0

    .line 468
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 458
    :cond_1ae
    new-instance v11, Landroid/view/TextureView;

    invoke-direct {v11, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v11, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_1b5
    const/4 v11, 0x0

    .line 493
    :goto_1b6
    iget-object v14, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v13, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/view/View;->setClickable(Z)V

    .line 499
    iget-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v4, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 v3, 0x0

    goto :goto_1d1

    :cond_1cd
    const/4 v3, 0x0

    .line 501
    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v11, 0x0

    .line 503
    :goto_1d1
    iput-boolean v11, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    .line 504
    sget v4, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-ne v4, v10, :cond_1de

    new-instance v4, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    invoke-direct {v4, v3}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;-><init>(Lio/bidmachine/media3/ui/PlayerView$1;)V

    move-object v3, v4

    goto :goto_1df

    :cond_1de
    const/4 v3, 0x0

    :goto_1df
    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->surfaceSyncGroupV34:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    .line 507
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    .line 510
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    .line 513
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_image:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    .line 514
    iput v12, v1, Lio/bidmachine/media3/ui/PlayerView;->imageDisplayMode:I

    .line 521
    :try_start_201
    const-class v3, Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 522
    const-class v4, Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    sget-object v10, Lio/bidmachine/media3/exoplayer/image/ImageOutput;->NO_OP:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    .line 523
    const-string v10, "setImageOutput"

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 526
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    new-instance v12, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 525
    invoke-static {v11, v4, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4
    :try_end_222
    .catch Ljava/lang/ClassNotFoundException; {:try_start_201 .. :try_end_222} :catch_223
    .catch Ljava/lang/NoSuchMethodException; {:try_start_201 .. :try_end_222} :catch_223

    goto :goto_226

    :catch_223
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 540
    :goto_226
    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    .line 541
    iput-object v10, v1, Lio/bidmachine/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    .line 542
    iput-object v4, v1, Lio/bidmachine/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    .line 545
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v18, :cond_23d

    if-eqz v15, :cond_23d

    if-eqz v3, :cond_23d

    goto :goto_23e

    :cond_23d
    const/4 v15, 0x0

    .line 548
    :goto_23e
    iput v15, v1, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v9, :cond_24c

    .line 550
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    .line 554
    :cond_24c
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/ui/SubtitleView;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    if-eqz v3, :cond_25e

    .line 556
    invoke-virtual {v3}, Lio/bidmachine/media3/ui/SubtitleView;->setUserDefaultStyle()V

    .line 557
    invoke-virtual {v3}, Lio/bidmachine/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    .line 561
    :cond_25e
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_26d

    .line 563
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 565
    :cond_26d
    iput v8, v1, Lio/bidmachine/media3/ui/PlayerView;->showBuffering:I

    .line 568
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v3, :cond_27e

    .line 570
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_27e
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/ui/PlayerControlView;

    .line 575
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_292

    .line 577
    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v13, 0x0

    goto :goto_2be

    :cond_292
    if-eqz v4, :cond_2ba

    .line 581
    new-instance v3, Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v8, 0x0

    const/4 v13, 0x0

    invoke-direct {v3, v0, v8, v13, v2}, Lio/bidmachine/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 582
    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_controller:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 583
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 585
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 586
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 587
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2be

    :cond_2ba
    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 589
    iput-object v3, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 591
    :goto_2be
    iget-object v0, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz v0, :cond_2c5

    move/from16 v2, v16

    goto :goto_2c6

    :cond_2c5
    move v2, v13

    :goto_2c6
    iput v2, v1, Lio/bidmachine/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 592
    iput-boolean v5, v1, Lio/bidmachine/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 593
    iput-boolean v6, v1, Lio/bidmachine/media3/ui/PlayerView;->controllerAutoShow:Z

    .line 594
    iput-boolean v7, v1, Lio/bidmachine/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz p3, :cond_2d4

    if-eqz v0, :cond_2d4

    const/4 v5, 0x1

    goto :goto_2d5

    :cond_2d4
    move v5, v13

    .line 595
    :goto_2d5
    iput-boolean v5, v1, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_2e3

    .line 597
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->hideImmediately()V

    .line 598
    iget-object v0, v1, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v2, v1, Lio/bidmachine/media3/ui/PlayerView;->componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->addVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_2e3
    if-eqz p3, :cond_2e9

    const/4 v4, 0x1

    .line 601
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 603
    :cond_2e9
    invoke-virtual {v1}, Lio/bidmachine/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/SubtitleView;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideImage()V

    return-void
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideAndClearImage()V

    return-void
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/ui/PlayerView;Z)V
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    return-void
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateBuffering()V

    return-void
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateControllerVisibility()V

    return-void
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/ui/PlayerView;)Z
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/ui/PlayerView;)Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return p0
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->toggleControllerVisibility()V

    return-void
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/common/Player;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;

    return-object p0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$FullscreenButtonClickListener;
    .registers 1

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateAspectRatio()V

    return-void
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/ui/PlayerView;)Z
    .registers 1

    .line 189
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/ui/PlayerView;)Landroid/os/Handler;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceSyncGroupV34:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;
    .registers 1

    .line 189
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/ui/PlayerView;)Z
    .registers 1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result p0

    return p0
.end method

.method public static configureEditModeLogo(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4

    .line 1811
    sget v0, Lio/bidmachine/media3/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1812
    sget p0, Lio/bidmachine/media3/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static configureEditModeLogoV23(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .registers 4

    .line 1806
    sget v0, Lio/bidmachine/media3/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-static {p0, p1, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1807
    sget p0, Lio/bidmachine/media3/ui/R$color;->exo_edit_mode_background_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1665
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 1668
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1669
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    return-void
.end method

.method private setImageOutput(Lio/bidmachine/media3/common/Player;)V
    .registers 4

    .line 705
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 707
    :try_start_e
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_23} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    goto :goto_27

    :catch_26
    move-exception p1

    .line 709
    :goto_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    return-void
.end method

.method public static setResizeModeRaw(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;I)V
    .registers 2

    .line 1817
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method


# virtual methods
.method public final clearImageOutput(Lio/bidmachine/media3/common/Player;)V
    .registers 4

    .line 716
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 718
    :try_start_e
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1e} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    goto :goto_22

    :catch_21
    move-exception p1

    .line 720
    :goto_22
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    return-void
.end method

.method public final closeShutter()V
    .registers 3

    .line 1729
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 1730
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1797
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1798
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceSyncGroupV34:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    if-eqz v0, :cond_14

    .line 1799
    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->maybeMarkSyncReadyAndClear()V

    :cond_14
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 936
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_19

    const/16 v1, 0x10

    .line 937
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 938
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 939
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 942
    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->isDpadKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 944
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v2}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v2

    if-nez v2, :cond_36

    .line 946
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return v1

    .line 948
    :cond_36
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_50

    :cond_43
    const/4 p1, 0x0

    if-eqz v0, :cond_4f

    .line 953
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 955
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    :cond_4f
    return p1

    .line 951
    :cond_50
    :goto_50
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return v1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 969
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 1458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1c

    .line 1460
    new-instance v2, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    const-string v1, "Transparent overlay does not impact viewability"

    .line 1462
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;->setDetailedReason(Ljava/lang/String;)Lio/bidmachine/media3/common/AdOverlayInfo$Builder;

    move-result-object v1

    .line 1463
    invoke-virtual {v1}, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;->build()Lio/bidmachine/media3/common/AdOverlayInfo;

    move-result-object v1

    .line 1460
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_1c
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz v1, :cond_2d

    .line 1466
    new-instance v2, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    .line 1467
    invoke-virtual {v2}, Lio/bidmachine/media3/common/AdOverlayInfo$Builder;->build()Lio/bidmachine/media3/common/AdOverlayInfo;

    move-result-object v1

    .line 1466
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    :cond_2d
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .registers 3

    .line 1452
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const-string v1, "exo_ad_overlay must be present for ad playback"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getArtworkDisplayMode()I
    .registers 2

    .line 783
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .registers 2

    .line 1053
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerAutoShow:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .registers 2

    .line 1008
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 790
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageDisplayMode()I
    .registers 2

    .line 820
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageDisplayMode:I

    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .registers 2

    .line 1377
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lio/bidmachine/media3/common/Player;
    .registers 2

    .line 634
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    .line 748
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lio/bidmachine/media3/ui/SubtitleView;
    .registers 2

    .line 1389
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getUseController()Z
    .registers 2

    .line 825
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .registers 2

    .line 1364
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method public final hasSelectedImageTrack()Z
    .registers 3

    .line 1641
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_1d

    .line 1642
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    if-eqz v1, :cond_1d

    const/16 v1, 0x1e

    .line 1644
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1645
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSelectedVideoTrack()Z
    .registers 3

    .line 1649
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_19

    const/16 v1, 0x1e

    .line 1651
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1652
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final hideAndClearImage()V
    .registers 3

    .line 1698
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideImage()V

    .line 1699
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    const v1, 0x106000d

    .line 1700
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    return-void
.end method

.method public final hideArtwork()V
    .registers 3

    .line 1634
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    const v1, 0x106000d

    .line 1635
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1636
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method public hideController()V
    .registers 2

    .line 993
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz v0, :cond_7

    .line 994
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->hide()V

    :cond_7
    return-void
.end method

.method public final hideImage()V
    .registers 3

    .line 1712
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 1713
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public final isDpadKey(I)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 0
    const/16 v0, 0x13

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_27

    const/16 v0, 0x16

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x14

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_27

    const/16 v0, 0x15

    if-eq p1, v0, :cond_27

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_27

    const/16 v0, 0x17

    if-ne p1, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x1

    return p1
.end method

.method public final isImageSet()Z
    .registers 3

    .line 1656
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1659
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1661
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    return v1
.end method

.method public final isPlayingAd()Z
    .registers 3

    .line 1539
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_1e

    const/16 v1, 0x10

    .line 1540
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 1541
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 1542
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeShowController(Z)V
    .registers 4

    .line 1504
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_b

    goto :goto_31

    .line 1507
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1508
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 1509
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1510
    :goto_24
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2e

    if-nez v0, :cond_2e

    if-eqz v1, :cond_31

    .line 1512
    :cond_2e
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/PlayerView;->showController(Z)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onContentAspectRatioChanged(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;F)V
    .registers 3

    if-eqz p1, :cond_5

    .line 1444
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_5
    return-void
.end method

.method public final onImageAvailable(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1718
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1400
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    const/4 p1, 0x1

    .line 1403
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 1394
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->toggleControllerVisibility()V

    .line 1395
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 773
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    goto :goto_a

    :cond_8
    move v1, v0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 774
    iget v1, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_17

    .line 775
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    .line 776
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_17
    return-void
.end method

.method public final setArtworkFromMediaMetadata(Lio/bidmachine/media3/common/Player;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    const/16 v1, 0x12

    .line 1599
    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_28

    .line 1602
    :cond_c
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object p1

    .line 1603
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaMetadata;->artworkData:[B

    if-nez p1, :cond_15

    return v0

    .line 1606
    :cond_15
    array-length v1, p1

    .line 1607
    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1609
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1

    :cond_28
    :goto_28
    return v0
.end method

.method public setAspectRatioListener(Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .registers 3

    .line 1327
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lio/bidmachine/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .registers 3

    .line 1102
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .registers 2

    .line 1065
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .registers 2

    .line 1076
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .registers 3

    .line 1041
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideOnTouch:Z

    .line 1043
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1181
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .registers 3

    .line 1020
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    .line 1022
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1024
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->showController()V

    :cond_12
    return-void
.end method

.method public setControllerVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->legacyControllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v0, p1, :cond_a

    goto :goto_1e

    :cond_a
    if-eqz v0, :cond_11

    .line 1125
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->removeVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V

    .line 1127
    :cond_11
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->legacyControllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_1e

    .line 1129
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->addVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V

    const/4 p1, 0x0

    .line 1130
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->setControllerVisibilityListener(Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setControllerVisibilityListener(Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .registers 2

    .line 1090
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerVisibilityListener:Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 1092
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->setControllerVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_8
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 929
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 930
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    .line 931
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 801
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    .line 802
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 803
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public final setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .registers 7

    .line 1613
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    .line 1614
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1615
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v0, :cond_40

    if-lez v2, :cond_40

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1618
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1619
    iget v3, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 1620
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1621
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1623
    :cond_2a
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v3, v0}, Lio/bidmachine/media3/ui/PlayerView;->onContentAspectRatioChanged(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;F)V

    .line 1624
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1625
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_40
    return v1
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .registers 2

    .line 1341
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    return-void
.end method

.method public setErrorMessageProvider(Lio/bidmachine/media3/common/ErrorMessageProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/ErrorMessageProvider<",
            "-",
            "Lio/bidmachine/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 917
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateErrorMessage()V

    :cond_5
    return-void
.end method

.method public setFullscreenButtonClickListener(Lio/bidmachine/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .registers 3

    .line 1145
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .registers 3

    .line 1161
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    return-void
.end method

.method public setImageDisplayMode(I)V
    .registers 3

    .line 810
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 811
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageDisplayMode:I

    if-eq v0, p1, :cond_13

    .line 812
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerView;->imageDisplayMode:I

    .line 813
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    :cond_13
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .registers 3

    .line 886
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_a

    .line 887
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    .line 888
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_a
    return-void
.end method

.method public setPlayer(Lio/bidmachine/media3/common/Player;)V
    .registers 8

    .line 651
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_21

    .line 653
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v2

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v3

    .line 652
    :goto_22
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 654
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-ne v0, p1, :cond_2a

    return-void

    :cond_2a
    const/16 v1, 0x1b

    if-eqz v0, :cond_51

    .line 660
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerView;->componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    invoke-interface {v0, v4}, Lio/bidmachine/media3/common/Player;->removeListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 661
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 662
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_45

    .line 663
    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lio/bidmachine/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_4e

    .line 664
    :cond_45
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_4e

    .line 665
    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lio/bidmachine/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    .line 668
    :cond_4e
    :goto_4e
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->clearImageOutput(Lio/bidmachine/media3/common/Player;)V

    .line 670
    :cond_51
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    if-eqz v0, :cond_59

    const/4 v4, 0x0

    .line 671
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 673
    :cond_59
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 674
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 675
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setPlayer(Lio/bidmachine/media3/common/Player;)V

    .line 677
    :cond_66
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateBuffering()V

    .line 678
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateErrorMessage()V

    .line 679
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_c5

    .line 681
    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 682
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/TextureView;

    if-eqz v1, :cond_83

    .line 683
    check-cast v0, Landroid/view/TextureView;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_8c

    .line 684
    :cond_83
    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_8c

    .line 685
    check-cast v0, Landroid/view/SurfaceView;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_8c
    :goto_8c
    const/16 v0, 0x1e

    .line 687
    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 688
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Tracks;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 690
    :cond_9f
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateAspectRatio()V

    .line 693
    :cond_a2
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    if-eqz v0, :cond_b9

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 694
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->subtitleView:Lio/bidmachine/media3/ui/SubtitleView;

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentCues()Lio/bidmachine/media3/common/text/CueGroup;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 696
    :cond_b9
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->componentListener:Lio/bidmachine/media3/ui/PlayerView$ComponentListener;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->addListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 697
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->setImageOutput(Lio/bidmachine/media3/common/Player;)V

    .line 698
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void

    .line 700
    :cond_c5
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideController()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 3

    .line 1237
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    .line 741
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .registers 3

    .line 902
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_9

    .line 903
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerView;->showBuffering:I

    .line 904
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateBuffering()V

    :cond_9
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 3

    .line 1204
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1282
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 3

    .line 1226
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .registers 3

    .line 1297
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 3

    .line 1215
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 3

    .line 1193
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 3

    .line 1248
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 3

    .line 1259
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 3

    .line 1270
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .registers 3

    .line 860
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 861
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method

.method public setUseArtwork(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 767
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 838
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    move v2, v1

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v0

    :goto_c
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_19

    .line 839
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 840
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_21

    return-void

    .line 843
    :cond_21
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    .line 844
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 845
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->setPlayer(Lio/bidmachine/media3/common/Player;)V

    goto :goto_3e

    .line 846
    :cond_31
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz p1, :cond_3e

    .line 847
    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->hide()V

    .line 848
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->setPlayer(Lio/bidmachine/media3/common/Player;)V

    .line 850
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 727
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_c

    .line 730
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public final shouldShowControllerIndefinitely()Z
    .registers 5

    .line 1518
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1521
    :cond_6
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 1522
    iget-boolean v2, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    const/16 v3, 0x11

    .line 1523
    invoke-interface {v2, v3}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 1524
    invoke-interface {v2}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    :cond_24
    if-eq v0, v1, :cond_37

    const/4 v2, 0x4

    if-eq v0, v2, :cond_37

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 1527
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_37
    return v1

    :cond_38
    const/4 v0, 0x0

    return v0
.end method

.method public showController()V
    .registers 2

    .line 987
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->showController(Z)V

    return-void
.end method

.method public final showController(Z)V
    .registers 3

    .line 1531
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1534
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    iget p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_f
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 1535
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->show()V

    return-void
.end method

.method public final showImage()V
    .registers 3

    .line 1705
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 1706
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1707
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    :cond_b
    return-void
.end method

.method public final toggleControllerVisibility()V
    .registers 2

    .line 1492
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-nez v0, :cond_b

    goto :goto_21

    .line 1495
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1496
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void

    .line 1497
    :cond_18
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_21

    .line 1498
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->hide()V

    :cond_21
    :goto_21
    return-void
.end method

.method public final updateAspectRatio()V
    .registers 5

    .line 1786
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getVideoSize()Lio/bidmachine/media3/common/VideoSize;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    .line 1787
    :goto_b
    iget v1, v0, Lio/bidmachine/media3/common/VideoSize;->width:I

    .line 1788
    iget v2, v0, Lio/bidmachine/media3/common/VideoSize;->height:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    if-nez v1, :cond_15

    goto :goto_1c

    :cond_15
    int-to-float v1, v1

    .line 1790
    iget v0, v0, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v1, v3

    .line 1791
    :goto_1d
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    .line 1792
    iget-boolean v2, p0, Lio/bidmachine/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    move v3, v1

    .line 1791
    :goto_25
    invoke-virtual {p0, v0, v3}, Lio/bidmachine/media3/ui/PlayerView;->onContentAspectRatioChanged(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;F)V

    return-void
.end method

.method public final updateBuffering()V
    .registers 5

    .line 1735
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 1736
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 1738
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->showBuffering:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_21

    if-ne v0, v3, :cond_20

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    .line 1740
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v3, v1

    .line 1741
    :cond_21
    :goto_21
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    const/16 v1, 0x8

    :goto_28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method public final updateContentDescription()V
    .registers 4

    .line 1764
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-boolean v2, p0, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    if-nez v2, :cond_a

    goto :goto_30

    .line 1766
    :cond_a
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1768
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v0, :cond_1e

    .line 1769
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_controls_hide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1767
    :cond_1e
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1773
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_controls_show:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1772
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1765
    :cond_30
    :goto_30
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateControllerVisibility()V
    .registers 2

    .line 1778
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_e

    .line 1779
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideController()V

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 1781
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void
.end method

.method public final updateErrorMessage()V
    .registers 3

    .line 1746
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    .line 1747
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    .line 1748
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1752
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlayerError()Lio/bidmachine/media3/common/PlaybackException;

    .line 1758
    :cond_19
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method

.method public final updateForCurrentTrackSelections(Z)V
    .registers 8

    .line 1546
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->player:Lio/bidmachine/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    const/16 v3, 0x1e

    .line 1551
    invoke-interface {v0, v3}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1552
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Tracks;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    .line 1553
    :goto_1b
    iget-boolean v4, p0, Lio/bidmachine/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-nez v4, :cond_2c

    if-eqz v3, :cond_23

    if-eqz p1, :cond_2c

    .line 1554
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideArtwork()V

    .line 1555
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->closeShutter()V

    .line 1556
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_2c
    if-nez v3, :cond_2f

    goto :goto_82

    .line 1563
    :cond_2f
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result p1

    .line 1564
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result v3

    if-nez p1, :cond_41

    if-nez v3, :cond_41

    .line 1570
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->closeShutter()V

    .line 1571
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideAndClearImage()V

    .line 1575
    :cond_41
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v4, :cond_53

    .line 1576
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_53

    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->isImageSet()Z

    move-result v4

    if-eqz v4, :cond_53

    move v1, v2

    :cond_53
    if-eqz v3, :cond_60

    if-nez p1, :cond_60

    if-eqz v1, :cond_60

    .line 1578
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->closeShutter()V

    .line 1579
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->showImage()V

    goto :goto_69

    :cond_60
    if-eqz p1, :cond_69

    if-nez v3, :cond_69

    if-eqz v1, :cond_69

    .line 1581
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_69
    :goto_69
    if-nez p1, :cond_83

    if-nez v3, :cond_83

    .line 1585
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->useArtwork()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 1587
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerView;->setArtworkFromMediaMetadata(Lio/bidmachine/media3/common/Player;)Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_82

    .line 1590
    :cond_7a
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_83

    :goto_82
    return-void

    .line 1595
    :cond_83
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerView;->hideArtwork()V

    return-void
.end method

.method public final updateImageViewAspectRatio()V
    .registers 5

    .line 1673
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_43

    .line 1676
    :cond_5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_43

    .line 1680
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1681
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v1, :cond_43

    if-gtz v0, :cond_19

    goto :goto_43

    :cond_19
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1686
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 1687
    iget v2, p0, Lio/bidmachine/media3/ui/PlayerView;->imageDisplayMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_31

    .line 1688
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 1689
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 1691
    :cond_31
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3e

    .line 1692
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView;->contentFrame:Lio/bidmachine/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v2, v1}, Lio/bidmachine/media3/ui/PlayerView;->onContentAspectRatioChanged(Lio/bidmachine/media3/ui/AspectRatioFrameLayout;F)V

    .line 1694
    :cond_3e
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public final useArtwork()Z
    .registers 2

    .line 1484
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v0, :cond_b

    .line 1485
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final useController()Z
    .registers 2

    .line 1476
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_b

    .line 1477
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView;->controller:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.ui.PlayerView.AnonymousClass1 (io.bidmachine.media3.ui.PlayerView$1)
.class public synthetic Lio/bidmachine/media3/ui/PlayerView$1;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.ui.PlayerView.Api34 (io.bidmachine.media3.ui.PlayerView$Api34)
.class public Lio/bidmachine/media3/ui/PlayerView$Api34;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api34"
.end annotation


# direct methods
.method public static setSurfaceLifecycleToFollowsAttachment(Landroid/view/SurfaceView;)V
    .registers 2

    const/4 v0, 0x2

    .line 1980
    invoke-static {p0, v0}, Lio/bidmachine/media3/ui/PlayerView$Api34$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/SurfaceView;I)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView.ComponentListener (io.bidmachine.media3.ui.PlayerView$ComponentListener)
.class public final Lio/bidmachine/media3/ui/PlayerView$ComponentListener;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Lio/bidmachine/media3/common/Player$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;
.implements Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public lastPeriodUidWithTracks:Ljava/lang/Object;

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 2

    .line 1845
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1846
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->period:Lio/bidmachine/media3/common/Timeline$Period;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1953
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1800(Lio/bidmachine/media3/ui/PlayerView;)V

    return-void
.end method

.method public onCues(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 3

    .line 1853
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$100(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1854
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$100(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/SubtitleView;

    move-result-object v0

    iget-object p1, p1, Lio/bidmachine/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_13
    return-void
.end method

.method public onFullScreenModeChanged(Z)V
    .registers 2

    .line 1970
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$2100(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$FullscreenButtonClickListener;

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .registers 3

    .line 1935
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1300(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 1936
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1500(Lio/bidmachine/media3/ui/PlayerView;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 2

    .line 1927
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1300(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 1928
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1400(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 1929
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1500(Lio/bidmachine/media3/ui/PlayerView;)V

    return-void
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V
    .registers 4

    .line 1944
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1600(Lio/bidmachine/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$1700(Lio/bidmachine/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1945
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerView;->hideController()V

    :cond_15
    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 3

    .line 1883
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$800(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1884
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$800(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$900(Lio/bidmachine/media3/ui/PlayerView;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1886
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$1000(Lio/bidmachine/media3/ui/PlayerView;)V

    return-void

    .line 1888
    :cond_20
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$1100(Lio/bidmachine/media3/ui/PlayerView;)V

    :cond_25
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .registers 6

    .line 1870
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_3c

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    .line 1871
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$400(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    .line 1872
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$500(Lio/bidmachine/media3/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 1875
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$700(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    .line 1877
    invoke-static {p2}, Lio/bidmachine/media3/ui/PlayerView;->access$600(Lio/bidmachine/media3/ui/PlayerView;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$400(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    new-instance v2, Lio/bidmachine/media3/ui/PlayerView$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/ui/PlayerView$ComponentListener$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 1876
    invoke-virtual {p1, p2, v0, v2}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->postRegister(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    :cond_3c
    return-void
.end method

.method public onTracksChanged(Lio/bidmachine/media3/common/Tracks;)V
    .registers 6

    .line 1898
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$200(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Player;

    const/16 v0, 0x11

    .line 1900
    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1901
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    goto :goto_1b

    .line 1902
    :cond_19
    sget-object v0, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    .line 1903
    :goto_1b
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 1904
    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_63

    :cond_25
    const/16 v1, 0x1e

    .line 1905
    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1906
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Tracks;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 1908
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentPeriodIndex()I

    move-result p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    goto :goto_63

    .line 1909
    :cond_47
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    if-eqz v1, :cond_63

    .line 1910
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_61

    .line 1912
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1913
    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1914
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result p1

    if-ne p1, v0, :cond_61

    return-void

    .line 1919
    :cond_61
    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->lastPeriodUidWithTracks:Ljava/lang/Object;

    .line 1922
    :cond_63
    :goto_63
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerView;->access$1200(Lio/bidmachine/media3/ui/PlayerView;Z)V

    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 1860
    sget-object v0, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    .line 1861
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$200(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    .line 1862
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$200(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    goto :goto_23

    .line 1865
    :cond_1e
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->access$300(Lio/bidmachine/media3/ui/PlayerView;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 3

    .line 1960
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$1900(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 1961
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$2000(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1962
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->access$2000(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;->onVisibilityChanged(I)V

    :cond_16
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView$ComponentListener$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerView$ComponentListener$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerView$ComponentListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$ComponentListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView.ControllerVisibilityListener (io.bidmachine.media3.ui.PlayerView$ControllerVisibilityListener)
.class public interface abstract Lio/bidmachine/media3/ui/PlayerView$ControllerVisibilityListener;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerVisibilityListener"
.end annotation


# virtual methods
.method public abstract onVisibilityChanged(I)V
.end method

###### Class io.bidmachine.media3.ui.PlayerView.FullscreenButtonClickListener (io.bidmachine.media3.ui.PlayerView$FullscreenButtonClickListener)
.class public interface abstract Lio/bidmachine/media3/ui/PlayerView$FullscreenButtonClickListener;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullscreenButtonClickListener"
.end annotation

###### Class io.bidmachine.media3.ui.PlayerView.SurfaceSyncGroupCompatV34 (io.bidmachine.media3.ui.PlayerView$SurfaceSyncGroupCompatV34)
.class public final Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;
.super Ljava/lang/Object;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceSyncGroupCompatV34"
.end annotation


# instance fields
.field public surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public static synthetic $r8$lambda$agODph0R8VArrbVLkn369P7JNnM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$fU5vCgX_tPWZLh_5G0zSxGY6ETQ(Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1994
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline3;->m(Landroid/view/SurfaceView;)Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 1999
    :cond_a
    const-string v0, "exo-sync-b-334901521"

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;)Landroid/window/SurfaceSyncGroup;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    .line 2000
    new-instance p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p1, p0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline4;->m(Landroid/window/SurfaceSyncGroup;Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2001
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 2002
    invoke-static {}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline1;->m()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-static {p1, p0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/AttachedSurfaceControl;Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView$1;)V
    .registers 2

    .line 1985
    invoke-direct {p0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeMarkSyncReadyAndClear()V
    .registers 2

    .line 2007
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_a

    .line 2008
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticApiModelOutline2;->m(Landroid/window/SurfaceSyncGroup;)V

    const/4 v0, 0x0

    .line 2009
    iput-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->surfaceSyncGroup:Landroid/window/SurfaceSyncGroup;

    :cond_a
    return-void
.end method

.method public postRegister(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 5

    .line 1991
    new-instance v0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p3}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6 (io.bidmachine.media3.ui.PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

.field public final synthetic f$1:Landroid/view/SurfaceView;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$1:Landroid/view/SurfaceView;

    iput-object p3, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$1:Landroid/view/SurfaceView;

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->$r8$lambda$fU5vCgX_tPWZLh_5G0zSxGY6ETQ(Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7 (io.bidmachine.media3.ui.PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/media3/ui/PlayerView$SurfaceSyncGroupCompatV34;->$r8$lambda$agODph0R8VArrbVLkn369P7JNnM()V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerView$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/media3/ui/PlayerView;->$r8$lambda$pIjn9vFwOGq5niZrjM5nXJsFvdQ(Lio/bidmachine/media3/ui/PlayerView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.ui.PlayerView$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.PlayerView$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lio/bidmachine/media3/ui/PlayerView;->$r8$lambda$NYjElEAAqRtsJAOPZhU5D95c_1M(Lio/bidmachine/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    return-void
.end method
