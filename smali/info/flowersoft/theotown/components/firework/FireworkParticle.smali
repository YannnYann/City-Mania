###### Class info.flowersoft.theotown.components.firework.FireworkParticle (info.flowersoft.theotown.components.firework.FireworkParticle)
.class public Linfo/flowersoft/theotown/components/firework/FireworkParticle;
.super Ljava/lang/Object;
.source "FireworkParticle.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public restLifeTime:I

.field public x:F

.field public xSpeed:F

.field public y:F

.field public ySpeed:F

.field public z:F

.field public zSpeed:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFFI)V
    .registers 9

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 32
    iput p2, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    .line 33
    iput p3, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    .line 34
    iput p4, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    .line 35
    iput p5, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->xSpeed:F

    .line 36
    iput p6, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->ySpeed:F

    .line 37
    iput p7, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    .line 38
    iput p8, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->restLifeTime:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method


# virtual methods
.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_96

    goto :goto_36

    :sswitch_16
    const-string v2, "vel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v2, "pos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v1, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    packed-switch v1, :pswitch_data_a4

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 58
    :pswitch_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 59
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->xSpeed:F

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->ySpeed:F

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    .line 62
    :goto_52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_52

    .line 63
    :cond_5c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    .line 50
    :pswitch_60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 51
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    .line 53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    .line 54
    :goto_75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_75

    .line 55
    :cond_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 46
    :pswitch_84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto/16 :goto_0

    :cond_94
    return-void

    nop

    :sswitch_data_96
    .sparse-switch
        0xd1b -> :sswitch_2c
        0x1b254 -> :sswitch_21
        0x1c79d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_84
        :pswitch_60
        :pswitch_3d
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 76
    const-string v0, "pos"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 77
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->x:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 78
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->y:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 79
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->z:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    const-string v0, "vel"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 83
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->xSpeed:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->ySpeed:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/components/firework/FireworkParticle;->zSpeed:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
