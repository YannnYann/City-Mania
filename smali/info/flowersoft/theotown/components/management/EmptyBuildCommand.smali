###### Class info.flowersoft.theotown.components.management.EmptyBuildCommand (info.flowersoft.theotown.components.management.EmptyBuildCommand)
.class public Linfo/flowersoft/theotown/components/management/EmptyBuildCommand;
.super Linfo/flowersoft/theotown/components/management/BuildCommand;
.source "EmptyBuildCommand.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V
    .registers 5

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/management/BuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    return-void
.end method


# virtual methods
.method public run()Linfo/flowersoft/theotown/components/BuildCommandResult;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
