###### Class com.google.android.play.core.hsdp.service.zzax (com.google.android.play.core.hsdp.service.zzax)
.class public final Lcom/google/android/play/core/hsdp/service/zzax;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public zza:Landroid/view/View;

.field public final zzb:Landroid/app/Activity;

.field public final zzc:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V
    .registers 4

    .line 1
    const-string v0, "hideLoading"

    const-string v1, "HsdpLoadingPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p1

    const-string v0, "Error removing view from WindowManager"

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .registers 4

    .line 1
    const-string v0, "HsdpLoadingPanel"

    const-string v1, "try to hideLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/play/core/hsdp/service/zzau;

    invoke-direct {v2, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzau;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc()V
    .registers 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    const-string v5, "x"

    const-string v6, "com.android.vending"

    const-string v0, "try to showLoading"

    const-string v7, "HsdpLoadingPanel"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-eqz v0, :cond_16

    goto/16 :goto_262

    :cond_16
    const-string v0, "showLoading"

    .line 2
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 4
    sget v9, Lcom/google/android/play/core/hsdp/R$layout;->sdk_loading_panel:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_30

    const-string v0, "Failed to inflate loading panel layout."

    .line 5
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_30
    iput-object v8, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    .line 6
    move-object v9, v8

    check-cast v9, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;

    new-instance v11, Lcom/google/android/play/core/hsdp/service/zzav;

    invoke-direct {v11, v1}, Lcom/google/android/play/core/hsdp/service/zzav;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;)V

    .line 7
    invoke-virtual {v9, v11}, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->setOnConfigurationChangedListener(Ljava/lang/Runnable;)V

    .line 8
    sget v9, Lcom/google/android/play/core/hsdp/R$id;->hsdp_service_prism_with_loading_indicator:I

    .line 9
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_48

    .line 10
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_52

    move-object v9, v0

    goto :goto_59

    :catch_52
    move-exception v0

    .line 19
    const-string v9, "Error getting resources for com.android.vending"

    .line 12
    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v10

    .line 11
    :goto_59
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->play_prism:I

    .line 13
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    const-string v12, "drawable"

    if-nez v11, :cond_67

    goto :goto_94

    :cond_67
    if-eqz v9, :cond_8a

    .line 23
    :try_start_69
    const-string v0, "product_logo_play_prism_color_24"

    .line 14
    invoke-virtual {v9, v0, v12, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v13, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 15
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    invoke-virtual {v9, v0, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "Successfully loaded Play Prism icon as drawable from com.android.vending."

    .line 16
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_83} :catch_84

    goto :goto_94

    :catch_84
    move-exception v0

    .line 32
    const-string v13, "Error loading Play Prism icon from com.android.vending."

    .line 17
    invoke-static {v7, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :cond_8a
    :try_start_8a
    sget v0, Lcom/google/android/play/core/hsdp/R$drawable;->logo_play_prism_24dp:I

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "Successfully loaded Play Prism icon from local resources."

    .line 19
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_94} :catch_273

    .line 13
    :goto_94
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->sdk_dismiss_button:I

    .line 22
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageButton;

    if-nez v11, :cond_a1

    goto/16 :goto_127

    .line 48
    :cond_a1
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v13

    if-eqz v13, :cond_ac

    sget v13, Lcom/google/android/play/core/hsdp/R$color;->dismiss_icon_grey_500:I

    goto :goto_ae

    :cond_ac
    sget v13, Lcom/google/android/play/core/hsdp/R$color;->dismiss_icon_grey_700:I

    .line 24
    :goto_ae
    invoke-static {v0, v13}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    if-eqz v9, :cond_ee

    .line 25
    :try_start_b4
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v14

    if-eqz v14, :cond_bd

    const-string v14, "grey_500"

    goto :goto_bf

    .line 28
    :cond_bd
    const-string v14, "grey_700"

    .line 25
    :goto_bf
    const-string v15, "color"

    .line 26
    invoke-virtual {v9, v14, v15, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_d0

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v13

    goto :goto_d5

    .line 31
    :cond_d0
    const-string v14, "Could not load grey_500/grey_700 color from com.android.vending, falling back to local resources."

    .line 28
    invoke-static {v7, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_d5
    const-string v14, "gs_close_rond100_vd_theme_24"

    .line 29
    invoke-virtual {v9, v14, v12, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_e9

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v9, v6, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move v6, v2

    goto :goto_f7

    :catch_e7
    move-exception v0

    goto :goto_f1

    .line 74
    :cond_e9
    const-string v0, "Drawable resource \'gs_close_rond100_vd_theme_24\' not found in com.android.vending"

    .line 31
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_ee} :catch_e7

    :cond_ee
    :goto_ee
    move v6, v3

    move-object v0, v10

    goto :goto_f7

    .line 73
    :goto_f1
    const-string v6, "Error loading dismiss icon from com.android.vending."

    .line 32
    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee

    :goto_f7
    if-nez v0, :cond_103

    .line 30
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const v6, 0x1080038

    .line 33
    invoke-static {v0, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move v6, v3

    :cond_103
    if-eqz v0, :cond_26b

    .line 34
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    invoke-static {v0, v13}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 36
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzaw;

    .line 37
    invoke-direct {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzaw;-><init>(Lcom/google/android/play/core/hsdp/service/zzax;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v2, v6, :cond_11c

    const-string v0, "local resources."

    goto :goto_11e

    .line 38
    :cond_11c
    const-string v0, "com.android.vending."

    .line 37
    :goto_11e
    const-string v6, "Successfully loaded and tinted dismiss icon from "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_127
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->content_frame:I

    .line 39
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_137

    const-string v0, "content_frame not found in the layout."

    .line 40
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18c

    .line 72
    :cond_137
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 41
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 42
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v9, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    const/16 v11, 0x1c

    .line 43
    invoke-static {v9, v11}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v12

    int-to-float v12, v12

    .line 44
    invoke-static {v9, v11}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v13

    int-to-float v13, v13

    .line 45
    invoke-static {v9, v11}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v14

    int-to-float v14, v14

    .line 46
    invoke-static {v9, v11}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v11

    int-to-float v11, v11

    const/16 v15, 0x8

    new-array v15, v15, [F

    aput v12, v15, v3

    aput v13, v15, v2

    const/4 v12, 0x2

    aput v14, v15, v12

    const/4 v12, 0x3

    aput v11, v15, v12

    const/4 v11, 0x4

    aput v4, v15, v11

    const/4 v11, 0x5

    aput v4, v15, v11

    const/4 v11, 0x6

    aput v4, v15, v11

    const/4 v11, 0x7

    aput v4, v15, v11

    .line 47
    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 48
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zze()Z

    move-result v4

    if-eqz v4, :cond_17d

    sget v4, Lcom/google/android/play/core/hsdp/R$color;->background_dark:I

    goto :goto_17f

    :cond_17d
    sget v4, Lcom/google/android/play/core/hsdp/R$color;->background_light:I

    .line 49
    :goto_17f
    invoke-static {v9, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 50
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 51
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 40
    :goto_18c
    sget v0, Lcom/google/android/play/core/hsdp/R$id;->placeholder_loading:I

    .line 53
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_197

    .line 54
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_197
    :try_start_197
    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 55
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v2

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/16 v15, 0x28

    const/16 v16, -0x3

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/4 v14, 0x2

    .line 57
    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 59
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v6

    int-to-float v6, v6

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 60
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v6, 0x280

    if-le v4, v6, :cond_1e5

    .line 62
    invoke-static {v0, v6}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v0

    .line 63
    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1e5

    :catch_1e2
    move-exception v0

    goto/16 :goto_263

    :cond_1e5
    :goto_1e5
    const/16 v0, 0x51

    .line 64
    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", loadingUiHeight: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wmParams.y: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 66
    invoke-interface {v0, v8, v11}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully added view to WindowManager. loadingView size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/android/play/core/hsdp/R$id;->content_frame:I

    .line 70
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_262

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentFrame size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_262
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_262} :catch_1e2

    :cond_262
    :goto_262
    return-void

    .line 12
    :goto_263
    const-string v2, "Error adding view to WindowManager"

    .line 73
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v10, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void

    .line 38
    :cond_26b
    const-string v0, "Failed to load dismiss button."

    .line 74
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void

    :catch_273
    move-exception v0

    .line 17
    const-string v2, "Error loading Play Prism icon from local resources."

    .line 20
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to load Play Prism icon."

    .line 21
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, v1, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    return-void
.end method

.method public final zzd()V
    .registers 8

    .line 1
    const-string v0, "HsdpLoadingPanel"

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zza:Landroid/view/View;

    if-nez v1, :cond_7

    goto :goto_5b

    :cond_7
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzax;->zzb()V

    return-void

    .line 3
    :cond_13
    :try_start_13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_5b

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/play/core/hsdp/R$dimen;->sdk_hsdp_loading_ui_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 5
    invoke-static {v3}, Lcom/google/android/play/core/hsdp/service/zza;->zzb(Landroid/app/Activity;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x280

    if-le v4, v5, :cond_4e

    .line 8
    invoke-static {v3, v5}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result v3

    .line 9
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_51

    :catch_4c
    move-exception v1

    goto :goto_5c

    :cond_4e
    const/4 v3, -0x1

    .line 10
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    :goto_51
    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzc:Landroid/view/WindowManager;

    .line 11
    invoke-interface {v3, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "updateLoadingView: updated window size."

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_5b} :catch_4c

    :cond_5b
    :goto_5b
    return-void

    .line 10
    :goto_5c
    const-string v2, "updateLoadingView: error updating window size."

    .line 13
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zze()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzax;->zzb:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.play.core.hsdp.service.zzau (com.google.android.play.core.hsdp.service.zzau)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzau;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzax;

.field public final synthetic zzb:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zzb:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zza(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzav (com.google.android.play.core.hsdp.service.zzav)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzav;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzax;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzax;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzav;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzav;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzax;->zzd()V

    return-void
.end method
