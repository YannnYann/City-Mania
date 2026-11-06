###### Class info.flowersoft.theotown.resources.PluginIdContentData (info.flowersoft.theotown.resources.PluginIdContentData)
.class public final Linfo/flowersoft/theotown/resources/PluginIdContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

.field public static final Empty:Linfo/flowersoft/theotown/resources/PluginIdContentData;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Companion:Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/PluginIdContentData;-><init>(I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Empty:Linfo/flowersoft/theotown/resources/PluginIdContentData;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Linfo/flowersoft/theotown/resources/PluginIdContentData;->id:I

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Linfo/flowersoft/theotown/resources/PluginIdContentData;
    .registers 1

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/resources/PluginIdContentData;->Empty:Linfo/flowersoft/theotown/resources/PluginIdContentData;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/resources/PluginIdContentData;->id:I

    return v0
.end method

###### Class info.flowersoft.theotown.resources.PluginIdContentData.Companion (info.flowersoft.theotown.resources.PluginIdContentData$Companion)
.class public final Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;
.super Ljava/lang/Object;
.source "ContentData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/PluginIdContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/resources/PluginIdContentData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Linfo/flowersoft/theotown/resources/PluginIdContentData;
    .registers 2

    .line 32
    invoke-static {}, Linfo/flowersoft/theotown/resources/PluginIdContentData;->access$getEmpty$cp()Linfo/flowersoft/theotown/resources/PluginIdContentData;

    move-result-object v0

    return-object v0
.end method
