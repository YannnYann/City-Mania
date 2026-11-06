###### Class j$.time.zone.f (j$.time.zone.f)
.class public final Lj$/time/zone/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final i:[J

.field private static final j:[Lj$/time/zone/e;

.field private static final k:[Lj$/time/LocalDateTime;

.field private static final l:[Lj$/time/zone/b;

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final a:[J

.field private final b:[Lj$/time/ZoneOffset;

.field private final c:[J

.field private final d:[Lj$/time/LocalDateTime;

.field private final e:[Lj$/time/ZoneOffset;

.field private final f:[Lj$/time/zone/e;

.field private final g:Ljava/util/TimeZone;

.field private final transient h:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 164
    new-array v1, v0, [J

    sput-object v1, Lj$/time/zone/f;->i:[J

    .line 168
    new-array v1, v0, [Lj$/time/zone/e;

    sput-object v1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    .line 173
    new-array v1, v0, [Lj$/time/LocalDateTime;

    sput-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    .line 789
    new-array v0, v0, [Lj$/time/zone/b;

    sput-object v0, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    return-void
.end method

.method private constructor <init>(Lj$/time/ZoneOffset;)V
    .registers 4

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 320
    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    .line 321
    aput-object p1, v0, v1

    .line 322
    sget-object p1, Lj$/time/zone/f;->i:[J

    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    .line 323
    iput-object p1, p0, Lj$/time/zone/f;->c:[J

    .line 324
    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    .line 325
    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 326
    sget-object p1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .registers 5

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 332
    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 333
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Lj$/time/zone/f;->i(I)Lj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 334
    sget-object v1, Lj$/time/zone/f;->i:[J

    iput-object v1, p0, Lj$/time/zone/f;->a:[J

    .line 335
    iput-object v1, p0, Lj$/time/zone/f;->c:[J

    .line 336
    sget-object v1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object v1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    .line 337
    iput-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 338
    sget-object v0, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    iput-object v0, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 339
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method private constructor <init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/e;)V
    .registers 11

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    iput-object p1, p0, Lj$/time/zone/f;->a:[J

    .line 286
    iput-object p2, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 287
    iput-object p3, p0, Lj$/time/zone/f;->c:[J

    .line 288
    iput-object p4, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 289
    iput-object p5, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 291
    array-length p1, p3

    if-nez p1, :cond_1c

    .line 292
    sget-object p1, Lj$/time/zone/f;->k:[Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    goto :goto_65

    .line 295
    :cond_1c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 296
    :goto_22
    array-length p5, p3

    if-ge p2, p5, :cond_57

    .line 297
    aget-object p5, p4, p2

    add-int/lit8 v0, p2, 0x1

    .line 298
    aget-object v1, p4, v0

    .line 299
    new-instance v2, Lj$/time/zone/b;

    aget-wide v3, p3, p2

    invoke-direct {v2, v3, v4, p5, v1}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    .line 300
    invoke-virtual {v2}, Lj$/time/zone/b;->W()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 301
    invoke-virtual {v2}, Lj$/time/zone/b;->r()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v2}, Lj$/time/zone/b;->p()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 304
    :cond_47
    invoke-virtual {v2}, Lj$/time/zone/b;->p()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v2}, Lj$/time/zone/b;->r()Lj$/time/LocalDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_55
    move p2, v0

    goto :goto_22

    .line 308
    :cond_57
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lj$/time/LocalDateTime;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj$/time/LocalDateTime;

    iput-object p1, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    :goto_65
    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    return-void
.end method

.method private static a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;
    .registers 4

    .line 767
    invoke-virtual {p1}, Lj$/time/zone/b;->r()Lj$/time/LocalDateTime;

    move-result-object v0

    .line 768
    invoke-virtual {p1}, Lj$/time/zone/b;->W()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 769
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->Z(Lj$/time/LocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 770
    invoke-virtual {p1}, Lj$/time/zone/b;->S()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 772
    :cond_15
    invoke-virtual {p1}, Lj$/time/zone/b;->p()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->Z(Lj$/time/LocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_3f

    .line 775
    :cond_20
    invoke-virtual {p1}, Lj$/time/zone/b;->J()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 778
    :cond_25
    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->Z(Lj$/time/LocalDateTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 779
    invoke-virtual {p1}, Lj$/time/zone/b;->J()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 781
    :cond_30
    invoke-virtual {p1}, Lj$/time/zone/b;->p()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/LocalDateTime;->Z(Lj$/time/LocalDateTime;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 782
    invoke-virtual {p1}, Lj$/time/zone/b;->S()Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    return-object p1
.end method

.method private b(I)[Lj$/time/zone/b;
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 798
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 799
    iget-object v3, v0, Lj$/time/zone/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lj$/time/zone/b;

    if-eqz v4, :cond_13

    return-object v4

    :cond_13
    const/4 v5, 0x0

    .line 804
    iget-object v6, v0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v6, :cond_b0

    .line 805
    sget-object v7, Lj$/time/zone/f;->l:[Lj$/time/zone/b;

    const/16 v8, 0x708

    if-ge v1, v8, :cond_1f

    return-object v7

    :cond_1f
    add-int/lit8 v8, v1, -0x1

    .line 808
    invoke-static {v8}, Lj$/time/LocalDateTime;->a0(I)Lj$/time/LocalDateTime;

    move-result-object v8

    .line 810
    iget-object v9, v0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object v5, v9, v5

    invoke-interface {v8, v5}, Lj$/time/chrono/e;->Y(Lj$/time/ZoneOffset;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v12, v8, v10

    .line 811
    invoke-virtual {v6, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    const-wide/32 v12, 0x1e7cb00

    add-long/2addr v12, v8

    :goto_39
    cmp-long v14, v8, v12

    if-gez v14, :cond_a4

    const-wide/32 v14, 0x76a700

    add-long/2addr v14, v8

    move-wide/from16 v16, v10

    mul-long v10, v14, v16

    .line 816
    invoke-virtual {v6, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    if-eq v5, v10, :cond_9f

    :goto_4b
    sub-long v10, v14, v8

    const-wide/16 v18, 0x1

    cmp-long v10, v10, v18

    if-lez v10, :cond_6c

    add-long v10, v14, v8

    move/from16 v19, v5

    const-wide/16 v4, 0x2

    .line 819
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    mul-long v10, v4, v16

    .line 820
    invoke-virtual {v6, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    move/from16 v11, v19

    if-ne v10, v11, :cond_69

    move-wide v8, v4

    goto :goto_6a

    :cond_69
    move-wide v14, v4

    :goto_6a
    move v5, v11

    goto :goto_4b

    :cond_6c
    move v11, v5

    mul-long v4, v8, v16

    .line 826
    invoke-virtual {v6, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    if-eq v4, v11, :cond_76

    goto :goto_77

    :cond_76
    move-wide v8, v14

    .line 829
    :goto_77
    invoke-static {v11}, Lj$/time/zone/f;->i(I)Lj$/time/ZoneOffset;

    move-result-object v4

    mul-long v10, v8, v16

    .line 830
    invoke-virtual {v6, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 831
    invoke-static {v5}, Lj$/time/zone/f;->i(I)Lj$/time/ZoneOffset;

    move-result-object v10

    .line 832
    invoke-static {v8, v9, v10}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result v11

    if-ne v11, v1, :cond_a1

    .line 833
    array-length v11, v7

    add-int/lit8 v11, v11, 0x1

    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lj$/time/zone/b;

    .line 834
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    new-instance v14, Lj$/time/zone/b;

    invoke-direct {v14, v8, v9, v4, v10}, Lj$/time/zone/b;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v14, v7, v11

    goto :goto_a1

    :cond_9f
    move v11, v5

    move-wide v8, v14

    :cond_a1
    :goto_a1
    move-wide/from16 v10, v16

    goto :goto_39

    :cond_a4
    const/16 v4, 0x77c

    if-gt v4, v1, :cond_af

    const/16 v4, 0x834

    if-ge v1, v4, :cond_af

    .line 842
    invoke-virtual {v3, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    return-object v7

    .line 847
    :cond_b0
    iget-object v4, v0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v6, v4

    new-array v6, v6, [Lj$/time/zone/b;

    .line 848
    :goto_b5
    array-length v7, v4

    if-ge v5, v7, :cond_c3

    .line 849
    aget-object v7, v4, v5

    invoke-virtual {v7, v1}, Lj$/time/zone/e;->a(I)Lj$/time/zone/b;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    :cond_c3
    const/16 v5, 0x834

    if-ge v1, v5, :cond_ca

    .line 852
    invoke-virtual {v3, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    return-object v6
.end method

.method private static c(JLj$/time/ZoneOffset;)I
    .registers 5

    .line 1155
    invoke-virtual {p2}, Lj$/time/ZoneOffset;->b0()I

    move-result p2

    int-to-long v0, p2

    add-long/2addr p0, v0

    const p2, 0x15180

    int-to-long v0, p2

    .line 0
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide p0

    .line 1157
    invoke-static {p0, p1}, Lj$/time/h;->h0(J)Lj$/time/h;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/h;->a0()I

    move-result p0

    return p0
.end method

.method private e(Lj$/time/LocalDateTime;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    const/4 v2, 0x0

    iget-object v3, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v3, :cond_43

    .line 691
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->T()I

    move-result v4

    invoke-direct {p0, v4}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v4

    .line 692
    array-length v5, v4

    if-nez v5, :cond_25

    .line 696
    aget-object v0, v1, v2

    .line 697
    invoke-interface {p1, v0}, Lj$/time/chrono/e;->Y(Lj$/time/ZoneOffset;)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 696
    invoke-static {p1}, Lj$/time/zone/f;->i(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 701
    :cond_25
    array-length v1, v4

    :goto_26
    if-ge v2, v1, :cond_42

    aget-object v0, v4, v2

    .line 702
    invoke-static {p1, v0}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    instance-of v5, v3, Lj$/time/zone/b;

    if-nez v5, :cond_41

    invoke-virtual {v0}, Lj$/time/zone/b;->S()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_41

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_26

    :cond_41
    :goto_41
    return-object v3

    :cond_42
    return-object v0

    .line 709
    :cond_43
    iget-object v3, p0, Lj$/time/zone/f;->c:[J

    array-length v3, v3

    if-nez v3, :cond_4b

    .line 710
    aget-object p1, v1, v2

    return-object p1

    .line 713
    :cond_4b
    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v1, v1

    iget-object v3, p0, Lj$/time/zone/f;->d:[Lj$/time/LocalDateTime;

    if-lez v1, :cond_83

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    .line 714
    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->W(Lj$/time/LocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 715
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->T()I

    move-result v1

    invoke-direct {p0, v1}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object v1

    .line 717
    array-length v3, v1

    :goto_66
    if-ge v2, v3, :cond_82

    aget-object v0, v1, v2

    .line 718
    invoke-static {p1, v0}, Lj$/time/zone/f;->a(Lj$/time/LocalDateTime;Lj$/time/zone/b;)Ljava/lang/Object;

    move-result-object v4

    .line 719
    instance-of v5, v4, Lj$/time/zone/b;

    if-nez v5, :cond_81

    invoke-virtual {v0}, Lj$/time/zone/b;->S()Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_81

    :cond_7d
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_66

    :cond_81
    :goto_81
    return-object v4

    :cond_82
    return-object v0

    .line 727
    :cond_83
    invoke-static {v3, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    .line 728
    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    if-ne p1, v0, :cond_8f

    .line 730
    aget-object p1, v1, v2

    return-object p1

    :cond_8f
    if-gez p1, :cond_95

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_a7

    .line 735
    :cond_95
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_a7

    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v4, v3, v2

    .line 736
    invoke-virtual {v0, v4}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    move p1, v2

    :cond_a7
    :goto_a7
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_cf

    .line 742
    aget-object v0, v3, p1

    add-int/lit8 v2, p1, 0x1

    .line 743
    aget-object v2, v3, v2

    .line 744
    div-int/lit8 p1, p1, 0x2

    aget-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    .line 745
    aget-object p1, v1, p1

    .line 746
    invoke-virtual {p1}, Lj$/time/ZoneOffset;->b0()I

    move-result v1

    invoke-virtual {v3}, Lj$/time/ZoneOffset;->b0()I

    move-result v4

    if-le v1, v4, :cond_c9

    .line 748
    new-instance v1, Lj$/time/zone/b;

    invoke-direct {v1, v0, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v1

    .line 751
    :cond_c9
    new-instance v0, Lj$/time/zone/b;

    invoke-direct {v0, v2, v3, p1}, Lj$/time/zone/b;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v0

    .line 755
    :cond_cf
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    return-object p1
.end method

.method public static h(Lj$/time/ZoneOffset;)Lj$/time/zone/f;
    .registers 2

    .line 207
    const-string v0, "offset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lj$/time/zone/f;

    invoke-direct {v0, p0}, Lj$/time/zone/f;-><init>(Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private static i(I)Lj$/time/ZoneOffset;
    .registers 1

    .line 344
    div-int/lit16 p0, p0, 0x3e8

    invoke-static {p0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/io/ObjectInput;)Lj$/time/zone/f;
    .registers 10

    .line 465
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 466
    sget-object v1, Lj$/time/zone/f;->i:[J

    if-nez v0, :cond_a

    move-object v4, v1

    goto :goto_d

    .line 467
    :cond_a
    new-array v2, v0, [J

    move-object v4, v2

    :goto_d
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v0, :cond_1a

    .line 469
    invoke-static {p0}, Lj$/time/zone/a;->a(Ljava/io/ObjectInput;)J

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 471
    new-array v5, v0, [Lj$/time/ZoneOffset;

    move v3, v2

    :goto_1f
    if-ge v3, v0, :cond_2a

    .line 473
    invoke-static {p0}, Lj$/time/zone/a;->b(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 475
    :cond_2a
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-nez v0, :cond_32

    :goto_30
    move-object v6, v1

    goto :goto_35

    .line 477
    :cond_32
    new-array v1, v0, [J

    goto :goto_30

    :goto_35
    move v1, v2

    :goto_36
    if-ge v1, v0, :cond_41

    .line 479
    invoke-static {p0}, Lj$/time/zone/a;->a(Ljava/io/ObjectInput;)J

    move-result-wide v7

    aput-wide v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_41
    add-int/lit8 v0, v0, 0x1

    .line 481
    new-array v7, v0, [Lj$/time/ZoneOffset;

    move v1, v2

    :goto_46
    if-ge v1, v0, :cond_51

    .line 483
    invoke-static {p0}, Lj$/time/zone/a;->b(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 485
    :cond_51
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-nez v0, :cond_5b

    .line 487
    sget-object v1, Lj$/time/zone/f;->j:[Lj$/time/zone/e;

    :goto_59
    move-object v8, v1

    goto :goto_5e

    :cond_5b
    new-array v1, v0, [Lj$/time/zone/e;

    goto :goto_59

    :goto_5e
    if-ge v2, v0, :cond_69

    .line 489
    invoke-static {p0}, Lj$/time/zone/e;->b(Ljava/io/ObjectInput;)Lj$/time/zone/e;

    move-result-object v1

    aput-object v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 491
    :cond_69
    new-instance v3, Lj$/time/zone/f;

    invoke-direct/range {v3 .. v8}, Lj$/time/zone/f;-><init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/e;)V

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 354
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 422
    new-instance v0, Lj$/time/zone/a;

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_9

    const/16 v1, 0x64

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    :goto_a
    invoke-direct {v0, v1, p0}, Lj$/time/zone/a;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public final d(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .registers 9

    .line 531
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v0, :cond_11

    .line 532
    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/zone/f;->i(I)Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 534
    :cond_11
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 535
    iget-object p1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    aget-object p1, p1, v2

    return-object p1

    .line 537
    :cond_1c
    invoke-virtual {p1}, Lj$/time/Instant;->C()J

    move-result-wide v3

    .line 539
    iget-object p1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length p1, p1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    if-lez p1, :cond_58

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-wide v5, v0, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_58

    .line 541
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v1, p1

    invoke-static {v3, v4, p1}, Lj$/time/zone/f;->c(JLj$/time/ZoneOffset;)I

    move-result p1

    .line 542
    invoke-direct {p0, p1}, Lj$/time/zone/f;->b(I)[Lj$/time/zone/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 544
    :goto_3e
    array-length v1, p1

    if-ge v2, v1, :cond_53

    .line 545
    aget-object v0, p1, v2

    .line 546
    invoke-virtual {v0}, Lj$/time/zone/b;->O()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_50

    .line 547
    invoke-virtual {v0}, Lj$/time/zone/b;->S()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 550
    :cond_53
    invoke-virtual {v0}, Lj$/time/zone/b;->J()Lj$/time/ZoneOffset;

    move-result-object p1

    return-object p1

    .line 554
    :cond_58
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_61

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_61
    add-int/lit8 p1, p1, 0x1

    .line 559
    aget-object p1, v1, p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1222
    :cond_4
    instance-of v1, p1, Lj$/time/zone/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 1223
    check-cast p1, Lj$/time/zone/f;

    .line 1226
    iget-object v1, p1, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    iget-object v3, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    iget-object v3, p1, Lj$/time/zone/f;->a:[J

    .line 1227
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 1228
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    iget-object v3, p1, Lj$/time/zone/f;->c:[J

    .line 1229
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    iget-object v3, p1, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 1230
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    iget-object p1, p1, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 1231
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    return v0

    :cond_48
    return v2
.end method

.method public final f(Lj$/time/LocalDateTime;)Lj$/time/zone/b;
    .registers 3

    .line 684
    invoke-direct {p0, p1}, Lj$/time/zone/f;->e(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    .line 685
    instance-of v0, p1, Lj$/time/zone/b;

    if-eqz v0, :cond_b

    check-cast p1, Lj$/time/zone/b;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Lj$/time/LocalDateTime;)Ljava/util/List;
    .registers 3

    .line 642
    invoke-direct {p0, p1}, Lj$/time/zone/f;->e(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object p1

    .line 643
    instance-of v0, p1, Lj$/time/zone/b;

    if-eqz v0, :cond_f

    .line 644
    check-cast p1, Lj$/time/zone/b;

    invoke-virtual {p1}, Lj$/time/zone/b;->T()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 646
    :cond_f
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 3

    .line 1245
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/f;->a:[J

    .line 1246
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    .line 1247
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->c:[J

    .line 1248
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    .line 1249
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    .line 1250
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final k(Ljava/io/ObjectOutput;)V
    .registers 3

    .line 454
    iget-object v0, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1261
    const-string v0, "]"

    iget-object v1, p0, Lj$/time/zone/f;->g:Ljava/util/TimeZone;

    if-eqz v1, :cond_1c

    .line 1262
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[timeZone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_1c
    iget-object v1, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneRules[currentStandardOffset="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 8

    .line 432
    iget-object v0, p0, Lj$/time/zone/f;->a:[J

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 433
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_13

    aget-wide v4, v0, v3

    .line 434
    invoke-static {v4, v5, p1}, Lj$/time/zone/a;->c(JLjava/io/ObjectOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 436
    :cond_13
    iget-object v0, p0, Lj$/time/zone/f;->b:[Lj$/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_21

    aget-object v4, v0, v3

    .line 437
    invoke-static {v4, p1}, Lj$/time/zone/a;->d(Lj$/time/ZoneOffset;Ljava/io/ObjectOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 439
    :cond_21
    iget-object v0, p0, Lj$/time/zone/f;->c:[J

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 440
    array-length v1, v0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_33

    aget-wide v4, v0, v3

    .line 441
    invoke-static {v4, v5, p1}, Lj$/time/zone/a;->c(JLjava/io/ObjectOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 443
    :cond_33
    iget-object v0, p0, Lj$/time/zone/f;->e:[Lj$/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_37
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    .line 444
    invoke-static {v4, p1}, Lj$/time/zone/a;->d(Lj$/time/ZoneOffset;Ljava/io/ObjectOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 446
    :cond_41
    iget-object v0, p0, Lj$/time/zone/f;->f:[Lj$/time/zone/e;

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 447
    array-length v1, v0

    :goto_48
    if-ge v2, v1, :cond_52

    aget-object v3, v0, v2

    .line 448
    invoke-virtual {v3, p1}, Lj$/time/zone/e;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_52
    return-void
.end method
