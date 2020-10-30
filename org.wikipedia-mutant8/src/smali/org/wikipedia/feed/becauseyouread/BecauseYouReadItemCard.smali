.class public Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;
.super Lorg/wikipedia/feed/model/Card;
.source "BecauseYouReadItemCard.java"


# instance fields
.field private final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public image()Landroid/net/Uri;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public pageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public subtitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/becauseyouread/BecauseYouReadItemCard;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 41
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->BECAUSE_YOU_READ_ITEM:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
