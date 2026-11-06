###### Class io.bidmachine.media3.ui.DefaultTimeBar (io.bidmachine.media3.ui.DefaultTimeBar)
.class public Lio/bidmachine/media3/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lio/bidmachine/media3/ui/TimeBar;


# instance fields
.field public adGroupCount:I

.field public adGroupTimesMs:[J

.field public final adMarkerPaint:Landroid/graphics/Paint;

.field public final adMarkerWidth:I

.field public final barGravity:I

.field public final barHeight:I

.field public final bufferedBar:Landroid/graphics/Rect;

.field public final bufferedPaint:Landroid/graphics/Paint;

.field public bufferedPosition:J

.field public final density:F

.field public duration:J

.field public final fineScrubYThreshold:I

.field public final formatBuilder:Ljava/lang/StringBuilder;

.field public final formatter:Ljava/util/Formatter;

.field public keyCountIncrement:I

.field public keyTimeIncrement:J

.field public lastCoarseScrubXPosition:I

.field public lastExclusionRectangle:Landroid/graphics/Rect;

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;",
            ">;"
        }
    .end annotation
.end field

.field public playedAdGroups:[Z

.field public final playedAdMarkerPaint:Landroid/graphics/Paint;

.field public final playedPaint:Landroid/graphics/Paint;

.field public position:J

.field public final progressBar:Landroid/graphics/Rect;

.field public scrubPosition:J

.field public final scrubberBar:Landroid/graphics/Rect;

.field public final scrubberDisabledSize:I

.field public final scrubberDraggedSize:I

.field public final scrubberDrawable:Landroid/graphics/drawable/Drawable;

.field public final scrubberEnabledSize:I

.field public final scrubberPadding:I

.field public scrubberPaddingDisabled:Z

.field public final scrubberPaint:Landroid/graphics/Paint;

.field public scrubberScale:F

.field public scrubberScalingAnimator:Landroid/animation/ValueAnimator;

.field public scrubbing:Z

.field public final seekBounds:Landroid/graphics/Rect;

.field public final stopScrubbingRunnable:Ljava/lang/Runnable;

.field public final touchPosition:Landroid/graphics/Point;

.field public final touchTargetHeight:I

.field public final unplayedPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$GG7mRTP9F929tF2cpY0OrUOh4qc(Lio/bidmachine/media3/ui/DefaultTimeBar;)V
    .registers 2

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LwtxNE6TBPWqf7OkxkGF4GpQOqM(Lio/bidmachine/media3/ui/DefaultTimeBar;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    .line 381
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 272
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    .line 274
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 275
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 276
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    .line 277
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 278
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 279
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    .line 280
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    .line 281
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    .line 282
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    .line 283
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v9, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 285
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    iput-object v9, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 289
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 290
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->density:F

    const/16 v10, -0x32

    .line 291
    invoke-static {v9, v10}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v10

    iput v10, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->fineScrubYThreshold:I

    const/4 v10, 0x4

    .line 292
    invoke-static {v9, v10}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v11

    const/16 v12, 0x1a

    .line 293
    invoke-static {v9, v12}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v12

    .line 294
    invoke-static {v9, v10}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v10

    const/16 v13, 0xc

    .line 295
    invoke-static {v9, v13}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v13

    const/4 v14, 0x0

    .line 296
    invoke-static {v9, v14}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v15

    move/from16 p2, v8

    const/16 v8, 0x10

    .line 297
    invoke-static {v9, v8}, Lio/bidmachine/media3/ui/DefaultTimeBar;->dpToPx(FI)I

    move-result v8

    if-eqz v0, :cond_14a

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v14, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar:[I

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move/from16 v6, p3

    move/from16 v5, p5

    .line 302
    invoke-virtual {v9, v0, v14, v6, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 305
    :try_start_a9
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_scrubber_drawable:I

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c2

    .line 307
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z

    .line 309
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_c2

    :catchall_bf
    move-exception v0

    goto/16 :goto_146

    .line 311
    :cond_c2
    :goto_c2
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_bar_height:I

    .line 312
    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->barHeight:I

    .line 313
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_touch_target_height:I

    .line 314
    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 316
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_bar_gravity:I

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->barGravity:I

    .line 317
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_ad_marker_width:I

    .line 318
    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 320
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    .line 321
    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 323
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    .line 324
    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 326
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    .line 327
    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 329
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_played_color:I

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 330
    sget v8, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_scrubber_color:I

    .line 331
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 332
    sget v8, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_buffered_color:I

    const v9, -0x33000001    # -1.3421772E8f

    .line 333
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 334
    sget v9, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_unplayed_color:I

    const v10, 0x33ffffff

    .line 335
    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 336
    sget v10, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_ad_marker_color:I

    const v11, -0x4d000100

    .line 337
    invoke-virtual {v5, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 338
    sget v11, Lio/bidmachine/media3/ui/R$styleable;->DefaultTimeBar_played_ad_marker_color:I

    const v12, 0x33ffff00

    .line 339
    invoke-virtual {v5, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 341
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v17

    .line 345
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, v16

    .line 346
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_142
    .catchall {:try_start_a9 .. :try_end_142} :catchall_bf

    .line 348
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_17c

    :goto_146
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 349
    throw v0

    :cond_14a
    move-object v0, v5

    .line 351
    iput v11, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->barHeight:I

    .line 352
    iput v12, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    const/4 v5, 0x0

    .line 353
    iput v5, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->barGravity:I

    .line 354
    iput v10, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 355
    iput v13, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 356
    iput v15, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 357
    iput v8, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDraggedSize:I

    const/4 v5, -0x1

    .line 358
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v9, -0x33000001    # -1.3421772E8f

    .line 360
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v10, 0x33ffffff

    .line 361
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    const v11, -0x4d000100

    .line 362
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    const v12, 0x33ffff00

    .line 363
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 364
    iput-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    :goto_17c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    .line 367
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    .line 368
    new-instance v0, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/ui/DefaultTimeBar;)V

    iput-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 369
    iget-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a4

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPadding:I

    goto :goto_1b8

    .line 372
    :cond_1a4
    iget v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDisabledSize:I

    iget v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberEnabledSize:I

    iget v3, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPadding:I

    :goto_1b8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 376
    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    .line 377
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    .line 378
    new-instance v2, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/ui/DefaultTimeBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 383
    iput-wide v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    .line 384
    iput-wide v2, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyTimeIncrement:J

    const/16 v0, 0x14

    .line 385
    iput v0, v1, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyCountIncrement:I

    move/from16 v0, p2

    .line 386
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 387
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_1e6

    .line 388
    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1e6
    return-void
.end method

.method public static dpToPx(FI)I
    .registers 2

    .line 0
    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getPositionIncrement()J
    .registers 6

    .line 980
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyTimeIncrement:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 981
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_14
    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_18
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .registers 5

    .line 976
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->position:J

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .registers 5

    .line 881
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_27

    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    goto :goto_27

    .line 884
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    mul-long/2addr v0, v2

    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_27
    :goto_27
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static pxToDp(FI)I
    .registers 2

    .line 0
    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    .line 990
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addListener(Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;)V
    .registers 3

    .line 509
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final drawPlayhead(Landroid/graphics/Canvas;)V
    .registers 9

    .line 931
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    return-void

    .line 934
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0, v2}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v0

    .line 935
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 936
    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4b

    .line 938
    iget-boolean v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v2, :cond_38

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_38

    .line 940
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberEnabledSize:I

    goto :goto_3a

    :cond_35
    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDisabledSize:I

    goto :goto_3a

    .line 939
    :cond_38
    :goto_38
    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDraggedSize:I

    :goto_3a
    int-to-float v2, v2

    .line 941
    iget v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 942
    iget-object v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 944
    :cond_4b
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 945
    iget-object v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 946
    iget-object v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 951
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawTimeBar(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 892
    iget-object v1, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 893
    iget-object v2, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 895
    iget-wide v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2c

    .line 896
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v4

    int-to-float v7, v2

    iget v2, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    int-to-float v9, v1

    iget-object v10, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 899
    :cond_2c
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 900
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 901
    iget-object v5, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 902
    iget-object v6, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_55

    int-to-float v12, v5

    int-to-float v13, v2

    int-to-float v14, v6

    int-to-float v15, v1

    .line 903
    iget-object v5, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 905
    :cond_55
    iget-object v5, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v3, v4, :cond_6c

    int-to-float v12, v4

    int-to-float v13, v2

    int-to-float v14, v3

    int-to-float v15, v1

    .line 907
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 909
    :cond_6c
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_87

    .line 910
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v4

    int-to-float v13, v2

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v14, v3

    int-to-float v15, v1

    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 912
    :cond_87
    iget v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adGroupCount:I

    if-nez v3, :cond_8c

    goto :goto_ec

    .line 915
    :cond_8c
    iget-object v3, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adGroupTimesMs:[J

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 916
    iget-object v4, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedAdGroups:[Z

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 917
    iget v5, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerWidth:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    move v7, v6

    .line 918
    :goto_a2
    iget v8, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adGroupCount:I

    if-ge v7, v8, :cond_ec

    .line 919
    aget-wide v9, v3, v7

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v9 .. v14}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v8

    .line 920
    iget-object v10, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 921
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v8

    iget-wide v8, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    div-long/2addr v10, v8

    long-to-int v8, v10

    sub-int/2addr v8, v5

    .line 922
    iget-object v9, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 924
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v11, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerWidth:I

    sub-int/2addr v9, v11

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v10, v8

    .line 925
    aget-boolean v8, v4, v7

    if-eqz v8, :cond_da

    iget-object v8, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    :goto_d7
    move-object/from16 v16, v8

    goto :goto_dd

    :cond_da
    iget-object v8, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    goto :goto_d7

    :goto_dd
    int-to-float v12, v10

    int-to-float v13, v2

    .line 926
    iget v8, v0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerWidth:I

    add-int/2addr v10, v8

    int-to-float v14, v10

    int-to-float v15, v1

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    :cond_ec
    :goto_ec
    return-void
.end method

.method public drawableStateChanged()V
    .registers 1

    .line 686
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 687
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->updateDrawableState()V

    return-void
.end method

.method public getPreferredUpdateDelay()J
    .registers 6

    .line 565
    iget v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->density:F

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->pxToDp(FI)I

    move-result v0

    if-eqz v0, :cond_23

    .line 566
    iget-wide v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_23

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_20

    goto :goto_23

    :cond_20
    int-to-long v3, v0

    .line 568
    div-long/2addr v1, v3

    return-wide v1

    :cond_23
    :goto_23
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public hideScrubber(J)V
    .registers 7

    .line 433
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 436
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 437
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public hideScrubber(Z)V
    .registers 3

    .line 419
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 420
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 422
    :cond_d
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/4 p1, 0x0

    .line 423
    iput p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    .line 424
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final isInSeekBar(FF)Z
    .registers 4

    .line 888
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 692
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 693
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 694
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 594
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 595
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 596
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 597
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 678
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 679
    iget-boolean p2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 680
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_d
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 750
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 751
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 752
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_15
    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 759
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 760
    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 761
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 762
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_18

    return-void

    .line 765
    :cond_18
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 766
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 649
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_27

    packed-switch p1, :pswitch_data_36

    goto :goto_30

    :pswitch_13
    neg-long v0, v0

    .line 655
    :pswitch_14
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 656
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 657
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 663
    :cond_27
    :pswitch_27
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_30

    const/4 p1, 0x0

    .line 664
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return v3

    .line 672
    :cond_30
    :goto_30
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_36
    .packed-switch 0x15
        :pswitch_13
        :pswitch_14
        :pswitch_27
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    .line 720
    iget-boolean p3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_13

    move p3, v0

    goto :goto_15

    :cond_13
    iget p3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPadding:I

    .line 721
    :goto_15
    iget v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->barGravity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, p5, v1

    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int/2addr v1, v2

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v2, p5, v2

    iget v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->barHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v2, v0

    goto :goto_42

    .line 726
    :cond_36
    iget v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int v0, p5, v0

    div-int/lit8 v1, v0, 0x2

    .line 727
    iget v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->barHeight:I

    sub-int v0, p5, v0

    div-int/lit8 v2, v0, 0x2

    .line 729
    :goto_42
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v0, p1, v1, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 730
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object p2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    iget p3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->barHeight:I

    add-int/2addr p3, v2

    invoke-virtual {p1, v0, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 735
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_63

    .line 736
    invoke-virtual {p0, p4, p5}, Lio/bidmachine/media3/ui/DefaultTimeBar;->setSystemGestureExclusionRectsV29(II)V

    .line 738
    :cond_63
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    .line 700
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 701
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_d

    .line 704
    iget p2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    goto :goto_18

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_12

    goto :goto_18

    .line 707
    :cond_12
    iget v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchTargetHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 708
    :goto_18
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 709
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->updateDrawableState()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    .line 743
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    iget-wide v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_10

    goto :goto_76

    .line 605
    :cond_10
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 606
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 607
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5d

    const/4 v5, 0x3

    if-eq v3, v4, :cond_4e

    const/4 v6, 0x2

    if-eq v3, v6, :cond_28

    if-eq v3, v5, :cond_4e

    goto :goto_76

    .line 619
    :cond_28
    iget-boolean p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz p1, :cond_76

    .line 620
    iget p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->fineScrubYThreshold:I

    if-ge v0, p1, :cond_3a

    .line 621
    iget p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    sub-int/2addr v2, p1

    .line 622
    div-int/2addr v2, v5

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->positionScrubber(F)V

    goto :goto_40

    .line 624
    :cond_3a
    iput v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    int-to-float p1, v2

    .line 625
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 627
    :goto_40
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 628
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    .line 629
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    .line 635
    :cond_4e
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_76

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_59

    move v1, v4

    :cond_59
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return v4

    :cond_5d
    int-to-float p1, v2

    int-to-float v0, v0

    .line 610
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->isInSeekBar(FF)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 611
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 612
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->startScrubbing(J)V

    .line 613
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    .line 614
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_76
    :goto_76
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8

    .line 771
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 774
    :cond_8
    iget-wide v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-gtz p2, :cond_12

    return v1

    :cond_12
    const/16 p2, 0x2000

    if-ne p1, p2, :cond_25

    .line 778
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 779
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_36

    :cond_25
    const/16 p2, 0x1000

    if-ne p1, p2, :cond_3b

    .line 782
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 783
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_36
    :goto_36
    const/4 p1, 0x4

    .line 788
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :cond_3b
    return v1
.end method

.method public final positionScrubber(F)V
    .registers 5

    .line 872
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v2, v1}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public final resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 4

    .line 876
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 877
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    return-object p1
.end method

.method public final scrubIncrementally(J)Z
    .registers 12

    .line 838
    iget-wide v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    const/4 v6, 0x0

    if-gtz v0, :cond_a

    return v6

    .line 841
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    :goto_10
    move-wide v7, v0

    goto :goto_15

    :cond_12
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->position:J

    goto :goto_10

    :goto_15
    add-long v0, v7, p1

    const-wide/16 v2, 0x0

    .line 842
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    cmp-long v0, p1, v7

    if-nez v0, :cond_22

    return v6

    .line 846
    :cond_22
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v0, :cond_2a

    .line 847
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/DefaultTimeBar;->startScrubbing(J)V

    goto :goto_2d

    .line 849
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/DefaultTimeBar;->updateScrubbing(J)V

    .line 851
    :goto_2d
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .registers 5

    if-eqz p3, :cond_9

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    .line 574
    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 576
    iput p3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adGroupCount:I

    .line 577
    iput-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adGroupTimesMs:[J

    .line 578
    iput-object p2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedAdGroups:[Z

    .line 579
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setAdMarkerColor(I)V
    .registers 3

    .line 491
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedColor(I)V
    .registers 3

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedPosition(J)V
    .registers 5

    .line 544
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 547
    :cond_7
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPosition:J

    .line 548
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public final setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    .line 986
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->setDrawableLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public setDuration(J)V
    .registers 5

    .line 553
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 556
    :cond_7
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    .line 557
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_1a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    .line 558
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 560
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 586
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 587
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    const/4 p1, 0x1

    .line 588
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_d
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .registers 4

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 527
    :goto_5
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 528
    iput p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyCountIncrement:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 529
    iput-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 520
    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v0, -0x1

    .line 521
    iput v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 522
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .registers 3

    .line 501
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedAdMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPlayedColor(I)V
    .registers 3

    .line 448
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPosition(J)V
    .registers 5

    .line 534
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->position:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    return-void

    .line 537
    :cond_7
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->position:J

    .line 538
    invoke-direct {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setScrubberColor(I)V
    .registers 3

    .line 458
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setSystemGestureExclusionRectsV29(II)V
    .registers 5

    .line 965
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    if-eqz v0, :cond_13

    .line 966
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 967
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_13

    return-void

    .line 971
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->lastExclusionRectangle:Landroid/graphics/Rect;

    .line 972
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticApiModelOutline0;->m(Lio/bidmachine/media3/ui/DefaultTimeBar;Ljava/util/List;)V

    return-void
.end method

.method public setUnplayedColor(I)V
    .registers 3

    .line 481
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showScrubber()V
    .registers 2

    .line 394
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 395
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 398
    iput v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public showScrubber(J)V
    .registers 7

    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 409
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 411
    :cond_e
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberPaddingDisabled:Z

    .line 412
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScale:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 413
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 414
    iget-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberScalingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final startScrubbing(J)V
    .registers 5

    .line 795
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    .line 797
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 800
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 802
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;

    .line 803
    invoke-interface {v1, p0, p1, p2}, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;->onScrubStart(Lio/bidmachine/media3/ui/TimeBar;J)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public final stopScrubbing(Z)V
    .registers 6

    .line 818
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    .line 820
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 821
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 823
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 825
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 826
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;

    .line 827
    iget-wide v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {v1, p0, v2, v3, p1}, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;->onScrubStop(Lio/bidmachine/media3/ui/TimeBar;JZ)V

    goto :goto_1d

    :cond_2f
    return-void
.end method

.method public final update()V
    .registers 7

    .line 856
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 857
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 858
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_17

    :cond_15
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->position:J

    .line 859
    :goto_17
    iget-wide v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_58

    .line 860
    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedPosition:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 861
    iget-object v3, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 862
    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 863
    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_64

    .line 865
    :cond_58
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 866
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 868
    :goto_64
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateDrawableState()V
    .registers 3

    .line 956
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 957
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubberDrawable:Landroid/graphics/drawable/Drawable;

    .line 958
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 959
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method public final updateScrubbing(J)V
    .registers 5

    .line 808
    iget-wide v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_7

    goto :goto_1f

    .line 811
    :cond_7
    iput-wide p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->scrubPosition:J

    .line 812
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;

    .line 813
    invoke-interface {v1, p0, p1, p2}, Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;->onScrubMove(Lio/bidmachine/media3/ui/TimeBar;J)V

    goto :goto_f

    :cond_1f
    :goto_1f
    return-void
.end method

###### Class io.bidmachine.media3.ui.DefaultTimeBar$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.DefaultTimeBar$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/DefaultTimeBar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;

    invoke-static {v0}, Lio/bidmachine/media3/ui/DefaultTimeBar;->$r8$lambda$GG7mRTP9F929tF2cpY0OrUOh4qc(Lio/bidmachine/media3/ui/DefaultTimeBar;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.DefaultTimeBar$$ExternalSyntheticLambda2 (io.bidmachine.media3.ui.DefaultTimeBar$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/DefaultTimeBar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/DefaultTimeBar$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/DefaultTimeBar;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/DefaultTimeBar;->$r8$lambda$LwtxNE6TBPWqf7OkxkGF4GpQOqM(Lio/bidmachine/media3/ui/DefaultTimeBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
