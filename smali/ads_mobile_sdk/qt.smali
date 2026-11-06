###### Class ads_mobile_sdk.qt (ads_mobile_sdk.qt)
.class public final enum Lads_mobile_sdk/qt;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/qt;

.field public static final enum c:Lads_mobile_sdk/qt;

.field public static final synthetic d:[Lads_mobile_sdk/qt;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/qt;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/qt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/qt;->b:Lads_mobile_sdk/qt;

    .line 11
    new-instance v1, Lads_mobile_sdk/qt;

    const-string v2, "COLLECTED_BIDDING_SIGNAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/qt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/qt;->c:Lads_mobile_sdk/qt;

    .line 12
    filled-new-array {v0, v1}, [Lads_mobile_sdk/qt;

    move-result-object v0

    .line 13
    sput-object v0, Lads_mobile_sdk/qt;->d:[Lads_mobile_sdk/qt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 884
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 885
    iput p3, p0, Lads_mobile_sdk/qt;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/qt;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/qt;->d:[Lads_mobile_sdk/qt;

    invoke-virtual {v0}, [Lads_mobile_sdk/qt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/qt;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 824
    iget v0, p0, Lads_mobile_sdk/qt;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/qt;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 877
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 878
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    iget v1, p0, Lads_mobile_sdk/qt;->a:I

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
