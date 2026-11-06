###### Class info.flowersoft.theotown.components.decoration.Decorator (info.flowersoft.theotown.components.decoration.Decorator)
.class public abstract Linfo/flowersoft/theotown/components/decoration/Decorator;
.super Ljava/lang/Object;
.source "Decorator.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    .line 19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public abstract canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
.end method

.method public abstract decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
.end method

.method public getProbability()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
