###### Class info.flowersoft.theotown.city.components.Disaster (info.flowersoft.theotown.city.components.Disaster)
.class public abstract Linfo/flowersoft/theotown/city/components/Disaster;
.super Ljava/lang/Object;
.source "Disaster.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public silent:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->silent:Z

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 38
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-direct {v1, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract getAutoProbability()F
.end method

.method public getGameModeDependentValue(Linfo/flowersoft/theotown/util/json/JSONObject;F)F
    .registers 6

    .line 72
    sget-object v0, Linfo/flowersoft/theotown/city/components/Disaster$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    .line 79
    const-string v0, "easy"

    float-to-double v1, p2

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    :goto_1b
    double-to-float p1, p1

    return p1

    .line 76
    :cond_1d
    const-string v0, "medium"

    float-to-double v1, p2

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    goto :goto_1b

    .line 74
    :cond_25
    const-string v0, "hard"

    float-to-double v1, p2

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    goto :goto_1b
.end method

.method public abstract getLocation()[I
.end method

.method public abstract isActive()Z
.end method

.method public abstract isAutoEnabled()Z
.end method

.method public final isSilent()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->silent:Z

    return v0
.end method

.method public issue()Z
    .registers 4

    .line 52
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/city/components/Disaster;->issue(II)Z

    move-result v0

    return v0
.end method

.method public abstract issue(II)Z
.end method

.method public abstract load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public saveMe()Z
    .registers 2

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v0

    return v0
.end method

.method public setSilent(Z)V
    .registers 2

    .line 68
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->silent:Z

    return-void
.end method

.method public abstract update()V
.end method

###### Class info.flowersoft.theotown.city.components.Disaster.AnonymousClass1 (info.flowersoft.theotown.city.components.Disaster$1)
.class public synthetic Linfo/flowersoft/theotown/city/components/Disaster$1;
.super Ljava/lang/Object;
.source "Disaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/components/Disaster;
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

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/city/components/Disaster$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

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
    sget-object v0, Linfo/flowersoft/theotown/city/components/Disaster$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/city/components/Disaster$1;->$SwitchMap$info$flowersoft$theotown$city$GameMode:[I

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
