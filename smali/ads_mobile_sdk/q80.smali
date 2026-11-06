###### Class ads_mobile_sdk.q80 (ads_mobile_sdk.q80)
.class public final enum Lads_mobile_sdk/q80;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$a;


# static fields
.field public static final enum b:Lads_mobile_sdk/q80;

.field public static final enum c:Lads_mobile_sdk/q80;

.field public static final enum d:Lads_mobile_sdk/q80;

.field public static final enum e:Lads_mobile_sdk/q80;

.field public static final enum f:Lads_mobile_sdk/q80;

.field public static final enum g:Lads_mobile_sdk/q80;

.field public static final enum h:Lads_mobile_sdk/q80;

.field public static final enum i:Lads_mobile_sdk/q80;

.field public static final enum j:Lads_mobile_sdk/q80;

.field public static final enum k:Lads_mobile_sdk/q80;

.field public static final enum l:Lads_mobile_sdk/q80;

.field public static final synthetic m:[Lads_mobile_sdk/q80;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lads_mobile_sdk/q80;

    const-string v1, "ACTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lads_mobile_sdk/q80;->b:Lads_mobile_sdk/q80;

    .line 10
    new-instance v1, Lads_mobile_sdk/q80;

    const-string v2, "PROCEED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lads_mobile_sdk/q80;->c:Lads_mobile_sdk/q80;

    .line 19
    new-instance v2, Lads_mobile_sdk/q80;

    const-string v3, "DISCARD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lads_mobile_sdk/q80;->d:Lads_mobile_sdk/q80;

    .line 29
    new-instance v3, Lads_mobile_sdk/q80;

    const-string v4, "KEEP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lads_mobile_sdk/q80;->e:Lads_mobile_sdk/q80;

    .line 37
    new-instance v4, Lads_mobile_sdk/q80;

    const-string v5, "CLOSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lads_mobile_sdk/q80;->f:Lads_mobile_sdk/q80;

    .line 45
    new-instance v5, Lads_mobile_sdk/q80;

    const-string v6, "CANCEL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lads_mobile_sdk/q80;->g:Lads_mobile_sdk/q80;

    .line 54
    new-instance v6, Lads_mobile_sdk/q80;

    const-string v7, "DISMISS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lads_mobile_sdk/q80;->h:Lads_mobile_sdk/q80;

    .line 63
    new-instance v7, Lads_mobile_sdk/q80;

    const-string v8, "BACK"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lads_mobile_sdk/q80;->i:Lads_mobile_sdk/q80;

    .line 71
    new-instance v8, Lads_mobile_sdk/q80;

    const-string v9, "OPEN_SUBPAGE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lads_mobile_sdk/q80;->j:Lads_mobile_sdk/q80;

    .line 79
    new-instance v9, Lads_mobile_sdk/q80;

    const-string v10, "PROCEED_DEEP_SCAN"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lads_mobile_sdk/q80;->k:Lads_mobile_sdk/q80;

    .line 87
    new-instance v10, Lads_mobile_sdk/q80;

    const-string v11, "OPEN_LEARN_MORE_LINK"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lads_mobile_sdk/q80;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lads_mobile_sdk/q80;->l:Lads_mobile_sdk/q80;

    .line 88
    filled-new-array/range {v0 .. v10}, [Lads_mobile_sdk/q80;

    move-result-object v0

    .line 89
    sput-object v0, Lads_mobile_sdk/q80;->m:[Lads_mobile_sdk/q80;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 56691
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56692
    iput p3, p0, Lads_mobile_sdk/q80;->a:I

    return-void
.end method

.method public static values()[Lads_mobile_sdk/q80;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/q80;->m:[Lads_mobile_sdk/q80;

    invoke-virtual {v0}, [Lads_mobile_sdk/q80;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/q80;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 56622
    iget v0, p0, Lads_mobile_sdk/q80;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lads_mobile_sdk/q80;

    const/16 v2, 0x40

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/sf;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56684
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 56685
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56687
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56688
    iget v1, p0, Lads_mobile_sdk/q80;->a:I

    .line 56689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56690
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56691
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
