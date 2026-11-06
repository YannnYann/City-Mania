###### Class io.bidmachine.utils.Gender (io.bidmachine.utils.Gender)
.class public final enum Lio/bidmachine/utils/Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/utils/Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lio/bidmachine/utils/Gender;

.field public static final enum Female:Lio/bidmachine/utils/Gender;

.field public static final enum Male:Lio/bidmachine/utils/Gender;

.field public static final enum Omitted:Lio/bidmachine/utils/Gender;


# instance fields
.field public final ortbValue:Ljava/lang/String;

.field public final serverValue:I


# direct methods
.method public static synthetic $values()[Lio/bidmachine/utils/Gender;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/utils/Gender;->Female:Lio/bidmachine/utils/Gender;

    sget-object v1, Lio/bidmachine/utils/Gender;->Male:Lio/bidmachine/utils/Gender;

    sget-object v2, Lio/bidmachine/utils/Gender;->Omitted:Lio/bidmachine/utils/Gender;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/utils/Gender;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/utils/Gender;

    const-string v1, "Female"

    const/4 v2, 0x0

    const-string v3, "F"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/utils/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/utils/Gender;->Female:Lio/bidmachine/utils/Gender;

    .line 2
    new-instance v0, Lio/bidmachine/utils/Gender;

    const-string v1, "Male"

    const-string v3, "M"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v3, v5}, Lio/bidmachine/utils/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/utils/Gender;->Male:Lio/bidmachine/utils/Gender;

    .line 3
    new-instance v0, Lio/bidmachine/utils/Gender;

    const-string v1, "Omitted"

    const-string v3, "O"

    invoke-direct {v0, v1, v5, v3, v2}, Lio/bidmachine/utils/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/utils/Gender;->Omitted:Lio/bidmachine/utils/Gender;

    .line 4
    invoke-static {}, Lio/bidmachine/utils/Gender;->$values()[Lio/bidmachine/utils/Gender;

    move-result-object v0

    sput-object v0, Lio/bidmachine/utils/Gender;->$VALUES:[Lio/bidmachine/utils/Gender;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/bidmachine/utils/Gender;->ortbValue:Ljava/lang/String;

    .line 3
    iput p4, p0, Lio/bidmachine/utils/Gender;->serverValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/utils/Gender;
    .registers 2

    .line 1
    const-class v0, Lio/bidmachine/utils/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/utils/Gender;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/utils/Gender;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/utils/Gender;->$VALUES:[Lio/bidmachine/utils/Gender;

    invoke-virtual {v0}, [Lio/bidmachine/utils/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/utils/Gender;

    return-object v0
.end method


# virtual methods
.method public getOrtbValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/utils/Gender;->ortbValue:Ljava/lang/String;

    return-object v0
.end method
