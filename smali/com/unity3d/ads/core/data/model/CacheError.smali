###### Class com.unity3d.ads.core.data.model.CacheError (com.unity3d.ads.core.data.model.CacheError)
.class public final enum Lcom/unity3d/ads/core/data/model/CacheError;
.super Ljava/lang/Enum;
.source "CacheError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/CacheError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum CACHE_DIRECTORY_EXISTS:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum CACHE_DIRECTORY_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum FILE_ALREADY_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum FILE_IO_CREATE:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum FILE_NOT_FOUND:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum FILE_STATE_WRONG:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum ILLEGAL_STATE:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum JSON_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum MALFORMED_URL:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum NOT_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum NO_INTERNET:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum UNKNOWN_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

.field public static final enum UNSUPPORTED_ENCODING:Lcom/unity3d/ads/core/data/model/CacheError;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/CacheError;
    .registers 19

    .line 0
    sget-object v1, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_CREATE:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v2, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v3, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v4, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v5, Lcom/unity3d/ads/core/data/model/CacheError;->NOT_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v6, Lcom/unity3d/ads/core/data/model/CacheError;->JSON_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v7, Lcom/unity3d/ads/core/data/model/CacheError;->NO_INTERNET:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v8, Lcom/unity3d/ads/core/data/model/CacheError;->MALFORMED_URL:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v9, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v10, Lcom/unity3d/ads/core/data/model/CacheError;->ILLEGAL_STATE:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v11, Lcom/unity3d/ads/core/data/model/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v12, Lcom/unity3d/ads/core/data/model/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v13, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v14, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v15, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v16, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_EXISTS:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v17, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/ads/core/data/model/CacheError;

    sget-object v18, Lcom/unity3d/ads/core/data/model/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    filled-new-array/range {v1 .. v18}, [Lcom/unity3d/ads/core/data/model/CacheError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "FILE_IO_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_CREATE:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_IO_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_NOT_FOUND:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "FILE_ALREADY_CACHING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_ALREADY_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 8
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "NOT_CACHING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->NOT_CACHING:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 9
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "JSON_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->JSON_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 10
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "NO_INTERNET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->NO_INTERNET:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 11
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "MALFORMED_URL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->MALFORMED_URL:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 12
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->NETWORK_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 13
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "ILLEGAL_STATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->ILLEGAL_STATE:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 14
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "INVALID_ARGUMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->INVALID_ARGUMENT:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 15
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "UNSUPPORTED_ENCODING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->UNSUPPORTED_ENCODING:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 16
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "FILE_STATE_WRONG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 17
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "CACHE_DIRECTORY_NULL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 18
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "CACHE_DIRECTORY_TYPE_NULL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_TYPE_NULL:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 19
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "CACHE_DIRECTORY_EXISTS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_EXISTS:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 20
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "CACHE_DIRECTORY_DOESNT_EXIST"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->CACHE_DIRECTORY_DOESNT_EXIST:Lcom/unity3d/ads/core/data/model/CacheError;

    .line 21
    new-instance v0, Lcom/unity3d/ads/core/data/model/CacheError;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/CacheError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/CacheError;->$values()[Lcom/unity3d/ads/core/data/model/CacheError;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->$VALUES:[Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/unity3d/ads/core/data/model/CacheError;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/CacheError;
    .registers 2

    const-class v0, Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 22
    check-cast p0, Lcom/unity3d/ads/core/data/model/CacheError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/CacheError;
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/CacheError;->$VALUES:[Lcom/unity3d/ads/core/data/model/CacheError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, [Lcom/unity3d/ads/core/data/model/CacheError;

    return-object v0
.end method
