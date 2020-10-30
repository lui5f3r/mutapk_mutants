.class public Lorg/wikipedia/feed/announcement/Announcement;
.super Lorg/wikipedia/model/BaseModel;
.source "Announcement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/feed/announcement/Announcement$Action;
    }
.end annotation


# static fields
.field public static final FUNDRAISING:Ljava/lang/String; = "fundraising"

.field public static final PLACEMENT_ARTICLE:Ljava/lang/String; = "article"

.field public static final PLACEMENT_FEED:Ljava/lang/String; = "feed"

.field public static final SURVEY:Ljava/lang/String; = "survey"


# instance fields
.field private action:Lorg/wikipedia/feed/announcement/Announcement$Action;

.field private beta:Ljava/lang/Boolean;

.field private border:Ljava/lang/Boolean;

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation

    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private footerCaption:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption_HTML"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private imageHeight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_height"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation
.end field

.field private loggedIn:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logged_in"
    .end annotation
.end field

.field private maxVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_version"
    .end annotation
.end field

.field private minVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_version"
    .end annotation
.end field

.field private negativeText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "negative_text"
    .end annotation
.end field

.field private placement:Ljava/lang/String;

.field private platforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readingListSyncEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reading_list_sync_enabled"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation

    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->platforms:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->countries:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/announcement/Announcement$Action;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->platforms:Ljava/util/List;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->countries:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lorg/wikipedia/feed/announcement/Announcement;->id:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/wikipedia/feed/announcement/Announcement;->text:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lorg/wikipedia/feed/announcement/Announcement;->imageUrl:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lorg/wikipedia/feed/announcement/Announcement;->action:Lorg/wikipedia/feed/announcement/Announcement$Action;

    .line 57
    iput-object p5, p0, Lorg/wikipedia/feed/announcement/Announcement;->negativeText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method actionTitle()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->action:Lorg/wikipedia/feed/announcement/Announcement$Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement$Action;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method actionUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->action:Lorg/wikipedia/feed/announcement/Announcement$Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/wikipedia/feed/announcement/Announcement$Action;->url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method beta()Ljava/lang/Boolean;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->beta:Ljava/lang/Boolean;

    return-object v0
.end method

.method countries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->countries:Ljava/util/List;

    return-object v0
.end method

.method endTime()Ljava/util/Date;
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->endTime:Ljava/lang/String;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method footerCaption()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->footerCaption:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAction()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->action:Lorg/wikipedia/feed/announcement/Announcement$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasBorder()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->border:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasFooterCaption()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->footerCaption:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasImageUrl()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->id:Ljava/lang/String;

    return-object v0
.end method

.method imageHeight()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->imageHeight:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method imageUrl()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loggedIn()Ljava/lang/Boolean;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->loggedIn:Ljava/lang/Boolean;

    return-object v0
.end method

.method maxVersion()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->maxVersion:Ljava/lang/String;

    return-object v0
.end method

.method minVersion()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->minVersion:Ljava/lang/String;

    return-object v0
.end method

.method negativeText()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->negativeText:Ljava/lang/String;

    return-object v0
.end method

.method public placement()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->placement:Ljava/lang/String;

    const-string v1, "feed"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method platforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->platforms:Ljava/util/List;

    return-object v0
.end method

.method readingListSyncEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->readingListSyncEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public startTime()Ljava/util/Date;
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->startTime:Ljava/lang/String;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method text()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement;->type:Ljava/lang/String;

    return-object v0
.end method
