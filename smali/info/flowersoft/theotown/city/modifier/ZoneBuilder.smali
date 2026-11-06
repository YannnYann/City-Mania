###### Class info.flowersoft.theotown.city.modifier.ZoneBuilder (info.flowersoft.theotown.city.modifier.ZoneBuilder)
.class public Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;
.super Ljava/lang/Object;
.source "ZoneBuilder.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public price:J

.field public radius:I

.field public sx:I

.field public sy:I

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public tx:I

.field public ty:I

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public build()V
    .registers 5

    .line 83
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    sub-int/2addr v0, v1

    :goto_5
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tx:I

    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3b

    .line 84
    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sy:I

    sub-int/2addr v1, v2

    :goto_f
    iget v2, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->ty:I

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_38

    .line 85
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v2, v3, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 86
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v2, v3, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3b
    return-void
.end method

.method public getPrice()J
    .registers 3

    .line 50
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->price:J

    return-wide v0
.end method

.method public isBuildable()Z
    .registers 9

    .line 55
    iget v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tx:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    add-int/2addr v3, v4

    const/4 v5, 0x1

    if-gt v0, v3, :cond_5f

    .line 56
    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sy:I

    sub-int/2addr v3, v4

    :goto_12
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->ty:I

    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    add-int/2addr v6, v4

    if-gt v3, v6, :cond_5c

    .line 57
    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sx:I

    if-lt v0, v6, :cond_29

    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tx:I

    if-gt v0, v6, :cond_29

    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sy:I

    if-lt v3, v6, :cond_29

    if-gt v3, v4, :cond_29

    move v4, v5

    goto :goto_2a

    :cond_29
    move v4, v1

    .line 58
    :goto_2a
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v0, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 59
    iget-object v6, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v0, v3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v6

    .line 62
    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v7

    if-nez v7, :cond_43

    if-eqz v4, :cond_43

    return v1

    :cond_43
    if-eqz v6, :cond_53

    .line 70
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v4, v6, :cond_59

    if-eqz v7, :cond_59

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_56
    if-eqz v4, :cond_59

    return v1

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 78
    :cond_5f
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->price:J

    return v5
.end method

.method public setArea(IIII)V
    .registers 6

    .line 43
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sx:I

    .line 44
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->sy:I

    .line 45
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->tx:I

    .line 46
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->ty:I

    return-void
.end method

.method public setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3

    .line 38
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 39
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useZoneRadius:Z

    if-eqz v0, :cond_9

    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->radius:I

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->radius:I

    return-void
.end method
