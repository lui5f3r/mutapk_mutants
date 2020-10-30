.class public Lorg/wikipedia/gallery/GalleryItem;
.super Ljava/lang/Object;
.source "GalleryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/GalleryItem$StructuredData;,
        Lorg/wikipedia/gallery/GalleryItem$Titles;
    }
.end annotation


# instance fields
.field private artist:Lorg/wikipedia/gallery/ArtistInfo;

.field private audioType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audio_type"
    .end annotation
.end field

.field private caption:Lorg/wikipedia/gallery/TextInfo;

.field private description:Lorg/wikipedia/gallery/TextInfo;

.field private duration:D

.field private entityId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wb_entity_id"
    .end annotation
.end field

.field private filePage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_page"
    .end annotation
.end field

.field private license:Lorg/wikipedia/gallery/ImageLicense;

.field private original:Lorg/wikipedia/gallery/ImageInfo;

.field private sectionId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "section_id"
    .end annotation
.end field

.field private showInGallery:Z

.field private sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "structured"
    .end annotation
.end field

.field private thumbnail:Lorg/wikipedia/gallery/ImageInfo;

.field private titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "*/*"

    .line 44
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->type:Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/wikipedia/gallery/GalleryItem$Titles;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p1}, Lorg/wikipedia/gallery/GalleryItem$Titles;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    .line 46
    new-instance p1, Lorg/wikipedia/gallery/ImageInfo;

    invoke-direct {p1}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 47
    new-instance p1, Lorg/wikipedia/gallery/ImageInfo;

    invoke-direct {p1}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 48
    new-instance p1, Lorg/wikipedia/gallery/TextInfo;

    invoke-direct {p1}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 49
    new-instance p1, Lorg/wikipedia/gallery/ImageLicense;

    invoke-direct {p1}, Lorg/wikipedia/gallery/ImageLicense;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    return-void
.end method


# virtual methods
.method public getArtist()Lorg/wikipedia/gallery/ArtistInfo;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->artist:Lorg/wikipedia/gallery/ArtistInfo;

    return-object v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->audioType:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaption()Lorg/wikipedia/gallery/TextInfo;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->caption:Lorg/wikipedia/gallery/TextInfo;

    return-object v0
.end method

.method public getDescription()Lorg/wikipedia/gallery/TextInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lorg/wikipedia/gallery/TextInfo;

    invoke-direct {v0}, Lorg/wikipedia/gallery/TextInfo;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->description:Lorg/wikipedia/gallery/TextInfo;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 120
    iget-wide v0, p0, Lorg/wikipedia/gallery/GalleryItem;->duration:D

    return-wide v0
.end method

.method public getFilePage()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->filePage:Ljava/lang/String;

    const-string v1, "https://commons.wikimedia.org/"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicense()Lorg/wikipedia/gallery/ImageLicense;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    return-object v0
.end method

.method public getOriginal()Lorg/wikipedia/gallery/ImageInfo;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo;

    invoke-direct {v0}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->original:Lorg/wikipedia/gallery/ImageInfo;

    return-object v0
.end method

.method public getOriginalVideoSource()Lorg/wikipedia/gallery/ImageInfo;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/ImageInfo;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getPreferredSizedImageUrl()Ljava/lang/String;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->sources:Ljava/util/List;

    return-object v0
.end method

.method public getStructuredCaptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->access$000(Lorg/wikipedia/gallery/GalleryItem$StructuredData;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    invoke-static {v0}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->access$000(Lorg/wikipedia/gallery/GalleryItem$StructuredData;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getThumbnail()Lorg/wikipedia/gallery/ImageInfo;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/wikipedia/gallery/ImageInfo;

    invoke-direct {v0}, Lorg/wikipedia/gallery/ImageInfo;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->thumbnail:Lorg/wikipedia/gallery/ImageInfo;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItem;->getThumbnail()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitles()Lorg/wikipedia/gallery/GalleryItem$Titles;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->type:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowInGallery()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/wikipedia/gallery/GalleryItem;->showInGallery:Z

    return v0
.end method

.method public setArtist(Lorg/wikipedia/gallery/ArtistInfo;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->artist:Lorg/wikipedia/gallery/ArtistInfo;

    return-void
.end method

.method public setFilePage(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->filePage:Ljava/lang/String;

    return-void
.end method

.method public setLicense(Lorg/wikipedia/gallery/ImageLicense;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItem;->license:Lorg/wikipedia/gallery/ImageLicense;

    return-void
.end method

.method public setStructuredCaptions(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    invoke-direct {v0}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->structuredData:Lorg/wikipedia/gallery/GalleryItem$StructuredData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lorg/wikipedia/gallery/GalleryItem$StructuredData;->access$002(Lorg/wikipedia/gallery/GalleryItem$StructuredData;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Lorg/wikipedia/gallery/GalleryItem$Titles;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p1}, Lorg/wikipedia/gallery/GalleryItem$Titles;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryItem;->titles:Lorg/wikipedia/gallery/GalleryItem$Titles;

    return-void
.end method
