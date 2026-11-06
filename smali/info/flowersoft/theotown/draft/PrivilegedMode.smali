###### Class info.flowersoft.theotown.draft.PrivilegedMode (info.flowersoft.theotown.draft.PrivilegedMode)
.class public final enum Linfo/flowersoft/theotown/draft/PrivilegedMode;
.super Ljava/lang/Enum;
.source "PrivilegedMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/draft/PrivilegedMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum Internal:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum LocalBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum LocalSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum PrivilegedKey:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum Unprivileged:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum VerifiedPluginFileBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum VerifiedPluginFileSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum VerifiedStorePluginBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

.field public static final enum VerifiedStorePluginSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;


# instance fields
.field public final level:I


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 9

    .line 7
    sget-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Unprivileged:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v1, Linfo/flowersoft/theotown/draft/PrivilegedMode;->PrivilegedKey:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v2, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v3, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v4, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v5, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v6, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v7, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    sget-object v8, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Internal:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    filled-new-array/range {v0 .. v8}, [Linfo/flowersoft/theotown/draft/PrivilegedMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "Unprivileged"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Unprivileged:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "PrivilegedKey"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->PrivilegedKey:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "LocalBasic"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 30
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "LocalSuper"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "VerifiedPluginFileBasic"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "VerifiedPluginFileSuper"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "VerifiedStorePluginBasic"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "VerifiedStorePluginSuper"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    const-string v1, "Internal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/draft/PrivilegedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Internal:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    .line 7
    invoke-static {}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->$values()[Linfo/flowersoft/theotown/draft/PrivilegedMode;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->$VALUES:[Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->level:I

    return-void
.end method

.method public static forLocal(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 74
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0

    .line 76
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_20
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->LocalBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0
.end method

.method public static forStore(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 63
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_20
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedStorePluginBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0
.end method

.method public static forVerifiedExternalPlugin(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 85
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileSuper:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0

    .line 87
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_20
    sget-object p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->VerifiedPluginFileBasic:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/draft/PrivilegedMode;
    .registers 1

    .line 7
    sget-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->$VALUES:[Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/draft/PrivilegedMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/draft/PrivilegedMode;

    return-object v0
.end method


# virtual methods
.method public isPrivileged()Z
    .registers 3

    .line 100
    iget v0, p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isSuperPrivileged()Z
    .registers 3

    .line 108
    iget v0, p0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
