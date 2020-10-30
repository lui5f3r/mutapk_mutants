.class public final enum Lorg/wikipedia/search/SearchResult$SearchResultType;
.super Ljava/lang/Enum;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/search/SearchResult$SearchResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

.field public static final enum TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    const-string v1, "SEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/search/SearchResult$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 22
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    const-string v1, "HISTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/search/SearchResult$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 23
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    const-string v1, "READING_LIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/search/SearchResult$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 24
    new-instance v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    const-string v1, "TAB_LIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/wikipedia/search/SearchResult$SearchResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->TAB_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/wikipedia/search/SearchResult$SearchResultType;

    .line 20
    sget-object v6, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

    aput-object v6, v1, v2

    sget-object v2, Lorg/wikipedia/search/SearchResult$SearchResultType;->HISTORY:Lorg/wikipedia/search/SearchResult$SearchResultType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/search/SearchResult$SearchResultType;->READING_LIST:Lorg/wikipedia/search/SearchResult$SearchResultType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/wikipedia/search/SearchResult$SearchResultType;->$VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/search/SearchResult$SearchResultType;
    .locals 1

    .line 20
    const-class v0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/search/SearchResult$SearchResultType;
    .locals 1

    .line 20
    sget-object v0, Lorg/wikipedia/search/SearchResult$SearchResultType;->$VALUES:[Lorg/wikipedia/search/SearchResult$SearchResultType;

    invoke-virtual {v0}, [Lorg/wikipedia/search/SearchResult$SearchResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-object v0
.end method
