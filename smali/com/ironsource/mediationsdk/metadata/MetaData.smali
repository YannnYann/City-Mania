###### Class com.ironsource.mediationsdk.metadata.MetaData (com.ironsource.mediationsdk.metadata.MetaData)
.class public Lcom/ironsource/mediationsdk/metadata/MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 10
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 11
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    sget-object v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMetaDataKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataValue()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->b:Ljava/util/List;

    return-object v0
.end method

.method public getMetaDataValueType()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/metadata/MetaData;->c:Ljava/util/List;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.metadata.MetaData.MetaDataValueTypes (com.ironsource.mediationsdk.metadata.MetaData$MetaDataValueTypes)
.class public final enum Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/metadata/MetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetaDataValueTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_DOUBLE:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_FLOAT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_INT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_LONG:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field public static final enum META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

.field private static final synthetic a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_BOOLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 3
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_INT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 4
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_LONG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_LONG:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 5
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_DOUBLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_DOUBLE:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 6
    new-instance v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    const-string v1, "META_DATA_VALUE_FLOAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_FLOAT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->a()[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_STRING:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    sget-object v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    sget-object v2, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_INT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    sget-object v3, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_LONG:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    sget-object v4, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_DOUBLE:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    sget-object v5, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_FLOAT:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 2

    .line 1
    const-class v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->a:[Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    return-object v0
.end method
