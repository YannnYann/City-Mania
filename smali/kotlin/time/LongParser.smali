###### Class kotlin.time.LongParser (kotlin.time.LongParser)
.class public final Lkotlin/time/LongParser;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/LongParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1629:1\n1665#2,3:1630\n1665#2,3:1633\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n*L\n1311#1:1630,3\n1318#1:1633,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/LongParser$Companion;

.field public static final default:Lkotlin/time/LongParser;

.field public static final iso:Lkotlin/time/LongParser;


# instance fields
.field public final allowSign:Z

.field public final lastDigitMax:J

.field public final overflowLimit:J

.field public final overflowThreshold:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/time/LongParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/LongParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/LongParser;->Companion:Lkotlin/time/LongParser$Companion;

    .line 1330
    new-instance v0, Lkotlin/time/LongParser;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/LongParser;-><init>(JZ)V

    sput-object v0, Lkotlin/time/LongParser;->iso:Lkotlin/time/LongParser;

    .line 1331
    new-instance v0, Lkotlin/time/LongParser;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/LongParser;-><init>(JZ)V

    sput-object v0, Lkotlin/time/LongParser;->default:Lkotlin/time/LongParser;

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 8

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/LongParser;->overflowLimit:J

    iput-boolean p3, p0, Lkotlin/time/LongParser;->allowSign:Z

    const/16 p3, 0xa

    int-to-long v0, p3

    .line 1285
    div-long v2, p1, v0

    iput-wide v2, p0, Lkotlin/time/LongParser;->overflowThreshold:J

    .line 1288
    rem-long/2addr p1, v0

    iput-wide p1, p0, Lkotlin/time/LongParser;->lastDigitMax:J

    return-void
.end method

.method public static final synthetic access$getAllowSign$p(Lkotlin/time/LongParser;)Z
    .registers 1

    .line 1282
    iget-boolean p0, p0, Lkotlin/time/LongParser;->allowSign:Z

    return p0
.end method

.method public static final synthetic access$getDefault$cp()Lkotlin/time/LongParser;
    .registers 1

    .line 1282
    sget-object v0, Lkotlin/time/LongParser;->default:Lkotlin/time/LongParser;

    return-object v0
.end method

.method public static final synthetic access$getIso$cp()Lkotlin/time/LongParser;
    .registers 1

    .line 1282
    sget-object v0, Lkotlin/time/LongParser;->iso:Lkotlin/time/LongParser;

    return-object v0
.end method

.method public static final synthetic access$getLastDigitMax$p(Lkotlin/time/LongParser;)J
    .registers 3

    .line 1282
    iget-wide v0, p0, Lkotlin/time/LongParser;->lastDigitMax:J

    return-wide v0
.end method

.method public static final synthetic access$getOverflowLimit$p(Lkotlin/time/LongParser;)J
    .registers 3

    .line 1282
    iget-wide v0, p0, Lkotlin/time/LongParser;->overflowLimit:J

    return-wide v0
.end method

.method public static final synthetic access$getOverflowThreshold$p(Lkotlin/time/LongParser;)J
    .registers 3

    .line 1282
    iget-wide v0, p0, Lkotlin/time/LongParser;->overflowThreshold:J

    return-wide v0
.end method

###### Class kotlin.time.LongParser.Companion (kotlin.time.LongParser$Companion)
.class public final Lkotlin/time/LongParser$Companion;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/LongParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lkotlin/time/LongParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Lkotlin/time/LongParser;
    .registers 2

    .line 1331
    invoke-static {}, Lkotlin/time/LongParser;->access$getDefault$cp()Lkotlin/time/LongParser;

    move-result-object v0

    return-object v0
.end method

.method public final getIso()Lkotlin/time/LongParser;
    .registers 2

    .line 1330
    invoke-static {}, Lkotlin/time/LongParser;->access$getIso$cp()Lkotlin/time/LongParser;

    move-result-object v0

    return-object v0
.end method
