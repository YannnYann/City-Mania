###### Class info.flowersoft.theotown.city.components.Loan (info.flowersoft.theotown.city.components.Loan)
.class public Linfo/flowersoft/theotown/city/components/Loan;
.super Ljava/lang/Object;
.source "Loan.java"


# instance fields
.field public estate:J

.field public issuedDay:J

.field public pricePerMonth:J

.field public targetDay:J


# direct methods
.method public constructor <init>(JJJJ)V
    .registers 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/components/Loan;->issuedDay:J

    .line 23
    iput-wide p3, p0, Linfo/flowersoft/theotown/city/components/Loan;->targetDay:J

    .line 24
    iput-wide p5, p0, Linfo/flowersoft/theotown/city/components/Loan;->pricePerMonth:J

    .line 25
    iput-wide p7, p0, Linfo/flowersoft/theotown/city/components/Loan;->estate:J

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 30
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "issued day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->issuedDay:J

    goto :goto_3

    .line 33
    :cond_1c
    const-string v1, "target day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->targetDay:J

    goto :goto_3

    .line 35
    :cond_2b
    const-string v1, "price per month"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->pricePerMonth:J

    goto :goto_3

    .line 37
    :cond_3a
    const-string v1, "estate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 38
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->estate:J

    goto :goto_3

    .line 40
    :cond_49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    :cond_4d
    return-void
.end method


# virtual methods
.method public getEstate()J
    .registers 3

    .line 65
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->estate:J

    return-wide v0
.end method

.method public getIssuedDay()J
    .registers 3

    .line 53
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->issuedDay:J

    return-wide v0
.end method

.method public getPricePerMonth()J
    .registers 3

    .line 61
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->pricePerMonth:J

    return-wide v0
.end method

.method public getTargetDay()J
    .registers 3

    .line 57
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->targetDay:J

    return-wide v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-string v0, "issued day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/components/Loan;->issuedDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 47
    const-string v0, "target day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/components/Loan;->targetDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 48
    const-string v0, "price per month"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/components/Loan;->pricePerMonth:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 49
    const-string v0, "estate"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Loan;->estate:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
