###### Class io.bidmachine.utils.data.SmartDataConverter (io.bidmachine.utils.data.SmartDataConverter)
.class public Lio/bidmachine/utils/data/SmartDataConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/utils/data/DataConverter;


# instance fields
.field public final castDataConverter:Lio/bidmachine/utils/data/DataConverter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/bidmachine/utils/data/CastDataConverter;

    invoke-direct {v0}, Lio/bidmachine/utils/data/CastDataConverter;-><init>()V

    iput-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    return-void
.end method


# virtual methods
.method public toBooleanOrNull(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_14

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toBooleanOrNull(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 5
    :cond_c
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    :goto_14
    return-object p2

    .line 10
    :cond_15
    :try_start_15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 12
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public toDoubleOrNull(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_2c

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toDoubleOrNull(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 5
    :cond_c
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toIntegerOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1d
    invoke-interface {p0, p1}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 14
    :try_start_23
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 16
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-object p2
.end method

.method public toFloatOrNull(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_2c

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toFloatOrNull(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 5
    :cond_c
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toIntegerOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1d
    invoke-interface {p0, p1}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 12
    :try_start_23
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-object p2
.end method

.method public toIntegerOrNull(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_3f

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toIntegerOrNull(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 5
    :cond_c
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toDoubleOrNull(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toFloatOrNull(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 16
    :try_start_36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_3b

    return-object p1

    :catch_3b
    move-exception p1

    .line 18
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_3f
    :goto_3f
    return-object p2
.end method

.method public toStringOrNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    return-object p2

    .line 1
    :cond_3
    iget-object v0, p0, Lio/bidmachine/utils/data/SmartDataConverter;->castDataConverter:Lio/bidmachine/utils/data/DataConverter;

    invoke-interface {v0, p1}, Lio/bidmachine/utils/data/DataConverter;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 6
    :cond_c
    :try_start_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-object p2
.end method
