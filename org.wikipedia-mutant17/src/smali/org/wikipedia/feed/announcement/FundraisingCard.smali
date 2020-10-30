.class public Lorg/wikipedia/feed/announcement/FundraisingCard;
.super Lorg/wikipedia/feed/announcement/AnnouncementCard;
.source "FundraisingCard.java"


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/announcement/Announcement;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    return-void
.end method


# virtual methods
.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 14
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->FUNDRAISING:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
