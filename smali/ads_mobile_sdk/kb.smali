###### Class ads_mobile_sdk.kb (ads_mobile_sdk.kb)
.class public final enum Lads_mobile_sdk/kb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/kb;

.field public static final enum c:Lads_mobile_sdk/kb;

.field public static final enum d:Lads_mobile_sdk/kb;

.field public static final enum e:Lads_mobile_sdk/kb;

.field public static final enum f:Lads_mobile_sdk/kb;

.field public static final synthetic g:[Lads_mobile_sdk/kb;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/kb;

    const-string v1, "ADSHIELD_VERSION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/kb;->b:Lads_mobile_sdk/kb;

    .line 5
    new-instance v1, Lads_mobile_sdk/kb;

    const-string v2, "ADSHIELD_VERSION_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/kb;->c:Lads_mobile_sdk/kb;

    .line 9
    new-instance v2, Lads_mobile_sdk/kb;

    const-string v3, "ADSHIELD_VERSION_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/kb;->d:Lads_mobile_sdk/kb;

    .line 13
    new-instance v3, Lads_mobile_sdk/kb;

    const-string v4, "ADSHIELD_VERSION_3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/kb;->e:Lads_mobile_sdk/kb;

    .line 17
    new-instance v4, Lads_mobile_sdk/kb;

    const-string v5, "ADSHIELD_VERSION_3_STATIC_PROGRAM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/kb;->f:Lads_mobile_sdk/kb;

    .line 18
    filled-new-array {v0, v1, v2, v3, v4}, [Lads_mobile_sdk/kb;

    move-result-object v0

    .line 19
    sput-object v0, Lads_mobile_sdk/kb;->g:[Lads_mobile_sdk/kb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lads_mobile_sdk/kb;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/kb;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_10
    sget-object p0, Lads_mobile_sdk/kb;->f:Lads_mobile_sdk/kb;

    return-object p0

    .line 80
    :cond_13
    sget-object p0, Lads_mobile_sdk/kb;->e:Lads_mobile_sdk/kb;

    return-object p0

    .line 81
    :cond_16
    sget-object p0, Lads_mobile_sdk/kb;->d:Lads_mobile_sdk/kb;

    return-object p0

    .line 82
    :cond_19
    sget-object p0, Lads_mobile_sdk/kb;->c:Lads_mobile_sdk/kb;

    return-object p0

    .line 83
    :cond_1c
    sget-object p0, Lads_mobile_sdk/kb;->b:Lads_mobile_sdk/kb;

    return-object p0
.end method

.method public static values()[Lads_mobile_sdk/kb;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/kb;->g:[Lads_mobile_sdk/kb;

    invoke-virtual {v0}, [Lads_mobile_sdk/kb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/kb;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 69
    iget v0, p0, Lads_mobile_sdk/kb;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/kb;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lads_mobile_sdk/kb;->a:I

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
