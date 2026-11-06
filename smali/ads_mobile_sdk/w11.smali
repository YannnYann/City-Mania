###### Class ads_mobile_sdk.w11 (ads_mobile_sdk.w11)
.class public final enum Lads_mobile_sdk/w11;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/w11;

.field public static final enum c:Lads_mobile_sdk/w11;

.field public static final enum d:Lads_mobile_sdk/w11;

.field public static final enum e:Lads_mobile_sdk/w11;

.field public static final synthetic f:[Lads_mobile_sdk/w11;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lads_mobile_sdk/w11;

    const-string v1, "PROCESS_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/w11;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/w11;->b:Lads_mobile_sdk/w11;

    .line 5
    new-instance v1, Lads_mobile_sdk/w11;

    const-string v2, "PROCESS_STATE_FOREGROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/w11;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/w11;->c:Lads_mobile_sdk/w11;

    .line 9
    new-instance v2, Lads_mobile_sdk/w11;

    const-string v3, "PROCESS_STATE_BACKGROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/w11;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/w11;->d:Lads_mobile_sdk/w11;

    .line 10
    new-instance v3, Lads_mobile_sdk/w11;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const-string v6, "UNRECOGNIZED"

    invoke-direct {v3, v6, v4, v5}, Lads_mobile_sdk/w11;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/w11;->e:Lads_mobile_sdk/w11;

    .line 11
    filled-new-array {v0, v1, v2, v3}, [Lads_mobile_sdk/w11;

    move-result-object v0

    .line 12
    sput-object v0, Lads_mobile_sdk/w11;->f:[Lads_mobile_sdk/w11;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 2942
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2943
    iput p3, p0, Lads_mobile_sdk/w11;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/w11;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/w11;->f:[Lads_mobile_sdk/w11;

    invoke-virtual {v0}, [Lads_mobile_sdk/w11;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/w11;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 2876
    sget-object v0, Lads_mobile_sdk/w11;->e:Lads_mobile_sdk/w11;

    if-ne p0, v0, :cond_9

    .line 2877
    invoke-static {}, Lads_mobile_sdk/yh1;->a()I

    move-result v0

    return v0

    .line 2879
    :cond_9
    iget v0, p0, Lads_mobile_sdk/w11;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 2929
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2930
    const-class v1, Lads_mobile_sdk/w11;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5861
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 5862
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5864
    sget-object v1, Lads_mobile_sdk/w11;->e:Lads_mobile_sdk/w11;

    if-eq p0, v1, :cond_2a

    .line 5865
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lads_mobile_sdk/w11;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5867
    :cond_2a
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5868
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
