###### Class io.bidmachine.Constants (io.bidmachine.Constants)
.class public final Lio/bidmachine/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lio/bidmachine/Constants;

.field public static final VIDEO_LINEARITY:I = 0x1

.field public static final VIDEO_MAXBITR:I = 0x1000

.field public static final VIDEO_MAXDUR:I = 0x1e

.field public static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_MINBITR:I = 0x38

.field public static final VIDEO_MINDUR:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/Constants;

    invoke-direct {v0}, Lio/bidmachine/Constants;-><init>()V

    sput-object v0, Lio/bidmachine/Constants;->INSTANCE:Lio/bidmachine/Constants;

    .line 1
    const-string v0, "video/mp4"

    const-string v1, "video/3gpp"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:Ljava/util/List;

    .line 3
    const-string v0, "image/gif"

    const-string v1, "image/png"

    const-string v2, "image/jpeg"

    const-string v3, "image/jpg"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
