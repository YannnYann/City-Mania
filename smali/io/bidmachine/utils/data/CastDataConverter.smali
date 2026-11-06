###### Class io.bidmachine.utils.data.CastDataConverter (io.bidmachine.utils.data.CastDataConverter)
.class public Lio/bidmachine/utils/data/CastDataConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/data/DataConverter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBooleanOrNull(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_7
    return-object p2
.end method

.method public toDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Ljava/lang/Double;

    return-object p1

    :cond_7
    return-object p2
.end method

.method public toFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Ljava/lang/Float;

    return-object p1

    :cond_7
    return-object p2
.end method

.method public toIntegerOrNull(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_7
    return-object p2
.end method

.method public toStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_7
    return-object p2
.end method
