###### Class j$.time.zone.i (j$.time.zone.i)
.class final Lj$/time/zone/i;
.super Lj$/time/zone/j;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 6

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 462
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 463
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 465
    :cond_18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lj$/time/zone/i;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected final c(Ljava/lang/String;)Lj$/time/zone/f;
    .registers 5

    .line 475
    iget-object v0, p0, Lj$/time/zone/i;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 476
    new-instance v0, Lj$/time/zone/f;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/zone/f;-><init>(Ljava/util/TimeZone;)V

    return-object v0

    .line 478
    :cond_12
    new-instance v0, Lj$/time/zone/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a built-in time zone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 478
    throw v0
.end method

.method protected final d()Ljava/util/Set;
    .registers 2

    .line 470
    iget-object v0, p0, Lj$/time/zone/i;->d:Ljava/util/Set;

    return-object v0
.end method
