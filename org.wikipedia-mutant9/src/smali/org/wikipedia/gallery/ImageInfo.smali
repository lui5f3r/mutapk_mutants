.class public Lorg/wikipedia/gallery/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/gallery/ImageInfo$Derivative;
    }
.end annotation


# instance fields
.field private captions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private codecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private derivatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo$Derivative;",
            ">;"
        }
    .end annotation
.end field

.field private descriptionShortUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descriptionshorturl"
    .end annotation
.end field

.field private descriptionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descriptionurl"
    .end annotation
.end field

.field private height:I

.field private metadata:Lorg/wikipedia/gallery/ExtMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extmetadata"
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mime"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private originalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private shortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_name"
    .end annotation
.end field

.field private size:I

.field private source:Ljava/lang/String;

.field private thumbHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbheight"
    .end annotation
.end field

.field private thumbUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumburl"
    .end annotation
.end field

.field private thumbWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbwidth"
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestDerivative()Lorg/wikipedia/gallery/ImageInfo$Derivative;
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/gallery/ImageInfo$Derivative;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptions()Ljava/util/Map;
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

    .line 42
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCommonsUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->descriptionUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDerivatives()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/gallery/ImageInfo$Derivative;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->derivatives:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/wikipedia/gallery/ImageInfo;->height:I

    return v0
.end method

.method public getMetadata()Lorg/wikipedia/gallery/ExtMetadata;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->mimeType:Ljava/lang/String;

    const-string v1, "*/*"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/wikipedia/gallery/ImageInfo;->size:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbWidth()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/wikipedia/gallery/ImageInfo;->width:I

    return v0
.end method

.method public setCaptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/wikipedia/gallery/ImageInfo;->source:Ljava/lang/String;

    return-void
.end method
