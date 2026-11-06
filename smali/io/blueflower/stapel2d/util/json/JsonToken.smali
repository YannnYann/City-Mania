###### Class io.blueflower.stapel2d.util.json.JsonToken (io.blueflower.stapel2d.util.json.JsonToken)
.class public final Lio/blueflower/stapel2d/util/json/JsonToken;
.super Ljava/lang/Object;
.source "JsonToken.java"


# direct methods
.method public static isNumber(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_22

    const/16 v0, 0x9

    if-eq p0, v0, :cond_22

    const/4 v0, 0x7

    if-eq p0, v0, :cond_22

    const/16 v0, 0xa

    if-eq p0, v0, :cond_22

    const/16 v0, 0xe

    if-eq p0, v0, :cond_22

    const/16 v0, 0xf

    if-eq p0, v0, :cond_22

    const/16 v0, 0x10

    if-eq p0, v0, :cond_22

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    return p0

    :cond_22
    :goto_22
    const/4 p0, 0x1

    return p0
.end method
