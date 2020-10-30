.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.super Lorg/wikipedia/model/BaseModel;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;,
        Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;
    }
.end annotation


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;",
            ">;"
        }
    .end annotation
.end field

.field private convertedFrom:Ljava/lang/String;

.field private convertedTo:Ljava/lang/String;

.field private coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private descriptionSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descriptionsource"
    .end annotation
.end field

.field private extract:Ljava/lang/String;

.field private imageInfo:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private imageLabels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imagelabels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;"
        }
    .end annotation
.end field

.field private imagerepository:Ljava/lang/String;

.field private index:I

.field private langlinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;",
            ">;"
        }
    .end annotation
.end field

.field private lastrevid:J

.field private ns:I

.field private pageViewsMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageviews"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private pageid:I

.field private pageprops:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

.field private protection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/Protection;",
            ">;"
        }
    .end annotation
.end field

.field private redirectFrom:Ljava/lang/String;

.field private revisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

.field private title:Ljava/lang/String;

.field private varianttitles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoInfo:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoinfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public appendTitleFragment(Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    return-void
.end method

.method public categories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Category;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->categories:Ljava/util/List;

    return-object v0
.end method

.method public convertedFrom()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public convertedFrom(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedFrom:Ljava/lang/String;

    return-void
.end method

.method public convertedTo()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    return-object v0
.end method

.method public convertedTo(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->convertedTo:Ljava/lang/String;

    return-void
.end method

.method public coordinates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 81
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    return-object v0
.end method

.method public descriptionSource()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->descriptionSource:Ljava/lang/String;

    return-object v0
.end method

.method public displayTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->varianttitles:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public extract()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->extract:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageLabels:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastRevId()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    return-wide v0
.end method

.method public getPageViewsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageViewsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public imageInfo()Lorg/wikipedia/gallery/ImageInfo;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/ImageInfo;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->videoInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public index()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->index:I

    return v0
.end method

.method public isImageShared()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public langLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    return-object v0
.end method

.method public namespace()Lorg/wikipedia/page/Namespace;
    .locals 1

    .line 58
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->ns:I

    invoke-static {v0}, Lorg/wikipedia/page/Namespace;->of(I)Lorg/wikipedia/page/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public pageId()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageid:I

    return v0
.end method

.method public pageProps()Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageprops:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    return-object v0
.end method

.method public protection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/page/Protection;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public redirectFrom()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    return-object v0
.end method

.method public redirectFrom(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->redirectFrom:Ljava/lang/String;

    return-void
.end method

.method public revisions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public thumbUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbnail:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;->source()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
