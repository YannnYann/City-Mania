###### Class info.flowersoft.theotown.components.DefaultBudget (info.flowersoft.theotown.components.DefaultBudget)
.class public final Linfo/flowersoft/theotown/components/DefaultBudget;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;,
        Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;,
        Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;,
        Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;,
        Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;
    }
.end annotation


# static fields
.field public static final BUILDING_INCOME:[I

.field public static final INCOME_GAMEMODE_FACTOR:[F


# instance fields
.field public addedForDay:J

.field public final beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final budgetItemAccumulatorEarned:[J

.field public final budgetItemAccumulatorSpent:[J

.field public final budgetItemBase:[I

.field public final budgetItemBuildingsEarned:[J

.field public final budgetItemBuildingsSpent:[J

.field public final budgetItemHistoryEarned:[[J

.field public final budgetItemHistorySpent:[[J

.field public final budgetItemRoadsSpent:[J

.field public final budgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public carry:D

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public dayTarget:J

.field public doubleIncome:Z

.field public estateRaw:J

.field public expectedMonthlyIncome:D

.field public final gameModePriceFactors:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public lastMonthlyIncome:D

.field public final loanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Loan;",
            ">;"
        }
    .end annotation
.end field

.field public final log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;",
            ">;"
        }
    .end annotation
.end field

.field public monthlyIncome:D

.field public nextMonthlyIncome:D

.field public final placedPrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;",
            ">;"
        }
    .end annotation
.end field

.field public final taxFactor:[F

.field public final taxModifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;",
            ">;"
        }
    .end annotation
.end field

.field public final taxes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    .line 87
    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultBudget;->BUILDING_INCOME:[I

    const/4 v0, 0x3

    .line 88
    new-array v0, v0, [F

    fill-array-data v0, :array_28

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    return-void

    :array_12
    .array-data 4
        0x14
        0x32
        0xc8
        0x14
        0x32
        0xc8
        0x14
        0x32
        0xc8
    .end array-data

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .line 183
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 72
    const-string v0, "budget"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 77
    const-string v0, "beginner"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 82
    const-string v0, "game mode price factor"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->gameModePriceFactors:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 120
    const-string v0, "budget item"

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x1e

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v1, v3, v6

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    iput-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistoryEarned:[[J

    .line 122
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistorySpent:[[J

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBase:[I

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorEarned:[J

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorSpent:[J

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsEarned:[J

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsSpent:[J

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    .line 138
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    .line 140
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->nextMonthlyIncome:D

    .line 142
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->lastMonthlyIncome:D

    .line 144
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->expectedMonthlyIncome:D

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    move v0, v6

    .line 184
    :goto_99
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 185
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    iput v0, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :cond_ae
    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->carry:D

    const/16 v2, 0x9

    .line 189
    new-array v3, v2, [I

    iput-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    .line 190
    new-array v2, v2, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxFactor:[F

    move v2, v6

    .line 191
    :goto_bd
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_cf

    const/16 v4, 0x46

    .line 192
    aput v4, v3, v2

    .line 193
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxFactor:[F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 196
    :cond_cf
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->placedPrices:Ljava/util/List;

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    .line 199
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "building income"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 200
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    sget-object v4, Linfo/flowersoft/theotown/components/DefaultBudget;->BUILDING_INCOME:[I

    array-length v4, v4

    if-lt v3, v4, :cond_101

    move v3, v6

    .line 201
    :goto_f1
    sget-object v4, Linfo/flowersoft/theotown/components/DefaultBudget;->BUILDING_INCOME:[I

    array-length v5, v4

    if-ge v3, v5, :cond_101

    .line 202
    aget v5, v4, v3

    invoke-virtual {v2, v3, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(II)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f1

    .line 206
    :cond_101
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "income gamemode factor"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_126

    .line 207
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    sget-object v4, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    array-length v4, v4

    if-lt v3, v4, :cond_126

    .line 208
    :goto_114
    sget-object v3, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    array-length v4, v3

    if-ge v6, v4, :cond_126

    .line 209
    aget v4, v3, v6

    float-to-double v4, v4

    invoke-virtual {v2, v6, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    .line 213
    :cond_126
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 323
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;-><init>()V

    int-to-double v0, p1

    .line 325
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 217
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;-><init>()V

    .line 219
    :cond_6
    :goto_6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c8

    .line 220
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    move v4, v1

    .line 221
    :goto_11
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    array-length v5, v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_3c

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taxes "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 223
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    aput v5, v3, v4

    move-object v3, v6

    goto :goto_3c

    :cond_3a
    add-int/2addr v4, v2

    goto :goto_11

    :cond_3c
    :goto_3c
    if-eqz v3, :cond_66

    move v4, v1

    .line 229
    :goto_3f
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_66

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tax "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 231
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    aput v5, v3, v4

    goto :goto_67

    :cond_64
    add-int/2addr v4, v2

    goto :goto_3f

    :cond_66
    move-object v6, v3

    :goto_67
    if-eqz v6, :cond_6

    .line 238
    const-string v3, "estate"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 239
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    goto :goto_6

    .line 240
    :cond_79
    const-string v3, "loans"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 241
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 242
    :goto_84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 243
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 244
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    new-instance v4, Linfo/flowersoft/theotown/city/components/Loan;

    invoke-direct {v4, p1}, Linfo/flowersoft/theotown/city/components/Loan;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_84

    .line 247
    :cond_9b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_6

    .line 248
    :cond_a0
    const-string v3, "budget items"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 249
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 250
    :goto_ab
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_133

    .line 251
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move v3, v0

    .line 253
    :cond_b5
    :goto_b5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 254
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10d

    const-string v5, "history"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d6

    .line 280
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_b5

    :cond_d6
    if-ltz v3, :cond_109

    .line 266
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v4, v1

    .line 268
    :goto_dc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fb

    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistoryEarned:[[J

    aget-object v5, v5, v3

    array-length v6, v5

    if-ge v4, v6, :cond_fb

    .line 269
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 270
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistorySpent:[[J

    aget-object v5, v5, v3

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/2addr v4, v2

    goto :goto_dc

    .line 273
    :cond_fb
    :goto_fb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_105

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_fb

    .line 274
    :cond_105
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_b5

    .line 276
    :cond_109
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_b5

    .line 256
    :cond_10d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 257
    :goto_112
    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b5

    .line 258
    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/Draft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12c

    move v3, v5

    goto :goto_b5

    :cond_12c
    add-int/2addr v5, v2

    goto :goto_112

    .line 284
    :cond_12e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_ab

    .line 286
    :cond_133
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_6

    .line 287
    :cond_138
    const-string v3, "log"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 288
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 289
    :goto_143
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 290
    new-instance v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;

    invoke-direct {v3}, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;-><init>()V

    .line 291
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 292
    :goto_151
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 293
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1ca

    :goto_165
    move v4, v0

    goto :goto_192

    :sswitch_167
    const-string v5, "newValue"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_170

    goto :goto_165

    :cond_170
    const/4 v4, 0x3

    goto :goto_192

    :sswitch_172
    const-string v5, "tag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17b

    goto :goto_165

    :cond_17b
    const/4 v4, 0x2

    goto :goto_192

    :sswitch_17d
    const-string v5, "day"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_186

    goto :goto_165

    :cond_186
    move v4, v2

    goto :goto_192

    :sswitch_188
    const-string v5, "change"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_191

    goto :goto_165

    :cond_191
    move v4, v1

    :goto_192
    packed-switch v4, :pswitch_data_1dc

    .line 307
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_151

    .line 298
    :pswitch_199
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v4

    iput-wide v4, v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->newValue:D

    goto :goto_151

    .line 304
    :pswitch_1a0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->tag:Ljava/lang/String;

    goto :goto_151

    .line 301
    :pswitch_1a7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v4

    iput-wide v4, v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->day:D

    goto :goto_151

    .line 295
    :pswitch_1ae
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v4

    iput-wide v4, v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->change:D

    goto :goto_151

    .line 311
    :cond_1b5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 312
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_143

    .line 314
    :cond_1be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_6

    .line 316
    :cond_1c3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_6

    :cond_1c8
    return-void

    nop

    :sswitch_data_1ca
    .sparse-switch
        -0x5128ec50 -> :sswitch_188
        0x1839c -> :sswitch_17d
        0x1bf9a -> :sswitch_172
        0x5190fbb1 -> :sswitch_167
    .end sparse-switch

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_1ae
        :pswitch_1a7
        :pswitch_1a0
        :pswitch_199
    .end packed-switch
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/DefaultBudget;D)D
    .registers 3

    .line 67
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->nextMonthlyIncome:D

    return-wide p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/DefaultBudget;)J
    .registers 3

    .line 67
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->calculateMonthlyIncome()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/DefaultBudget;)[I
    .registers 1

    .line 67
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    return-object p0
.end method


# virtual methods
.method public addLoan(IJJ)Linfo/flowersoft/theotown/city/components/Loan;
    .registers 16

    .line 818
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 819
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    const-wide/16 v0, 0x1e

    int-to-long v4, p1

    mul-long/2addr v4, v0

    add-long/2addr v4, v2

    .line 822
    new-instance v1, Linfo/flowersoft/theotown/city/components/Loan;

    move-wide v8, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/city/components/Loan;-><init>(JJJJ)V

    .line 823
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-double p1, v8

    .line 825
    const-string p3, "take loan"

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    return-object v1
.end method

.method public final addPlacedPrice(DFF)V
    .registers 7

    .line 1133
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget$1;)V

    .line 1134
    invoke-static {v0, p3}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$302(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;F)F

    .line 1135
    invoke-static {v0, p4}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$402(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;F)F

    double-to-long p3, p1

    .line 1136
    invoke-static {v0, p3, p4}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$602(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;J)J

    .line 1137
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p3

    const/16 p4, 0xc65

    invoke-interface {p3, p4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$502(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;Ljava/lang/String;)Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMS()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$202(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;J)J

    .line 1139
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->placedPrices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTaxFactor(Ljava/lang/String;[F)V
    .registers 5

    if-eqz p2, :cond_18

    .line 1302
    array-length v0, p2

    const/16 v1, 0x9

    if-lt v0, v1, :cond_18

    .line 1303
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->removeTaxFactor(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;

    invoke-direct {v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;-><init>(Ljava/lang/String;[F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->recalculateTaxFactors()V

    return-void

    .line 1302
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal tax factor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addToLog(DLjava/lang/String;)V
    .registers 7

    .line 1280
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;-><init>()V

    .line 1281
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->newValue:D

    .line 1282
    iput-wide p1, v0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->change:D

    .line 1283
    iput-object p3, v0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->tag:Ljava/lang/String;

    .line 1284
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide p1

    long-to-double p1, p1

    iget-object p3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result p3

    float-to-double v1, p3

    add-double/2addr p1, v1

    iput-wide p1, v0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->day:D

    .line 1285
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    if-lt p1, p2, :cond_30

    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1286
    :cond_30
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final applyMonthlyPriceAdjustments([J)V
    .registers 8

    .line 871
    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-wide v1, p1, v0

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v4, p1, v4

    add-long/2addr v1, v4

    aput-wide v1, p1, v0

    .line 872
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 330
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x1

    .line 332
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 334
    new-instance p1, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/DefaultBudget$1;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    invoke-direct {p1, v0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public final calculateMonthlyIncome()J
    .registers 13

    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getIncomeItems(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 676
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 677
    iget-boolean v9, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->doubleIncome:Z

    if-eqz v9, :cond_27

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v9

    add-long/2addr v4, v9

    .line 679
    :cond_27
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->isModifyable()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 680
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyable()I

    move-result v9

    const/16 v10, 0x64

    .line 681
    invoke-virtual {v8, v10}, Linfo/flowersoft/theotown/components/BudgetItem;->setModifyable(I)V

    .line 682
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 683
    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/components/BudgetItem;->setModifyable(I)V

    goto :goto_d

    .line 685
    :cond_3f
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_d

    .line 689
    :cond_45
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getSpendingItems(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 690
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 691
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_4d

    .line 694
    :cond_64
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingDoubledIncomeMS()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7b

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7b

    const-wide/16 v0, 0x2

    mul-long/2addr v4, v0

    :cond_7b
    long-to-double v0, v6

    .line 696
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->expectedMonthlyIncome:D

    return-wide v4
.end method

.method public final calculateNeighborCosts()I
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1115
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 1116
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 1118
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v3

    int-to-long v4, v1

    .line 1119
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPowerTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    int-to-long v4, v1

    .line 1120
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getWaterTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    int-to-long v4, v1

    .line 1121
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/TradingRelation;->getWasteDisposalExport()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getWasteDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    int-to-long v4, v1

    .line 1122
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/TradingRelation;->getBodyDisposalExport()J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBodyDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide v1

    sub-long/2addr v4, v1

    long-to-int v1, v4

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_45
    return v1
.end method

.method public canAddLoan()Z
    .registers 3

    .line 835
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMaxLoanCount()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public canSpend(J)Z
    .registers 7

    .line 458
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v0

    long-to-double v2, p1

    cmpl-double v0, v0, v2

    if-gez v0, :cond_1e

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method public clearPlacedPrices()V
    .registers 2

    .line 1143
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->placedPrices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 504
    iget-object v1, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 505
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMS()J

    move-result-wide v10

    .line 507
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->placedPrices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 508
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 509
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;

    .line 510
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$200(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)J

    move-result-wide v2

    sub-long v2, v10, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_32

    .line 514
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 516
    :cond_32
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$300(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)F

    move-result v4

    .line 517
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$400(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)F

    move-result v5

    .line 518
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    .line 519
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v4, v5}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v8

    add-float/2addr v8, v7

    float-to-double v14, v4

    .line 520
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v4, v14

    float-to-double v14, v5

    .line 521
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 523
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 524
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v9

    .line 525
    invoke-virtual {v9, v6, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v14

    .line 526
    invoke-virtual {v9, v6, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v6

    .line 527
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 528
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v4, v5

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    .line 530
    :cond_83
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v15

    .line 531
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v16

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v5, v2, v4

    add-float/2addr v5, v4

    .line 532
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v4

    mul-float/2addr v5, v4

    sub-float v5, v6, v5

    mul-float/2addr v2, v2

    sub-float/2addr v3, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v3, v2

    .line 534
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 535
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 536
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;

    move-result-object v3

    sub-float v4, v14, v15

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object v2, v7

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 537
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;

    move-result-object v3

    add-float v4, v14, v15

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v15, v5

    .line 538
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;

    move-result-object v3

    sub-float v5, v15, v16

    move v4, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 539
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;

    move-result-object v3

    add-float v5, v15, v16

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 540
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$600(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_e2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_e4

    :cond_e2
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    :goto_e4
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 541
    invoke-static {v13}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;

    move-result-object v3

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v15

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    goto/16 :goto_10

    :cond_f7
    const/16 v2, 0xff

    .line 545
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 546
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public earn(DFFLjava/lang/String;)V
    .registers 7

    .line 468
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 469
    :cond_d
    invoke-virtual {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 470
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->addPlacedPrice(DFF)V

    return-void
.end method

.method public earn(DLjava/lang/String;)V
    .registers 6

    .line 462
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 463
    :cond_d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->addToLog(DLjava/lang/String;)V

    return-void
.end method

.method public finishPrepare()V
    .registers 1

    .line 344
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->finishPrepare()V

    .line 345
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->nextDay()V

    return-void
.end method

.method public final getAirplanePriceFactorPriceFactor()F
    .registers 3

    const v0, 0x3dcccccd    # 0.1f

    .line 117
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGameModePriceFactor()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public getBasePrice(Linfo/flowersoft/theotown/draft/ZoneDraft;)J
    .registers 4

    .line 712
    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->price:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getBodyDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J
    .registers 8

    neg-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_9

    const/4 p1, 0x5

    goto :goto_a

    :cond_9
    const/4 p1, 0x3

    :goto_a
    int-to-long p1, p1

    .line 1159
    div-long/2addr v0, p1

    const-wide/16 p1, 0xa

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public final getBudgetItemEarned(I)J
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 588
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistoryEarned:[[J

    aget-object v3, v3, p1

    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 589
    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return-wide v0
.end method

.method public final getBudgetItemSpent(I)J
    .registers 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 596
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistorySpent:[[J

    aget-object v3, v3, p1

    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 597
    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    return-wide v0
.end method

.method public final getBudgetItemsEarned()J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 604
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 605
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemEarned(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    return-wide v0
.end method

.method public final getBudgetItemsSpent()J
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 612
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 613
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemSpent(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    return-wide v0
.end method

.method public getBuildingIncome(II)J
    .registers 13

    .line 394
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget;->BUILDING_INCOME:[I

    aget v0, v0, p1

    int-to-double v0, v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    .line 399
    sget-object p2, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq p2, v3, :cond_34

    if-eq p2, v2, :cond_2f

    const/4 v2, 0x3

    if-eq p2, v2, :cond_28

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2f

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2f

    move-wide v2, v4

    goto :goto_39

    .line 403
    :cond_28
    sget-object p2, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    const/4 v2, 0x0

    aget p2, p2, v2

    :goto_2d
    float-to-double v2, p2

    goto :goto_39

    .line 410
    :cond_2f
    sget-object p2, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    aget p2, p2, v3

    goto :goto_2d

    .line 414
    :cond_34
    sget-object p2, Linfo/flowersoft/theotown/components/DefaultBudget;->INCOME_GAMEMODE_FACTOR:[F

    aget p2, p2, v2

    goto :goto_2d

    :goto_39
    add-double/2addr v0, v4

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    mul-double/2addr v0, v2

    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxFactor:[F

    aget p1, p2, p1

    float-to-double p1, p1

    mul-double/2addr v0, p1

    .line 424
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string p2, "boost"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 425
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string p2, "time last seconds"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 426
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->beginnerConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "boost value"

    invoke-virtual {v2, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 427
    sget-wide v6, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    cmp-long v8, v6, p1

    if-gez v8, :cond_7e

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-lez v8, :cond_7e

    sub-double/2addr v2, v4

    long-to-double v6, v6

    long-to-double p1, p1

    div-double/2addr v6, p1

    sub-double p1, v4, v6

    mul-double/2addr v2, p1

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 431
    :cond_7e
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getBuildingPriceFactor()F
    .registers 3

    const v0, 0x3e4ccccd    # 0.2f

    .line 108
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGameModePriceFactor()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public getDiamondPriceForMoney(J)I
    .registers 9

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    long-to-double v0, v0

    .line 474
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getExpectedMonthlyIncome()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f4

    div-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0xa

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getEstate()D
    .registers 5

    .line 435
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    .line 436
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 437
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->estateRaw:J

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExpectedMonthlyIncome()D
    .registers 5

    .line 482
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->expectedMonthlyIncome:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v0, v0, v2

    if-nez v0, :cond_b

    .line 483
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    .line 485
    :cond_b
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->expectedMonthlyIncome:D

    return-wide v0
.end method

.method public final getGameModePriceFactor()F
    .registers 5

    .line 97
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->gameModePriceFactors:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "easy"

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :goto_1e
    double-to-float v0, v0

    return v0

    .line 101
    :cond_20
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->gameModePriceFactors:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "medium"

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_1e

    .line 99
    :cond_29
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->gameModePriceFactors:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "hard"

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_1e
.end method

.method public final getGrowingPrice(JFII)J
    .registers 9

    int-to-long v0, p5

    mul-long/2addr v0, p1

    mul-int/2addr p4, p5

    add-int/lit8 v2, p5, -0x1

    mul-int/2addr p5, v2

    .line 814
    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    int-to-float p4, p4

    mul-float/2addr p3, p4

    long-to-float p1, p1

    mul-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getIncomeItems(Z)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/BudgetItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 876
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 878
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/People;

    .line 879
    iget-object v2, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 880
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v2

    .line 881
    new-instance v8, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v8, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 883
    iget-object v3, v1, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsEarned:[J

    const-wide/16 v9, 0x0

    invoke-static {v3, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    .line 885
    iget-object v3, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    .line 886
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->cachedValues()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    array-length v4, v4

    new-array v11, v4, [J

    .line 887
    new-instance v4, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    .line 888
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getMonthlyPrice()J

    move-result-wide v5

    cmp-long v12, v5, v9

    if-gez v12, :cond_42

    .line 890
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v12

    if-eqz v12, :cond_42

    .line 891
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v12

    iget-object v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v12, :cond_72

    .line 892
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v12, v11, v4

    sub-long/2addr v12, v5

    aput-wide v12, v11, v4

    goto :goto_42

    .line 894
    :cond_72
    iget-object v12, v1, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsEarned:[J

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    aget-wide v13, v12, v4

    sub-long/2addr v13, v5

    aput-wide v13, v12, v4

    goto :goto_42

    .line 899
    :cond_82
    iget-object v3, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 900
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getAirplanes()Ljava/util/List;

    move-result-object v3

    const/4 v12, 0x0

    move-wide v5, v9

    move v4, v12

    .line 902
    :goto_93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_b5

    .line 903
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Linfo/flowersoft/theotown/components/airport/Airplane;

    long-to-double v5, v5

    .line 904
    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v13

    iget v13, v13, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    int-to-float v13, v13

    const v14, 0x40dccccd    # 6.9f

    mul-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    add-double/2addr v5, v13

    double-to-long v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 906
    :cond_b5
    sget-object v13, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-wide v14, v11, v3

    add-long/2addr v14, v5

    aput-wide v14, v11, v3

    const-wide/16 v3, 0x3e8

    cmp-long v3, v5, v3

    if-ltz v3, :cond_d5

    .line 907
    iget-object v3, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 908
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v4, "airport_build"

    invoke-interface {v3, v4}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 911
    :cond_d5
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->calculateNeighborCosts()I

    move-result v3

    if-gez v3, :cond_dd

    move v14, v12

    goto :goto_de

    :cond_dd
    move v14, v3

    .line 914
    :goto_de
    invoke-virtual {v1, v11}, Linfo/flowersoft/theotown/components/DefaultBudget;->applyMonthlyPriceAdjustments([J)V

    .line 919
    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v3

    const v4, 0x3b9aca00

    invoke-static {v3, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v5

    const/4 v3, 0x1

    .line 920
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v6

    invoke-static {v6, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v15

    const/4 v6, 0x2

    .line 921
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v0

    invoke-static {v0, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    move-wide/from16 v16, v9

    .line 922
    invoke-virtual {v2, v12, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v9

    invoke-static {v9, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v9

    .line 923
    invoke-virtual {v2, v3, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v10

    invoke-static {v10, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v10

    .line 924
    invoke-virtual {v2, v6, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v3

    invoke-static {v3, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v3

    .line 925
    invoke-virtual {v2, v12, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v6

    invoke-static {v6, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    const/4 v1, 0x1

    .line 926
    invoke-virtual {v2, v1, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v1

    invoke-static {v1, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    move-object/from16 v18, v11

    const/4 v11, 0x2

    .line 927
    invoke-virtual {v2, v11, v12}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v2

    invoke-static {v2, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    add-int v11, v9, v6

    add-int v4, v10, v1

    add-int v12, v3, v2

    move-object/from16 v21, v8

    if-le v11, v5, :cond_167

    int-to-long v8, v9

    move-wide/from16 v22, v8

    int-to-long v8, v5

    mul-long v22, v22, v8

    move-wide/from16 v24, v8

    int-to-long v8, v11

    move-wide/from16 v26, v8

    .line 934
    div-long v8, v22, v26

    long-to-int v8, v8

    const v9, 0x3b9aca00

    const/4 v11, 0x0

    invoke-static {v8, v11, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v8

    move/from16 v19, v10

    int-to-long v9, v6

    mul-long v9, v9, v24

    .line 935
    div-long v9, v9, v26

    long-to-int v6, v9

    const v9, 0x3b9aca00

    invoke-static {v6, v11, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    move v10, v8

    move v8, v9

    :goto_165
    move v9, v6

    goto :goto_16f

    :cond_167
    move/from16 v19, v10

    const v8, 0x3b9aca00

    const/4 v11, 0x0

    move v10, v9

    goto :goto_165

    :goto_16f
    if-le v4, v15, :cond_198

    move/from16 v20, v9

    move/from16 v6, v19

    int-to-long v8, v6

    move/from16 v22, v12

    int-to-long v11, v15

    mul-long/2addr v8, v11

    move/from16 v24, v5

    int-to-long v4, v4

    .line 938
    div-long/2addr v8, v4

    long-to-int v6, v8

    const/4 v8, 0x0

    const v9, 0x3b9aca00

    invoke-static {v6, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    int-to-long v8, v1

    mul-long/2addr v8, v11

    .line 939
    div-long/2addr v8, v4

    long-to-int v1, v8

    const/4 v8, 0x0

    const v9, 0x3b9aca00

    invoke-static {v1, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    move v11, v1

    move/from16 v1, v22

    :goto_196
    move v12, v6

    goto :goto_1a3

    :cond_198
    move/from16 v24, v5

    move/from16 v20, v9

    move/from16 v6, v19

    move v9, v8

    move v8, v11

    move v11, v1

    move v1, v12

    goto :goto_196

    :goto_1a3
    if-le v1, v0, :cond_1c4

    int-to-long v3, v3

    int-to-long v5, v0

    mul-long/2addr v3, v5

    int-to-long v8, v1

    .line 942
    div-long/2addr v3, v8

    long-to-int v1, v3

    const v3, 0x3b9aca00

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1

    int-to-long v3, v2

    mul-long/2addr v3, v5

    .line 943
    div-long/2addr v3, v8

    long-to-int v2, v3

    const/4 v8, 0x0

    const v9, 0x3b9aca00

    invoke-static {v2, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v2

    move/from16 v19, v1

    :goto_1c1
    move v5, v0

    move v9, v2

    goto :goto_1c7

    :cond_1c4
    move/from16 v19, v3

    goto :goto_1c1

    .line 946
    :goto_1c7
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x0

    const/16 v6, 0x608

    move-object/from16 v2, p0

    move-object/from16 v1, p0

    move/from16 v23, v8

    move v8, v5

    move/from16 v5, v24

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x1

    const/16 v6, 0x607

    move-object/from16 v1, p0

    move v5, v15

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x2

    const/16 v6, 0x60d

    move-object/from16 v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x0

    const/16 v6, 0xd2d

    move-object/from16 v1, p0

    move v5, v10

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x1

    const/16 v6, 0xd28

    move-object/from16 v1, p0

    move v5, v12

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x2

    const/16 v6, 0xd2b

    move-object/from16 v1, p0

    move/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x0

    const/16 v6, 0x944

    move-object/from16 v1, p0

    move/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x1

    const/16 v6, 0x941

    move-object/from16 v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v3, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v4, 0x2

    const/16 v6, 0x940

    move-object/from16 v1, p0

    move v5, v9

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x685

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x33b

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x92d

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x6e1

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x2a6

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x8ff

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x80e

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->WATER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x9bd

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0xda1

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x947

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x54e

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x499

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x6df

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x17

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x7d2

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 974
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x9dc

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 973
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 976
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x2c3

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 975
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 978
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0x4af

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 977
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 980
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-wide v2, v18, v2

    const/16 v4, 0xa19

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 979
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    const/16 v2, 0x569

    int-to-long v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v23

    .line 984
    :goto_3f6
    iget-object v0, v1, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_42b

    .line 985
    iget-object v0, v1, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsEarned:[J

    aget-wide v2, v0, v12

    if-eqz p1, :cond_409

    .line 987
    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemEarned(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_409
    cmp-long v0, v2, v16

    if-lez v0, :cond_424

    .line 990
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    iget-object v4, v1, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Draft;

    move-object/from16 v5, v21

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_426

    :cond_424
    move-object/from16 v5, v21

    :goto_426
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v21, v5

    goto :goto_3f6

    :cond_42b
    return-object v7
.end method

.method public getLoanMonthlyPrice()J
    .registers 6

    .line 851
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "loan interest rate"

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 852
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanTermMonths()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoanPayBackPrice(Linfo/flowersoft/theotown/city/components/Loan;)J
    .registers 12

    .line 856
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 857
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 858
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getTargetDay()J

    move-result-wide v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getIssuedDay()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 859
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getIssuedDay()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 860
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getPricePerMonth()J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x1e

    div-long/2addr v4, v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getEstate()J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 861
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getPricePerMonth()J

    move-result-wide v8

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    mul-long/2addr v4, v0

    .line 862
    div-long/2addr v4, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Loan;->getEstate()J

    move-result-wide v0

    add-long/2addr v4, v0

    sub-long/2addr v4, v8

    return-wide v4
.end method

.method public getLoanTermMonths()I
    .registers 4

    .line 847
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "loan term months"

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLoanValue()J
    .registers 7

    .line 843
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "loan value base"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "loan value factor"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLoans()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Loan;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    return-object v0
.end method

.method public getLog()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    return-object v0
.end method

.method public final getMS()J
    .registers 3

    .line 1129
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxLoanCount()I
    .registers 5

    .line 839
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "loan count base"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "loan count factor"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMoneyForDiamonds(I)D
    .registers 6

    .line 478
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getExpectedMonthlyIncome()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide v2, 0x407f400000000000L    # 500.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getMonthlyIncome()D
    .registers 8

    .line 489
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    .line 490
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->calculateMonthlyIncome()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    .line 491
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->nextMonthlyIncome:D

    .line 494
    :cond_11
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->lastMonthlyIncome:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1b

    .line 495
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->lastMonthlyIncome:D

    .line 498
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v0

    float-to-double v1, v0

    .line 499
    iget-wide v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    mul-double/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    float-to-double v3, v3

    iget-wide v5, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->lastMonthlyIncome:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemsEarned()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemsSpent()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getPowerTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J
    .registers 8

    neg-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_a

    const/16 p1, 0xf

    goto :goto_c

    :cond_a
    const/16 p1, 0xa

    :goto_c
    int-to-long p1, p1

    .line 1147
    div-long/2addr v0, p1

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J
    .registers 13

    .line 716
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isBoughtInFeature(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    if-nez v0, :cond_13

    const-wide/16 p1, 0x0

    return-wide p1

    .line 717
    :cond_13
    iget v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->priceFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1f

    .line 718
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBuildingPriceFactor()F

    move-result v0

    :cond_1f
    move v4, v0

    .line 719
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    .line 720
    iget-wide v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->price:J

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide v2

    iget-object v5, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    .line 721
    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;)J
    .registers 10

    .line 797
    iget v0, p1, Linfo/flowersoft/theotown/draft/BusStopDraft;->price:I

    int-to-long v0, v0

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/BusStopDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide v3

    add-long/2addr v0, v3

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;I)J
    .registers 11

    .line 801
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 803
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getAirplanes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v6, v1

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/airport/Airplane;

    .line 804
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v1

    if-ne v1, p1, :cond_19

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 806
    :cond_2e
    iget p1, p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->price:I

    int-to-long v3, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getAirplanePriceFactorPriceFactor()F

    move-result v5

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;I)J
    .registers 11

    int-to-long v0, p2

    .line 781
    iget v2, p1, Linfo/flowersoft/theotown/draft/PipeDraft;->price:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/PipeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/RailDraft;II)J
    .registers 12

    int-to-long v0, p2

    .line 789
    iget v2, p1, Linfo/flowersoft/theotown/draft/RailDraft;->price:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/RailDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;I)J
    .registers 5

    int-to-long v0, p2

    .line 777
    iget p1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    int-to-long p1, p1

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/RoadDraft;IIII)J
    .registers 17

    .line 725
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->priceFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_c

    .line 726
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getRoadPriceFactor()F

    move-result v0

    :cond_c
    move v4, v0

    .line 727
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    .line 730
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    int-to-long v2, v0

    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    move-object v1, p0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide v7

    add-int/2addr v5, p4

    .line 733
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    int-to-long v2, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide v2

    add-long/2addr v7, v2

    add-int/2addr v5, p3

    .line 736
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    int-to-long v2, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide v2

    add-long/2addr v7, v2

    add-int/2addr v5, p2

    .line 739
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelPrice:I

    int-to-long v2, v0

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGrowingPrice(JFII)J

    move-result-wide v2

    add-long v0, v7, v2

    .line 741
    iget-object v6, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    move-object v5, p0

    move v7, p2

    move v8, p3

    move v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;)J
    .registers 10

    .line 793
    iget v0, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->price:I

    int-to-long v0, v0

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide v3

    add-long/2addr v0, v3

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/WireDraft;I)J
    .registers 11

    int-to-long v0, p2

    .line 785
    iget v2, p1, Linfo/flowersoft/theotown/draft/WireDraft;->price:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/WireDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J
    .registers 11

    .line 701
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBasePrice(Linfo/flowersoft/theotown/draft/ZoneDraft;)J

    move-result-wide v0

    .line 702
    iget v2, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->priceFactor:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_10

    .line 703
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getZonePriceFactor()F

    move-result v2

    .line 704
    :cond_10
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq p1, v3, :cond_20

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne p1, v3, :cond_23

    :cond_20
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 705
    :cond_23
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v3

    iget v4, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v3, v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    long-to-float v2, v0

    mul-float/2addr v3, v2

    .line 707
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    int-to-long v0, p2

    mul-long/2addr v0, v2

    .line 708
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final getPriceAdditionByDrafts([Linfo/flowersoft/theotown/draft/Draft;IIII)J
    .registers 18

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_86

    add-int v2, p2, p3

    add-int v2, v2, p4

    add-int v2, v2, p5

    const/4 v3, 0x0

    .line 750
    :goto_b
    array-length v4, p1

    if-ge v3, v4, :cond_86

    .line 751
    aget-object v4, p1, v3

    .line 752
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v5, :cond_1d

    .line 753
    check-cast v4, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;I)J

    move-result-wide v4

    :goto_1a
    add-long/2addr v0, v4

    goto/16 :goto_83

    .line 754
    :cond_1d
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v5, :cond_28

    .line 755
    check-cast v4, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;I)J

    move-result-wide v4

    goto :goto_1a

    .line 756
    :cond_28
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v5, :cond_33

    .line 757
    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v4

    goto :goto_1a

    .line 758
    :cond_33
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v5, :cond_46

    .line 759
    move-object v7, v4

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    move-object v6, p0

    move v8, p2

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RoadDraft;IIII)J

    move-result-wide v4

    goto :goto_1a

    .line 760
    :cond_46
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v5, :cond_51

    .line 761
    check-cast v4, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v4

    goto :goto_1a

    .line 762
    :cond_51
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/RailDraft;

    if-eqz v5, :cond_60

    .line 763
    check-cast v4, Linfo/flowersoft/theotown/draft/RailDraft;

    add-int v5, p2, p5

    add-int v7, p3, p4

    invoke-virtual {p0, v4, v5, v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RailDraft;II)J

    move-result-wide v4

    goto :goto_1a

    .line 764
    :cond_60
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz v5, :cond_6d

    .line 765
    check-cast v4, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;)J

    move-result-wide v4

    :goto_6a
    int-to-long v7, v2

    mul-long/2addr v4, v7

    goto :goto_1a

    .line 766
    :cond_6d
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz v5, :cond_78

    .line 767
    check-cast v4, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;)J

    move-result-wide v4

    goto :goto_6a

    .line 768
    :cond_78
    instance-of v5, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v5, :cond_83

    .line 769
    check-cast v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;I)J

    move-result-wide v4

    goto :goto_1a

    :cond_83
    :goto_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_86
    return-wide v0
.end method

.method public getPriceForTerrain(Z)J
    .registers 4

    .line 0
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final getRoadPriceFactor()F
    .registers 3

    const v0, 0x3a83126f    # 0.001f

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGameModePriceFactor()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public getSpendingItems(Z)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/BudgetItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [J

    .line 1002
    new-instance v3, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1004
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    .line 1005
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v5

    .line 1006
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    .line 1008
    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsSpent:[J

    const-wide/16 v7, 0x0

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 1009
    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 1011
    new-instance v6, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v6, v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3b
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 1012
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getMonthlyPrice()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-lez v11, :cond_3b

    .line 1014
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 1015
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v11, :cond_6b

    .line 1016
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v11, v2, v6

    sub-long/2addr v11, v9

    aput-wide v11, v2, v6

    goto :goto_3b

    .line 1018
    :cond_6b
    iget-object v11, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsSpent:[J

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    aget-wide v12, v11, v6

    add-long/2addr v12, v9

    aput-wide v12, v11, v6

    goto :goto_3b

    :cond_7b
    const/4 v4, 0x0

    move v6, v4

    move-wide v9, v7

    .line 1023
    :goto_7e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_ae

    .line 1024
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez v11, :cond_8d

    :goto_8c
    goto :goto_9a

    .line 1027
    :cond_8d
    iget-object v11, v11, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v12, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    if-gtz v12, :cond_94

    goto :goto_8c

    .line 1030
    :cond_94
    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-nez v11, :cond_9d

    int-to-long v11, v12

    sub-long/2addr v9, v11

    :goto_9a
    move-wide/from16 v16, v7

    goto :goto_a9

    .line 1033
    :cond_9d
    iget-object v13, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    iget v11, v11, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    aget-wide v14, v13, v11

    move-wide/from16 v16, v7

    int-to-long v7, v12

    add-long/2addr v14, v7

    aput-wide v14, v13, v11

    :goto_a9
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v7, v16

    goto :goto_7e

    :cond_ae
    move-wide/from16 v16, v7

    .line 1037
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "road spending"

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/JSONUtil;->optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1039
    invoke-virtual {v5, v4, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v11

    const/4 v8, 0x1

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    .line 1040
    invoke-virtual {v5, v8, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v6

    const/4 v15, 0x2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 1041
    invoke-virtual {v5, v15, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v22

    neg-long v9, v9

    long-to-double v9, v9

    mul-double v22, v22, v9

    add-double v22, v22, v13

    .line 1040
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v6, v13

    mul-double/2addr v11, v6

    .line 1039
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    neg-long v6, v6

    move v9, v4

    .line 1043
    :goto_e2
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    array-length v11, v10

    if-ge v9, v11, :cond_125

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 1044
    invoke-virtual {v5, v4, v11, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v18

    move/from16 v20, v9

    move-object/from16 v21, v10

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 1045
    invoke-virtual {v5, v8, v11, v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v9

    .line 1046
    invoke-virtual {v5, v15, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(ID)D

    move-result-wide v24

    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    aget-wide v11, v4, v20

    long-to-double v11, v11

    mul-double v24, v24, v11

    add-double v24, v24, v13

    .line 1045
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v9, v13

    mul-double v18, v18, v9

    .line 1044
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    aput-wide v9, v21, v20

    .line 1047
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsSpent:[J

    aget-wide v9, v4, v20

    iget-object v11, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemRoadsSpent:[J

    aget-wide v18, v11, v20

    add-long v9, v9, v18

    aput-wide v9, v4, v20

    add-int/lit8 v9, v20, 0x1

    const/4 v4, 0x0

    goto :goto_e2

    .line 1050
    :cond_125
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 1051
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v4

    .line 1053
    iget-object v8, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    .line 1054
    :goto_138
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_158

    .line 1055
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/components/Loan;

    .line 1056
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/components/Loan;->getTargetDay()J

    move-result-wide v11

    cmp-long v11, v4, v11

    if-lez v11, :cond_150

    .line 1057
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_138

    :cond_150
    int-to-long v11, v9

    .line 1059
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/components/Loan;->getPricePerMonth()J

    move-result-wide v9

    sub-long/2addr v11, v9

    long-to-int v9, v11

    goto :goto_138

    .line 1063
    :cond_158
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->calculateNeighborCosts()I

    move-result v4

    if-lez v4, :cond_15f

    const/4 v4, 0x0

    .line 1066
    :cond_15f
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->applyMonthlyPriceAdjustments([J)V

    .line 1068
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    const/16 v8, 0x649

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->BUS_DEPOT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x685

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x33b

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->PARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x92d

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->SPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x6e1

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->PUBLIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x2a6

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->RELIGION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x8ff

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->ENERGY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x80e

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->WATER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x20

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x9bd

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0xda1

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x947

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->EDUCATION:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x54e

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->AWARD:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x499

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x6df

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x17

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x7d2

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 1088
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x9dc

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 1087
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->TERRAIN:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 1090
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x2c3

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 1089
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->WASTE_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 1092
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v8, 0x4af

    invoke-direct {v5, v0, v8, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 1091
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v5, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    sget-object v6, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 1094
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v2, v6

    const/16 v2, 0xa19

    invoke-direct {v5, v0, v2, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 1093
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    const/16 v5, 0x4dc

    int-to-long v6, v9

    invoke-direct {v2, v0, v5, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    const/16 v5, 0x569

    int-to-long v6, v4

    invoke-direct {v2, v0, v5, v6, v7}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 1100
    :goto_2eb
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_31a

    .line 1101
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBuildingsSpent:[J

    aget-wide v5, v2, v4

    if-eqz p1, :cond_2fe

    .line 1103
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBudgetItemSpent(I)J

    move-result-wide v7

    add-long/2addr v5, v7

    :cond_2fe
    cmp-long v2, v5, v16

    if-lez v2, :cond_317

    .line 1106
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;

    iget-object v7, v0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v3, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v7

    neg-long v5, v5

    invoke-direct {v2, v0, v7, v5, v6}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_317
    add-int/lit8 v4, v4, 0x1

    goto :goto_2eb

    :cond_31a
    return-object v1
.end method

.method public getTaxes(Linfo/flowersoft/theotown/draft/ZoneDraft;I)F
    .registers 5

    .line 652
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v0, :cond_19

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->oldId:I

    if-ltz p1, :cond_19

    const/4 v0, 0x3

    if-lt p1, v0, :cond_e

    goto :goto_19

    .line 655
    :cond_e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    aget p1, v1, p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    return p1

    :cond_19
    :goto_19
    const/4 p1, 0x0

    return p1
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getWasteDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J
    .registers 8

    neg-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_a

    const/16 p1, 0x4b

    goto :goto_c

    :cond_a
    const/16 p1, 0x32

    :goto_c
    int-to-long p1, p1

    .line 1155
    div-long/2addr v0, p1

    const-wide/16 p1, 0xa

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public getWaterTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J
    .registers 8

    neg-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_a

    const/16 p1, 0x4b

    goto :goto_c

    :cond_a
    const/16 p1, 0x32

    :goto_c
    int-to-long p1, p1

    .line 1151
    div-long/2addr v0, p1

    return-wide v0
.end method

.method public final getZonePriceFactor()F
    .registers 3

    const v0, 0x3b23d70a    # 0.0025f

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getGameModePriceFactor()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public nextDay()V
    .registers 12

    .line 558
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    .line 560
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->dayTarget:J

    long-to-double v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->addedForDay:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    const-wide/16 v0, 0x0

    .line 561
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->addedForDay:J

    .line 563
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->consumeDoubleIncomeDays()Z

    move-result v2

    iput-boolean v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->doubleIncome:Z

    .line 566
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    iput-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->lastMonthlyIncome:D

    .line 567
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->nextMonthlyIncome:D

    iput-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->monthlyIncome:D

    .line 569
    iget-wide v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->carry:D

    add-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    if-ltz v6, :cond_3d

    add-double/2addr v4, v2

    rem-double/2addr v4, v7

    .line 570
    iput-wide v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->carry:D

    goto :goto_43

    :cond_3d
    add-double/2addr v4, v2

    neg-double v4, v4

    rem-double/2addr v4, v7

    neg-double v4, v4

    .line 572
    iput-wide v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->carry:D

    .line 575
    :goto_43
    iget-wide v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->carry:D

    add-double/2addr v2, v4

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->dayTarget:J

    const/4 v2, 0x0

    .line 577
    :goto_4e
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistoryEarned:[[J

    array-length v4, v3

    if-ge v2, v4, :cond_76

    .line 578
    aget-object v3, v3, v2

    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBase:[I

    aget v5, v4, v2

    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorEarned:[J

    aget-wide v7, v6, v2

    aput-wide v7, v3, v5

    .line 579
    iget-object v7, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistorySpent:[[J

    aget-object v7, v7, v2

    iget-object v8, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorSpent:[J

    aget-wide v9, v8, v2

    aput-wide v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    .line 580
    array-length v3, v3

    rem-int/2addr v5, v3

    aput v5, v4, v2

    .line 581
    aput-wide v0, v6, v2

    .line 582
    aput-wide v0, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_76
    return-void
.end method

.method public nextMonth()V
    .registers 1

    .line 0
    return-void
.end method

.method public nextYear()V
    .registers 1

    .line 0
    return-void
.end method

.method public notifyAboutBudgetItemContribution(Linfo/flowersoft/theotown/draft/Draft;J)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 620
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 621
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    const/4 v1, -0x1

    :goto_1d
    if-ltz v1, :cond_38

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_2d

    .line 628
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorEarned:[J

    aget-wide v2, p1, v1

    add-long/2addr v2, p2

    aput-wide v2, p1, v1

    goto :goto_36

    :cond_2d
    if-gez p1, :cond_36

    .line 630
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemAccumulatorSpent:[J

    aget-wide v2, p1, v1

    sub-long/2addr v2, p2

    aput-wide v2, p1, v1

    :cond_36
    :goto_36
    const/4 p1, 0x1

    return p1

    :cond_38
    return v0
.end method

.method public payBackLoan(Linfo/flowersoft/theotown/city/components/Loan;)V
    .registers 4

    .line 866
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanPayBackPrice(Linfo/flowersoft/theotown/city/components/Loan;)J

    move-result-wide v0

    long-to-double v0, v0

    const-string p1, "pay back loan"

    invoke-virtual {p0, v0, v1, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    return-void
.end method

.method public final recalculateTaxFactors()V
    .registers 8

    .line 1319
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxFactor:[F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v0, 0x0

    move v1, v0

    .line 1321
    :goto_9
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1322
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;

    iget-object v2, v2, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;->factors:[F

    move v3, v0

    .line 1323
    :goto_1c
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxFactor:[F

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    .line 1324
    aget v5, v4, v3

    aget v6, v2, v3

    mul-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2e
    return-void
.end method

.method public removeTaxFactor(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1309
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1310
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1311
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->recalculateTaxFactors()V

    return-void

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    const-string v0, "estate"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 351
    :goto_f
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tax "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 355
    :cond_33
    const-string v1, "loans"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 356
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->loanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Loan;

    .line 357
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 358
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/city/components/Loan;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 359
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_42

    .line 361
    :cond_58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 363
    const-string v1, "budget items"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v1, v0

    .line 364
    :goto_65
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_bc

    .line 365
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 366
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 367
    const-string v3, "id"

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v3

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v3, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 368
    const-string v2, "history"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v0

    .line 369
    :goto_8d
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistoryEarned:[[J

    aget-object v3, v3, v1

    array-length v4, v3

    if-ge v2, v4, :cond_b3

    .line 370
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBase:[I

    aget v4, v4, v1

    add-int/2addr v4, v2

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-wide v4, v3, v4

    invoke-interface {p1, v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 371
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemHistorySpent:[[J

    aget-object v3, v3, v1

    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->budgetItemBase:[I

    aget v4, v4, v1

    add-int/2addr v4, v2

    array-length v5, v3

    rem-int/2addr v4, v5

    aget-wide v4, v3, v4

    invoke-interface {p1, v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 373
    :cond_b3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 374
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 376
    :cond_bc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 378
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_118

    .line 379
    const-string v1, "log"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 380
    :goto_d0
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_115

    .line 381
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->log:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;

    .line 382
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 383
    const-string v2, "change"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-wide v3, v1, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->change:D

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 384
    const-string v2, "newValue"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-wide v3, v1, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->newValue:D

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 385
    const-string v2, "day"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-wide v3, v1, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->day:D

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 386
    const-string v2, "tag"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v1, v1, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->tag:Ljava/lang/String;

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 387
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    .line 389
    :cond_115
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_118
    return-void
.end method

.method public setEstate(D)V
    .registers 7

    .line 441
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxModifications:Ljava/util/List;

    .line 442
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 443
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->estateRaw:J

    return-void
.end method

.method public setTaxes(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)V
    .registers 6

    .line 665
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v0, :cond_1b

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->oldId:I

    if-ltz p1, :cond_1b

    const/4 v0, 0x3

    if-lt p1, v0, :cond_e

    goto :goto_1b

    .line 668
    :cond_e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->taxes:[I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    aput p2, v1, p1

    :cond_1b
    :goto_1b
    return-void
.end method

.method public spend(DFFLjava/lang/String;)V
    .registers 7

    .line 452
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 453
    :cond_d
    invoke-virtual {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    neg-double p1, p1

    .line 454
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->addPlacedPrice(DFF)V

    return-void
.end method

.method public spend(DLjava/lang/String;)V
    .registers 5

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    neg-double p1, p1

    .line 448
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    return-void
.end method

.method public update()V
    .registers 7

    .line 551
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->dayTarget:J

    long-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->addedForDay:J

    sub-long/2addr v0, v2

    .line 552
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    long-to-double v4, v0

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    .line 553
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->addedForDay:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget;->addedForDay:J

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.AnonymousClass1 (info.flowersoft.theotown.components.DefaultBudget$1)
.class Linfo/flowersoft/theotown/components/DefaultBudget$1;
.super Ljava/lang/Object;
.source "DefaultBudget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultBudget;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$1;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 337
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$1;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->access$100(Linfo/flowersoft/theotown/components/DefaultBudget;)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->access$002(Linfo/flowersoft/theotown/components/DefaultBudget;D)D

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.AnonymousClass2 (info.flowersoft.theotown.components.DefaultBudget$2)
.class public synthetic Linfo/flowersoft/theotown/components/DefaultBudget$2;
.super Ljava/lang/Object;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
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

    .line 97
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultBudget$2;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.BudgetLog (info.flowersoft.theotown.components.DefaultBudget$BudgetLog)
.class public Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;
.super Ljava/lang/Object;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BudgetLog"
.end annotation


# instance fields
.field public change:D

.field public day:D

.field public newValue:D

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Day "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->day:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->change:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  new value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->newValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "   tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.PlacedPrice (info.flowersoft.theotown.components.DefaultBudget$PlacedPrice)
.class public Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;
.super Ljava/lang/Object;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlacedPrice"
.end annotation


# instance fields
.field public price:J

.field public text:Ljava/lang/String;

.field public time:J

.field public tx:F

.field public ty:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget$1;)V
    .registers 2

    .line 1162
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)J
    .registers 3

    .line 1162
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->time:J

    return-wide v0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;J)J
    .registers 3

    .line 1162
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->time:J

    return-wide p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)F
    .registers 1

    .line 1162
    iget p0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->tx:F

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;F)F
    .registers 2

    .line 1162
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->tx:F

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)F
    .registers 1

    .line 1162
    iget p0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->ty:F

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;F)F
    .registers 2

    .line 1162
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->ty:F

    return p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)Ljava/lang/String;
    .registers 1

    .line 1162
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->text:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1162
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->text:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;)J
    .registers 3

    .line 1162
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->price:J

    return-wide v0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;J)J
    .registers 3

    .line 1162
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$PlacedPrice;->price:J

    return-wide p1
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.SimpleBudgetItem (info.flowersoft.theotown.components.DefaultBudget$SimpleBudgetItem)
.class Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;
.super Linfo/flowersoft/theotown/components/BudgetItem;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBudgetItem"
.end annotation


# instance fields
.field public final amount:J

.field public final title:I

.field public titleRaw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V
    .registers 5

    .line 1176
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/BudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    .line 1177
    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->title:I

    .line 1178
    iput-wide p3, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->amount:J

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/lang/String;J)V
    .registers 6

    const/4 v0, 0x0

    .line 1182
    invoke-direct {p0, p1, v0, p3, p4}, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;IJ)V

    .line 1183
    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->titleRaw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()J
    .registers 3

    .line 1188
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->amount:J

    return-wide v0
.end method

.method public getNameId()I
    .registers 2

    .line 1193
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->title:I

    return v0
.end method

.method public getNameRaw()Ljava/lang/String;
    .registers 2

    .line 1197
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->titleRaw:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .registers 5

    .line 1202
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$SimpleBudgetItem;->amount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.TaxModification (info.flowersoft.theotown.components.DefaultBudget$TaxModification)
.class Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;
.super Ljava/lang/Object;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaxModification"
.end annotation


# instance fields
.field public factors:[F

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[F)V
    .registers 3

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;->id:Ljava/lang/String;

    .line 1335
    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxModification;->factors:[F

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultBudget.TaxPayerBudgetItem (info.flowersoft.theotown.components.DefaultBudget$TaxPayerBudgetItem)
.class Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;
.super Linfo/flowersoft/theotown/components/BudgetItem;
.source "DefaultBudget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultBudget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaxPayerBudgetItem"
.end annotation


# instance fields
.field public final count:I

.field public final idx:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final title:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/components/DefaultBudget;Linfo/flowersoft/theotown/draft/ZoneDraft;III)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1211
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 1212
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/BudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    .line 1213
    iput p5, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->count:I

    .line 1214
    iput p6, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->title:I

    .line 1215
    iget p1, p3, Linfo/flowersoft/theotown/draft/ZoneDraft;->oldId:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p4

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->idx:I

    return-void
.end method


# virtual methods
.method public getAmount()J
    .registers 5

    .line 1220
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->idx:I

    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->count:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBuildingIncome(II)J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->access$800(Linfo/flowersoft/theotown/components/DefaultBudget;)[I

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->idx:I

    aget v2, v2, v3

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getExtra()I
    .registers 2

    .line 1265
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->count:I

    return v0
.end method

.method public getMaxModifyableValue()I
    .registers 2

    .line 0
    const/16 v0, 0xc8

    return v0
.end method

.method public getMinModifyableValue()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getModifyStep()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getModifyable()I
    .registers 3

    .line 1240
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->access$800(Linfo/flowersoft/theotown/components/DefaultBudget;)[I

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->idx:I

    aget v0, v0, v1

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 1225
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->title:I

    return v0
.end method

.method public getNameRaw()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isModifyable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setModifyable(I)V
    .registers 4

    .line 1245
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->this$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->access$800(Linfo/flowersoft/theotown/components/DefaultBudget;)[I

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultBudget$TaxPayerBudgetItem;->idx:I

    aput p1, v0, v1

    return-void
.end method
