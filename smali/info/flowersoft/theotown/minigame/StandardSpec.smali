###### Class info.flowersoft.theotown.minigame.StandardSpec (info.flowersoft.theotown.minigame.StandardSpec)
.class public Linfo/flowersoft/theotown/minigame/StandardSpec;
.super Ljava/lang/Object;
.source "StandardSpec.java"

# interfaces
.implements Linfo/flowersoft/theotown/minigame/IdleGame$Spec;


# instance fields
.field public isInt:Z

.field public levelBase:D

.field public levelFactorLinear:D

.field public name:Ljava/lang/String;

.field public offset:D

.field public offsetLinear:D

.field public rankFactor:D

.field public rankFactorLinear:D

.field public scale:D

.field public stageBase:D

.field public stageFactorLinear:D

.field public unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZDDDD)V
    .registers 12

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->unit:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->isInt:Z

    .line 39
    iput-wide p4, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->stageFactorLinear:D

    .line 40
    iput-wide p6, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->levelFactorLinear:D

    .line 41
    iput-wide p8, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->offsetLinear:D

    .line 42
    iput-wide p10, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->rankFactorLinear:D

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(III)D
    .registers 14

    .line 52
    iget-wide v0, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->scale:D

    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->stageBase:D

    int-to-double v4, p1

    iget-wide v6, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->rankFactor:D

    int-to-double v8, p3

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->levelBase:D

    int-to-double p1, p2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->offset:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->stageFactorLinear:D

    iget-wide v6, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->rankFactorLinear:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->levelFactorLinear:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget-wide p1, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->offsetLinear:D

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public isInt()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Linfo/flowersoft/theotown/minigame/StandardSpec;->isInt:Z

    return v0
.end method
