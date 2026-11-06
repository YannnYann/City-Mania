###### Class ads_mobile_sdk.yn (ads_mobile_sdk.yn)
.class public final enum Lads_mobile_sdk/yn;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/yn;

.field public static final enum c:Lads_mobile_sdk/yn;

.field public static final enum d:Lads_mobile_sdk/yn;

.field public static final enum e:Lads_mobile_sdk/yn;

.field public static final enum f:Lads_mobile_sdk/yn;

.field public static final enum g:Lads_mobile_sdk/yn;

.field public static final enum h:Lads_mobile_sdk/yn;

.field public static final synthetic i:[Lads_mobile_sdk/yn;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lads_mobile_sdk/yn;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    .line 5
    new-instance v1, Lads_mobile_sdk/yn;

    const-string v2, "ARM7"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    .line 9
    new-instance v2, Lads_mobile_sdk/yn;

    const-string v3, "X86"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;

    .line 13
    new-instance v3, Lads_mobile_sdk/yn;

    const-string v4, "ARM64"

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct {v3, v4, v6, v7}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    .line 17
    new-instance v4, Lads_mobile_sdk/yn;

    const-string v6, "X86_64"

    const/4 v8, 0x6

    invoke-direct {v4, v6, v5, v8}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    .line 21
    new-instance v5, Lads_mobile_sdk/yn;

    const-string v6, "RISCV64"

    const/4 v9, 0x7

    invoke-direct {v5, v6, v7, v9}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    .line 25
    new-instance v6, Lads_mobile_sdk/yn;

    const-string v7, "UNKNOWN"

    const/16 v9, 0x3e7

    invoke-direct {v6, v7, v8, v9}, Lads_mobile_sdk/yn;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    .line 26
    filled-new-array/range {v0 .. v6}, [Lads_mobile_sdk/yn;

    move-result-object v0

    .line 27
    sput-object v0, Lads_mobile_sdk/yn;->i:[Lads_mobile_sdk/yn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lads_mobile_sdk/yn;->a:I

    return-void
.end method

.method public static a(I)Lads_mobile_sdk/yn;
    .registers 2

    if-eqz p0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/16 v0, 0x3e7

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x7

    if-eq p0, v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_17
    sget-object p0, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    return-object p0

    .line 98
    :cond_1a
    sget-object p0, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    return-object p0

    .line 99
    :cond_1d
    sget-object p0, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    return-object p0

    .line 100
    :cond_20
    sget-object p0, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;

    return-object p0

    .line 104
    :cond_23
    sget-object p0, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    return-object p0

    .line 105
    :cond_26
    sget-object p0, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    return-object p0

    .line 106
    :cond_29
    sget-object p0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    return-object p0
.end method

.method public static values()[Lads_mobile_sdk/yn;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/yn;->i:[Lads_mobile_sdk/yn;

    invoke-virtual {v0}, [Lads_mobile_sdk/yn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/yn;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 86
    iget v0, p0, Lads_mobile_sdk/yn;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/yn;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lads_mobile_sdk/yn;->a:I

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
