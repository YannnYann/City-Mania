###### Class ads_mobile_sdk.bq1 (ads_mobile_sdk.bq1)
.class public final enum Lads_mobile_sdk/bq1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/bq1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lads_mobile_sdk/bq1;

.field public static final enum e:Lads_mobile_sdk/bq1;

.field public static final enum f:Lads_mobile_sdk/bq1;

.field public static final enum g:Lads_mobile_sdk/bq1;

.field public static final enum h:Lads_mobile_sdk/bq1;

.field public static final enum i:Lads_mobile_sdk/bq1;

.field public static final enum j:Lads_mobile_sdk/bq1;

.field public static final enum k:Lads_mobile_sdk/bq1;

.field public static final enum l:Lads_mobile_sdk/bq1;

.field public static final enum m:Lads_mobile_sdk/bq1;

.field private static final synthetic n:[Lads_mobile_sdk/bq1;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lads_mobile_sdk/bq1;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/bq1;->d:Lads_mobile_sdk/bq1;

    .line 2
    new-instance v1, Lads_mobile_sdk/bq1;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x1

    const-class v5, Ljava/lang/Integer;

    const-string v2, "INT"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lads_mobile_sdk/bq1;->e:Lads_mobile_sdk/bq1;

    .line 3
    new-instance v5, Lads_mobile_sdk/bq1;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v7, 0x2

    const-class v9, Ljava/lang/Long;

    const-string v6, "LONG"

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v5 .. v10}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lads_mobile_sdk/bq1;->f:Lads_mobile_sdk/bq1;

    .line 4
    new-instance v6, Lads_mobile_sdk/bq1;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v8, 0x3

    const-class v10, Ljava/lang/Float;

    const-string v7, "FLOAT"

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v6 .. v11}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lads_mobile_sdk/bq1;->g:Lads_mobile_sdk/bq1;

    .line 5
    new-instance v7, Lads_mobile_sdk/bq1;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    const/4 v9, 0x4

    const-class v11, Ljava/lang/Double;

    const-string v8, "DOUBLE"

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v7 .. v12}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lads_mobile_sdk/bq1;->h:Lads_mobile_sdk/bq1;

    .line 6
    new-instance v8, Lads_mobile_sdk/bq1;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x5

    const-class v12, Ljava/lang/Boolean;

    const-string v9, "BOOLEAN"

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct/range {v8 .. v13}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lads_mobile_sdk/bq1;->i:Lads_mobile_sdk/bq1;

    .line 7
    new-instance v9, Lads_mobile_sdk/bq1;

    const-class v13, Ljava/lang/String;

    const-string v14, ""

    const-string v10, "STRING"

    const/4 v11, 0x6

    const-class v12, Ljava/lang/String;

    invoke-direct/range {v9 .. v14}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lads_mobile_sdk/bq1;->j:Lads_mobile_sdk/bq1;

    .line 8
    new-instance v10, Lads_mobile_sdk/bq1;

    sget-object v15, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    const-class v13, Lads_mobile_sdk/du;

    const-class v14, Lads_mobile_sdk/du;

    const-string v11, "BYTE_STRING"

    const/4 v12, 0x7

    invoke-direct/range {v10 .. v15}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v10, Lads_mobile_sdk/bq1;->k:Lads_mobile_sdk/bq1;

    .line 9
    new-instance v7, Lads_mobile_sdk/bq1;

    const-class v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    const-string v8, "ENUM"

    const/16 v9, 0x8

    move-object v10, v4

    invoke-direct/range {v7 .. v12}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lads_mobile_sdk/bq1;->l:Lads_mobile_sdk/bq1;

    .line 10
    new-instance v0, Lads_mobile_sdk/bq1;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/bq1;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/bq1;->m:Lads_mobile_sdk/bq1;

    .line 11
    invoke-static {}, Lads_mobile_sdk/bq1;->d()[Lads_mobile_sdk/bq1;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/bq1;->n:[Lads_mobile_sdk/bq1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/bq1;->a:Ljava/lang/Class;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/bq1;->b:Ljava/lang/Class;

    .line 32
    iput-object p5, p0, Lads_mobile_sdk/bq1;->c:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/bq1;
    .registers 10

    .line 12
    sget-object v0, Lads_mobile_sdk/bq1;->d:Lads_mobile_sdk/bq1;

    sget-object v1, Lads_mobile_sdk/bq1;->e:Lads_mobile_sdk/bq1;

    sget-object v2, Lads_mobile_sdk/bq1;->f:Lads_mobile_sdk/bq1;

    sget-object v3, Lads_mobile_sdk/bq1;->g:Lads_mobile_sdk/bq1;

    sget-object v4, Lads_mobile_sdk/bq1;->h:Lads_mobile_sdk/bq1;

    sget-object v5, Lads_mobile_sdk/bq1;->i:Lads_mobile_sdk/bq1;

    sget-object v6, Lads_mobile_sdk/bq1;->j:Lads_mobile_sdk/bq1;

    sget-object v7, Lads_mobile_sdk/bq1;->k:Lads_mobile_sdk/bq1;

    sget-object v8, Lads_mobile_sdk/bq1;->l:Lads_mobile_sdk/bq1;

    sget-object v9, Lads_mobile_sdk/bq1;->m:Lads_mobile_sdk/bq1;

    filled-new-array/range {v0 .. v9}, [Lads_mobile_sdk/bq1;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/bq1;
    .registers 1

    .line 1
    sget-object v0, Lads_mobile_sdk/bq1;->n:[Lads_mobile_sdk/bq1;

    invoke-virtual {v0}, [Lads_mobile_sdk/bq1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/bq1;

    return-object v0
.end method


# virtual methods
.method public e()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/bq1;->b:Ljava/lang/Class;

    return-object v0
.end method
