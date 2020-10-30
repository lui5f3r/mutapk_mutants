.class public final enum Lorg/wikipedia/database/AppContentProviderEndpoint;
.super Ljava/lang/Enum;
.source "AppContentProviderEndpoint.java"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/database/AppContentProviderEndpoint;",
        ">;",
        "Lorg/wikipedia/model/EnumCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/database/AppContentProviderEndpoint;

.field private static final CODE_TO_ENUM:Lorg/wikipedia/model/EnumCodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/EnumCodeMap<",
            "Lorg/wikipedia/database/AppContentProviderEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HISTORY_EDIT_SUMMARY:Lorg/wikipedia/database/AppContentProviderEndpoint;

.field public static final enum HISTORY_PAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

.field public static final enum HISTORY_PAGE_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

.field public static final enum HISTORY_PAGE_WITH_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

.field public static final enum HISTORY_SEARCH_QUERY:Lorg/wikipedia/database/AppContentProviderEndpoint;

.field private static final URI_TO_CODE:Landroid/content/UriMatcher;


# instance fields
.field private final authority:Ljava/lang/String;

.field private final code:I

.field private final path:Ljava/lang/String;

.field private final projection:[Ljava/lang/String;

.field private final tables:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 19
    new-instance v7, Lorg/wikipedia/database/AppContentProviderEndpoint;

    sget-object v6, Lorg/wikipedia/database/contract/PageHistoryContract$Page;->PROJECTION:[Ljava/lang/String;

    const-string v1, "HISTORY_PAGE"

    const/4 v2, 0x0

    const/16 v3, 0x64

    const-string v4, "history/page"

    const-string v5, "history"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 21
    new-instance v0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    sget-object v14, Lorg/wikipedia/database/contract/PageImageHistoryContract$Image;->PROJECTION:[Ljava/lang/String;

    const-string v9, "HISTORY_PAGE_IMAGE"

    const/4 v10, 0x1

    const/16 v11, 0x65

    const-string v12, "history/page/image"

    const-string v13, "pageimages"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 23
    new-instance v0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    sget-object v6, Lorg/wikipedia/database/contract/PageHistoryContract$PageWithImage;->TABLES:Ljava/lang/String;

    sget-object v7, Lorg/wikipedia/database/contract/PageHistoryContract$PageWithImage;->PROJECTION:[Ljava/lang/String;

    const-string v2, "HISTORY_PAGE_WITH_IMAGE"

    const/4 v3, 0x2

    const/16 v4, 0x66

    const-string v5, "history/page/with_image"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE_WITH_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 25
    new-instance v0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    sget-object v14, Lorg/wikipedia/database/contract/EditHistoryContract$Summary;->PROJECTION:[Ljava/lang/String;

    const-string v9, "HISTORY_EDIT_SUMMARY"

    const/4 v10, 0x3

    const/16 v11, 0x67

    const-string v12, "history/edit/summary"

    const-string v13, "editsummaries"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_EDIT_SUMMARY:Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 27
    new-instance v0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    sget-object v7, Lorg/wikipedia/database/contract/SearchHistoryContract$Query;->PROJECTION:[Ljava/lang/String;

    const-string v2, "HISTORY_SEARCH_QUERY"

    const/4 v3, 0x4

    const/16 v4, 0x68

    const-string v5, "history/query"

    const-string v6, "recentsearches"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_SEARCH_QUERY:Lorg/wikipedia/database/AppContentProviderEndpoint;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 18
    sget-object v2, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_PAGE_WITH_IMAGE:Lorg/wikipedia/database/AppContentProviderEndpoint;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/database/AppContentProviderEndpoint;->HISTORY_EDIT_SUMMARY:Lorg/wikipedia/database/AppContentProviderEndpoint;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lorg/wikipedia/database/AppContentProviderEndpoint;->$VALUES:[Lorg/wikipedia/database/AppContentProviderEndpoint;

    .line 30
    new-instance v0, Lorg/wikipedia/model/EnumCodeMap;

    const-class v1, Lorg/wikipedia/database/AppContentProviderEndpoint;

    invoke-direct {v0, v1}, Lorg/wikipedia/model/EnumCodeMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->CODE_TO_ENUM:Lorg/wikipedia/model/EnumCodeMap;

    .line 31
    invoke-static {}, Lorg/wikipedia/database/AppContentProviderEndpoint;->newUriToCode()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->URI_TO_CODE:Landroid/content/UriMatcher;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->code:I

    .line 76
    iput-object p4, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->authority:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->path:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->projection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v4, "org.wikipedia"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 70
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/database/AppContentProviderEndpoint;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static newUriToCode()Landroid/content/UriMatcher;
    .locals 7

    .line 87
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 88
    invoke-static {}, Lorg/wikipedia/database/AppContentProviderEndpoint;->values()[Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 89
    iget-object v5, v4, Lorg/wikipedia/database/AppContentProviderEndpoint;->authority:Ljava/lang/String;

    iget-object v6, v4, Lorg/wikipedia/database/AppContentProviderEndpoint;->path:Ljava/lang/String;

    iget v4, v4, Lorg/wikipedia/database/AppContentProviderEndpoint;->code:I

    invoke-virtual {v0, v5, v6, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static of(I)Lorg/wikipedia/database/AppContentProviderEndpoint;
    .locals 1

    .line 83
    sget-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->CODE_TO_ENUM:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0, p0}, Lorg/wikipedia/model/EnumCodeMap;->get(I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    return-object p0
.end method

.method public static of(Landroid/net/Uri;)Lorg/wikipedia/database/AppContentProviderEndpoint;
    .locals 3

    .line 40
    sget-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->URI_TO_CODE:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    invoke-static {v0}, Lorg/wikipedia/database/AppContentProviderEndpoint;->of(I)Lorg/wikipedia/database/AppContentProviderEndpoint;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/database/AppContentProviderEndpoint;
    .locals 1

    .line 18
    const-class v0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/database/AppContentProviderEndpoint;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/database/AppContentProviderEndpoint;
    .locals 1

    .line 18
    sget-object v0, Lorg/wikipedia/database/AppContentProviderEndpoint;->$VALUES:[Lorg/wikipedia/database/AppContentProviderEndpoint;

    invoke-virtual {v0}, [Lorg/wikipedia/database/AppContentProviderEndpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/database/AppContentProviderEndpoint;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->code:I

    return v0
.end method

.method public itemUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public projection()[Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method public tables()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/wikipedia/database/AppContentProviderEndpoint;->tables:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
