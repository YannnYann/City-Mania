###### Class info.flowersoft.theotown.components.management.BuildCommand (info.flowersoft.theotown.components.management.BuildCommand)
.class public abstract Linfo/flowersoft/theotown/components/management/BuildCommand;
.super Ljava/lang/Object;
.source "BuildCommand.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

.field public finalActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

.field public level:I

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public pressure:F

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->finalActions:Ljava/util/List;

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 34
    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    .line 35
    iput-object p3, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 36
    iput-object p4, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    return-void
.end method


# virtual methods
.method public final getFinalActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->finalActions:Ljava/util/List;

    return-object v0
.end method

.method public hasFinalActions()Z
    .registers 2

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->finalActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract run()Linfo/flowersoft/theotown/components/BuildCommandResult;
.end method

.method public final setTarget(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)V
    .registers 4

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 41
    iput p2, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    .line 42
    iput p3, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    return-void
.end method
