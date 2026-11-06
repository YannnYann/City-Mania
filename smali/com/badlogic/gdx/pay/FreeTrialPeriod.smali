###### Class com.badlogic.gdx.pay.FreeTrialPeriod (com.badlogic.gdx.pay.FreeTrialPeriod)
.class public final Lcom/badlogic/gdx/pay/FreeTrialPeriod;
.super Ljava/lang/Object;
.source "FreeTrialPeriod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    }
.end annotation


# instance fields
.field public final numberOfUnits:I

.field public final unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->numberOfUnits:I

    .line 41
    iput-object p2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    if-eq v3, v2, :cond_10

    goto :goto_20

    .line 58
    :cond_10
    check-cast p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    .line 60
    iget v2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->numberOfUnits:I

    iget v3, p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->numberOfUnits:I

    if-eq v2, v3, :cond_19

    return v1

    .line 61
    :cond_19
    iget-object v2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    iget-object p1, p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    if-ne v2, p1, :cond_20

    return v0

    :cond_20
    :goto_20
    return v1
.end method

.method public getNumberOfUnits()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->numberOfUnits:I

    return v0
.end method

.method public getUnit()Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->numberOfUnits:I

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->unit:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.badlogic.gdx.pay.FreeTrialPeriod.PeriodUnit (com.badlogic.gdx.pay.FreeTrialPeriod$PeriodUnit)
.class public final enum Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
.super Ljava/lang/Enum;
.source "FreeTrialPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/FreeTrialPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeriodUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;


# direct methods
.method public static synthetic $values()[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .registers 4

    .line 17
    sget-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    sget-object v1, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    sget-object v2, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    sget-object v3, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    filled-new-array {v0, v1, v2, v3}, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    .line 19
    new-instance v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v1, "MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v1, "WEEK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    .line 21
    new-instance v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v1, "YEAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    .line 17
    invoke-static {}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->$values()[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->$VALUES:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(C)Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .registers 4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_30

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x57

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x59

    if-ne p0, v0, :cond_13

    .line 32
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    .line 34
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Character not mapped to PeriodUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2a
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    .line 30
    :cond_2d
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    .line 26
    :cond_30
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .registers 2

    .line 17
    const-class v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .registers 1

    .line 17
    sget-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->$VALUES:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object v0
.end method
