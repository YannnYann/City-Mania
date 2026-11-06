###### Class com.ironsource.D2 (com.ironsource.D2)
.class public interface abstract Lcom/ironsource/D2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/ironsource/D2;ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;ILjava/lang/Object;)V
    .registers 19

    if-nez p9, :cond_16

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    move-object v8, v0

    :goto_8
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    goto :goto_12

    :cond_f
    move-object/from16 v8, p7

    goto :goto_8

    .line 2
    :goto_12
    invoke-interface/range {v1 .. v8}, Lcom/ironsource/D2;->a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onAuctionFailed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/ironsource/D2;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;ILjava/lang/Object;)V
    .registers 29

    if-nez p14, :cond_26

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    move-object v13, v0

    :goto_a
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    goto :goto_22

    :cond_1f
    move-object/from16 v13, p12

    goto :goto_a

    .line 1
    :goto_22
    invoke-interface/range {v1 .. v13}, Lcom/ironsource/D2;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V

    return-void

    :cond_26
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onAuctionSuccess"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(ILjava/lang/String;ILjava/lang/String;JLcom/ironsource/A;)V
.end method

.method public abstract a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Lcom/ironsource/y2;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;Lcom/ironsource/A;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            "Lcom/ironsource/A;",
            ")V"
        }
    .end annotation
.end method
