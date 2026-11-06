###### Class com.ironsource.C3647i2 (com.ironsource.i2)
.class public final Lcom/ironsource/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/i2;

.field public static final b:Ljava/lang/String; = "trials_fail"

.field public static final c:Ljava/lang/String; = "parsing"

.field public static final d:Ljava/lang/String; = "other"

.field public static final e:Ljava/lang/String; = "disabled"

.field public static final f:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/i2;

    invoke-direct {v0}, Lcom/ironsource/i2;-><init>()V

    sput-object v0, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/i2;ZLjava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 4
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    .line 1
    const-string p1, "-1"

    return-object p1

    .line 3
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fallback_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLjava/lang/Integer;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    .line 5
    const-string p1, "disabled"

    return-object p1

    :cond_5
    if-nez p2, :cond_8

    goto :goto_10

    .line 9
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_44

    :goto_10
    if-nez p2, :cond_13

    goto :goto_1b

    .line 10
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_44

    :goto_1b
    if-nez p2, :cond_1e

    goto :goto_27

    .line 11
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_27

    goto :goto_44

    :cond_27
    :goto_27
    if-nez p2, :cond_2a

    goto :goto_32

    .line 12
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_41

    :goto_32
    if-nez p2, :cond_35

    goto :goto_3e

    .line 13
    :cond_35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_3e

    goto :goto_41

    .line 14
    :cond_3e
    :goto_3e
    const-string p1, "other"

    return-object p1

    .line 15
    :cond_41
    :goto_41
    const-string p1, "trials_fail"

    return-object p1

    .line 16
    :cond_44
    :goto_44
    const-string p1, "parsing"

    return-object p1
.end method
