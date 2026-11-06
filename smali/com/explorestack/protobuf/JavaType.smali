###### Class com.explorestack.protobuf.JavaType (com.explorestack.protobuf.JavaType)
.class public final enum Lcom/explorestack/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "JavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/JavaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/explorestack/protobuf/JavaType;

.field public static final enum BOOLEAN:Lcom/explorestack/protobuf/JavaType;

.field public static final enum BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/JavaType;

.field public static final enum ENUM:Lcom/explorestack/protobuf/JavaType;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/JavaType;

.field public static final enum INT:Lcom/explorestack/protobuf/JavaType;

.field public static final enum LONG:Lcom/explorestack/protobuf/JavaType;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/JavaType;

.field public static final enum STRING:Lcom/explorestack/protobuf/JavaType;

.field public static final enum VOID:Lcom/explorestack/protobuf/JavaType;


# instance fields
.field public final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final defaultDefault:Ljava/lang/Object;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 36
    new-instance v0, Lcom/explorestack/protobuf/JavaType;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/explorestack/protobuf/JavaType;->VOID:Lcom/explorestack/protobuf/JavaType;

    .line 37
    new-instance v1, Lcom/explorestack/protobuf/JavaType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lcom/explorestack/protobuf/JavaType;->INT:Lcom/explorestack/protobuf/JavaType;

    .line 38
    new-instance v2, Lcom/explorestack/protobuf/JavaType;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v6, "LONG"

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/explorestack/protobuf/JavaType;->LONG:Lcom/explorestack/protobuf/JavaType;

    .line 39
    new-instance v3, Lcom/explorestack/protobuf/JavaType;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v6, "FLOAT"

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/explorestack/protobuf/JavaType;->FLOAT:Lcom/explorestack/protobuf/JavaType;

    .line 40
    new-instance v5, Lcom/explorestack/protobuf/JavaType;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const-string v6, "DOUBLE"

    const/4 v7, 0x4

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    invoke-direct/range {v5 .. v10}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/explorestack/protobuf/JavaType;->DOUBLE:Lcom/explorestack/protobuf/JavaType;

    .line 41
    new-instance v6, Lcom/explorestack/protobuf/JavaType;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "BOOLEAN"

    const/4 v8, 0x5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Boolean;

    invoke-direct/range {v6 .. v11}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/explorestack/protobuf/JavaType;->BOOLEAN:Lcom/explorestack/protobuf/JavaType;

    .line 42
    new-instance v7, Lcom/explorestack/protobuf/JavaType;

    const-class v11, Ljava/lang/String;

    const-string v12, ""

    const-string v8, "STRING"

    const/4 v9, 0x6

    const-class v10, Ljava/lang/String;

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v13, v7

    sput-object v13, Lcom/explorestack/protobuf/JavaType;->STRING:Lcom/explorestack/protobuf/JavaType;

    .line 43
    new-instance v7, Lcom/explorestack/protobuf/JavaType;

    const-class v11, Lcom/explorestack/protobuf/ByteString;

    sget-object v12, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    const-class v10, Lcom/explorestack/protobuf/ByteString;

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    move-object v14, v7

    sput-object v14, Lcom/explorestack/protobuf/JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/JavaType;

    .line 44
    new-instance v7, Lcom/explorestack/protobuf/JavaType;

    const-class v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    const-string v8, "ENUM"

    const/16 v9, 0x8

    move-object v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/explorestack/protobuf/JavaType;->ENUM:Lcom/explorestack/protobuf/JavaType;

    .line 45
    new-instance v9, Lcom/explorestack/protobuf/JavaType;

    const-class v19, Ljava/lang/Object;

    const/16 v20, 0x0

    const-string v16, "MESSAGE"

    const/16 v17, 0x9

    const-class v18, Ljava/lang/Object;

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Lcom/explorestack/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/explorestack/protobuf/JavaType;->MESSAGE:Lcom/explorestack/protobuf/JavaType;

    move-object v4, v5

    move-object v5, v6

    move-object v8, v7

    move-object v6, v13

    move-object v7, v14

    .line 34
    filled-new-array/range {v0 .. v9}, [Lcom/explorestack/protobuf/JavaType;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/JavaType;->$VALUES:[Lcom/explorestack/protobuf/JavaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/explorestack/protobuf/JavaType;->type:Ljava/lang/Class;

    .line 53
    iput-object p4, p0, Lcom/explorestack/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    .line 54
    iput-object p5, p0, Lcom/explorestack/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/JavaType;
    .registers 2

    .line 34
    const-class v0, Lcom/explorestack/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/JavaType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/JavaType;
    .registers 1

    .line 34
    sget-object v0, Lcom/explorestack/protobuf/JavaType;->$VALUES:[Lcom/explorestack/protobuf/JavaType;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public getBoxedType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/explorestack/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object v0
.end method
