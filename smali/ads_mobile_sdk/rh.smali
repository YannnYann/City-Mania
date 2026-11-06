###### Class ads_mobile_sdk.rh (ads_mobile_sdk.rh)
.class public final enum Lads_mobile_sdk/rh;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/rh;

.field public static final enum c:Lads_mobile_sdk/rh;

.field public static final enum d:Lads_mobile_sdk/rh;

.field public static final enum e:Lads_mobile_sdk/rh;

.field public static final synthetic f:[Lads_mobile_sdk/rh;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/rh;

    const-string v1, "ENUM_FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/rh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 5
    new-instance v1, Lads_mobile_sdk/rh;

    const-string v2, "ENUM_TRUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/rh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    .line 13
    new-instance v2, Lads_mobile_sdk/rh;

    const-string v3, "ENUM_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/rh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/rh;->d:Lads_mobile_sdk/rh;

    .line 22
    new-instance v3, Lads_mobile_sdk/rh;

    const/4 v4, 0x3

    const/16 v5, 0x3e8

    const-string v6, "ENUM_UNKNOWN"

    invoke-direct {v3, v6, v4, v5}, Lads_mobile_sdk/rh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/rh;->e:Lads_mobile_sdk/rh;

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Lads_mobile_sdk/rh;

    move-result-object v0

    .line 24
    sput-object v0, Lads_mobile_sdk/rh;->f:[Lads_mobile_sdk/rh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, Lads_mobile_sdk/rh;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/rh;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_e
    sget-object p0, Lads_mobile_sdk/rh;->e:Lads_mobile_sdk/rh;

    return-object p0

    .line 95
    :cond_11
    sget-object p0, Lads_mobile_sdk/rh;->d:Lads_mobile_sdk/rh;

    return-object p0

    .line 96
    :cond_14
    sget-object p0, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    return-object p0

    .line 97
    :cond_17
    sget-object p0, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    return-object p0
.end method

.method public static values()[Lads_mobile_sdk/rh;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/rh;->f:[Lads_mobile_sdk/rh;

    invoke-virtual {v0}, [Lads_mobile_sdk/rh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/rh;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 85
    iget v0, p0, Lads_mobile_sdk/rh;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/rh;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lads_mobile_sdk/rh;->a:I

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
