.class public Lorg/wikipedia/feed/announcement/AnnouncementCard;
.super Lorg/wikipedia/feed/model/Card;
.source "AnnouncementCard.java"


# instance fields
.field private final announcement:Lorg/wikipedia/feed/announcement/Announcement;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/announcement/Announcement;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/wikipedia/feed/model/Card;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    return-void
.end method


# virtual methods
.method public actionTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->actionTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public actionUri()Landroid/net/Uri;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->actionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected dismissHashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public extract()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public footerCaption()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->footerCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->hasAction()Z

    move-result v0

    return v0
.end method

.method hasBorder()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public hasFooterCaption()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->hasFooterCaption()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public image()Landroid/net/Uri;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->imageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public imageHeight()I
    .locals 1

    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->imageHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public negativeText()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->negativeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementCard;->announcement:Lorg/wikipedia/feed/announcement/Announcement;

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement;->type()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 71
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->ANNOUNCEMENT:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
