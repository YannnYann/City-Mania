###### Class io.bidmachine.utils.data.DataConverter (io.bidmachine.utils.data.DataConverter)
.class public interface abstract Lio/bidmachine/utils/data/DataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public toBoolean(Ljava/lang/Object;Z)Z
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lio/bidmachine/utils/data/DataConverter;->toBooleanOrNull(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method public toBooleanOrNull(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lio/bidmachine/utils/data/DataConverter;->toBooleanOrNull(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public abstract toBooleanOrNull(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public toDoubleOrNull(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lio/bidmachine/utils/data/DataConverter;->toDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public abstract toDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
.end method

.method public toFloat(Ljava/lang/Object;F)F
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lio/bidmachine/utils/data/DataConverter;->toFloatOrNull(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method public toFloatOrNull(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lio/bidmachine/utils/data/DataConverter;->toFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public abstract toFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
.end method

.method public toInteger(Ljava/lang/Object;I)I
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Lio/bidmachine/utils/data/DataConverter;->toIntegerOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_b
    return p2
.end method

.method public toIntegerOrNull(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lio/bidmachine/utils/data/DataConverter;->toIntegerOrNull(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract toIntegerOrNull(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
.end method

.method public toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method
