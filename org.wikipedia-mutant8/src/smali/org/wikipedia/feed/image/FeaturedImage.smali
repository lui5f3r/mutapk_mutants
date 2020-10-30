.class public final Lorg/wikipedia/feed/image/FeaturedImage;
.super Lorg/wikipedia/gallery/GalleryItem;
.source "FeaturedImage.java"

# interfaces
.implements Lorg/wikipedia/json/PostProcessingTypeAdapter$PostProcessable;


# instance fields
.field private age:I

.field private image:Lorg/wikipedia/gallery/ImageInfo;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/wikipedia/gallery/GalleryItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/wikipedia/feed/image/FeaturedImage;->age:I

    return v0
.end method

.method public postProcess()V
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/wikipedia/gallery/GalleryItem;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItem;->getOriginal()Lorg/wikipedia/gallery/ImageInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/image/FeaturedImage;->image:Lorg/wikipedia/gallery/ImageInfo;

    invoke-virtual {v1}, Lorg/wikipedia/gallery/ImageInfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/ImageInfo;->setSource(Ljava/lang/String;)V

    return-void
.end method

.method public setAge(I)V
    .locals 0

    .line 17
    iput p1, p0, Lorg/wikipedia/feed/image/FeaturedImage;->age:I

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImage;->title:Ljava/lang/String;

    return-object v0
.end method
