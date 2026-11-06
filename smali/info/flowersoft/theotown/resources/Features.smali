###### Class info.flowersoft.theotown.resources.Features (info.flowersoft.theotown.resources.Features)
.class public Linfo/flowersoft/theotown/resources/Features;
.super Ljava/lang/Object;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;
    }
.end annotation


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/Features;


# instance fields
.field public final FEATURE_AIRPORT:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_BUILDINGS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_BUILDINGS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_BUILDINGS02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_CHRISTMAS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_CHRISTMAS_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DECO:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS03:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS04:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS05:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS06:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMONDS07:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DIAMOND_PROMOTION:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_DONATE:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_FIREWORK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_FIREWORK_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_FREEDOMBUILDINGS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_FREETUNNELS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_GET_MONEY:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_GET_RANK:[Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_LANDMARKS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_MILITARY:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_NO_ADS:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_PREMIUM:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_SERVICES:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_SLIME00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_SLOWSPEED:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_STARTER_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_TIME00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_TIME01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_TIME02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_TOURISM:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public final FEATURE_VALENTINESDAY00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

.field public draftResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->draftResolvers:Ljava/util/List;

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_noads00"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_NO_ADS:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_military00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_MILITARY:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_airport00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_AIRPORT:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_buildings00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_BUILDINGS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_buildings01"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_BUILDINGS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_buildings02"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_BUILDINGS02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_services00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_SERVICES:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_tourism00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_TOURISM:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 33
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_premium00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_PREMIUM:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_money00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_GET_MONEY:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const/16 v0, 0xa

    .line 37
    new-array v0, v0, [Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_GET_RANK:[Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const/4 v0, 0x0

    .line 38
    :goto_6c
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_GET_RANK:[Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    array-length v3, v1

    if-ge v0, v3, :cond_8c

    .line 39
    new-instance v3, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$feature_rank0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 43
    :cond_8c
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_donate00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DONATE:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds01"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 46
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds02"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds03"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS03:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 48
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds04"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS04:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds05"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS05:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds06"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS06:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamonds07"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS07:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_diamond_promotion00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMOND_PROMOTION:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 53
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_deco00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DECO:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_slowspeed00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_SLOWSPEED:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_time00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_TIME00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_time01"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_TIME01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_time02"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_TIME02:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_slime00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_SLIME00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_freetunnels00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREETUNNELS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_freefastspeed00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_christmas00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_CHRISTMAS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_firework00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FIREWORK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_valentinesday00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_VALENTINESDAY00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 66
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_freedombuildings00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEDOMBUILDINGS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_landmarks01"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_LANDMARKS01:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_starter_pack00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_STARTER_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 70
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_christmas_pack00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_CHRISTMAS_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    const-string v1, "$feature_firework_pack00"

    invoke-direct {v0, p0, v1, v2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FIREWORK_PACK00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/resources/Features;)Ljava/util/List;
    .registers 1

    .line 17
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/Features;->draftResolvers:Ljava/util/List;

    return-object p0
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 115
    sput-object v0, Linfo/flowersoft/theotown/resources/Features;->instance:Linfo/flowersoft/theotown/resources/Features;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/Features;
    .registers 1

    .line 119
    sget-object v0, Linfo/flowersoft/theotown/resources/Features;->instance:Linfo/flowersoft/theotown/resources/Features;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Linfo/flowersoft/theotown/resources/Features;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/Features;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/Features;->instance:Linfo/flowersoft/theotown/resources/Features;

    .line 122
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/Features;->instance:Linfo/flowersoft/theotown/resources/Features;

    return-object v0
.end method


# virtual methods
.method public canUnlockRank(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Z
    .registers 4

    .line 126
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 127
    iget p2, p2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-le p2, v0, :cond_22

    sub-int/2addr p2, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_GET_RANK:[Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    array-length v0, v0

    if-gt p2, v0, :cond_22

    const/16 p2, 0xb

    .line 129
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    instance-of p2, p2, Linfo/flowersoft/theotown/components/DefaultRequirement;

    if-eqz p2, :cond_22

    .line 130
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isTutorial()Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public getUnlockRankFeature(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 6

    const/16 v0, 0xb

    .line 134
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    .line 136
    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget p2, p2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-ge p1, p2, :cond_26

    sub-int v0, p2, p1

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_GET_RANK:[Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    array-length v2, v1

    if-le v0, v2, :cond_1a

    goto :goto_26

    :cond_1a
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 139
    aget-object p1, v1, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-object p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public isProbablyTestUser()Z
    .registers 3

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS05:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$100(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1e

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS06:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 89
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$100(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1e

    iget-object v0, p0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_DIAMONDS07:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 90
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$100(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)I

    move-result v0

    if-le v0, v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized load()V
    .registers 8

    monitor-enter p0

    .line 77
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.features"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 79
    :goto_e
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/Features;->draftResolvers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 80
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/Features;->draftResolvers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$200(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$102(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;I)I

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$200(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_last"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->access$302(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;J)J
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5b

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catchall_5b
    move-exception v0

    goto :goto_5f

    .line 85
    :cond_5d
    monitor-exit p0

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5b

    throw v0
.end method

###### Class info.flowersoft.theotown.resources.Features.AnonymousClass1 (info.flowersoft.theotown.resources.Features$1)
.class public synthetic Linfo/flowersoft/theotown/resources/Features$1;
.super Ljava/lang/Object;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/Features;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.resources.Features.MyDraftResolver (info.flowersoft.theotown.resources.Features$MyDraftResolver)
.class public Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;
.super Linfo/flowersoft/theotown/resources/DraftResolver;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/Features;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDraftResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/resources/DraftResolver<",
        "Linfo/flowersoft/theotown/draft/FeatureDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public count:I

.field public id:Ljava/lang/String;

.field public lastBought:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/Features;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->this$0:Linfo/flowersoft/theotown/resources/Features;

    .line 148
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/resources/DraftResolver;-><init>(Ljava/lang/String;)V

    .line 149
    iput-object p2, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->id:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Features;->access$400(Linfo/flowersoft/theotown/resources/Features;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;Linfo/flowersoft/theotown/resources/Features$1;)V
    .registers 4

    .line 142
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;-><init>(Linfo/flowersoft/theotown/resources/Features;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)I
    .registers 1

    .line 142
    iget p0, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->count:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;I)I
    .registers 2

    .line 142
    iput p1, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->count:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;)Ljava/lang/String;
    .registers 1

    .line 142
    iget-object p0, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;J)J
    .registers 3

    .line 142
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;->lastBought:J

    return-wide p1
.end method
