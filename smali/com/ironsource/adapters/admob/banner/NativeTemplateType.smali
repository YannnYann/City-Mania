###### Class com.ironsource.adapters.admob.banner.NativeTemplateType (com.ironsource.adapters.admob.banner.NativeTemplateType)
.class final enum Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
.super Ljava/lang/Enum;
.source "AdMobNativeBannerViewHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/admob/banner/NativeTemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field private static final NATIVE_TEMPLATE_NAME:Ljava/lang/String; = "nativeBannerTemplateName"

.field public static final enum NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

.field public static final enum NB_TMP_TEXT_CTA:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;


# instance fields
.field private final mAdChoicesPlacement:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field private final mHideCallToAction:Z

.field private final mHideVideoContent:Z

.field private final mLayoutId:I

.field private final mMediaAspectRatio:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;


# direct methods
.method private static synthetic $values()[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 5

    .line 17
    sget-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget-object v1, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget-object v2, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget-object v3, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_TEXT_CTA:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget-object v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 19

    .line 19
    new-instance v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v3, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_basic_layout:I

    sget-object v10, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    sget-object v11, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;->ANY:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    const-string v1, "NB_TMP_BASIC"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V

    sput-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    .line 20
    new-instance v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v7, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_basic_layout:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v5, "NB_TMP_BASIC_LARGE"

    const/4 v6, 0x1

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V

    sput-object v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    .line 21
    new-instance v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v7, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_icon_text_layout:I

    const/4 v8, 0x1

    const-string v5, "NB_TMP_ICON_TEXT"

    const/4 v6, 0x2

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V

    sput-object v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-object/from16 v18, v11

    .line 22
    new-instance v11, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v14, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_text_cta_layout:I

    const/16 v16, 0x1

    sget-object v17, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->BOTTOM_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    const-string v12, "NB_TMP_TEXT_CTA"

    const/4 v13, 0x3

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v18}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V

    move-object v0, v11

    move-object/from16 v11, v18

    sput-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_TEXT_CTA:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    .line 23
    new-instance v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    sget v7, Lcom/ironsource/adapters/admob/R$layout;->ad_mob_native_banner_template_rect_layout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v5, "NB_TMP_RECT"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;-><init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V

    sput-object v4, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    .line 17
    invoke-static {}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->$values()[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->$VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
            "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mLayoutId:I

    .line 35
    iput-boolean p4, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideCallToAction:Z

    .line 36
    iput-boolean p5, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideVideoContent:Z

    .line 37
    iput-object p6, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mAdChoicesPlacement:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 38
    iput-object p7, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mMediaAspectRatio:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    return-void
.end method

.method public static createTemplateType(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 4

    .line 62
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5c

    goto :goto_3b

    :sswitch_10
    const-string v1, "BANNER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string v1, "SMART"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v1, "LARGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v1, "RECTANGLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    packed-switch v0, :pswitch_data_6e

    .line 76
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    .line 65
    :pswitch_41
    sget-object p1, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeBannerTemplateName"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    :try_start_4d
    invoke-static {p0}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object p0
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_51} :catch_52

    return-object p0

    .line 69
    :catch_52
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_ICON_TEXT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    .line 72
    :pswitch_55
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_BASIC_LARGE:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    .line 74
    :pswitch_58
    sget-object p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->NB_TMP_RECT:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x171242b1 -> :sswitch_31
        0x44dc31b -> :sswitch_26
        0x4b59da9 -> :sswitch_1b
        0x7458732c -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_55
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 2

    .line 17
    const-class v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 1

    .line 17
    sget-object v0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->$VALUES:[Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object v0
.end method


# virtual methods
.method public getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mAdChoicesPlacement:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mLayoutId:I

    return v0
.end method

.method public getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mMediaAspectRatio:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    return-object v0
.end method

.method public shouldHideCallToAction()Z
    .registers 2

    .line 46
    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideCallToAction:Z

    return v0
.end method

.method public shouldHideVideoContent()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->mHideVideoContent:Z

    return v0
.end method
