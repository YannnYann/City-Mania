###### Class info.flowersoft.theotown.city.Zones (info.flowersoft.theotown.city.Zones)
.class public final Linfo/flowersoft/theotown/city/Zones;
.super Ljava/lang/Object;
.source "Zones.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/city/Zones;


# instance fields
.field public AIRPORT:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public COMMERCIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public DECORATION:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public DESTROYED:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public INDUSTRIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public MILITARY:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public OTHER:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 18
    sput-object v0, Linfo/flowersoft/theotown/city/Zones;->instance:Linfo/flowersoft/theotown/city/Zones;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/city/Zones;
    .registers 1

    .line 14
    sget-object v0, Linfo/flowersoft/theotown/city/Zones;->instance:Linfo/flowersoft/theotown/city/Zones;

    if-nez v0, :cond_b

    new-instance v0, Linfo/flowersoft/theotown/city/Zones;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/Zones;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/city/Zones;->instance:Linfo/flowersoft/theotown/city/Zones;

    .line 15
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/city/Zones;->instance:Linfo/flowersoft/theotown/city/Zones;

    return-object v0
.end method


# virtual methods
.method public register(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 5

    .line 38
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_d8

    goto/16 :goto_ac

    :sswitch_f
    const-string v2, "$zoneother"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_ac

    :cond_19
    const/16 v1, 0xc

    goto/16 :goto_ac

    :sswitch_1d
    const-string v2, "$zoneairport"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_ac

    :cond_27
    const/16 v1, 0xb

    goto/16 :goto_ac

    :sswitch_2b
    const-string v2, "$zoneresidential"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_ac

    :cond_35
    const/16 v1, 0xa

    goto/16 :goto_ac

    :sswitch_39
    const-string v2, "$zonecommercial_lvl2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_ac

    :cond_43
    const/16 v1, 0x9

    goto/16 :goto_ac

    :sswitch_47
    const-string v2, "$zoneindustrial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_ac

    :cond_51
    const/16 v1, 0x8

    goto/16 :goto_ac

    :sswitch_55
    const-string v2, "$zoneresidential_lvl2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_ac

    :cond_5e
    const/4 v1, 0x7

    goto :goto_ac

    :sswitch_60
    const-string v2, "$zoneindustrial_lvl2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_ac

    :cond_69
    const/4 v1, 0x6

    goto :goto_ac

    :sswitch_6b
    const-string v2, "$zonefarm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_ac

    :cond_74
    const/4 v1, 0x5

    goto :goto_ac

    :sswitch_76
    const-string v2, "$zonecommercial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_ac

    :cond_7f
    const/4 v1, 0x4

    goto :goto_ac

    :sswitch_81
    const-string v2, "$zonemilitary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_ac

    :cond_8a
    const/4 v1, 0x3

    goto :goto_ac

    :sswitch_8c
    const-string v2, "$zoneharbor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_ac

    :cond_95
    const/4 v1, 0x2

    goto :goto_ac

    :sswitch_97
    const-string v2, "$zonedestroyed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_ac

    :cond_a0
    const/4 v1, 0x1

    goto :goto_ac

    :sswitch_a2
    const-string v2, "$zonedecoration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_ac

    :cond_ab
    const/4 v1, 0x0

    :goto_ac
    packed-switch v1, :pswitch_data_10e

    return-void

    .line 64
    :pswitch_b0
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->OTHER:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 76
    :pswitch_b3
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->AIRPORT:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 40
    :pswitch_b6
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 58
    :pswitch_b9
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 46
    :pswitch_bc
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 55
    :pswitch_bf
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 61
    :pswitch_c2
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 49
    :pswitch_c5
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 43
    :pswitch_c8
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 73
    :pswitch_cb
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->MILITARY:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 52
    :pswitch_ce
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 67
    :pswitch_d1
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->DESTROYED:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    .line 70
    :pswitch_d4
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->DECORATION:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x7265d980 -> :sswitch_a2
        -0x6aadd1b7 -> :sswitch_97
        -0x228ff1a4 -> :sswitch_8c
        -0x199ab923 -> :sswitch_81
        -0xc4ad6e6 -> :sswitch_76
        0xc36e206 -> :sswitch_6b
        0xf37de86 -> :sswitch_60
        0x1a9ca67b -> :sswitch_55
        0x31778049 -> :sswitch_47
        0x3de81055 -> :sswitch_39
        0x4118d334 -> :sswitch_2b
        0x6bf340fb -> :sswitch_1d
        0x7b2caf40 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
    .end packed-switch
.end method

.method public resolveRci(I)Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 5

    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 89
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p1

    .line 90
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve rci "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_22
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p1

    .line 87
    :cond_25
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object p1
.end method
