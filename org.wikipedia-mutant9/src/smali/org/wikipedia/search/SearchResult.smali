.class public Lorg/wikipedia/search/SearchResult;
.super Lorg/wikipedia/model/BaseModel;
.source "SearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/search/SearchResult$SearchResultType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/search/SearchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pageTitle:Lorg/wikipedia/page/PageTitle;

.field private final redirectFrom:Ljava/lang/String;

.field private final searchResultType:Lorg/wikipedia/search/SearchResult$SearchResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/wikipedia/search/SearchResult$1;

    invoke-direct {v0}, Lorg/wikipedia/search/SearchResult$1;-><init>()V

    sput-object v0, Lorg/wikipedia/search/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 102
    const-class v0, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    iput-object v0, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/search/SearchResult$SearchResultType;

    iput-object p1, p0, Lorg/wikipedia/search/SearchResult;->searchResultType:Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/wikipedia/search/SearchResult$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lorg/wikipedia/search/SearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/mwapi/MwQueryPage;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 7

    .line 28
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/wikipedia/search/SearchResult$SearchResultType;->SEARCH:Lorg/wikipedia/search/SearchResult$SearchResultType;

    invoke-direct {p0, v6, p1, p2}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/search/SearchResult$SearchResultType;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/search/SearchResult$SearchResultType;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 37
    iput-object p2, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/wikipedia/search/SearchResult;->searchResultType:Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/search/SearchResult$SearchResultType;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/search/SearchResult;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lorg/wikipedia/search/SearchResult$SearchResultType;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 87
    instance-of v0, p1, Lorg/wikipedia/search/SearchResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    check-cast p1, Lorg/wikipedia/search/SearchResult;

    .line 91
    invoke-virtual {p1}, Lorg/wikipedia/search/SearchResult;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/wikipedia/search/SearchResult;->getRedirectFrom()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public getRedirectFrom()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/wikipedia/search/SearchResult$SearchResultType;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->searchResultType:Lorg/wikipedia/search/SearchResult$SearchResultType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v1, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget-object p2, p0, Lorg/wikipedia/search/SearchResult;->redirectFrom:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lorg/wikipedia/search/SearchResult;->searchResultType:Lorg/wikipedia/search/SearchResult$SearchResultType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
