.class public Lorg/wikipedia/feed/image/FeaturedImageCard;
.super Lorg/wikipedia/feed/model/WikiSiteCard;
.source "FeaturedImageCard.java"


# instance fields
.field private age:I

.field private featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/image/FeaturedImage;ILorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 20
    invoke-direct {p0, p3}, Lorg/wikipedia/feed/model/WikiSiteCard;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 21
    iput-object p1, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 22
    iput p2, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->age:I

    return-void
.end method


# virtual methods
.method public age()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->age:I

    return v0
.end method

.method public baseImage()Lorg/wikipedia/feed/image/FeaturedImage;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem;->getDescription()Lorg/wikipedia/gallery/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/gallery/TextInfo;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dismissHashCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImage;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public filename()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    invoke-virtual {v0}, Lorg/wikipedia/feed/image/FeaturedImage;->title()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public image()Landroid/net/Uri;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->featuredImage:Lorg/wikipedia/feed/image/FeaturedImage;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget v0, p0, Lorg/wikipedia/feed/image/FeaturedImageCard;->age:I

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->getFeedCardDateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/feed/model/WikiSiteCard;->wikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f100466

    invoke-static {v0, v1}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 58
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->FEATURED_IMAGE:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
