###### Class io.bidmachine.iab.vast.VastSpecError (io.bidmachine.iab.vast.VastSpecError)
.class public Lio/bidmachine/iab/vast/VastSpecError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final DURATION:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final EXCEEDED_WRAPPER_LIMIT:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final GENERAL_COMPANION:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final GENERAL_LINEAR:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final GENERAL_WRAPPER:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final NO_FILE:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final SHOWING:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final UNKNOWN:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final XML_PARSING:Lio/bidmachine/iab/vast/VastSpecError;

.field public static final XML_VALIDATE:Lio/bidmachine/iab/vast/VastSpecError;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->XML_PARSING:Lio/bidmachine/iab/vast/VastSpecError;

    .line 6
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->XML_VALIDATE:Lio/bidmachine/iab/vast/VastSpecError;

    .line 12
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->DURATION:Lio/bidmachine/iab/vast/VastSpecError;

    .line 18
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_WRAPPER:Lio/bidmachine/iab/vast/VastSpecError;

    .line 25
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    .line 31
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x12e

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->EXCEEDED_WRAPPER_LIMIT:Lio/bidmachine/iab/vast/VastSpecError;

    .line 36
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x12f

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    .line 42
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_LINEAR:Lio/bidmachine/iab/vast/VastSpecError;

    .line 47
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->NO_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    .line 53
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    .line 60
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->SHOWING:Lio/bidmachine/iab/vast/VastSpecError;

    .line 66
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_COMPANION:Lio/bidmachine/iab/vast/VastSpecError;

    .line 72
    new-instance v0, Lio/bidmachine/iab/vast/VastSpecError;

    const/16 v1, 0x384

    invoke-direct {v0, v1}, Lio/bidmachine/iab/vast/VastSpecError;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/vast/VastSpecError;->UNKNOWN:Lio/bidmachine/iab/vast/VastSpecError;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/iab/vast/VastSpecError;->a:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastSpecError;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/VastSpecError;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
