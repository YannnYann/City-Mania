###### Class info.flowersoft.theotown.components.management.attribute.TaxesHappiness (info.flowersoft.theotown.components.management.attribute.TaxesHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "TaxesHappiness.java"


# instance fields
.field public happinessIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xbd7

    .line 16
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 13
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness;->happinessIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 5

    .line 22
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v0, :cond_7

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 24
    :cond_7
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getTaxes(Linfo/flowersoft/theotown/draft/ZoneDraft;I)F

    move-result v0

    .line 29
    sget-object v1, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_4e

    goto :goto_31

    :pswitch_2c
    const/16 v1, 0x9

    goto :goto_31

    :pswitch_2f
    const/16 v1, 0xa

    :goto_31
    :pswitch_31
    int-to-float p1, v1

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3ec28f5c    # 0.38f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method

###### Class info.flowersoft.theotown.components.management.attribute.TaxesHappiness.AnonymousClass1 (info.flowersoft.theotown.components.management.attribute.TaxesHappiness$1)
.class public synthetic Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;
.super Ljava/lang/Object;
.source "TaxesHappiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$city$GameMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/components/management/attribute/TaxesHappiness$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
