###### Class io.bidmachine.media3.ui.PlayerControlView (io.bidmachine.media3.ui.PlayerControlView)
.class public Lio/bidmachine/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;,
        Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;,
        Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;,
        Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;,
        Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;,
        Lio/bidmachine/media3/ui/PlayerControlView$ProgressUpdateListener;,
        Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;,
        Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;,
        Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;,
        Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;,
        Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;,
        Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;
    }
.end annotation


# static fields
.field public static final PLAYBACK_SPEEDS:[F


# instance fields
.field public adGroupTimesMs:[J

.field public final audioTrackButton:Landroid/view/View;

.field public final audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

.field public final buttonAlphaDisabled:F

.field public final buttonAlphaEnabled:F

.field public final componentListener:Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;

.field public final controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

.field public currentWindowOffset:J

.field public final durationView:Landroid/widget/TextView;

.field public extraAdGroupTimesMs:[J

.field public extraPlayedAdGroups:[Z

.field public final fastForwardButton:Landroid/view/View;

.field public final fastForwardButtonTextView:Landroid/widget/TextView;

.field public final formatBuilder:Ljava/lang/StringBuilder;

.field public final formatter:Ljava/util/Formatter;

.field public final fullscreenButton:Landroid/widget/ImageView;

.field public final fullscreenEnterContentDescription:Ljava/lang/String;

.field public final fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

.field public final fullscreenExitContentDescription:Ljava/lang/String;

.field public final fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

.field public isAttachedToWindow:Z

.field public isFullscreen:Z

.field public final minimalFullscreenButton:Landroid/widget/ImageView;

.field public multiWindowTimeBar:Z

.field public needToHideBars:Z

.field public final nextButton:Landroid/widget/ImageView;

.field public onFullScreenModeChangedListener:Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

.field public final pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public final playButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final playPauseButton:Landroid/widget/ImageView;

.field public final playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final playbackSpeedButton:Landroid/view/View;

.field public playedAdGroups:[Z

.field public player:Lio/bidmachine/media3/common/Player;

.field public final positionView:Landroid/widget/TextView;

.field public final previousButton:Landroid/widget/ImageView;

.field public final repeatAllButtonContentDescription:Ljava/lang/String;

.field public final repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOffButtonContentDescription:Ljava/lang/String;

.field public final repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatOneButtonContentDescription:Ljava/lang/String;

.field public final repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final repeatToggleButton:Landroid/widget/ImageView;

.field public repeatToggleModes:I

.field public final resources:Landroid/content/res/Resources;

.field public final rewindButton:Landroid/view/View;

.field public final rewindButtonTextView:Landroid/widget/TextView;

.field public scrubbing:Z

.field public final settingsAdapter:Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

.field public final settingsButton:Landroid/view/View;

.field public final settingsView:Landroidx/recyclerview/widget/RecyclerView;

.field public final settingsWindow:Landroid/widget/PopupWindow;

.field public final settingsWindowMargin:I

.field public showMultiWindowTimeBar:Z

.field public showPlayButtonIfSuppressed:Z

.field public showTimeoutMs:I

.field public final shuffleButton:Landroid/widget/ImageView;

.field public final shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOffContentDescription:Ljava/lang/String;

.field public final shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final shuffleOnContentDescription:Ljava/lang/String;

.field public final subtitleButton:Landroid/widget/ImageView;

.field public final subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final subtitleOffContentDescription:Ljava/lang/String;

.field public final subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

.field public final subtitleOnContentDescription:Ljava/lang/String;

.field public final textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final timeBar:Lio/bidmachine/media3/ui/TimeBar;

.field public timeBarMinUpdateIntervalMs:I

.field public final trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

.field public final updateProgressAction:Ljava/lang/Runnable;

.field public final visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field public final vrButton:Landroid/widget/ImageView;

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$6X_Lr49YUJ-uGTCPa7U_Zl8ZjLE(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public static synthetic $r8$lambda$sUVZkrnU9ffCxZNLq2U-hDkSsEc(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->onFullscreenButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uwK9jivAATrVffIGIuwAn3wuzxA(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lio/bidmachine/media3/ui/PlayerControlView;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 292
    const-string v0, "media3.ui"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 358
    new-array v0, v0, [F

    fill-array-data v0, :array_e

    sput-object v0, Lio/bidmachine/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    return-void

    :array_e
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .registers 45

    move-object/from16 v1, p0

    move-object/from16 v6, p4

    .line 480
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 481
    sget v0, Lio/bidmachine/media3/ui/R$layout;->bm_exo_player_control_view:I

    .line 482
    sget v2, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_play:I

    .line 483
    sget v3, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_pause:I

    .line 484
    sget v4, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_next:I

    .line 485
    sget v5, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_simple_fastforward:I

    .line 486
    sget v7, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_previous:I

    .line 487
    sget v8, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_simple_rewind:I

    .line 488
    sget v9, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    .line 489
    sget v10, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 490
    sget v11, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_repeat_off:I

    .line 491
    sget v12, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_repeat_one:I

    .line 492
    sget v13, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_repeat_all:I

    .line 493
    sget v14, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    .line 494
    sget v15, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    move/from16 p2, v15

    .line 495
    sget v15, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    move/from16 v16, v15

    .line 496
    sget v15, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    move/from16 v17, v15

    .line 497
    sget v15, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_vr:I

    move/from16 v18, v15

    const/4 v15, 0x1

    .line 499
    iput-boolean v15, v1, Lio/bidmachine/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    const/16 v15, 0x1388

    .line 500
    iput v15, v1, Lio/bidmachine/media3/ui/PlayerControlView;->showTimeoutMs:I

    const/4 v15, 0x0

    .line 501
    iput v15, v1, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/16 v15, 0xc8

    .line 502
    iput v15, v1, Lio/bidmachine/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    if-eqz v6, :cond_169

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    sget-object v1, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView:[I

    move/from16 v20, v13

    move/from16 v19, v14

    const/4 v13, 0x0

    move/from16 v14, p3

    .line 516
    invoke-virtual {v15, v6, v1, v14, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 519
    :try_start_52
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 520
    invoke-virtual {v1, v13, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 521
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_play_icon:I

    .line 522
    invoke-virtual {v1, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 523
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_pause_icon:I

    .line 524
    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 525
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_next_icon:I

    .line 526
    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 527
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_fastforward_icon:I

    .line 528
    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 530
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_previous_icon:I

    .line 531
    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 532
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_rewind_icon:I

    .line 533
    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 534
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_fullscreen_exit_icon:I

    .line 535
    invoke-virtual {v1, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 537
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_fullscreen_enter_icon:I

    .line 538
    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 540
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_repeat_off_icon:I

    .line 541
    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 542
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_repeat_one_icon:I

    .line 543
    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 544
    sget v13, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_repeat_all_icon:I

    move/from16 v14, v20

    .line 545
    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 546
    sget v14, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_shuffle_on_icon:I

    move/from16 v15, v19

    .line 547
    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 548
    sget v15, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_shuffle_off_icon:I

    move/from16 p3, v0

    move/from16 v0, p2

    .line 549
    invoke-virtual {v1, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 551
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_subtitle_on_icon:I

    move/from16 p2, v2

    move/from16 v2, v16

    .line 552
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 554
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_subtitle_off_icon:I

    move/from16 v16, v0

    move/from16 v0, v17

    .line 555
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 557
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_vr_icon:I

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 558
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_timeout:I
    :try_end_ce
    .catchall {:try_start_52 .. :try_end_ce} :catchall_162

    move/from16 v19, v0

    move/from16 v18, v4

    move-object/from16 v4, p0

    :try_start_d4
    iget v0, v4, Lio/bidmachine/media3/ui/PlayerControlView;->showTimeoutMs:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v4, Lio/bidmachine/media3/ui/PlayerControlView;->showTimeoutMs:I

    .line 559
    iget v0, v4, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    invoke-static {v1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->getRepeatToggleModes(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, v4, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    .line 560
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_rewind_button:I

    const/4 v2, 0x1

    .line 561
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v20, v0

    .line 562
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_fastforward_button:I

    .line 563
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v21, v0

    .line 565
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_previous_button:I

    .line 566
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v22, v0

    .line 567
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_next_button:I

    .line 568
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 569
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    move/from16 v23, v0

    const/4 v0, 0x0

    .line 570
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v24, v2

    .line 571
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_subtitle_button:I

    .line 572
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v25, v2

    .line 573
    sget v2, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_show_vr_button:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 574
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    move/from16 v26, v2

    iget v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    .line 575
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 574
    invoke-virtual {v4, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 578
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_animation_enabled:I

    const/4 v2, 0x1

    .line 579
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_130
    .catchall {:try_start_d4 .. :try_end_130} :catchall_160

    .line 581
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v37, v0

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v32, v14

    move/from16 v34, v15

    move/from16 v35, v16

    move/from16 v36, v17

    move/from16 v12, v18

    move/from16 v33, v19

    move/from16 v1, v20

    move/from16 v29, v24

    move/from16 v30, v25

    move/from16 v31, v26

    move/from16 v13, p2

    move/from16 v0, p3

    move v14, v5

    move v15, v7

    move/from16 p2, v8

    move v5, v10

    move v7, v11

    move/from16 v8, v21

    move/from16 v10, v23

    move v11, v3

    move v3, v9

    move/from16 v9, v22

    goto :goto_19d

    :catchall_160
    move-exception v0

    goto :goto_165

    :catchall_162
    move-exception v0

    move-object/from16 v4, p0

    :goto_165
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 582
    throw v0

    :cond_169
    move v15, v14

    move v14, v13

    move v13, v2

    move/from16 v2, v16

    move/from16 v16, v4

    move-object v4, v1

    move v1, v0

    move/from16 v0, v18

    move/from16 v18, v17

    move/from16 v17, p2

    move/from16 v33, v0

    move v0, v1

    move/from16 v35, v2

    move/from16 p2, v8

    move/from16 v27, v12

    move/from16 v28, v14

    move/from16 v32, v15

    move/from16 v12, v16

    move/from16 v34, v17

    move/from16 v36, v18

    const/4 v1, 0x1

    const/4 v8, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v37, 0x1

    move v14, v5

    move v15, v7

    move v5, v10

    move v7, v11

    const/4 v10, 0x1

    move v11, v3

    move v3, v9

    const/4 v9, 0x1

    .line 585
    :goto_19d
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v0, 0x40000

    .line 586
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 588
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2}, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V

    iput-object v0, v4, Lio/bidmachine/media3/ui/PlayerControlView;->componentListener:Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;

    .line 589
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 590
    new-instance v2, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 591
    new-instance v2, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    move/from16 v16, v3

    .line 593
    new-instance v3, Ljava/util/Formatter;

    move/from16 v17, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    const/4 v2, 0x0

    .line 594
    new-array v3, v2, [J

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 595
    new-array v3, v2, [Z

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    .line 596
    new-array v3, v2, [J

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    .line 597
    new-array v3, v2, [Z

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    .line 598
    new-instance v2, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v4}, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 600
    sget v2, Lio/bidmachine/media3/ui/R$id;->exo_duration:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    .line 601
    sget v2, Lio/bidmachine/media3/ui/R$id;->exo_position:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    .line 603
    sget v2, Lio/bidmachine/media3/ui/R$id;->exo_subtitle:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_217

    .line 605
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    :cond_217
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    .line 609
    new-instance v5, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-static {v3, v5}, Lio/bidmachine/media3/ui/PlayerControlView;->initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 610
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    .line 611
    new-instance v5, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-static {v3, v5}, Lio/bidmachine/media3/ui/PlayerControlView;->initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 613
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_settings:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    if-eqz v3, :cond_248

    .line 615
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    :cond_248
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    if-eqz v3, :cond_255

    .line 620
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_255
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_audio_track:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    if-eqz v3, :cond_262

    .line 625
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    :cond_262
    sget v3, Lio/bidmachine/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/ui/TimeBar;

    .line 629
    sget v5, Lio/bidmachine/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_28c

    .line 631
    iput-object v3, v4, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    move-object/from16 v3, p1

    move-object/from16 v39, v2

    move/from16 v38, v7

    move/from16 v18, v8

    move/from16 v20, v10

    move/from16 v19, v17

    const/4 v8, 0x0

    move/from16 v17, v1

    move-object v10, v4

    move/from16 v1, v16

    move/from16 v16, v9

    move/from16 v9, p2

    goto/16 :goto_2ee

    :cond_28c
    if-eqz v5, :cond_2d6

    move-object v3, v2

    .line 635
    new-instance v2, Lio/bidmachine/media3/ui/DefaultTimeBar;

    move-object/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v7

    sget v7, Lio/bidmachine/media3/ui/R$style;->ExoStyledControls_TimeBar:I

    const/4 v4, 0x0

    move-object/from16 v39, v3

    move/from16 v20, v10

    move/from16 v38, v19

    move-object/from16 v10, p0

    move-object/from16 v3, p1

    move/from16 v19, v17

    move/from16 v17, v1

    move/from16 v1, v16

    move/from16 v16, v9

    move/from16 v9, p2

    move-object/from16 p2, v18

    move/from16 v18, v8

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 637
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v5, p2

    .line 640
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 641
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 642
    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 643
    iput-object v2, v10, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    goto :goto_2ee

    :cond_2d6
    move-object/from16 v3, p1

    move-object/from16 v39, v2

    move/from16 v38, v7

    move/from16 v18, v8

    move/from16 v20, v10

    move/from16 v19, v17

    const/4 v8, 0x0

    move/from16 v17, v1

    move-object v10, v4

    move/from16 v1, v16

    move/from16 v16, v9

    move/from16 v9, p2

    .line 645
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    .line 647
    :goto_2ee
    iget-object v2, v10, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    if-eqz v2, :cond_2f5

    .line 648
    invoke-interface {v2, v0}, Lio/bidmachine/media3/ui/TimeBar;->addListener(Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;)V

    .line 651
    :cond_2f5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, v10, Lio/bidmachine/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    .line 652
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_play_pause:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v10, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_30a

    .line 654
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    :cond_30a
    sget v4, Lio/bidmachine/media3/ui/R$id;->exo_prev:I

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v10, Lio/bidmachine/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_320

    .line 658
    invoke-static {v3, v2, v15}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    :cond_320
    sget v5, Lio/bidmachine/media3/ui/R$id;->exo_next:I

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v10, Lio/bidmachine/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_336

    .line 663
    invoke-static {v3, v2, v12}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 664
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    :cond_336
    sget v6, Lio/bidmachine/media3/ui/R$font;->roboto_medium_numbers:I

    invoke-static {v3, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 667
    sget v7, Lio/bidmachine/media3/ui/R$id;->exo_rew:I

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 668
    sget v12, Lio/bidmachine/media3/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v7, :cond_35a

    .line 671
    invoke-static {v3, v2, v9}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iput-object v7, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    .line 673
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    goto :goto_368

    :cond_35a
    if-eqz v12, :cond_364

    .line 676
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 677
    iput-object v12, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    .line 678
    iput-object v12, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    goto :goto_368

    .line 680
    :cond_364
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    .line 681
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    .line 683
    :goto_368
    iget-object v7, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v7, :cond_36f

    .line 684
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    :cond_36f
    sget v7, Lio/bidmachine/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 687
    sget v9, Lio/bidmachine/media3/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v7, :cond_38d

    .line 690
    invoke-static {v3, v2, v14}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iput-object v7, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 692
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    goto :goto_39b

    :cond_38d
    if-eqz v9, :cond_397

    .line 695
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 696
    iput-object v9, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 697
    iput-object v9, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    goto :goto_39b

    .line 699
    :cond_397
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    .line 700
    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    .line 702
    :goto_39b
    iget-object v6, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v6, :cond_3a2

    .line 703
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    :cond_3a2
    sget v6, Lio/bidmachine/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_3b1

    .line 707
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    :cond_3b1
    sget v7, Lio/bidmachine/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v10, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_3c0

    .line 711
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    :cond_3c0
    sget v9, Lio/bidmachine/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 715
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v9, v12

    iput v9, v10, Lio/bidmachine/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    .line 716
    sget v9, Lio/bidmachine/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 717
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    iput v9, v10, Lio/bidmachine/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    .line 719
    sget v9, Lio/bidmachine/media3/ui/R$id;->exo_vr:I

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v10, Lio/bidmachine/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_3ef

    move/from16 v12, v33

    .line 721
    invoke-static {v3, v2, v12}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    .line 722
    invoke-virtual {v10, v12, v9}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 725
    :cond_3ef
    new-instance v12, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {v12, v10}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    iput-object v12, v10, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move/from16 v14, v37

    .line 726
    invoke-virtual {v12, v14}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    .line 730
    sget v14, Lio/bidmachine/media3/ui/R$string;->exo_controls_playback_speed:I

    .line 731
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 732
    sget v15, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_speed:I

    .line 733
    invoke-static {v3, v2, v15}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 734
    sget v8, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_title_audio:I

    .line 735
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v14, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 736
    sget v14, Lio/bidmachine/media3/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 737
    invoke-static {v3, v2, v14}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    filled-new-array {v15, v14}, [Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 738
    new-instance v15, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-direct {v15, v10, v8, v14}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v15, v10, Lio/bidmachine/media3/ui/PlayerControlView;->settingsAdapter:Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    .line 739
    sget v8, Lio/bidmachine/media3/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    .line 742
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v14, Lio/bidmachine/media3/ui/R$layout;->bm_exo_styled_settings_list:I

    move-object/from16 p2, v6

    const/4 v6, 0x0

    .line 743
    invoke-virtual {v8, v14, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v8, v10, Lio/bidmachine/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    .line 744
    invoke-virtual {v8, v15}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 745
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 746
    new-instance v6, Landroid/widget/PopupWindow;

    const/4 v14, -0x2

    const/4 v15, 0x1

    invoke-direct {v6, v8, v14, v14, v15}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v6, v10, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    .line 748
    sget v8, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v8, v14, :cond_463

    .line 751
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_464

    :cond_463
    const/4 v14, 0x0

    .line 753
    :goto_464
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 754
    iput-boolean v15, v10, Lio/bidmachine/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 756
    new-instance v0, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v0, v6}, Lio/bidmachine/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

    move/from16 v0, v35

    .line 757
    invoke-static {v3, v2, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v36

    .line 758
    invoke-static {v3, v2, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 759
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 760
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    .line 761
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 762
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    .line 763
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    const/4 v6, 0x0

    invoke-direct {v0, v10, v6}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    .line 764
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {v0, v10, v6}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    .line 765
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    sget v6, Lio/bidmachine/media3/ui/R$array;->exo_controls_playback_speeds:I

    .line 767
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lio/bidmachine/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-direct {v0, v10, v6, v8}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 769
    invoke-static {v3, v2, v13}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->playButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 770
    invoke-static {v3, v2, v11}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 771
    invoke-static {v3, v2, v1}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v19

    .line 772
    invoke-static {v3, v2, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v11, v38

    .line 773
    invoke-static {v3, v2, v11}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v27

    .line 774
    invoke-static {v3, v2, v0}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v13, v28

    .line 775
    invoke-static {v3, v2, v13}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v15, v32

    .line 776
    invoke-static {v3, v2, v15}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v15, v34

    .line 777
    invoke-static {v3, v2, v15}, Lio/bidmachine/media3/common/util/Util;->getDrawable(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 778
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 779
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenExitContentDescription:Ljava/lang/String;

    .line 780
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 781
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenEnterContentDescription:Ljava/lang/String;

    .line 782
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 783
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    .line 784
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 785
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    .line 786
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 787
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    .line 788
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    .line 789
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 790
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 793
    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 794
    invoke-virtual {v12, v0, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 795
    iget-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 796
    iget-object v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move/from16 v0, v16

    .line 797
    invoke-virtual {v12, v4, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move/from16 v0, v20

    .line 798
    invoke-virtual {v12, v5, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move/from16 v0, v29

    .line 799
    invoke-virtual {v12, v7, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move/from16 v0, v30

    move-object/from16 v3, v39

    .line 800
    invoke-virtual {v12, v3, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    move/from16 v0, v31

    .line 801
    invoke-virtual {v12, v9, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 802
    iget v0, v10, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    if-eqz v0, :cond_569

    move v15, v2

    :goto_566
    move-object/from16 v6, p2

    goto :goto_56b

    :cond_569
    move v15, v14

    goto :goto_566

    :goto_56b
    invoke-virtual {v12, v6, v15}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 804
    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;

    invoke-direct {v0, v10}, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateTrackLists()V

    return-void
.end method

.method public static synthetic access$1102(Lio/bidmachine/media3/ui/PlayerControlView;Z)Z
    .registers 2

    .line 289
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->scrubbing:Z

    return p1
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/TextView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/util/Formatter;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    return-object p0
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    return-object p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/common/Player;J)V
    .registers 4

    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/ui/PlayerControlView;->seekToTimeBarPosition(Lio/bidmachine/media3/common/Player;J)V

    return-void
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/ui/PlayerControlView;)Z
    .registers 1

    .line 289
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->needToHideBars:Z

    return p0
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/ui/PlayerControlView;)Z
    .registers 1

    .line 289
    iget-boolean p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    return p0
.end method

.method public static synthetic access$2500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2600(Lio/bidmachine/media3/ui/PlayerControlView;)I
    .registers 1

    .line 289
    iget p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    return p0
.end method

.method public static synthetic access$2700(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsAdapter:Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .registers 3

    .line 289
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$3100(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$3200(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    return-object p0
.end method

.method public static synthetic access$3300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$3400(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    return-object p0
.end method

.method public static synthetic access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$3600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public static synthetic access$4000(Lio/bidmachine/media3/ui/PlayerControlView;I)V
    .registers 2

    .line 289
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->onSettingViewClicked(I)V

    return-void
.end method

.method public static synthetic access$4100(Lio/bidmachine/media3/ui/PlayerControlView;F)V
    .registers 2

    .line 289
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static synthetic access$4200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic access$4300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$4400(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$4500(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4600(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/String;
    .registers 1

    .line 289
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 1

    .line 289
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    return-void
.end method

.method public static canShowMultiWindowTimeBar(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Timeline$Window;)Z
    .registers 10

    const/16 v0, 0x11

    .line 1755
    invoke-interface {p0, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1758
    :cond_a
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p0

    .line 1759
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_31

    const/16 v3, 0x64

    if-le v0, v3, :cond_1a

    goto :goto_31

    :cond_1a
    move v3, v1

    :goto_1b
    if-ge v3, v0, :cond_30

    .line 1764
    invoke-virtual {p0, v3, p1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v4

    iget-wide v4, v4, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_30
    return v2

    :cond_31
    :goto_31
    return v1
.end method

.method public static getRepeatToggleModes(Landroid/content/res/TypedArray;I)I
    .registers 3

    .line 1794
    sget v0, Lio/bidmachine/media3/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static initializeFullscreenButton(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x8

    .line 1775
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static isHandledMediaKey(I)Z
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 0
    const/16 v0, 0x5a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x59

    if-eq p0, v0, :cond_23

    const/16 v0, 0x55

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x57

    if-eq p0, v0, :cond_23

    const/16 v0, 0x58

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    return p0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method private setPlaybackSpeed(F)V
    .registers 4

    .line 1530
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_1a

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 1533
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/PlaybackParameters;->withSpeed(F)Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static updateFullscreenButtonVisibility(Landroid/view/View;Z)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 1785
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_a
    const/16 p1, 0x8

    .line 1787
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 897
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1651
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1662
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1663
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v1, :cond_82

    .line 1664
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->isHandledMediaKey(I)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_82

    .line 1667
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_80

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2d

    .line 1669
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_80

    const/16 p1, 0xc

    .line 1670
    invoke-interface {v1, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1671
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->seekForward()V

    goto :goto_80

    :cond_2d
    const/16 v2, 0x59

    if-ne v0, v2, :cond_3d

    const/16 v2, 0xb

    .line 1674
    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1675
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->seekBack()V

    goto :goto_80

    .line 1676
    :cond_3d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_80

    const/16 p1, 0x4f

    if-eq v0, p1, :cond_7b

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7b

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6f

    const/16 p1, 0x58

    if-eq v0, p1, :cond_64

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_60

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_5c

    goto :goto_80

    .line 1686
    :cond_5c
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->handlePauseButtonAction(Lio/bidmachine/media3/common/Player;)Z

    goto :goto_80

    .line 1683
    :cond_60
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->handlePlayButtonAction(Lio/bidmachine/media3/common/Player;)Z

    goto :goto_80

    :cond_64
    const/4 p1, 0x7

    .line 1694
    invoke-interface {v1, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1695
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->seekToPrevious()V

    goto :goto_80

    :cond_6f
    const/16 p1, 0x9

    .line 1689
    invoke-interface {v1, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1690
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->seekToNext()V

    goto :goto_80

    .line 1680
    :cond_7b
    iget-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v1, p1}, Lio/bidmachine/media3/common/util/Util;->handlePlayPauseButtonAction(Lio/bidmachine/media3/common/Player;Z)Z

    :cond_80
    :goto_80
    const/4 p1, 0x1

    return p1

    :cond_82
    :goto_82
    const/4 p1, 0x0

    return p1
.end method

.method public final displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1515
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1517
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    const/4 p1, 0x0

    .line 1519
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 1520
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 p1, 0x1

    .line 1521
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->needToHideBars:Z

    .line 1523
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int/2addr p1, v0

    .line 1524
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int/2addr v0, v1

    .line 1526
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final gatherSupportedTrackInfosOfType(Lio/bidmachine/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Tracks;",
            "I)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation

    .line 1339
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1340
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 1341
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 1342
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/Tracks$Group;

    .line 1343
    invoke-virtual {v4}, Lio/bidmachine/media3/common/Tracks$Group;->getType()I

    move-result v5

    if-eq v5, p2, :cond_1e

    goto :goto_46

    :cond_1e
    move v5, v2

    .line 1346
    :goto_1f
    iget v6, v4, Lio/bidmachine/media3/common/Tracks$Group;->length:I

    if-ge v5, v6, :cond_46

    .line 1347
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_43

    .line 1350
    :cond_2a
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Tracks$Group;->getTrackFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v6

    .line 1351
    iget v7, v6, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_35

    goto :goto_43

    .line 1354
    :cond_35
    iget-object v7, p0, Lio/bidmachine/media3/ui/PlayerControlView;->trackNameProvider:Lio/bidmachine/media3/ui/TrackNameProvider;

    invoke-interface {v7, v6}, Lio/bidmachine/media3/ui/TrackNameProvider;->getTrackName(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    new-instance v7, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    invoke-direct {v7, p1, v3, v5, v6}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;-><init>(Lio/bidmachine/media3/common/Tracks;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1358
    :cond_49
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getPlayer()Lio/bidmachine/media3/common/Player;
    .registers 2

    .line 813
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .registers 2

    .line 993
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .registers 3

    .line 1023
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .registers 3

    .line 1038
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .registers 2

    .line 970
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showTimeoutMs:I

    return v0
.end method

.method public getShowVrButton()Z
    .registers 3

    .line 1052
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .line 1131
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hide()V

    return-void
.end method

.method public hideImmediately()V
    .registers 2

    .line 1136
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->hideImmediately()V

    return-void
.end method

.method public final initTrackSelectionAdapter()V
    .registers 4

    .line 1321
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->clear()V

    .line 1322
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->clear()V

    .line 1323
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_4f

    const/16 v1, 0x1e

    .line 1324
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    const/16 v1, 0x1d

    .line 1325
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_4f

    .line 1328
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getCurrentTracks()Lio/bidmachine/media3/common/Tracks;

    move-result-object v0

    .line 1329
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Lio/bidmachine/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->init(Ljava/util/List;)V

    .line 1330
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1331
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->gatherSupportedTrackInfosOfType(Lio/bidmachine/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    return-void

    .line 1333
    :cond_46
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->init(Ljava/util/List;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public isFullyVisible()Z
    .registers 2

    .line 1141
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->isFullyVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1146
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public notifyOnVisibilityChange()V
    .registers 4

    .line 1151
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;

    .line 1152
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;->onVisibilityChange(I)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1631
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1632
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1633
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1634
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1635
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1637
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1642
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1643
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1644
    iput-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    .line 1645
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1646
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    return-void
.end method

.method public final onFullscreenButtonClicked(Landroid/view/View;)V
    .registers 2

    .line 1578
    iget-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isFullscreen:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    .line 1708
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move v1, p1

    move-object p1, p0

    .line 1709
    iget-object v0, p1, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->onLayout(ZIIII)V

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_8

    if-eq p5, p9, :cond_35

    .line 1727
    :cond_8
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 1728
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    .line 1729
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int p6, p2, p3

    .line 1730
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    iget p3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int p7, p2, p3

    .line 1731
    iget-object p4, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    const/4 p8, -0x1

    const/4 p9, -0x1

    move-object p5, p1

    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_35
    return-void
.end method

.method public final onSettingViewClicked(I)V
    .registers 3

    if-nez p1, :cond_10

    .line 1621
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    :cond_10
    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 1623
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    .line 1625
    :cond_21
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public removeVisibilityListener(Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPlayPauseFocus()V
    .registers 2

    .line 1537
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1538
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_7
    return-void
.end method

.method public final seekToTimeBarPosition(Lio/bidmachine/media3/common/Player;J)V
    .registers 10

    .line 1551
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v0, :cond_39

    const/16 v0, 0x11

    .line 1552
    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0xa

    .line 1553
    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1554
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 1555
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    .line 1558
    :goto_1d
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_2c

    goto :goto_31

    :cond_2c
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_35

    move-wide p2, v3

    .line 1569
    :goto_31
    invoke-interface {p1, v2, p2, p3}, Lio/bidmachine/media3/common/Player;->seekTo(IJ)V

    goto :goto_43

    :cond_35
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_39
    const/4 v0, 0x5

    .line 1571
    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1572
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/common/Player;->seekTo(J)V

    .line 1574
    :cond_43
    :goto_43
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 3

    .line 1082
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1116
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    .line 1117
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    invoke-static {v0, v3}, Lio/bidmachine/media3/ui/PlayerControlView;->updateFullscreenButtonVisibility(Landroid/view/View;Z)V

    .line 1118
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    invoke-static {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateFullscreenButtonVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public setPlayer(Lio/bidmachine/media3/common/Player;)V
    .registers 6

    .line 824
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

    if-eqz p1, :cond_1e

    .line 826
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    :cond_1e
    move v2, v3

    .line 825
    :cond_1f
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 827
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-ne v0, p1, :cond_27

    return-void

    :cond_27
    if-eqz v0, :cond_2e

    .line 831
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->componentListener:Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->removeListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 833
    :cond_2e
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz p1, :cond_37

    .line 835
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->componentListener:Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->addListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 837
    :cond_37
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateAll()V

    return-void
.end method

.method public setProgressUpdateListener(Lio/bidmachine/media3/ui/PlayerControlView$ProgressUpdateListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .registers 6

    .line 1002
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    .line 1003
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1004
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_20

    if-eqz v0, :cond_20

    .line 1007
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->setRepeatMode(I)V

    goto :goto_34

    :cond_20
    const/4 v3, 0x2

    if-ne p1, v2, :cond_2b

    if-ne v0, v3, :cond_2b

    .line 1010
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0, v2}, Lio/bidmachine/media3/common/Player;->setRepeatMode(I)V

    goto :goto_34

    :cond_2b
    if-ne p1, v3, :cond_34

    if-ne v0, v2, :cond_34

    .line 1013
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v0, v3}, Lio/bidmachine/media3/common/Player;->setRepeatMode(I)V

    .line 1016
    :cond_34
    :goto_34
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_3b

    move v1, v2

    :cond_3b
    invoke-virtual {v0, v3, v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1018
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .registers 4

    .line 938
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 939
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 846
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    .line 847
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .registers 4

    .line 958
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 959
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .registers 2

    .line 860
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    .line 861
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .registers 4

    .line 948
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 949
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .registers 4

    .line 928
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 929
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .registers 4

    .line 1032
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    .line 1033
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateShuffleButton()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .registers 4

    .line 1047
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .registers 2

    .line 981
    iput p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showTimeoutMs:I

    .line 982
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 983
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_d
    return-void
.end method

.method public setShowVrButton(Z)V
    .registers 4

    .line 1061
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->setShowButton(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .registers 4

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1103
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 1070
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 1071
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1072
    :goto_c
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->vrButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    :cond_11
    return-void
.end method

.method public show()V
    .registers 2

    .line 1126
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->show()V

    return-void
.end method

.method public updateAll()V
    .registers 1

    .line 1157
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    .line 1158
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateNavigation()V

    .line 1159
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    .line 1160
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateShuffleButton()V

    .line 1161
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateTrackLists()V

    .line 1162
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    .line 1163
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateTimeline()V

    return-void
.end method

.method public final updateButton(ZLandroid/view/View;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1546
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_b

    .line 1547
    iget p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->buttonAlphaEnabled:F

    goto :goto_d

    :cond_b
    iget p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->buttonAlphaDisabled:F

    :goto_d
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateFastForwardButton()V
    .registers 6

    .line 1240
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x3a98

    :goto_b
    const-wide/16 v2, 0x3e8

    .line 1241
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1242
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButtonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1a

    .line 1243
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 1246
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lio/bidmachine/media3/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    .line 1250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1247
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_31
    return-void
.end method

.method public final updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_10

    .line 1611
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenExitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1612
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenExitContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1614
    :cond_10
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenEnterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1615
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenEnterContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateIsFullscreen(Z)V
    .registers 3

    .line 1592
    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isFullscreen:Z

    if-ne v0, p1, :cond_5

    goto :goto_18

    .line 1596
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isFullscreen:Z

    .line 1597
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1598
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->minimalFullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateFullscreenButtonForState(Landroid/widget/ImageView;Z)V

    .line 1600
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->onFullScreenModeChangedListener:Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    if-eqz v0, :cond_18

    .line 1601
    invoke-interface {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;->onFullScreenModeChanged(Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final updateNavigation()V
    .registers 7

    .line 1187
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_69

    .line 1191
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_3f

    .line 1199
    iget-boolean v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Timeline$Window;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xa

    .line 1200
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    goto :goto_27

    :cond_22
    const/4 v1, 0x5

    .line 1201
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    :goto_27
    const/4 v2, 0x7

    .line 1202
    invoke-interface {v0, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    const/16 v3, 0xb

    .line 1203
    invoke-interface {v0, v3}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 1204
    invoke-interface {v0, v4}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    const/16 v5, 0x9

    .line 1205
    invoke-interface {v0, v5}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    goto :goto_44

    :cond_3f
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_44
    if-eqz v3, :cond_49

    .line 1209
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateRewindButton()V

    :cond_49
    if-eqz v4, :cond_4e

    .line 1212
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateFastForwardButton()V

    .line 1215
    :cond_4e
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v5}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1216
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1217
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1218
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1219
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    if-eqz v0, :cond_69

    .line 1220
    invoke-interface {v0, v1}, Lio/bidmachine/media3/ui/TimeBar;->setEnabled(Z)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final updatePlayPauseButton()V
    .registers 4

    .line 1167
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_b

    goto :goto_40

    .line 1170
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_40

    .line 1171
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    iget-boolean v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->shouldShowPlayButton(Lio/bidmachine/media3/common/Player;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1172
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1e

    :cond_1c
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->pauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1e
    if-eqz v0, :cond_23

    .line 1176
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_play_description:I

    goto :goto_25

    .line 1177
    :cond_23
    sget v0, Lio/bidmachine/media3/ui/R$string;->exo_controls_pause_description:I

    .line 1178
    :goto_25
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1181
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->shouldEnablePlayPauseButton(Lio/bidmachine/media3/common/Player;)Z

    move-result v0

    .line 1182
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public final updatePlaybackSpeedList()V
    .registers 4

    .line 1487
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-nez v0, :cond_5

    return-void

    .line 1490
    :cond_5
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->updateSelectedIndex(F)V

    .line 1491
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsAdapter:Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->playbackSpeedAdapter:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    .line 1492
    invoke-virtual {v1}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1491
    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateSettingsButton()V

    return-void
.end method

.method public final updateProgress()V
    .registers 14

    .line 1441
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_c

    goto/16 :goto_9a

    .line 1444
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_27

    const/16 v1, 0x10

    .line 1447
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1448
    iget-wide v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1449
    iget-wide v3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->currentWindowOffset:J

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_2a

    :cond_27
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 1451
    :goto_2a
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlView;->positionView:Landroid/widget/TextView;

    if-eqz v5, :cond_3d

    iget-boolean v6, p0, Lio/bidmachine/media3/ui/PlayerControlView;->scrubbing:Z

    if-nez v6, :cond_3d

    .line 1452
    iget-object v6, p0, Lio/bidmachine/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/bidmachine/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Lio/bidmachine/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    :cond_3d
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    if-eqz v5, :cond_49

    .line 1455
    invoke-interface {v5, v1, v2}, Lio/bidmachine/media3/ui/TimeBar;->setPosition(J)V

    .line 1456
    iget-object v5, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    invoke-interface {v5, v3, v4}, Lio/bidmachine/media3/ui/TimeBar;->setBufferedPosition(J)V

    .line 1463
    :cond_49
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_53

    move v4, v3

    goto :goto_57

    .line 1464
    :cond_53
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result v4

    :goto_57
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_90

    .line 1465
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1467
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    if-eqz v3, :cond_6a

    invoke-interface {v3}, Lio/bidmachine/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_6b

    :cond_6a
    move-wide v3, v5

    .line 1470
    :goto_6b
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 1471
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1474
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_80

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_80
    move-wide v7, v5

    .line 1479
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBarMinUpdateIntervalMs:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 1480
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_90
    const/4 v0, 0x4

    if-eq v4, v0, :cond_9a

    if-eq v4, v3, :cond_9a

    .line 1482
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9a
    :goto_9a
    return-void
.end method

.method public final updateRepeatModeButton()V
    .registers 4

    .line 1255
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_77

    .line 1259
    :cond_f
    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleModes:I

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 1260
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    return-void

    .line 1264
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_64

    const/16 v1, 0xf

    .line 1265
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_64

    .line 1272
    :cond_25
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1273
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_55

    if-eq v0, v2, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    goto :goto_77

    .line 1283
    :cond_37
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatAllButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatAllButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1279
    :cond_46
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOneButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1280
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOneButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1275
    :cond_55
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1276
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1266
    :cond_64
    :goto_64
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1267
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1268
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->repeatOffButtonContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_77
    :goto_77
    return-void
.end method

.method public final updateRewindButton()V
    .registers 6

    .line 1226
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getSeekBackIncrement()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x1388

    :goto_b
    const-wide/16 v2, 0x3e8

    .line 1227
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1228
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButtonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1a

    .line 1229
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 1232
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->resources:Landroid/content/res/Resources;

    sget v3, Lio/bidmachine/media3/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    .line 1234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1233
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_31
    return-void
.end method

.method public final updateSettingsButton()V
    .registers 3

    .line 1497
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsAdapter:Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->hasSettingsToShow()Z

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    return-void
.end method

.method public final updateSettingsWindowSize()V
    .registers 3

    .line 1501
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1503
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1504
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1505
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1506
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1508
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindowMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1509
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1510
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1511
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final updateShuffleButton()V
    .registers 4

    .line 1292
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    goto :goto_65

    .line 1296
    :cond_f
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    .line 1297
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->controlViewLayoutManager:Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->getShowButton(Landroid/view/View;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 1298
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    return-void

    :cond_20
    if-eqz v1, :cond_52

    const/16 v0, 0xe

    .line 1299
    invoke-interface {v1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_52

    :cond_2b
    const/4 v0, 0x1

    .line 1304
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1305
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1306
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3e

    :cond_3c
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 1305
    :goto_3e
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1307
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    .line 1308
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1309
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOnContentDescription:Ljava/lang/String;

    goto :goto_4e

    .line 1310
    :cond_4c
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    .line 1307
    :goto_4e
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 1300
    :cond_52
    :goto_52
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1301
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->shuffleOffContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_65
    :goto_65
    return-void
.end method

.method public final updateTimeline()V
    .registers 23

    move-object/from16 v0, p0

    .line 1362
    iget-object v1, v0, Lio/bidmachine/media3/ui/PlayerControlView;->player:Lio/bidmachine/media3/common/Player;

    if-nez v1, :cond_7

    return-void

    .line 1366
    :cond_7
    iget-boolean v2, v0, Lio/bidmachine/media3/ui/PlayerControlView;->showMultiWindowTimeBar:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_17

    iget-object v2, v0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-static {v1, v2}, Lio/bidmachine/media3/ui/PlayerControlView;->canShowMultiWindowTimeBar(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    iput-boolean v2, v0, Lio/bidmachine/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    const-wide/16 v5, 0x0

    .line 1367
    iput-wide v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->currentWindowOffset:J

    const/16 v2, 0x11

    .line 1371
    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1372
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    goto :goto_2d

    .line 1373
    :cond_2b
    sget-object v2, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    .line 1374
    :goto_2d
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v7

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v7, :cond_fc

    .line 1375
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    .line 1376
    iget-boolean v7, v0, Lio/bidmachine/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    if-eqz v7, :cond_42

    move v10, v3

    goto :goto_43

    :cond_42
    move v10, v1

    :goto_43
    if-eqz v7, :cond_4b

    .line 1377
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v7

    sub-int/2addr v7, v4

    goto :goto_4c

    :cond_4b
    move v7, v1

    :goto_4c
    move v13, v3

    move-wide v11, v5

    :goto_4e
    if-gt v10, v7, :cond_fa

    if-ne v10, v1, :cond_58

    .line 1380
    invoke-static {v11, v12}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v14

    iput-wide v14, v0, Lio/bidmachine/media3/ui/PlayerControlView;->currentWindowOffset:J

    .line 1382
    :cond_58
    iget-object v14, v0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v2, v10, v14}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 1383
    iget-object v14, v0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    move v15, v4

    move-wide/from16 v16, v5

    iget-wide v4, v14, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_70

    .line 1384
    iget-boolean v1, v0, Lio/bidmachine/media3/ui/PlayerControlView;->multiWindowTimeBar:Z

    xor-int/2addr v1, v15

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    goto/16 :goto_fa

    .line 1387
    :cond_70
    iget v4, v14, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_72
    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget v6, v5, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v4, v6, :cond_ee

    .line 1388
    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v2, v4, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1389
    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v5

    .line 1390
    iget-object v6, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v6

    :goto_89
    if-ge v5, v6, :cond_e9

    .line 1392
    iget-object v14, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v14, v5}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v14, v18, v20

    if-nez v14, :cond_a5

    .line 1394
    iget-object v14, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-wide/from16 v20, v8

    iget-wide v8, v14, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long v14, v8, v20

    if-nez v14, :cond_a2

    goto :goto_e4

    :cond_a2
    move-wide/from16 v18, v8

    goto :goto_a7

    :cond_a5
    move-wide/from16 v20, v8

    .line 1400
    :goto_a7
    iget-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    add-long v18, v18, v8

    cmp-long v8, v18, v16

    if-ltz v8, :cond_e4

    .line 1402
    iget-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v9, v8

    if-ne v13, v9, :cond_ce

    .line 1403
    array-length v9, v8

    if-nez v9, :cond_bd

    move v9, v15

    goto :goto_c0

    :cond_bd
    array-length v9, v8

    mul-int/lit8 v9, v9, 0x2

    .line 1404
    :goto_c0
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    iput-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 1405
    iget-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v8

    iput-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    .line 1407
    :cond_ce
    iget-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    add-long v18, v11, v18

    invoke-static/range {v18 .. v19}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v18

    aput-wide v18, v8, v13

    .line 1408
    iget-object v8, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    iget-object v9, v0, Lio/bidmachine/media3/ui/PlayerControlView;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v9, v5}, Lio/bidmachine/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v9

    aput-boolean v9, v8, v13

    add-int/lit8 v13, v13, 0x1

    :cond_e4
    :goto_e4
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v8, v20

    goto :goto_89

    :cond_e9
    move-wide/from16 v20, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    :cond_ee
    move-wide/from16 v20, v8

    .line 1413
    iget-wide v4, v5, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    move v4, v15

    move-wide/from16 v5, v16

    goto/16 :goto_4e

    :cond_fa
    :goto_fa
    move-wide v5, v11

    goto :goto_119

    :cond_fc
    move-wide/from16 v16, v5

    move-wide/from16 v20, v8

    const/16 v2, 0x10

    .line 1415
    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 1416
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getContentDuration()J

    move-result-wide v1

    cmp-long v4, v1, v20

    if-eqz v4, :cond_116

    .line 1418
    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    move v13, v3

    goto :goto_119

    :cond_116
    move v13, v3

    move-wide/from16 v5, v16

    .line 1421
    :goto_119
    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    .line 1422
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->durationView:Landroid/widget/TextView;

    if-eqz v4, :cond_12c

    .line 1423
    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v6, v0, Lio/bidmachine/media3/ui/PlayerControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v5, v6, v1, v2}, Lio/bidmachine/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    :cond_12c
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    if-eqz v4, :cond_162

    .line 1426
    invoke-interface {v4, v1, v2}, Lio/bidmachine/media3/ui/TimeBar;->setDuration(J)V

    .line 1427
    iget-object v1, v0, Lio/bidmachine/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    array-length v1, v1

    add-int v2, v13, v1

    .line 1429
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    array-length v5, v4

    if-le v2, v5, :cond_14b

    .line 1430
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    .line 1431
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    .line 1433
    :cond_14b
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->extraAdGroupTimesMs:[J

    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    invoke-static {v4, v3, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1434
    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->extraPlayedAdGroups:[Z

    iget-object v5, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-static {v4, v3, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1435
    iget-object v1, v0, Lio/bidmachine/media3/ui/PlayerControlView;->timeBar:Lio/bidmachine/media3/ui/TimeBar;

    iget-object v3, v0, Lio/bidmachine/media3/ui/PlayerControlView;->adGroupTimesMs:[J

    iget-object v4, v0, Lio/bidmachine/media3/ui/PlayerControlView;->playedAdGroups:[Z

    invoke-interface {v1, v3, v4, v2}, Lio/bidmachine/media3/ui/TimeBar;->setAdGroupTimesMs([J[ZI)V

    .line 1437
    :cond_162
    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateProgress()V

    return-void
.end method

.method public final updateTrackLists()V
    .registers 3

    .line 1315
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->initTrackSelectionAdapter()V

    .line 1316
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->updateButton(ZLandroid/view/View;)V

    .line 1317
    invoke-virtual {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->updateSettingsButton()V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.AnonymousClass1 (io.bidmachine.media3.ui.PlayerControlView$1)
.class public synthetic Lio/bidmachine/media3/ui/PlayerControlView$1;
.super Ljava/lang/Object;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.ui.PlayerControlView.AudioTrackSelectionAdapter (io.bidmachine.media3.ui.PlayerControlView$AudioTrackSelectionAdapter)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;
.super Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioTrackSelectionAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$r7nkwFvwakid2ue-NdSU65qkm4g(Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;Landroid/view/View;)V
    .registers 5

    .line 2189
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2189
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2190
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_60

    .line 2193
    :cond_17
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2194
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 2195
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    .line 2198
    invoke-virtual {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters;->buildUpon()Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 2199
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v2, 0x0

    .line 2200
    invoke-virtual {p1, v1, v2}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 2201
    invoke-virtual {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->build()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 2196
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setTrackSelectionParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    .line 2202
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2204
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2202
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    .line 2205
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_60
    :goto_60
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 2177
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V
    .registers 3

    .line 2177
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public final hasSelectionOverride(Lio/bidmachine/media3/common/TrackSelectionParameters;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 2210
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 2211
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    iget-object v2, v2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Tracks$Group;->getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    .line 2212
    iget-object v3, p1, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_25
    return v0
.end method

.method public init(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;",
            ">;)V"
        }
    .end annotation

    .line 2226
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    .line 2228
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 2229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    .line 2230
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2232
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2230
    invoke-virtual {p1, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void

    .line 2235
    :cond_2f
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->hasSelectionOverride(Lio/bidmachine/media3/common/TrackSelectionParameters;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2236
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2238
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2236
    invoke-virtual {p1, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void

    :cond_4b
    const/4 v0, 0x0

    .line 2240
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6d

    .line 2241
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    .line 2242
    invoke-virtual {v1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2243
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object p1

    iget-object v0, v1, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void

    :cond_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_6d
    return-void
.end method

.method public onBindViewHolderAtZeroPosition(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;)V
    .registers 4

    .line 2182
    iget-object v0, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2184
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v0

    .line 2185
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->hasSelectionOverride(Lio/bidmachine/media3/common/TrackSelectionParameters;)Z

    move-result v0

    .line 2186
    iget-object v1, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2187
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTrackSelection(Ljava/lang/String;)V
    .registers 4

    .line 2221
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->setSubTextAtPosition(ILjava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->$r8$lambda$r7nkwFvwakid2ue-NdSU65qkm4g(Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.ComponentListener (io.bidmachine.media3.ui.PlayerControlView$ComponentListener)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Lio/bidmachine/media3/common/Player$Listener;
.implements Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 1797
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V
    .registers 3

    .line 1797
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1881
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_13a

    .line 1885
    :cond_a
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    .line 1886
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1900(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_27

    const/16 p1, 0x9

    .line 1887
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1888
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->seekToNext()V

    return-void

    .line 1890
    :cond_27
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2000(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_3a

    const/4 p1, 0x7

    .line 1891
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1892
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->seekToPrevious()V

    return-void

    .line 1894
    :cond_3a
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2100(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_55

    .line 1895
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_13a

    const/16 p1, 0xc

    .line 1896
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1897
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->seekForward()V

    return-void

    .line 1899
    :cond_55
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_69

    const/16 p1, 0xb

    .line 1900
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1901
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->seekBack()V

    return-void

    .line 1903
    :cond_69
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7b

    .line 1904
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2400(Lio/bidmachine/media3/ui/PlayerControlView;)Z

    move-result p1

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Util;->handlePlayPauseButtonAction(Lio/bidmachine/media3/common/Player;Z)Z

    return-void

    .line 1905
    :cond_7b
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_9d

    const/16 p1, 0xf

    .line 1906
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1908
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getRepeatMode()I

    move-result p1

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2600(Lio/bidmachine/media3/ui/PlayerControlView;)I

    move-result v1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/RepeatModeUtil;->getNextRepeatMode(II)I

    move-result p1

    .line 1907
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setRepeatMode(I)V

    return-void

    .line 1910
    :cond_9d
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2700(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_b7

    const/16 p1, 0xe

    .line 1911
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1912
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getShuffleModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setShuffleModeEnabled(Z)V

    return-void

    .line 1914
    :cond_b7
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2800(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_d8

    .line 1915
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1916
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2900(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$2800(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3000(Lio/bidmachine/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    .line 1917
    :cond_d8
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3100(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_f9

    .line 1918
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1919
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3200(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3100(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3000(Lio/bidmachine/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    .line 1920
    :cond_f9
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_11a

    .line 1921
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1922
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3400(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3000(Lio/bidmachine/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    .line 1923
    :cond_11a
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_13a

    .line 1924
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    .line 1925
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3000(Lio/bidmachine/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    :cond_13a
    :goto_13a
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 1874
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1800(Lio/bidmachine/media3/ui/PlayerControlView;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1875
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_11
    return-void
.end method

.method public onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Player$Events;)V
    .registers 11

    const/4 p1, 0x0

    const/16 v0, 0xb

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/16 v6, 0xd

    .line 1805
    filled-new-array {v4, v5, v6}, [I

    move-result-object v7

    invoke-virtual {p2, v7}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1809
    iget-object v7, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v7}, Lio/bidmachine/media3/ui/PlayerControlView;->access$300(Lio/bidmachine/media3/ui/PlayerControlView;)V

    .line 1811
    :cond_1b
    filled-new-array {v4, v5, v3, v6}, [I

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1816
    iget-object v4, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v4}, Lio/bidmachine/media3/ui/PlayerControlView;->access$400(Lio/bidmachine/media3/ui/PlayerControlView;)V

    .line 1818
    :cond_2a
    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1819
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v2}, Lio/bidmachine/media3/ui/PlayerControlView;->access$500(Lio/bidmachine/media3/ui/PlayerControlView;)V

    .line 1821
    :cond_39
    filled-new-array {v1, v6}, [I

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1823
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$600(Lio/bidmachine/media3/ui/PlayerControlView;)V

    .line 1825
    :cond_48
    new-array v1, v3, [I

    fill-array-data v1, :array_8a

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1833
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$700(Lio/bidmachine/media3/ui/PlayerControlView;)V

    .line 1835
    :cond_58
    filled-new-array {v0, p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 1837
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$800(Lio/bidmachine/media3/ui/PlayerControlView;)V

    :cond_67
    const/16 p1, 0xc

    .line 1839
    filled-new-array {p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 1840
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$900(Lio/bidmachine/media3/ui/PlayerControlView;)V

    :cond_78
    const/4 p1, 0x2

    .line 1842
    filled-new-array {p1, v6}, [I

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 1843
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1000(Lio/bidmachine/media3/ui/PlayerControlView;)V

    :cond_88
    return-void

    nop

    :array_8a
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method

.method public onScrubMove(Lio/bidmachine/media3/ui/TimeBar;J)V
    .registers 6

    .line 1858
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 1859
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1300(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1400(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lio/bidmachine/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    return-void
.end method

.method public onScrubStart(Lio/bidmachine/media3/ui/TimeBar;J)V
    .registers 6

    .line 1849
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1102(Lio/bidmachine/media3/ui/PlayerControlView;Z)Z

    .line 1850
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1851
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1300(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1400(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lio/bidmachine/media3/common/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1853
    :cond_27
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    return-void
.end method

.method public onScrubStop(Lio/bidmachine/media3/ui/TimeBar;JZ)V
    .registers 6

    .line 1865
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1102(Lio/bidmachine/media3/ui/PlayerControlView;Z)Z

    if-nez p4, :cond_19

    .line 1866
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1867
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1700(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/common/Player;J)V

    .line 1869
    :cond_19
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$ComponentListener;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1500(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.OnFullScreenModeChangedListener (io.bidmachine.media3.ui.PlayerControlView$OnFullScreenModeChangedListener)
.class public interface abstract Lio/bidmachine/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFullScreenModeChangedListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onFullScreenModeChanged(Z)V
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.PlaybackSpeedAdapter (io.bidmachine.media3.ui.PlayerControlView$PlaybackSpeedAdapter)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlaybackSpeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final playbackSpeedTexts:[Ljava/lang/String;

.field public final playbackSpeeds:[F

.field public selectedIndex:I

.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$57UnMoCYSRzSupaL6391HQJW48I(Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;ILandroid/view/View;)V
    .registers 4

    .line 2080
    iget p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    if-eq p1, p2, :cond_d

    .line 2081
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    aget p1, v0, p1

    invoke-static {p2, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4100(Lio/bidmachine/media3/ui/PlayerControlView;F)V

    .line 2083
    :cond_d
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V
    .registers 4

    .line 2035
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2036
    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    .line 2037
    iput-object p3, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 2089
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 3

    .line 2054
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 2029
    check-cast p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .registers 6

    .line 2068
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeedTexts:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_c

    .line 2069
    iget-object v1, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    :cond_c
    iget v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1d

    .line 2072
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2073
    iget-object v0, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28

    .line 2075
    :cond_1d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2076
    iget-object v0, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2078
    :goto_28
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 2029
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;
    .registers 5

    .line 2059
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2060
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/bidmachine/media3/ui/R$layout;->bm_exo_styled_sub_settings_list_item:I

    const/4 v1, 0x0

    .line 2061
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2063
    new-instance p2, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateSelectedIndex(F)V
    .registers 7

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v1

    move v1, v0

    .line 2043
    :goto_6
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->playbackSpeeds:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1c

    .line 2044
    aget v3, v3, v0

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_19

    move v1, v0

    move v2, v3

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2050
    :cond_1c
    iput v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->selectedIndex:I

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iput p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->$r8$lambda$57UnMoCYSRzSupaL6391HQJW48I(Lio/bidmachine/media3/ui/PlayerControlView$PlaybackSpeedAdapter;ILandroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.ProgressUpdateListener (io.bidmachine.media3.ui.PlayerControlView$ProgressUpdateListener)
.class public interface abstract Lio/bidmachine/media3/ui/PlayerControlView$ProgressUpdateListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressUpdateListener"
.end annotation

###### Class io.bidmachine.media3.ui.PlayerControlView.SettingViewHolder (io.bidmachine.media3.ui.PlayerControlView$SettingViewHolder)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingViewHolder"
.end annotation


# instance fields
.field public final iconView:Landroid/widget/ImageView;

.field public final mainTextView:Landroid/widget/TextView;

.field public final subTextView:Landroid/widget/TextView;

.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$EG-0mgOKFenM-NxxBl6weZc7x1g(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;Landroid/view/View;)V
    .registers 2

    .line 2025
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2025
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-static {p1, p0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4000(Lio/bidmachine/media3/ui/PlayerControlView;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;)V
    .registers 4

    .line 2016
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2017
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2018
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_f

    const/4 p1, 0x1

    .line 2020
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 2022
    :cond_f
    sget p1, Lio/bidmachine/media3/ui/R$id;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    .line 2023
    sget p1, Lio/bidmachine/media3/ui/R$id;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    .line 2024
    sget p1, Lio/bidmachine/media3/ui/R$id;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    .line 2025
    new-instance p1, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$3700(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 2010
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->mainTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$3800(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 2010
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->subTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$3900(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 2010
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->iconView:Landroid/widget/ImageView;

    return-object p0
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->$r8$lambda$EG-0mgOKFenM-NxxBl6weZc7x1g(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.SettingsAdapter (io.bidmachine.media3.ui.PlayerControlView$SettingsAdapter)
.class public Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final iconIds:[Landroid/graphics/drawable/Drawable;

.field public final mainTexts:[Ljava/lang/String;

.field public final subTexts:[Ljava/lang/String;

.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1936
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1937
    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    .line 1938
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    .line 1939
    iput-object p3, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1982
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 0
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasSettingsToShow()Z
    .registers 4

    const/4 v0, 0x1

    .line 1990
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 1991
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1930
    check-cast p1, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;I)V
    .registers 7

    .line 1952
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->shouldShowSetting(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1953
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    .line 1957
    :cond_13
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1960
    :goto_1e
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->access$3700(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->mainTexts:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1962
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/16 v1, 0x8

    if-nez v0, :cond_39

    .line 1963
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->access$3800(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44

    .line 1965
    :cond_39
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->access$3800(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1968
    :goto_44
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p2

    if-nez v0, :cond_52

    .line 1969
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->access$3900(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1971
    :cond_52
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;->access$3900(Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->iconIds:[Landroid/graphics/drawable/Drawable;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1930
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;
    .registers 5

    .line 1944
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 1945
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/bidmachine/media3/ui/R$layout;->bm_exo_styled_settings_list_item:I

    const/4 v1, 0x0

    .line 1946
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1947
    new-instance p2, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;

    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p2, v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$SettingViewHolder;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;)V

    return-object p2
.end method

.method public setSubTextAtPosition(ILjava/lang/String;)V
    .registers 4

    .line 1986
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final shouldShowSetting(I)Z
    .registers 5

    .line 1995
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    return v0

    .line 2000
    :cond_10
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2001
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v0

    :cond_2d
    return v1

    .line 2003
    :cond_2e
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SettingsAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.SubSettingViewHolder (io.bidmachine.media3.ui.PlayerControlView$SubSettingViewHolder)
.class public Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingViewHolder"
.end annotation


# instance fields
.field public final checkView:Landroid/view/View;

.field public final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 2328
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2329
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    .line 2331
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2333
    :cond_d
    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    .line 2334
    sget v0, Lio/bidmachine/media3/ui/R$id;->exo_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.TextTrackSelectionAdapter (io.bidmachine.media3.ui.PlayerControlView$TextTrackSelectionAdapter)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;
.super Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextTrackSelectionAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public static synthetic $r8$lambda$BSQR7FheRhRO0_B7SYX6yk5OS1o(Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;Landroid/view/View;)V
    .registers 4

    .line 2145
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2145
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2146
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 2147
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2148
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 2149
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    .line 2151
    invoke-virtual {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters;->buildUpon()Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v1, 0x3

    .line 2152
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v1, -0x3

    .line 2153
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 2154
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 2155
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 2156
    invoke-virtual {p1}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->build()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 2149
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/Player;->setTrackSelectionParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    .line 2157
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4e
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 2110
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;Lio/bidmachine/media3/ui/PlayerControlView$1;)V
    .registers 3

    .line 2110
    invoke-direct {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2114
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 2115
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    invoke-virtual {v2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x1

    goto :goto_19

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2121
    :cond_19
    :goto_19
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 2122
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    .line 2123
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    if-eqz v0, :cond_30

    invoke-static {v2}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4300(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_34

    :cond_30
    invoke-static {v2}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4400(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2122
    :goto_34
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2124
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v1}, Lio/bidmachine/media3/ui/PlayerControlView;->access$3500(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_46

    .line 2125
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4500(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_46
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4600(Lio/bidmachine/media3/ui/PlayerControlView;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    :goto_4c
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2127
    :cond_4f
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 2110
    check-cast p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .registers 4

    .line 2164
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    if-lez p2, :cond_1d

    .line 2166
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    .line 2167
    iget-object p1, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    invoke-virtual {p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_19

    const/4 p2, 0x0

    goto :goto_1a

    :cond_19
    const/4 p2, 0x4

    :goto_1a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public onBindViewHolderAtZeroPosition(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;)V
    .registers 5

    .line 2134
    iget-object v0, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    sget v1, Lio/bidmachine/media3/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 2136
    :goto_9
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 2137
    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    invoke-virtual {v2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_21

    move v1, v0

    goto :goto_25

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_24
    const/4 v1, 0x1

    .line 2142
    :goto_25
    iget-object v2, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x4

    :goto_2b
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTrackSelection(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$lambda$BSQR7FheRhRO0_B7SYX6yk5OS1o(Lio/bidmachine/media3/ui/PlayerControlView$TextTrackSelectionAdapter;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.TrackInformation (io.bidmachine.media3.ui.PlayerControlView$TrackInformation)
.class public final Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;
.super Ljava/lang/Object;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInformation"
.end annotation


# instance fields
.field public final trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

.field public final trackIndex:I

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Tracks;IILjava/lang/String;)V
    .registers 5

    .line 2099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2100
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Tracks$Group;

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    .line 2101
    iput p3, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    .line 2102
    iput-object p4, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .registers 3

    .line 2106
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    iget v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.TrackSelectionAdapter (io.bidmachine.media3.ui.PlayerControlView$TrackSelectionAdapter)
.class public abstract Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TrackSelectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/ui/PlayerControlView;

.field public tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cQwiZ4wtfEDXY-LUjnU3nsPsb2I(Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p4, 0x1d

    .line 2293
    invoke-interface {p1, p4}, Lio/bidmachine/media3/common/Player;->isCommandAvailable(I)Z

    move-result p4

    if-nez p4, :cond_c

    return-void

    .line 2297
    :cond_c
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p4

    .line 2300
    invoke-virtual {p4}, Lio/bidmachine/media3/common/TrackSelectionParameters;->buildUpon()Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p4

    new-instance v0, Lio/bidmachine/media3/common/TrackSelectionOverride;

    iget v1, p3, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    .line 2303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/bidmachine/media3/common/TrackSelectionOverride;-><init>(Lio/bidmachine/media3/common/TrackGroup;Ljava/util/List;)V

    .line 2301
    invoke-virtual {p4, v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Lio/bidmachine/media3/common/TrackSelectionOverride;)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    iget-object p4, p3, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    .line 2304
    invoke-virtual {p4}, Lio/bidmachine/media3/common/Tracks$Group;->getType()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    .line 2305
    invoke-virtual {p2}, Lio/bidmachine/media3/common/TrackSelectionParameters$Builder;->build()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object p2

    .line 2298
    invoke-interface {p1, p2}, Lio/bidmachine/media3/common/Player;->setTrackSelectionParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    .line 2306
    iget-object p1, p3, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->onTrackSelection(Ljava/lang/String;)V

    .line 2307
    iget-object p0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {p0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$4200(Lio/bidmachine/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 2256
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 2318
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 2314
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 2252
    check-cast p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .registers 9

    .line 2277
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->access$1600(Lio/bidmachine/media3/ui/PlayerControlView;)Lio/bidmachine/media3/common/Player;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-nez p2, :cond_f

    .line 2282
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->onBindViewHolderAtZeroPosition(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;)V

    return-void

    .line 2284
    :cond_f
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    .line 2285
    iget-object v1, p2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Lio/bidmachine/media3/common/Tracks$Group;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Tracks$Group;->getMediaTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    .line 2286
    invoke-interface {v0}, Lio/bidmachine/media3/common/Player;->getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v3

    .line 2287
    iget-object v3, v3, Lio/bidmachine/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    .line 2288
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_33

    invoke-virtual {p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v2, v4

    .line 2289
    :goto_34
    iget-object v3, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    iget-object v5, p2, Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    iget-object v3, p1, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v4, 0x4

    :goto_41
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2291
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract onBindViewHolderAtZeroPosition(Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;)V
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 2252
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;
    .registers 5

    .line 2264
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->this$0:Lio/bidmachine/media3/ui/PlayerControlView;

    .line 2265
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lio/bidmachine/media3/ui/R$layout;->bm_exo_styled_sub_settings_list_item:I

    const/4 v1, 0x0

    .line 2266
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2268
    new-instance p2, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/ui/PlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public abstract onTrackSelection(Ljava/lang/String;)V
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Player;

.field public final synthetic f$2:Lio/bidmachine/media3/common/TrackGroup;

.field public final synthetic f$3:Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;

    iput-object p2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/Player;

    iput-object p3, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/common/TrackGroup;

    iput-object p4, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;

    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/Player;

    iget-object v2, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;->$r8$lambda$cQwiZ4wtfEDXY-LUjnU3nsPsb2I(Lio/bidmachine/media3/ui/PlayerControlView$TrackSelectionAdapter;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/TrackGroup;Lio/bidmachine/media3/ui/PlayerControlView$TrackInformation;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView.VisibilityListener (io.bidmachine.media3.ui.PlayerControlView$VisibilityListener)
.class public interface abstract Lio/bidmachine/media3/ui/PlayerControlView$VisibilityListener;
.super Ljava/lang/Object;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibilityListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onVisibilityChange(I)V
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda0 (io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerControlView;->$r8$lambda$6X_Lr49YUJ-uGTCPa7U_Zl8ZjLE(Lio/bidmachine/media3/ui/PlayerControlView;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda1 (io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    invoke-static {v0, p1}, Lio/bidmachine/media3/ui/PlayerControlView;->$r8$lambda$sUVZkrnU9ffCxZNLq2U-hDkSsEc(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda2 (io.bidmachine.media3.ui.PlayerControlView$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerControlView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerControlView$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/ui/PlayerControlView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lio/bidmachine/media3/ui/PlayerControlView;->$r8$lambda$uwK9jivAATrVffIGIuwAn3wuzxA(Lio/bidmachine/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V

    return-void
.end method
